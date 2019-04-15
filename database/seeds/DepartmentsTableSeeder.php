<?php

use Illuminate\Database\Seeder;
use App\Department;

class DepartmentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		Department::truncate();
		Department::create([
			'department' => 'Web Development', 
			'department_id' => 'NULL',
		]);
		Department::create([
			'department' => 'Marketing', 
			'department_id' => 'NULL',
		]);
		Department::create([
			'department' => 'Sales', 
			'department_id' => 'NULL',
		]);
		Department::create([
			'department' => 'Admin', 
			'department_id' => 'NULL',
		]);
		Department::create([
			'department' => 'Content',
			'department_id' => 'NULL',
		]);
    }
}
