<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserMiddleware implements Luthier\MiddlewareInterface
{

    /**
     * Middleware entry point
     *
     * @return void
     */
    public function run($args = [])
    {
        
        // ci()->session->unset_userdata('user');
        
        $user = ci()->session->userdata('user');
        if(!$user)
        {
            redirect(route('login'));
        }else{
            return true;
        }
    }
}
