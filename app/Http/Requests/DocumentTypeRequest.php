<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class DocumentTypeRequest extends Request
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
					'document_type' => 'required|min:2|unique:document_types,document_type'
				];
			}
			case 'PATCH':
			{
				return [
					'document_type' => 'required|min:2|unique:document_types,document_type,'.$this->get('id')
				];
			}
		}
    }
}
