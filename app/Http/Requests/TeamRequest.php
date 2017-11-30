<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TeamRequest extends FormRequest
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
            'name' => 'required|unique:team',
            'img' => 'required',
            'content' => 'required',
            'introduction' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'name.required'=>'人员名称不能为空',
            'content.required'=>'人员内容不能为空',
            'name.unique'=>'提示：人员已成功添加',
            'img.required'=>'人员封面图不能为空',
            'introduction.required'=>'人员简短描述不能为空',
        ];
    }
}
