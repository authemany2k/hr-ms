<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class AttendanceRequest extends Request
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
        return [
            'user_id' => 'required|numeric',
						'date' => 'required|date',
						'time_in' => 'required|date_format:H:i A',
						'time_out' => 'date_format:H:i A',
        ];
    }
}
