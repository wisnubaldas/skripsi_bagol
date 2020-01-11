<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
class CourierController extends CI_Controller {

    public function __construct()
	{
		parent::__construct();
		$this->load->model('Couriers');
		$this->load->library('user_agent');
	}

	public function index()
	{
		$kolom = $this->Couriers->kolom;
		return $this->blade_view->render('master.courier.index',compact('kolom'));
	}
	public function create()
	{
		if ($this->input->server('REQUEST_METHOD') == 'GET'){
			$formInput = $this->Couriers->kolom;
			return $this->blade_view->render('master.courier.create',compact('formInput'));
		}
		else if ($this->input->server('REQUEST_METHOD') == 'POST'){
			$id = $this->Couriers->insert($this->input->post());
			if($id)
			{
				$this->session->set_flashdata('msg', 'Sukses memanjingkan data...!!');
			}
			redirect($_SERVER['HTTP_REFERER']);
		}
	}
	public function delete($id)
	{
		$this->Couriers->where('id',$id)->delete();
		$this->session->set_flashdata('msg', 'Sukses delete data');
		redirect($_SERVER['HTTP_REFERER']);
	}

	public function edit($id)
	{
		if ($this->input->server('REQUEST_METHOD') == 'GET'){
			$courier = $this->Couriers
					->find($id);
			return $this->blade_view->render('master.courier.edit',compact('courier'));
		}
		else if ($this->input->server('REQUEST_METHOD') == 'POST'){
			$dd = $this->Couriers
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
		$grid = new Datatables(new MySQL($this->config->item('datatables')));
        $j = $grid->query('select id,name,email,phone from couriers')
                ->add('action',function($data){
					$action = '<div class="btn-group btn-group-sm">';
					$action .= '<a href="'. route('master.courier.edit',$data['id']).'" class="btn btn-sm btn-warning m-b-2">Edit</a>';
                	$action .= '<a href="'.route('master.courier.delete',$data['id']).'" class="btn btn-sm btn-danger m-b-2">Delete</a>';
					$action .= '</div>';
					return $action;
                })
                ->generate();
        $this->output
                ->set_content_type('application/json')
                ->set_output($j);
    }
}

/* End of file CourierController.php */
