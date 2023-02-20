@extends('layouts.admin')

@section('title', 'Edit Slider')

@section('content')

    <div class="content-wrapper">

        @include('partials.content-header', ['name' => 'Sliders', 'key' => 'Edit'])


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="card w-100">
                        <div class="card-body">
                            <form action="{{ route('sliders.update', ['id' => $slider->id]) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label>Slider Name</label>
                                    <input type="text" name="name"
                                        class="form-control @error('name') is-invalid @enderror" placeholder="Enter name"
                                        value="{{ $slider->name }}">
                                    @error('name')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description" class="form-control @error('description') is-invalid @enderror"
                                        placeholder="Enter description" rows="3">{{ $slider->description }}</textarea>
                                    @error('description')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group">
                                    <label>Image</label>
                                    <input type="file" name="image_path"
                                        class="form-control-file @error('image_path') is-invalid @enderror">
                                    <div class="col-md-4">
                                        <div class="row">
                                            <img src="{{ $slider->image_path }}" alt="" class="mt-2">
                                        </div>
                                    </div>
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
