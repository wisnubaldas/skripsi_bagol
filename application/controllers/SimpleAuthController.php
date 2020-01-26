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
                if($user_data->count() != 0)
                {
                    $this->session->set_userdata(['user'=>$user_data->toArray()]);
                    redirect(route('homepage'));   
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