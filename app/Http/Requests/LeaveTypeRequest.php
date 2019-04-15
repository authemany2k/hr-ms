<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class LeaveTypeRequest extends Request
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
					'leave_type' => 'required|min:2|unique:leave_types,leave_type'
				];
			}
			case 'PATCH':
			{
				return [
					'leave_type' => 'required|min:2|unique:leave_types,leave_type,'.$this->get('id')
				];
			}
		}
    }
}
