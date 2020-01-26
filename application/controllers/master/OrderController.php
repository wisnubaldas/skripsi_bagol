<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Capsule\Manager as DB;
use GuzzleHttp\Client;
class OrderController extends CI_Controller {

    protected $fields;
    public function __construct()
	{
    parent::__construct();
    $this->load->library('form_validation');
    $this->load->model('Orders');
    $this->load->model('Customers');
    
	}
    
    public function index()
    {
      $kolom = $this->Orders->kolom;
        return $this->blade_view->render('shops.order.index',compact('kolom'));
    }

    public function create()
    {
      if ($this->input->server('REQUEST_METHOD') == 'GET'){
          $data['customer'] = Customers::all();
          return $this->blade_view->render('shops.order.create',$data);
      }
      else if ($this->input->server('REQUEST_METHOD') == 'POST'){
        
        $this->validation();
        
        if ($this->form_validation->run() == FALSE)
                {
                  $this->session->set_flashdata('msg', $this->form_validation->error_array());
                  redirect(route('order'));
                }
                else
                {
                        $r = $this->input->post();
                        $client = new Client([
                                'timeout'  => 2.0,
                            ]);
                        $response = $client->request('GET', 'https://maps.googleapis.com/maps/api/geocode/json', [
                                'query' => [
                                        'address' => $r['delivery_street_address'].' '.$r['delivery_city'].' '.$r['delivery_postcode'],
                                        'key' => 'AIzaSyDYxcj9zQErZ6KkleQahg_vuY2cRg5yfEU'
                                        ]
                            ]);
                        $array = json_decode($response->getBody()->getContents(), true);
                        $location = $array['results'][0]['geometry']['location'];
                        $data = array_merge(['latitude'=>$location['lat'],'longitude'=>$location['lng'],'date'=>date('Y-m-d',strtotime('now'))],$r);

                    $id = $this->Orders->insert($data);
                    if($id)
                    {
                      $this->session->set_flashdata('msg', ['sukses'=>'Sukses memanjingkan data...!!']);
                    }
                    redirect(route('order'));
                }

        
        
      }
    }

    public function edit($id)
    {
        $data['customer'] = Customers::all();
        $data['order'] = Orders::find($id)->first();
        return $this->blade_view->render('shops.order.edit',$data);
    }
    public function update($id)
    {
        $this->Orders->where('id',$id)->update($this->input->post());
        redirect(route('order'),'refresh');
        
    }

    public function show($id)
    {
        $or = Orders::find($id)->first();
        $this->output
        ->set_content_type('application/json')
        ->set_output($or);
    }
    protected function validation()
    {
      $config = array(
                      
                      array(
                              'field' => 'delivery_name',
                              'label' => 'Name',
                              'rules' => 'required',
                              'errors' => array(
                                      'required' => '%s harus di isi,',
                              ),
                      ),
                      array(
                              'field' => 'customers_id',
                              'label' => 'Customer Name',
                              'rules' => 'required',
                              'errors' => array(
                                      'required' => '%s harus di isi,',
                              ),
                      ),
                      array(
                              'field' => 'delivery_company',
                              'label' => 'Company Name',
                              'rules' => 'required',
                              'errors' => array(
                                      'required' => '%s harus di isi,',
                              ),
                      ),
                      array(
                              'field' => 'delivery_street_address',
                              'label' => 'delivery street address',
                              'rules' => 'required',
                              'errors' => array(
                                      'required' => '%s harus di isi,',
                              ),
                      ),
                      array(
                              'field' => 'delivery_city',
                              'label' => 'delivery city',
                              'rules' => 'required',
                              'errors' => array(
                                      'required' => '%s harus di isi,',
                              ),
                      ),
                      array(
                              'field' => 'delivery_postcode',
                              'label' => 'postcode',
                              'rules' => 'required',
                              'errors' => array(
                                      'required' => '%s harus di isi,',
                              ),
                      ),
                      
              );
          return $this->form_validation->set_rules($config);
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
                  ->add('action', function($data){
                        return "<a href='".route('order.edit',$data['id']) . "' class='btn btn-purple btn-sm'>edit</a>";
                  })
                  // ->hide('latitude', 'longitude')
                  ->generate();
          $this->output
                  ->set_content_type('application/json')
                  ->set_output($j);
      }
}

/* End of file OrderController.php */
