<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::auth();

Route::get('/', 'HomeController@index');
//pusher
Route::get('users/event-user', 'UserController@user');

//Autocomplete
Route::get('autocomplete/users', 'AutoCompleteController@users');
Route::get('autocomplete/leave_types', 'AutoCompleteController@leave_types');
Route::get('autocomplete/departments', 'AutoCompleteController@departments');
Route::get('autocomplete/designation_items', 'AutoCompleteController@designation_items');
Route::get('autocomplete/document_types', 'AutoCompleteController@document_types');
Route::get('autocomplete/roles', 'AutoCompleteController@roles');

//Route::resource('absences', 'AbsenceController');
Route::get('absences', 'AbsenceController@index');
Route::get('absences/search', 'AbsenceController@search');
Route::get('absences/create', 'AbsenceController@create');
Route::post('absences', 'AbsenceController@store');
Route::get('absences/{absence}', 'AbsenceController@show');
Route::get('absences/{absence}/edit', 'AbsenceController@edit');
Route::patch('absences/{absence}', 'AbsenceController@update');
Route::delete('absences/{absence}', 'AbsenceController@destroy');

//Route::resource('attendances', 'AttendanceController');
Route::get('attendances', 'AttendanceController@index');
Route::get('attendances/search', 'AttendanceController@search');
Route::get('attendances/create', 'AttendanceController@create');
Route::post('attendances', 'AttendanceController@store');
Route::get('attendances/{attendance}', 'AttendanceController@show');
Route::get('attendances/{attendance}/edit', 'AttendanceController@edit');
Route::patch('attendances/{attendance}', 'AttendanceController@update');
Route::delete('attendances/{attendance}', 'AttendanceController@destroy');

//Route::resource('awards', 'AwardController');
Route::get('awards', 'AwardController@index');
Route::get('awards/search', 'AwardController@search');
Route::get('awards/create', 'AwardController@create');
Route::post('awards', 'AwardController@store');
Route::get('awards/{award}', 'AwardController@show');
Route::get('awards/{award}/edit', 'AwardController@edit');
Route::patch('awards/{award}', 'AwardController@update');
Route::delete('awards/{award}', 'AwardController@destroy');

//Route::resource('bank-accounts', 'BankAccountController');
Route::get('bank-accounts', 'BankAccountController@index');
Route::get('bank-accounts/search', 'BankAccountController@search');
Route::get('bank-accounts/create', 'BankAccountController@create');
Route::post('bank-accounts', 'BankAccountController@store');
Route::get('bank-accounts/{bank_account}', 'BankAccountController@show');
Route::get('bank-accounts/{bank_account}/edit', 'BankAccountController@edit');
Route::patch('bank-accounts/{bank_account}', 'BankAccountController@update');
Route::delete('bank-accounts/{bank_account}', 'BankAccountController@destroy');

//Route::resource('cut-offs', 'CutOffController');
Route::get('cut-offs', 'CutOffController@index');
Route::get('cut-offs/search', 'CutOffController@search');
Route::get('cut-offs/create', 'CutOffController@create');
Route::post('cut-offs', 'CutOffController@store');
Route::get('cut-offs/{cut_off}', 'CutOffController@show');
Route::get('cut-offs/{cut_off}/edit', 'CutOffController@edit');
Route::patch('cut-offs/{cut_off}', 'CutOffController@update');
Route::delete('cut-offs/{cut_off}', 'CutOffController@destroy');

//Route::resource('departments', 'DepartmentController');
Route::get('departments', 'DepartmentController@index');
Route::get('departments/search', 'DepartmentController@search');
Route::get('departments/create', 'DepartmentController@create');
Route::post('departments', 'DepartmentController@store');
Route::get('departments/{department}', 'DepartmentController@show');
Route::get('departments/{department}/edit', 'DepartmentController@edit');
Route::patch('departments/{department}', 'DepartmentController@update');
Route::delete('departments/{department}', 'DepartmentController@destroy');

Route::get('departments/{department}/designation-items/create', 'DesignationItemController@create');
Route::post('departments/{department}/designation-items', 'DesignationItemController@store');
Route::get('departments/{department}/designation-items/{designation_item}/edit', 'DesignationItemController@edit');
Route::patch('departments/{department}/designation-items/{designation_item}', 'DesignationItemController@update');
Route::delete('departments/{department}/designation-items/{designation_item}', 'DesignationItemController@destroy');

//Route::resource('designations', 'DesignationController');
Route::get('designations', 'DesignationController@index');
Route::get('designations/search', 'DesignationController@search');
Route::get('designations/create', 'DesignationController@create');
Route::post('designations', 'DesignationController@store');
Route::get('designations/{designation}', 'DesignationController@show');
Route::get('designations/{designation}/edit', 'DesignationController@edit');
Route::patch('designations/{designation}', 'DesignationController@update');
Route::delete('designations/{designation}', 'DesignationController@destroy');

//Route::resource('designation-items', 'DesignationItemController');
Route::get('designation-items', 'DesignationItemController@index');
Route::get('designation-items/search', 'DesignationItemController@search');
Route::get('designation-items/create', 'DesignationItemController@create');
Route::post('designation-items', 'DesignationItemController@store');
Route::get('designation-items/{designation_item}', 'DesignationItemController@show');
Route::get('designation-items/{designation_item}/edit', 'DesignationItemController@edit');
Route::patch('designation-items/{designation_item}', 'DesignationItemController@update');
Route::delete('designation-items/{designation_item}', 'DesignationItemController@destroy');

//Route::resource('documents', 'DocumentController');
Route::get('documents', 'DocumentController@index');
Route::get('documents/search', 'DocumentController@search');
Route::get('documents/create', 'DocumentController@create');
Route::post('documents', 'DocumentController@store');
Route::get('documents/{document}', 'DocumentController@show');
Route::get('documents/{document}/edit', 'DocumentController@edit');
Route::patch('documents/{document}', 'DocumentController@update');
Route::delete('documents/{document}', 'DocumentController@destroy');

//Route::resource('document-types', 'DocumentTypeController');
Route::get('document-types', 'DocumentTypeController@index');
Route::get('document-types/search', 'DocumentTypeController@search');
Route::get('document-types/create', 'DocumentTypeController@create');
Route::post('document-types', 'DocumentTypeController@store');
Route::get('document-types/{document_type}', 'DocumentTypeController@show');
Route::get('document-types/{document_type}/edit', 'DocumentTypeController@edit');
Route::patch('document-types/{document_type}', 'DocumentTypeController@update');
Route::delete('document-types/{document_type}', 'DocumentTypeController@destroy');

//Route::resource('events', 'EventController');
Route::get('events', 'EventController@index');
Route::get('events/search', 'EventController@search');
Route::get('events/create', 'EventController@create');
Route::post('events', 'EventController@store');
Route::get('events/{event}', 'EventController@show');
Route::get('events/{event}/edit', 'EventController@edit');
Route::patch('events/{event}', 'EventController@update');
Route::delete('events/{event}', 'EventController@destroy');

//Route::resource('expenses', 'ExpenseController');
Route::get('expenses', 'ExpenseController@index');
Route::get('expenses/search', 'ExpenseController@search');
Route::get('expenses/create', 'ExpenseController@create');
Route::post('expenses', 'ExpenseController@store');
Route::get('expenses/{expense}', 'ExpenseController@show');
Route::get('expenses/{expense}/edit', 'ExpenseController@edit');
Route::patch('expenses/{expense}', 'ExpenseController@update');
Route::delete('expenses/{expense}', 'ExpenseController@destroy');

//Route::resource('holidays', 'HolidayController');
Route::get('holidays', 'HolidayController@index');
Route::get('holidays/search', 'HolidayController@search');
Route::get('holidays/create', 'HolidayController@create');
Route::post('holidays', 'HolidayController@store');
Route::get('holidays/{holiday}', 'HolidayController@show');
Route::get('holidays/{holiday}/edit', 'HolidayController@edit');
Route::patch('holidays/{holiday}', 'HolidayController@update');
Route::delete('holidays/{holiday}', 'HolidayController@destroy');

//Route::resource('leaves', 'LeaveController');
Route::get('leaves', 'LeaveController@index');
Route::get('leaves/search', 'LeaveController@search');
Route::get('leaves/create', 'LeaveController@create');
Route::post('leaves', 'LeaveController@store');
Route::get('leaves/{leave}', 'LeaveController@show');
Route::get('leaves/{leave}/edit', 'LeaveController@edit');
Route::patch('leaves/{leave}', 'LeaveController@update');
Route::delete('leaves/{leave}', 'LeaveController@destroy');

//Route::resource('leave-types', 'LeaveTypeController');
Route::get('leave-types', 'LeaveTypeController@index');
Route::get('leave-types/search', 'LeaveTypeController@search');
Route::get('leave-types/create', 'LeaveTypeController@create');
Route::post('leave-types', 'LeaveTypeController@store');
Route::get('leave-types/{leave_type}', 'LeaveTypeController@show');
Route::get('leave-types/{leave_type}/edit', 'LeaveTypeController@edit');
Route::patch('leave-types/{leave_type}', 'LeaveTypeController@update');
Route::delete('leave-types/{leave_type}', 'LeaveTypeController@destroy');

//Route::resource('notices', 'NoticeController');
Route::get('notices', 'NoticeController@index');
Route::get('notices/search', 'NoticeController@search');
Route::get('notices/create', 'NoticeController@create');
Route::post('notices', 'NoticeController@store');
Route::get('notices/{notice}', 'NoticeController@show');
Route::get('notices/{notice}/edit', 'NoticeController@edit');
Route::patch('notices/{notice}', 'NoticeController@update');
Route::delete('notices/{notice}', 'NoticeController@destroy');

//Route::resource('roles', 'RoleController');
Route::get('roles', 'RoleController@index');
Route::get('roles/search', 'RoleController@search');
Route::get('roles/create', 'RoleController@create');
Route::post('roles', 'RoleController@store');
Route::get('roles/{role}', 'RoleController@show');
Route::get('roles/{role}/edit', 'RoleController@edit');
Route::patch('roles/{role}', 'RoleController@update');
Route::delete('roles/{role}', 'RoleController@destroy');

//Route::resource('users', 'UserController');
Route::get('users', 'UserController@index');
Route::get('users/search', 'UserController@search');
Route::get('users/create', 'UserController@create');
Route::post('users', 'UserController@store');
Route::get('users/{user}', 'UserController@show');
Route::get('users/{user}/edit', 'UserController@edit');
Route::patch('users/{user}', 'UserController@update');
Route::delete('users/{user}', 'UserController@destroy');

Route::get('users/{user}/absences/create', 'AbsenceController@create');
Route::post('users/{user}/absences', 'AbsenceController@store');
Route::get('users/{user}/attendances/cut-off', 'AttendanceController@getUserAttendanceByCutOff');
Route::get('users/{user}/attendances/create', 'AttendanceController@createBulk');
Route::get('users/{user}/attendances/create/cut-off/{cut_off}', 'AttendanceController@createByCutOff');
Route::post('users/{user}/attendances/create/cut-off', 'AttendanceController@createByCutOffRedirect');
Route::post('users/{user}/attendances', 'AttendanceController@storeBulk');
Route::get('users/{user}/awards/create', 'AwardController@create');
Route::post('users/{user}/awards', 'AwardController@store');
Route::get('users/{user}/documents/create', 'DocumentController@create');
Route::post('users/{user}/documents', 'DocumentController@store');
Route::get('users/{user}/expenses/create', 'ExpenseController@create');
Route::post('users/{user}/expenses', 'ExpenseController@store');
Route::get('users/{user}/leaves/create', 'LeaveController@create');
Route::post('users/{user}/leaves', 'LeaveController@store');
Route::get('users/{user}/bank-account/create', 'BankAccountController@create');
Route::post('users/{user}/bank-account', 'BankAccountController@store');
Route::get('users/{user}/bank-account/{bank_account}/edit', 'BankAccountController@edit');
Route::patch('users/{user}/bank-account/{bank_account}', 'BankAccountController@update');

//Route::resource('user-absences', 'UserAbsenceController');
Route::get('user-absences', 'UserAbsenceController@index');
Route::get('user-absences/create', 'UserAbsenceController@create');
Route::post('user-absences', 'UserAbsenceController@store');
Route::get('user-absences/{user_absence}', 'UserAbsenceController@show');
Route::get('user-absences/{user_absence}/edit', 'UserAbsenceController@edit');
Route::patch('user-absences/{user_absence}', 'UserAbsenceController@update');
Route::delete('user-absences/{user_absence}', 'UserAbsenceController@destroy');

//Route::resource('job-vacancies', 'JobVacancyController');
Route::get('job-vacancies', 'JobVacancyController@index');
Route::get('job-vacancies/search', 'JobVacancyController@search');
Route::get('job-vacancies/create', 'JobVacancyController@create');
Route::post('job-vacancies', 'JobVacancyController@store');
Route::get('job-vacancies/{job_vacancy}', 'JobVacancyController@show');
Route::get('job-vacancies/{job_vacancy}/edit', 'JobVacancyController@edit');
Route::patch('job-vacancies/{job_vacancy}', 'JobVacancyController@update');
Route::delete('job-vacancies/{job_vacancy}', 'JobVacancyController@destroy');

//Route::resource('candidates', 'CandidateController');
Route::get('candidates', 'CandidateController@index');
Route::get('candidates/search', 'CandidateController@search');
Route::get('candidates/create', 'CandidateController@create');
Route::post('candidates', 'CandidateController@store');
Route::get('candidates/{candidate}', 'CandidateController@show');
Route::get('candidates/{candidate}/download', 'CandidateController@download');
Route::get('candidates/{candidate}/edit', 'CandidateController@edit');
Route::patch('candidates/{candidate}', 'CandidateController@update');
Route::delete('candidates/{candidate}', 'CandidateController@destroy');