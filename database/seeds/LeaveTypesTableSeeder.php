<?php

use Illuminate\Database\Seeder;
use App\LeaveType;

class LeaveTypesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        LeaveType::truncate();
		LeaveType::create([
			'leave_type' => 'Vacation Leave',
		]);
		LeaveType::create([
			'leave_type' => 'Sick Leave',
		]);
		LeaveType::create([
			'leave_type' => 'Maternal Leave',
		]);
		LeaveType::create([
			'leave_type' => 'Paternal Leave',
		]);
		LeaveType::create([
			'leave_type' => 'Birthday Leave',
		]);
    }
}
