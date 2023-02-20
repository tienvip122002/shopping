@extends('layouts.admin')

@section('title', 'Add Slider')

@section('content')

    <div class="content-wrapper">

        @include('partials.content-header', ['name' => 'Sliders', 'key' => 'Add'])


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="card w-100">
                        <div class="card-body">
                            <form action="{{ route('sliders.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label>Slider Name</label>
                                    <input type="text" name="name"
                                        class="form-control @error('name') is-invalid @enderror" placeholder="Enter name"
                                        value="{{ old('name') }}">
                                    @error('name')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description" class="form-control @error('description') is-invalid @enderror"
                                        placeholder="Enter description" rows="3">{{ old('description') }}</textarea>
                                    @error('description')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group">
                                    <label>Image</label>
                                    <input type="file" name="image_path"
                                        class="form-control-file @error('image_path') is-invalid @enderror">
                                    @error('image_path')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
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
