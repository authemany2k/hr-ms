<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class DesignationRequest extends Request
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
			'designation_item' => 'exists:designation_items',
			'designation_item_id' => 'required|numeric',
			'date_start' => 'required|date',
			'date_end' => 'date|after:date_start'
        ];
    }
}
