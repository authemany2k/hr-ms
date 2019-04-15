<?php

use Illuminate\Database\Seeder;
use App\Role;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		Role::truncate();
		Role::create([
			'role' => 'Administrator', 
			'layout' => '1',
		]);
		Role::create([
			'role' => 'Employee', 
			'layout' => '0',
		]);
		Role::create([
			'role' => 'Team Leader/Manager', 
			'layout' => '0',
		]);
    }
}
