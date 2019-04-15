<?php

use Illuminate\Database\Seeder;
use App\Notice;
use Carbon\Carbon;

class NoticesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create(); 
        Notice::truncate();
		for($x = 1; $x <= 20; $x++ ){
			$date = Carbon::create(2016, 3, 25)->subDays(rand(1, 50))->format('Y-m-d');
			Notice::insert([
				'published' => 1,
				'title' => $faker->text(20),
				'description' => $faker->text(200),
				'created_at' => $date,
				'updated_at' => $date,
			]);
		}
    }
}
