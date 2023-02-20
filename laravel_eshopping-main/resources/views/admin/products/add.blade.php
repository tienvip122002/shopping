@extends('layouts.admin')

@section('title', 'Create Product')

@section('css')
    <link href="{{ asset('vendors/select2/select2.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('admins/products/add/add.css') }}" rel="stylesheet" />
@endsection
@section('content')

    <div class="content-wrapper">

        @include('partials.content-header', ['name' => 'Product', 'key' => 'Add'])


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="card w-100">
                        <div class="card-body">
                            <form action="{{ route('products.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label>Product Name</label>
                                    <input type="text" name="name"
                                        class="form-control @error('name') is-invalid @enderror" placeholder="Enter name"
                                        value="{{ old('name') }}">
                                    @error('name')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input type="text" name="price"
                                        class="form-control @error('price') is-invalid @enderror" placeholder="Enter price"
                                        value="{{ old('price') }}">
                                    @error('price')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <input type="file" name="feature_image_path" class="form-control-file">
                                </div>
                                <div class="form-group">
                                    <label>Image Detail</label>
                                    <input type="file" name="image_path[]" class="form-control-file" multiple>
                                </div>
                                <div class="form-group">
                                    <label>Content</label>
                                    <textarea name="contents" class="form-control tinymce_editor_init @error('content') is-invalid @enderror"
                                        rows="3">{{ old('contents') }}</textarea>
                                    @error('content')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select class="form-control select2_init @error('category_id') is-invalid @enderror"
                                        name="category_id">
                                        <option value="">-- Select Category --</option>
                                        {!! $htmlOption !!}
                                    </select>
                                    @error('category_id')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label>Tags</label>
                                    <select name="tags[]" class="form-control tags_select_choose" multiple="multiple">

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
