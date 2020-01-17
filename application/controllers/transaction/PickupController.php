<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Capsule\Manager as DB;
use Carbon\Carbon;
class PickupController extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        DB::enableQueryLog(); // Enable query log
        $this->load->model('Orders');
        $this->load->model('Customers');
		$this->load->library('user_agent');
    }
    
    public function index()
    {
        $customer = new Customers;
        $data['customer'] = $customer->select(['id','firstname','lastname'])
                ->withCount(['order'=>function($q){
                    return $q->where('status','=',null);
                }])
                ->get()
                ->map(function($data){
                    return ['id'=>$data->id,'text'=>$data->firstname.' '.$data->lastname];
                });
        return $this->blade_view->render('shops.pickup.index',$data);
    }
    public function update($id)
    {
        return Orders::where('customers_id', $id)->update(['status' => 'pickup', 'updated_at'=>Carbon::now()]);
    }
    public function get_data_customer()
    {
        $id = $this->input->get('id');
        $customer = Customers::with(['order'=>function($q){
                        return $q->where('status','=',null);
                    }])->find($id);

        $this->output
                ->set_content_type('application/json')
                ->set_output($customer);
    }

    public function grid()
    {
        $user = new Users;
        $query = $user->select(['id','first_name','last_name','username','gender','email','role','active','created_at'])
                        ->get();
                        
        $tables =  $this->griddata
                        ->parsing($query)
                        ->edit('active',function($d){
                            if($d['active'] == 1)
                            {
                                return '<a href="#" class="btn btn-lime btn-sm active btn-block">Active</a>';
                            }else{                        
                                return '<a href="#" class="btn btn-grey active btn-sm btn-block">Idle</a>';
                            }
                        })
                        ->edit('gender',function ($d)
                        {
                            if ($d['gender'] == 'm') {
                                return '<a href="#" class="btn btn-info btn-sm active btn-block">Male</a>';
                            }else{
                                return '<a href="#" class="btn btn-purple btn-sm active btn-block">Female</a>';
                            }
                        })
                        ->add('action',function($data){
                            $btn = '<div class="btn-group">';
                            $btn .= '<a href="'. route('user.edit',$data['id']).'" class="btn btn-sm btn-warning m-b-2">Edit</a>';
                            $btn .= '<a onClick="destroy(`'.route('user.destroy',$data['id']).'`)" href="#" class="btn btn-sm btn-danger m-b-2">Delete</a>';
                            $btn .= '</div>';
                            return $btn;
                        })
                        ->generate();
        $this->output
                ->set_content_type('application/json')
                ->set_output($tables);
    }

}

/* End of file PickupController.php */
