<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Capsule\Manager as DB;
class TakeOrderController extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Orders');
    
  }
    
  public function index()
  {
    return $this->blade_view->render('shops.take_order.index');
  }

}

/* End of file OrderController.php */
