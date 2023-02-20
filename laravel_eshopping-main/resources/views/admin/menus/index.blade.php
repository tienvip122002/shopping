@extends('layouts.admin')

@section('title', 'Menus')

@section('content')

    <div class="content-wrapper">
        @include('partials.content-header', ['name' => 'Menus', 'key' => 'List'])
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ route('menus.create') }}" class="btn btn-success float-right m-2">Add</a>
                    </div>
                    <div class="card w-100">
                        <div class="card-body">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus as $item)
                                        <tr>
                                            <th scope="row">{{ $item->id }}</th>
                                            <td>{{ $item->name }}</td>
                                            <td>
                                                <a href="{{ route('menus.edit', ['id' => $item->id]) }}"
                                                    class="btn btn-warning">Edit</a>
                                                <a href="{{ route('menus.delete', ['id' => $item->id]) }}"
                                                    class="btn btn-danger">Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-12">
                        {{ $menus->links('pagination::bootstrap-4') }}
                    </div>
                </div>

            </div>
        </div>

    </div>

@endsection
