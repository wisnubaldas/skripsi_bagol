<?php

defined('BASEPATH') OR exit('No direct script access allowed');

use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;

$config['datatables'] = [
    'host'     => env('DB_HOST'),
    'port'     => '3306',
    'username' => env('DB_USERNAME'),
    'password' => env('DB_PASSWORD'),
    'database' => env('DB_DATABASE') ];


/* End of file blade.php */
/* Location: ./application/config/blade.php */