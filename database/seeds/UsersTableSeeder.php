<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create(); 
        User::truncate();
		User::create([
			'first_name' => 'Chad Dylan',
			'last_name' => 'Cooper',
			'birthday' => $faker->date($format = 'Y-m-d', $max = 'now'),
			'gender' => $faker->randomElement(['M', 'F']),
			'email' => 'louielapig@gmail.com',
			'telephone' => $faker->phoneNumber,
			'cellphone' => $faker->phoneNumber,
			'local_address' => $faker->address,
			'permanent_address' => $faker->address,
			'employee_id' => $faker->randomNumber(6),
			'department_id' => $faker->numberBetween(1, 5),
			'designation_item_id' => $faker->numberBetween(1, 10),
			'date_hired' => $faker->date($format = 'Y-m-d', $max = 'now'),
			'exit_date' => NULL,
			'salary' => $faker->numberBetween(15000, 25000),
			'role_id' => 1,
			'username' => 'administrator',
			'password' => 'password',
			'profile_picture' => ''
		]);
		User::create([
			'first_name' => 'Dalton',
			'last_name' => 'Harvey',
			'birthday' => $faker->date($format = 'Y-m-d', $max = 'now'),
			'gender' => $faker->randomElement(['M', 'F']),
			'email' => 'liam.pollich@yahoo.com',
			'telephone' => $faker->phoneNumber,
			'cellphone' => $faker->phoneNumber,
			'local_address' => $faker->address,
			'permanent_address' => $faker->address,
			'employee_id' => $faker->randomNumber(6),
			'department_id' => $faker->numberBetween(1, 5),
			'designation_item_id' => $faker->numberBetween(1, 10),
			'date_hired' => $faker->date($format = 'Y-m-d', $max = 'now'),
			'exit_date' => NULL,
			'salary' => $faker->numberBetween(15000, 25000),
			'role_id' => 2,
			'username' => 'employee',
			'password' => 'password',
			'profile_picture' => ''
		]);
		User::create([
			'first_name' => 'Jairo',
			'last_name' => 'Shields',
			'birthday' => $faker->date($format = 'Y-m-d', $max = 'now'),
			'gender' => $faker->randomElement(['M', 'F']),
			'email' => 'esperanza13@hotmail.com',
			'telephone' => $faker->phoneNumber,
			'cellphone' => $faker->phoneNumber,
			'local_address' => $faker->address,
			'permanent_address' => $faker->address,
			'employee_id' => $faker->randomNumber(6),
			'department_id' => $faker->numberBetween(1, 5),
			'designation_item_id' => $faker->numberBetween(1, 10),
			'date_hired' => $faker->date($format = 'Y-m-d', $max = 'now'),
			'exit_date' => NULL,
			'salary' => $faker->numberBetween(15000, 25000),
			'role_id' => 3,
			'username' => 'manager',
			'password' => 'password',
			'profile_picture' => ''
		]);
		for($x = 0; $x < 50; $x++ ){
			User::create([
				'first_name' => $faker->firstName,
				'last_name' => $faker->lastName,
				'birthday' => $faker->date($format = 'Y-m-d', $max = 'now'),
				'gender' => $faker->randomElement(['M', 'F']),
				'email' => $faker->email,
				'telephone' => $faker->phoneNumber,
				'cellphone' => $faker->phoneNumber,
				'local_address' => $faker->address,
				'permanent_address' => $faker->address,
				'employee_id' => $faker->randomNumber(6),
				'department_id' => $faker->numberBetween(1, 5),
				'designation_item_id' => $faker->numberBetween(1, 10),
				'date_hired' => $faker->date($format = 'Y-m-d', $max = 'now'),
				'exit_date' => NULL,
				'salary' => $faker->numberBetween(15000, 25000),
				'role_id' => 2,
				'username' => $faker->userName,
				'password' => 'password',
				'profile_picture' => ''
			]);
		}
    }
}
