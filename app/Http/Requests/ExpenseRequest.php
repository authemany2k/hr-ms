<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class ExpenseRequest extends Request
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
            'item_name' => 'required|min:2',
						'purchase_from' => 'required|min:2',
						'purchase_date' => 'required|date',
						'amount' => 'required|numeric'
        ];
    }
}
