<?php 
defined('BASEPATH') OR exit('No direct script access allowed');


use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
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
        $this->ci =& get_instance();
        $config = [
                'host'     => env('DB_HOST'),
                'port'     => '3306',
                'username' => env('DB_USERNAME'),
                'password' => env('DB_PASSWORD'),
                'database' => env('DB_DATABASE') ];
        $this->dt = new Datatables( new MySQL($config) );
    }

    public function table(string $table)
    {
        $this->qq = 'Select '.$this->field.' from '.$table;
        try {
            return $this->qq;
        } catch (\Exception $th) {
            return show_error($th->getMessage().'<br>'.
            $th->getFile().'<br> <strong>Ada di Baris: '.$th->getLine().'</strong>'
            , 500, 'Error query datatable');
        }
    }

    public function field(array $field = []) // implode array
    {
            $this->field = implode(",",$field);
            $this->kolom = $field;
            return $this;
    }
    public function where(array $where = [])
    {
        dd($this->qq);
        
    //     if(count($where) !== 3)
    //     {
    //         throw new Exception("Array harus statis parameter, operan, value ngga boleh nambah", 500);
    //     }
    //     $this->where .= $where[0].' '.$where[1].' "'.$where[2].'"';;
    //    return $this;
    }
    
    // public function run()
    // {
        // if (isset($this->where)) {
        //     dd($this->where);

        //     $q = $this->qq.' where '.$this->where;
        //     $this->dt->query($q);
        //     return $this->dt;
        // }
        // return $this->dt;
    // }
    protected function error($message,$head = 'Error')
    {
        return show_error($message, 500, $head);
    }

}


/* End of file GridData.php */
