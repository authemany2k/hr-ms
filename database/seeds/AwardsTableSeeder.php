<?php

use Illuminate\Database\Seeder;
use App\Award;

class AwardsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create(); 
        Award::truncate();
		for($x = 0; $x < 50; $x++ ){
			Award::create([
				'user_id' => $faker->numberBetween(1, 50),
				'award_name' => $faker->text(20),
				'gift_item' => $faker->text(20),
				'cash_price' => $faker->numberBetween(500, 5000),
			]);
		}
    }
}
