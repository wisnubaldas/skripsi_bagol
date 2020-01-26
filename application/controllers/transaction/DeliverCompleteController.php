<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class DeliverCompleteController extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Orders');
        
    }
    
    public function index()
    {
        return $this->blade_view->render('shops.complete.index');
    }
    public function done($id)
    {
        $order = new Orders;
        $order->where('id','=',$id)->update(['status'=>'complete']);
        redirect($_SERVER['HTTP_REFERER']);
    }
    public function grid()
    {
        $order = new Orders;
        $query = $order->select(['id','invoice_number','delivery_name','delivery_company','delivery_street_address','delivery_phone','date','status'])
                ->toSql();
        $tables =  $this->griddata
                        ->where(['status','=','delivery'])
                        ->generate($query)
                        ->add('action',function($data){
                            $btn = '<div class="btn-group">';
                            $btn .= '<a href="'. route('complete.done',$data['id']).'" class="btn btn-sm btn-warning m-b-2">Complete</a>';
                            $btn .= '</div>';
                            return $btn;
                        })
                        ->generate();
        $this->output
                ->set_content_type('application/json')
                ->set_output($tables);
    }
}


/* End of file DeliverCompleteController.php */
