<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Faker\Factory as Faker;
class Migration_create_seed_data extends CI_Migration
{
    public function up()
    {
        try {
            
        for ($i=0; $i < 100; $i++) { 
            // $this->generateData();
        }

        } catch (\Throwable $th) {
            // echo 'Message: ' .$th->getMessage();
        }
    }

    public function down()
    {
        
    }

    protected function generateData()
    {
        $faker = Faker::create('id_ID');
        $users_id = 1;
        $name = $faker->name($gender = 'male'|'female');
        $wrapping_message = $faker->text($maxNbChars = 50);
        $firstname = $faker->firstname;
        $lastname = $faker->lastname;
        $email = $faker->email;
        $phone = $faker->e164PhoneNumber;
        $dd = compact('users_id','name','wrapping_message','firstname','lastname','email','phone');
        $this->db->insert('couriers', $dd);
    }
}