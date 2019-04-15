<?php

use Illuminate\Database\Seeder;
use App\DesignationItem;

class DesignationItemsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		DesignationItem::truncate();
		DesignationItem::create([
			'designation_item' => 'Junior Web Developer', 
			'department_id' => '1',
		]);
		DesignationItem::create([
			'designation_item' => 'Senior Web Developer', 
			'department_id' => '1',
		]);
		DesignationItem::create([
			'designation_item' => 'Web Development Manager', 
			'department_id' => '1',
		]);
		DesignationItem::create([
			'designation_item' => 'Marketing Manager', 
			'department_id' => '2',
		]);
		DesignationItem::create([
			'designation_item' => 'Marketing Associate', 
			'department_id' => '2',
		]);
		DesignationItem::create([
			'designation_item' => 'Sales Manager', 
			'department_id' => '3',
		]);
		DesignationItem::create([
			'designation_item' => 'Sales Associate', 
			'department_id' => '3',
		]);
		DesignationItem::create([
			'designation_item' => 'Admin Associate', 
			'department_id' => '4',
		]);
		DesignationItem::create([
			'designation_item' => 'Content Manager',
			'department_id' => '5',
		]);
		DesignationItem::create([
			'designation_item' => 'Content Junior Writer',
			'department_id' => '5',
		]);
		DesignationItem::create([
			'designation_item' => 'Content Senior Writer',
			'department_id' => '5',
		]);
    }
}
