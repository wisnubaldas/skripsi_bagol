<?php

defined('BASEPATH') OR exit('No direct script access allowed');

use Luthier\Route;
class SimpleAuthController extends CI_Controller
{

   public $user;
   public function __construct()
   {
       parent::__construct();
        $this->user = $this->session->userdata('user');
        $this->load->model('Users');
        $this->load->library('googlemaps');
		$this->load->model('Orders');
        
   }

   public function map()
   {
        $lat_long = $this->Orders->select(['id','latitude','longitude','status'])
                ->whereIn('status',['delivery','pickup'])
                ->get();
                // dd($lat_long->toArray());

                $this->googlemaps->initialize();
                $this->googlemaps->center = '-6.21462, 106.84513';
                $this->googlemaps->directions = true;
                $this->googlemaps->minifyJS = true;
                $this->googlemaps->zoom = 11;
            foreach ($lat_long as $v) {
                switch ($v->status) {
                case 'delivery':
                    $this->googlemaps->add_marker(
                            [
                                'position' => $v->latitude.', '.$v->longitude,
                                'icon' => 'http://maps.google.com/mapfiles/kml/pal4/icon7.png',
                                'onclick'=>'$("#map-modal").modal(); ShowPickupBaloon("'.$v->id.'")'
                            ]
                        );
                break;
                case 'pickup':
                $this->googlemaps->add_marker(
                            [
                                'position' => $v->latitude.', '.$v->longitude,
                                'icon' => 'http://maps.google.com/mapfiles/kml/pal4/icon54.png',
                                'onclick'=>'$("#map-modal").modal(); ShowPickupBaloon("'.$v->id.'")'
                            ]
                        );
                break;
                }
            }
            $data['map'] = $this->googlemaps->create_map();
       return $this->blade_view->render('template.page-blank', $data);
   }

    private function loadView($view, $data = [])
    {
         $this->load->library('blade_view');
         if(file_exists(VIEWPATH . '/simpleauth/' . $view . '.blade.php'))
         {
             return $this->blade_view->render('simpleauth.'.$view,$data);  
         }
    }
    public function login()
    {
        if($this->user)
        {
            redirect(route('homepage'));
        }else{
            $post_data = $this->input->post();
            if($post_data)
            {
                $user_data = Users::where(['email'=>$post_data['email'],'password'=> hash('ripemd160',$post_data['password'])])->first();
                if($user_data)
                {
                    if($user_data->count() != 0)
                    {
                        $this->session->set_userdata(['user'=>$user_data->toArray()]);
                        redirect(route('homepage'));  
                    }
                    
                }else{
                    redirect('/');
                }
                
            }else{
                $this->loadView('login');
            }
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('user');
        redirect(route('login'));  
    }
}