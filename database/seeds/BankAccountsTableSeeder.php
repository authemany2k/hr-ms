<?php

use Illuminate\Database\Seeder;
use App\BankAccount;

class BankAccountsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create(); 
        BankAccount::truncate();
		for($x = 1; $x <= 50; $x++ ){
			BankAccount::create([
				'user_id' => $x,
				'account_name' => $faker->text(20),
				'account_number' => $faker->randomNumber(8),
				'bank_name' => 'EastWest',
			]);
		}
    }
}
