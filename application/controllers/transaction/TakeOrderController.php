<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Capsule\Manager as DB;
use Carbon\Carbon;
class TakeOrderController extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    DB::enableQueryLog(); // Enable query log
    $this->load->model('Orders');
    
  }
    
  public function index()
  {
    $order = new Orders;
    $or = $order->select(['invoice_number','created_at','billing_name'])
          ->where('status','=','pickup')->get();
    $data['invoice'] = $or->map(function($d){
            return $d->invoice_number;
          })->toArray();
    $data['billing'] = $or->map(function($d){
            return $d->billing_name;
          })->toArray();
    return $this->blade_view->render('shops.take_order.index',$data);
  }

  public function grid_order()
  {
    $data = $this->input->get();
    if($data['invoice_number'] == ''){
        unset($data['invoice_number']);
    } 
    if($data['billing_name'] == ''){
        unset($data['billing_name']);
    } 
    if ($data['date'] == '') {
        unset($data['date']);
    }else{
        $data['date'] = Carbon::parse($data['date']);
    }

    $order = new Orders;
    $ss = $order->select(['id','invoice_number','delivery_name','delivery_street_address'])
          ->where($data)
          ->where('status','=','pickup')->get();

    $this->output
                ->set_content_type('application/json')
                ->set_output($ss);
  }
  public function show($id)
  {
   
  }
  public function create_delivery()
  {
      Orders::where('id','=',$this->input->get('id'))->update(['status'=>'delivery']);
      $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode(['id'=>$this->input->get('id')]));
  }

}

/* End of file OrderController.php */
