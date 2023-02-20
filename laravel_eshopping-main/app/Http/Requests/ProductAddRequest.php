<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductAddRequest extends FormRequest
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
        //Muốn lỗi tới đâu thì dừng ở mục đó thì thêm bail
        return [
            'name' => 'bail|required|unique:products|min:10',
            'price' => 'required',
            'category_id' => 'required',
            'contents' => 'required'
        ];
    }

    public function messages(){
        return [
            'name.required' => 'Tên không được để trống',
            'name.unique' => 'Tên đã tồn tại',
            'name.min' => 'Tên phải lớn hơn 10 ký tự',
            'price.required' => 'Giá không được để trống',
            'category_id.required' => 'Danh mục không được để trống',
            'contents.required' => 'Nội dung không được để trống',
        ];
    }
}
