@extends('layouts.admin')

@section('title', 'Create Category')

@section('content')

    <div class="content-wrapper">

        @include('partials.content-header', ['name' => 'Category', 'key' => 'Add'])


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="card w-100">
                        <div class="card-body">
                            <form action="{{ route('categories.store') }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label>Category Name</label>
                                    <input type="text" name="name" class="form-control" placeholder="Enter name">
                                </div>

                                <div class="form-group">
                                    <label>Parent Name</label>
                                    <select class="form-control" name="parent_id">
                                        <option value="0">-- Select Parent Name --</option>
                                        {!! $htmlOption !!}
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
