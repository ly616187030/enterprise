<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class GoodsRequest extends FormRequest
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
            'goods_name' => 'required|unique:goods',
            'goods_describe' => 'required',
            'goods_detail' => 'required',
            'keyword' => 'required',
            'thumb' => 'required',
            'sort' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'goods_name.required'=>'商品名称不能为空',
            'goods_name.unique'=>'温馨提示：商品已添加成功！',
            'goods_describe.required'=>'商品描述不能为空',
            'goods_detail.required'=>'商品详情不能为空',
            'keyword.required'=>'关键字不能为空',
            'thumb.required'=>'商品图片不能为空',
            'sort.required'=>'商品排序不能为空',

        ];
    }
}
