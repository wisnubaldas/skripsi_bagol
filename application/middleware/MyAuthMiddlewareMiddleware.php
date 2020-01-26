<?php

defined('BASEPATH') OR exit('No direct script access allowed');

use Luthier\Route;

class MyAuthMiddlewareMiddleware implements Luthier\MiddlewareInterface
{

    public function __construct()
    {
        ci()->load->model('Users');
    }
    
    /**
     * Middleware entry point
     *
     * @return void
     */
    
     public function run($args = [])
    {
        if(ci()->session->userdata('user'))
        {
            // dd(ci()->session->userdata('user'));
        }else{
            return route('login');
        }
    }

}