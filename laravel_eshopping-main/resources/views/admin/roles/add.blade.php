@extends('layouts.admin')

@section('title', 'Add Roles')

@section('css')
    <link rel="stylesheet" href="{{ asset('admins/roles/add/add.css') }}">
@endsection

@section('content')

    <div class="content-wrapper">

        @include('partials.content-header', ['name' => 'Roles', 'key' => 'Add'])

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <form action="{{ route('roles.store') }}" method="POST" enctype="multipart/form-data" class="w-100">
                        @csrf
                        <div class="card w-100">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Roles Name</label>
                                    <input type="text" name="name"
                                        class="form-control @error('name') is-invalid @enderror" placeholder="Enter name"
                                        value="{{ old('name') }}">
                                    @error('name')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label>Roles Display Name</label>
                                    <input type="text" name="display_name"
                                        class="form-control @error('display_name') is-invalid @enderror"
                                        placeholder="Enter display name" value="{{ old('display_name') }}">
                                    @error('display_name')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
                                </div>

                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <label>
                                        <input type="checkbox" class="check_all">
                                        Check All
                                    </label>
                                </div>
                                @foreach ($permissionParent as $item)
                                    <div class="card border-primary mb-3 col-md-12">
                                        <div class="card-header bg-success">
                                            <label>
                                                <input type="checkbox" value="" class="checkbox_wrapper">
                                            </label>
                                            Modules {{ $item->name }}
                                        </div>
                                        <div class="row">
                                            @foreach ($item->permissionChildrent as $child)
                                                <div class="card-body text-primary col-md-3">
                                                    <h5 class="card-title">
                                                        <label>
                                                            <input type="checkbox" name="permission_id[]"
                                                                value="{{ $child->id }}" class="checkbox_children">
                                                        </label>
                                                        {{ $child->name }}
                                                    </h5>
                                                </div>
                                            @endforeach
                                        </div>

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

@endsection

@section('js')
    <script src="{{ asset('admins/roles/add/add.js') }}"></script>
@endsection
