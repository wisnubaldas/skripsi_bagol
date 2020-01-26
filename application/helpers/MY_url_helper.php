<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

if ( ! function_exists('asset_url')) {
    function asset_url(string $path) {
        return $path;
    }
}

if ( ! function_exists('create_invoice')) {
    function create_invoice(string $date) {
        $numbers = 'INV/'.str_pad(random_int(1,100000), 5, "0", STR_PAD_LEFT).date('dmY-His',$date);
        return $numbers;
    }
}

/* End of file MY_url_helper.php */
