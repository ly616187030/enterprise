<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ContactRequest extends FormRequest
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
            'title' => 'required',
            'img' => 'required',
            'content' => 'required',
            'address' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'title.required'=>'标题不能为空',
            'img.required'=>'公司简介封面图不能为空',
            'content.required'=>'内容不能为空',
            'address.required'=>'联系地址不能为空',

        ];
    }
}
