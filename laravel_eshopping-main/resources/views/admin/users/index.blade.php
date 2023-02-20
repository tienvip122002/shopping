@extends('layouts.admin')

@section('title', 'Users')



@section('content')

    <div class="content-wrapper">
        @include('partials.content-header', ['name' => 'Users', 'key' => 'List'])
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ route('users.create') }}" class="btn btn-success float-right m-2">Add</a>
                    </div>
                    <div class="card w-100">
                        <div class="card-body">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($users as $item)
                                        <tr>
                                            <th scope="row">{{ $item->id }}</th>
                                            <td>{{ $item->name }}</td>
                                            <td>{{ $item->email }}</td>
                                            <td>
                                                <a href="{{ route('users.edit', ['id' => $item->id]) }}"
                                                    class="btn btn-warning">Edit</a>
                                                <a href="{{ route('users.delete', ['id' => $item->id]) }}"
                                                    data-url="{{ route('users.delete', ['id' => $item->id]) }}"
                                                    class="btn btn-danger action-delete">Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-12">
                        {{ $users->links('pagination::bootstrap-4') }}
                    </div>
                </div>

            </div>
        </div>

    </div>

@endsection

@section('js')
    <script src="{{ asset('admins/main.js') }}"></script>
@endsection
