<?php 
defined('BASEPATH') OR exit('No direct script access allowed');


use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Capsule\Manager as DB;
class Griddata
{
    protected $ci;
    protected $config;
    protected $field = false;
    protected $kolom;
    protected $where = [];
    protected $qq = false;
    protected $dt;
    public function __construct()
    {
        DB::enableQueryLog();
        $this->ci =& get_instance();
        $config = [
                'host'     => env('DB_HOST'),
                'port'     => '3306',
                'username' => env('DB_USERNAME'),
                'password' => env('DB_PASSWORD'),
                'database' => env('DB_DATABASE') ];
        $this->dt = new Datatables( new MySQL($config) );
    }
public function parsing($q)
{
	$q;
    $query = DB::getQueryLog(); // Show results of log
    return $this->dt->query($query[0]['query']);
}

}


/* End of file GridData.php */
