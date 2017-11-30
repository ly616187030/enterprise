<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StepRequest extends FormRequest
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
            'title' => 'required|unique:step',
            'describe' => 'required',
            'icon' => 'required',
            'color' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'title.required'=>'标题不能为空',
            'title.unique'=>'提示：已成功添加',
            'describe.required'=>'内容描述不能为空',
            'icon.required'=>'字体图表不能为空',
            'color.required'=>'背景颜色不能为空',
        ];
    }
}
