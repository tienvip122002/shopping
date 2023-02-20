@extends('layouts.admin')

@section('title', 'Edit Product')

@section('css')
    <link href="{{ asset('vendors/select2/select2.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('admins/products/add/add.css') }}" rel="stylesheet" />
@endsection
@section('content')

    <div class="content-wrapper">

        @include('partials.content-header', ['name' => 'Product', 'key' => 'Edit'])


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="card w-100">
                        <div class="card-body">
                            <form action="{{ route('products.update', ['id' => $product->id]) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label>Product Name</label>
                                    <input type="text" name="name" class="form-control" placeholder="Enter name"
                                        value="{{ $product->name }}">
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input type="text" name="price" class="form-control" placeholder="Enter price"
                                        value="{{ $product->price }}">
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <input type="file" name="feature_image_path" class="form-control-file">
                                    <div class="col-md-4 container_feature_image">
                                        <div class="row">
                                            <img src="{{ $product->feature_image_path }}" alt=""
                                                class="feature_image">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Image Detail</label>
                                    <input type="file" name="image_path[]" class="form-control-file" multiple>
                                    <div class="col-md-12 container_image_detail">
                                        <div class="row">
                                            @foreach ($product->productImages as $productImageItem)
                                                <div class="col-md-3">
                                                    <img src="{{ $productImageItem->image_path }}" alt=""
                                                        class="image_detail_product">
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Content</label>
                                    <textarea name="contents" class="form-control tinymce_editor_init" rows="3">{{ $product->content }}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select class="form-control select2_init" name="category_id">
                                        <option value="">-- Select Category --</option>
                                        {!! $htmlOption !!}
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Tags</label>
                                    <select name="tags[]" class="form-control tags_select_choose" multiple="multiple">
                                        @foreach ($product->tags as $productTagItem)
                                            <option value="{{ $productTagItem->name }}" selected>{{ $productTagItem->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

@endsection

@section('js')
    <script src="{{ asset('vendors/select2/select2.min.js') }}"></script>
    <script src="https://cdn.tiny.cloud/1/oka9sk4czekq3ajgz5qd1s5wz7qmynfet8ofmkvpbia3jeob/tinymce/6/tinymce.min.js"
        referrerpolicy="origin"></script>
    <script src="{{ asset('admins/products/add/add.js') }}"></script>
@endsection
