<?php

use Illuminate\Database\Seeder;
use App\Event;
use Carbon\Carbon;

class EventsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create(); 
        Event::truncate();
		for($x = 1; $x <= 50; $x++ ){
			$date = Carbon::create(2016, 6, 30);
			Event::create([
				'event_name' => $faker->text(20),
				'description' => $faker->text(200),
				'date_start' => $date->subDays(rand(1, 250))->format('Y-m-d'),
				'date_end' => $date->addDays(rand(0, 5))->format('Y-m-d'),
			]);
		}
    }
}
