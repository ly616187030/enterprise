<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RecruitRequest extends FormRequest
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
            'title' => 'required|unique:recruit',
            'address' => 'required',
            'number' => 'required',
            'content' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'title.required'=>'标题名称不能为空',
            'title.unique'=>'标题名称已存在',
            'address.required'=>'招聘地址不能为空',
            'number.required'=>'招聘人数不能为空',
            'content.required'=>'招聘内容不能为空',
        ];
    }
}
