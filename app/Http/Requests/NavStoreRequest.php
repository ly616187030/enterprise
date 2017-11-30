<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NavStoreRequest extends FormRequest
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
            'name' => 'required|unique:nav',
            'english' => 'required',
            'title_description' => 'required',
            'seo_title' => 'required',
            'seo_keyword' => 'required',
            'seo_description' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'name.required'=>'栏目名称不能为空',
            'name.unique'=>'温馨提示：栏目已成功添加',
            'english.required'=>'栏目英文名称不能为空',
            'title_description.required'=>'栏目简单描述不能为空',
            'seo_title.required'=>'SEO参数不能为空',
            'seo_keyword.required'=>'关键词不能为空',
            'seo_description.required'=>'SEO描述不能为空',
        ];
    }
}
