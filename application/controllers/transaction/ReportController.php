<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Carbon\Carbon;
class ReportController extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Orders');
        
    }
    
    public function index()
    {
        $order = new Orders;
        $new_order = $order->where(['status' => null])->count();
        $pickup = $order->where(['status' => 'pickup'])->count();
        $deliver = $order->where(['status' => 'delivery'])->count();
        $complete = $order->where(['status' => 'complete'])->count();
        $data['order'] = compact('new_order','pickup','deliver','complete');
        
        return $this->blade_view->render('shops.report.index',$data);
    }

}

/* End of file ReportController.php */
