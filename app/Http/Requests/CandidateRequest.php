<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class CandidateRequest extends Request
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
					'email' => 'required|email|unique:candidates,email',
					'contact_no' => 'max:255',
					'job_vacancy' => 'exists:job_vacancies',
					'job_vacancy_id' => 'required|numeric',
					'resume' => '',
					'application_date' => 'required|date',
					'status' => 'max:60',
				];
			}
			case 'PATCH':
			{
				return [
					'first_name' => 'required',
					'last_name' => 'required',
					'email' => 'required|email|unique:candidates,email,'.$this->get('id'),
					'contact_no' => 'max:255',
					'job_vacancy' => 'exists:job_vacancies',
					'job_vacancy_id' => 'required|numeric',
					'resume' => '',
					'application_date' => 'required|date',
					'status' => 'max:60',
				];
			}
		}
    }
}
