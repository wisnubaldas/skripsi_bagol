<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Capsule\Manager as DB;
class OrderController extends CI_Controller {

    protected $fields;
    public function __construct()
	{
    parent::__construct();
    $this->load->model('Orders');
    
	}
    
    public function index()
    {
      $kolom = $this->Orders->kolom;
		  return $this->blade_view->render('shops.order.index',compact('kolom'));
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

    public function take($id)
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
        $q = new Orders;
        $q::select(
          [
            'id',
            'invoice_number',
            'delivery_name',
            'delivery_company',
            'delivery_street_address',
            'delivery_city',
            'delivery_postcode',
            'delivery_state',
            'delivery_phone',
            'billing_name',
            'billing_company',
            'billing_street_address',
            'payment_method',
            'latitude',
            'longitude',
            'status'
          ])->get();
        $query = DB::getQueryLog()[0]['query']; // Show results of log

        $grid = new Datatables(new MySQL($this->config->item('datatables')));
          $j = $grid->query($query)
                  // ->hide('latitude', 'longitude')
                  ->generate();
          $this->output
                  ->set_content_type('application/json')
                  ->set_output($j);
      }
}

/* End of file OrderController.php */
