<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UsersTableSeeder::class);
        $this->call(RolesTableSeeder::class);
        $this->call(DepartmentsTableSeeder::class);
        $this->call(DesignationItemsTableSeeder::class);
        $this->call(DocumentTypesTableSeeder::class);
        $this->call(LeaveTypesTableSeeder::class);
        $this->call(AwardsTableSeeder::class);
        $this->call(BankAccountsTableSeeder::class);
        $this->call(DesignationsTableSeeder::class);
        $this->call(EventsTableSeeder::class);
        $this->call(NoticesTableSeeder::class);
        $this->call(PermissionsTableSeeder::class);
        $this->call(RolePermissionsTableSeeder::class);
    }
}
