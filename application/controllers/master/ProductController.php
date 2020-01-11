<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Capsule\Manager as DB;
class ProductController extends CI_Controller {
	protected $fields;
    public function __construct()
	{
		parent::__construct();
		$this->load->model('Products');
		$this->fields = $this->Products->kolom;
	}

	public function index()
	{
		$th = $this->fields;
		return $this->blade_view->render('master.product.index',compact('th'));
	}
	public function create()
	{
		if ($this->input->server('REQUEST_METHOD') == 'GET'){
			$formInput = $this->fields;
			return $this->blade_view->render('master.product.create',compact('formInput'));
		}
		else if ($this->input->server('REQUEST_METHOD') == 'POST'){
			$id = $this->Products->insert($this->input->post());
			if($id)
			{
				$this->session->set_flashdata('msg', 'Sukses memanjingkan data...!!');
			}
			redirect($_SERVER['HTTP_REFERER']);
		}
	}
	public function delete($id)
	{
		$this->Products->where('id',$id)->delete();
		$this->session->set_flashdata('msg', 'Sukses delete data');
		redirect($_SERVER['HTTP_REFERER']);
	}

	public function edit($id)
	{
		if ($this->input->server('REQUEST_METHOD') == 'GET'){
			$field = $this->Products
					// ->select($this->fields)
					->find($id);
			return $this->blade_view->render('master.product.edit',compact('field'));
		}
		else if ($this->input->server('REQUEST_METHOD') == 'POST'){
			$dd = $this->Products
						->where('id',$id)
						->update($this->input->post());
			if($dd){
				$this->session->set_flashdata('msg', 'Sukses update data');
			}
			redirect($_SERVER['HTTP_REFERER']);
		}
		
	}
	
	public function grid()
    {
		DB::enableQueryLog(); // Enable query log
		$q = new Products;
		$q::select(['id','products_name','products_quantity','products_price','products_sku','products_model'])->get();
		$query = DB::getQueryLog()[0]['query']; // Show results of log
		
		$grid = new Datatables(new MySQL($this->config->item('datatables')));
        $j = $grid->query($query)
                ->add('action',function($data){
					$action = '<div class="btn-group btn-group-sm">';
					$action .= '<a href="'. route('product.edit',$data['id']).'" class="btn btn-sm btn-warning m-b-2">Edit</a>';
                	$action .= '<a href="'.route('product.delete',$data['id']).'" class="btn btn-sm btn-danger m-b-2">Delete</a>';
					$action .= '</div>';
					return $action;
                })
				// ->hide('lastname')
				->generate();
        $this->output
                ->set_content_type('application/json')
                ->set_output($j);
    }
}

/* End of file CourierController.php */
