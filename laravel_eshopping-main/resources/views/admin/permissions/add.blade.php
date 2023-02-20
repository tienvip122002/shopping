@extends('layouts.admin')

@section('title', 'Add Permission')

@section('content')

    <div class="content-wrapper">

        @include('partials.content-header', ['name' => 'Permission', 'key' => 'Add'])


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="card w-100">
                        <div class="card-body">
                            <form action="{{ route('permissions.store') }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label>Select Module</label>
                                    <select class="form-control" name="module_parent">
                                        <option value="">--- Select Module ---</option>
                                        @foreach (config('permissions.table_module') as $moduleItem)
                                            <option value="{{ $moduleItem }}">{{ $moduleItem }}</option>
                                        @endforeach

                                    </select>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        @foreach (config('permissions.module_children') as $moduleItemChildren)
                                            <div class="col-md-3">
                                                <label>
                                                    <input type="checkbox" name="module_children[]"
                                                        value="{{ $moduleItemChildren }}">{{ $moduleItemChildren }}
                                                </label>
                                            </div>
                                        @endforeach
                                    </div>
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
