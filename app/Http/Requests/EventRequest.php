<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class EventRequest extends Request
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
            'event_name' => 'required|min:3',
						'description' => 'required',
						'date_start' => 'required|date',
						'date_end' => 'required|date|after:date_start',
						'image' => 'image',
        ];
    }
}
