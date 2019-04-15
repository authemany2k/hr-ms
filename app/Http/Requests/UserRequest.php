<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class UserRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
		switch($this->method())
		{
			case 'POST':
			{
				return [
					'first_name' => 'required',
					'last_name' => 'required',
					'birthday' => 'required|date',
					'gender' => 'required',
					'email' => 'required|email|unique:users,email',
					'telephone' => 'required|min:3|max:20',
					'cellphone' => 'required|min:3|max:20',
					'local_address' => 'required|max:255',
					'permanent_address' => 'required|max:255',
					'employee_id' => 'required',
					'department_id' => 'required|numeric',
					'designation_item_id' => 'required|numeric',
					'date_hired' => 'required|date',
					'exit_date' => 'date',
					'salary' => 'numeric',
					'profile_picture' => 'image',
					'role_id' => 'required|numeric',
					'username' => 'required|min:6|max:20|unique:users,username',
					'password' => 'required|min:8|confirmed',
					'password_confirmation' => 'required|min:8'
				];
			}
			case 'PATCH':
			{
				return [
					'first_name' => 'required',
					'last_name' => 'required',
					'birthday' => 'required|date',
					'gender' => 'required',
					'email' => 'required|email|unique:users,email,'.$this->get('id'),
					'telephone' => 'required|min:3|max:20',
					'cellphone' => 'required|min:3|max:20',
					'local_address' => 'required|max:255',
					'permanent_address' => 'required|max:255',
					'employee_id' => 'required',
					'department_id' => 'required|numeric',
					'designation_item_id' => 'required|numeric',
					'date_hired' => 'required|date',
					'exit_date' => 'date',
					'salary' => 'numeric',
					'profile_picture' => 'image',
					'role_id' => 'required|numeric',
					'username' => 'required|min:6|max:20|unique:users,username,'.$this->get('id'),
					'password' => 'min:8|confirmed',
					'password_confirmation' => 'min:8'
				];
			}
		}
    }
}
