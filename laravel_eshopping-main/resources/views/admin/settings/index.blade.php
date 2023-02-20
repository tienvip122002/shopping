@extends('layouts.admin')

@section('title', 'Settings')

@section('content')

    <div class="content-wrapper">
        @include('partials.content-header', ['name' => 'Settings', 'key' => 'List'])
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="btn-group mb-2">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                Add
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="{{ route('settings.create') . '?type=Text' }}">Text</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item"
                                    href="{{ route('settings.create') . '?type=Textarea' }}">Textarea</a>
                            </div>
                        </div>
                    </div>
                    <div class="card w-100">
                        <div class="card-body">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Config key</th>
                                        <th scope="col">Config value</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($settings as $item)
                                        <tr>
                                            <th scope="row">{{ $item->id }}</th>
                                            <td>{{ $item->config_key }}</td>
                                            <td>{{ $item->config_value }}</td>
                                            <td>
                                                <a href="{{ route('settings.edit', ['id' => $item->id]) . '?type=' . $item->type }}"
                                                    class="btn btn-warning">Edit</a>
                                                <a href="{{ route('settings.delete', ['id' => $item->id]) }}"
                                                    data-url="{{ route('settings.delete', ['id' => $item->id]) }}"
                                                    class="btn btn-danger action-delete">Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-12">
                        {{ $settings->links('pagination::bootstrap-4') }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('js')
    <script src="{{ asset('admins/main.js') }}"></script>
@endsection
