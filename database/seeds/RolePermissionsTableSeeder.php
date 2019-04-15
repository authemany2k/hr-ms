<?php

use Illuminate\Database\Seeder;
use App\RolePermission;
use App\Permission;

class RolePermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        RolePermission::truncate();
		$permissions = Permission::all();
		foreach($permissions as $permission){
			RolePermission::create([
				'permission_id' => $permission->id,
				'role_id' => 1,
				'level' => $permission->level ? 'all' : NULL,
			]);
		}
		RolePermission::create([
			'permission_id' => 1,
			'role_id' => 2,
			'level' => 'self',
		]);
		RolePermission::create([
			'permission_id' => 5,
			'role_id' => 2,
			'level' => 'team',
		]);
		RolePermission::create([
			'permission_id' => 25,
			'role_id' => 2,
			'level' => 'self',
		]);
		RolePermission::create([
			'permission_id' => 33,
			'role_id' => 2,
			'level' => NULL,
		]);
		RolePermission::create([
			'permission_id' => 37,
			'role_id' => 2,
			'level' => 'self',
		]);
		RolePermission::create([
			'permission_id' => 41,
			'role_id' => 2,
			'level' => NULL,
		]);
		RolePermission::create([
			'permission_id' => 45,
			'role_id' => 2,
			'level' => 'team',
		]);
		
		RolePermission::create([
			'permission_id' => 46,
			'role_id' => 2,
			'level' => 'self',
		]);
		RolePermission::create([
			'permission_id' => 53,
			'role_id' => 2,
			'level' => NULL,
		]);
		RolePermission::create([
			'permission_id' => 61,
			'role_id' => 2,
			'level' => NULL,
		]);
		foreach($permissions as $permission){
			if($permission->level){
				RolePermission::create([
					'permission_id' => $permission->id,
					'role_id' => 3,
					'level' => 'team',
				]);
			}
		}
		RolePermission::create([
			'permission_id' => 61,
			'role_id' => 3,
			'level' => NULL,
		]);
		RolePermission::create([
			'permission_id' => 62,
			'role_id' => 3,
			'level' => NULL,
		]);
		RolePermission::create([
			'permission_id' => 63,
			'role_id' => 3,
			'level' => NULL,
		]);
		RolePermission::create([
			'permission_id' => 64,
			'role_id' => 3,
			'level' => NULL,
		]);
		RolePermission::create([
			'permission_id' => 65,
			'role_id' => 3,
			'level' => 'team',
		]);
		RolePermission::create([
			'permission_id' => 66,
			'role_id' => 3,
			'level' => 'team',
		]);
		RolePermission::create([
			'permission_id' => 67,
			'role_id' => 3,
			'level' => 'team',
		]);
		RolePermission::create([
			'permission_id' => 68,
			'role_id' => 3,
			'level' => 'team',
		]);
    }
}
