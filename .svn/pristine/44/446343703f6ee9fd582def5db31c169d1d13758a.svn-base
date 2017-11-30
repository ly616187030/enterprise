<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CarouselRequest extends FormRequest
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
            'name' => 'required|unique:carousel',
            'img' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'img.required'=>'轮播图不能为空',
            'name.required'=>'轮播图名称不能为空',
            'name.unique'=>'提示：轮播图已成添加',
        ];
    }
}
