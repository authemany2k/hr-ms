<?php

use Illuminate\Database\Seeder;
use App\Permission;

class PermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Permission::truncate();
		//Absences
		Permission::create([
			'permission' => 'view_absences', 
			'label' => 'View Absences',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'create_absences', 
			'label' => 'Create Absences',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'edit_absences', 
			'label' => 'Edit Absences',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'delete_absences', 
			'label' => 'Delete Absences',
			'level' => '1',
		]);
		//Awards
		Permission::create([
			'permission' => 'view_awards', 
			'label' => 'View Awards',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'create_awards', 
			'label' => 'Create Awards',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'edit_awards', 
			'label' => 'Edit Awards',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'delete_awards', 
			'label' => 'Delete Awards',
			'level' => '1',
		]);
		//Bank Accounts
		Permission::create([
			'permission' => 'view_bank_accounts', 
			'label' => 'View Bank Accounts',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'create_bank_accounts', 
			'label' => 'Create Bank Accounts',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'edit_bank_accounts', 
			'label' => 'Edit Bank Accounts',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'delete_bank_accounts', 
			'label' => 'Delete Bank Accounts',
			'level' => '0',
		]);
		//Departments
		Permission::create([
			'permission' => 'view_departments', 
			'label' => 'View Departments',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'create_departments', 
			'label' => 'Create Departments',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'edit_departments', 
			'label' => 'Edit Departments',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'delete_departments', 
			'label' => 'Delete Departments',
			'level' => '0',
		]);
		//Designations
		Permission::create([
			'permission' => 'view_designations', 
			'label' => 'View Designations',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'create_designations', 
			'label' => 'Create Designations',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'edit_designations', 
			'label' => 'Edit Designations',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'delete_designations', 
			'label' => 'Delete Designations',
			'level' => '1',
		]);
		//Designation Items
		Permission::create([
			'permission' => 'view_designation_items', 
			'label' => 'View Designation Items',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'create_designation_items', 
			'label' => 'Create Designation Items',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'edit_designation_items', 
			'label' => 'Edit Designation Items',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'delete_designation_items', 
			'label' => 'Delete Designation Items',
			'level' => '0',
		]);
		//Documents
		Permission::create([
			'permission' => 'view_documents', 
			'label' => 'View Documents',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'create_documents', 
			'label' => 'Create Documents',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'edit_documents', 
			'label' => 'Edit Documents',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'delete_documents', 
			'label' => 'Delete Documents',
			'level' => '1',
		]);
		//Document Types
		Permission::create([
			'permission' => 'view_document_types', 
			'label' => 'View Document Types',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'create_document_types', 
			'label' => 'Create Document Types',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'edit_document_types', 
			'label' => 'Edit Document Types',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'delete_document_types', 
			'label' => 'Delete Document Types',
			'level' => '0',
		]);
		//Events
		Permission::create([
			'permission' => 'view_events', 
			'label' => 'View Events',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'create_events', 
			'label' => 'Create Events',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'edit_events', 
			'label' => 'Edit Events',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'delete_events', 
			'label' => 'Delete Events',
			'level' => '0',
		]);
		//Expenses
		Permission::create([
			'permission' => 'view_expenses', 
			'label' => 'View Expenses',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'create_expenses', 
			'label' => 'Create Expenses',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'edit_expenses', 
			'label' => 'Edit Expenses',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'delete_expenses', 
			'label' => 'Delete Expenses',
			'level' => '1',
		]);
		//Holidays
		Permission::create([
			'permission' => 'view_holidays', 
			'label' => 'View Holidays',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'create_holidays', 
			'label' => 'Create Holidays',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'edit_holidays', 
			'label' => 'Edit Holidays',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'delete_holidays', 
			'label' => 'Delete Holidays',
			'level' => '0',
		]);
		//Leaves
		Permission::create([
			'permission' => 'view_leaves', 
			'label' => 'View Leaves',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'create_leaves', 
			'label' => 'Create Leaves',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'edit_leaves', 
			'label' => 'Edit Leaves',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'delete_leaves', 
			'label' => 'Delete Leaves',
			'level' => '1',
		]);
		//Leave Types
		Permission::create([
			'permission' => 'view_leave_types', 
			'label' => 'View Leave Types',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'create_leave_types', 
			'label' => 'Create Leave Types',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'edit_leave_types', 
			'label' => 'Edit Leave Types',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'delete_leave_types', 
			'label' => 'Delete Leave Types',
			'level' => '0',
		]);
		//Notices
		Permission::create([
			'permission' => 'view_notices', 
			'label' => 'View Notices',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'create_notices', 
			'label' => 'Create Notices',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'edit_notices', 
			'label' => 'Edit Notices',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'delete_notices', 
			'label' => 'Delete Notices',
			'level' => '0',
		]);
		//Accounts
		Permission::create([
			'permission' => 'view_users', 
			'label' => 'View Users',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'create_users', 
			'label' => 'Create Users',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'edit_users', 
			'label' => 'Edit Users',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'delete_users', 
			'label' => 'Delete Users',
			'level' => '1',
		]);
		//Job Vacancies
		Permission::create([
			'permission' => 'view_job_vacancies', 
			'label' => 'View Job Vacancies',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'create_job_vacancies', 
			'label' => 'Create Job Vacancies',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'edit_job_vacancies', 
			'label' => 'Edit Job Vacancies',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'delete_job_vacancies', 
			'label' => 'Delete Job Vacancies',
			'level' => '0',
		]);
		//Job Vacancies
		Permission::create([
			'permission' => 'view_candidates', 
			'label' => 'View Candidates',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'create_candidates', 
			'label' => 'Create Candidates',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'edit_candidates', 
			'label' => 'Edit Candidates',
			'level' => '0',
		]);
		Permission::create([
			'permission' => 'delete_candidates', 
			'label' => 'Delete Candidates',
			'level' => '0',
		]);
		//Attendances
		Permission::create([
			'permission' => 'view_attendances', 
			'label' => 'View Attendances',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'create_attendances', 
			'label' => 'Create Attendances',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'edit_attendances', 
			'label' => 'Edit Attendances',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'delete_attendances', 
			'label' => 'Delete Attendances',
			'level' => '1',
		]);
		//Cut Offs
		Permission::create([
			'permission' => 'view_cut_offs', 
			'label' => 'View Cut Offs',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'create_cut_offs', 
			'label' => 'Create Cut Offs',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'edit_cut_offs', 
			'label' => 'Edit Cut Offs',
			'level' => '1',
		]);
		Permission::create([
			'permission' => 'delete_cut_offs', 
			'label' => 'Delete Cut Offs',
			'level' => '1',
		]);
    }
}
