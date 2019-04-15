<?php

use Illuminate\Database\Seeder;
use App\Designation;
use Carbon\Carbon;

class DesignationsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create(); 
        Designation::truncate();
		for($x = 1; $x <= 50; $x++ ){
			$date = Carbon::create(2015, 12, 28);
			Designation::create([
				'user_id' => $x,
				'designation_item_id' => $faker->numberBetween(1, 11),
				'date_start' => $date->subDays(rand(10, 250))->format('Y-m-d'),
				'date_end' => NULL,
			]);
		}
		for($x = 1; $x <= 50; $x++ ){
			$date = Carbon::create(2015, 12, 28);
			Designation::create([
				'user_id' => $faker->numberBetween(1, 50),
				'designation_item_id' => $faker->numberBetween(1, 11),
				'date_end' => $date->subDays(rand(250, 500))->format('Y-m-d'),
				'date_start' => $date->subDays(rand(50, 150))->format('Y-m-d'),
			]);
		}
    }
}
