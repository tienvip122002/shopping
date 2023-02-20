@extends('layouts.admin')

@section('title', 'Categories')

@section('content')

    <div class="content-wrapper">
        @include('partials.content-header', ['name' => 'Category', 'key' => 'List'])
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        {{-- áp dụng via blade policy --}}
                        @can('category-add')
                            <a href="{{ route('categories.create') }}" class="btn btn-success float-right m-2">Add</a>
                        @endcan
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
                                    @foreach ($categories as $item)
                                        <tr>
                                            <th scope="row">{{ $item->id }}</th>
                                            <td>{{ $item->name }}</td>
                                            <td>
                                                @can('category-edit')
                                                    <a href="{{ route('categories.edit', ['id' => $item->id]) }}"
                                                        class="btn btn-warning">Edit</a>
                                                @endcan
                                                @can('category-delete')
                                                    <a href="{{ route('categories.delete', ['id' => $item->id]) }}"
                                                        class="btn btn-danger">Delete</a>
                                                @endcan
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-12">
                        {{ $categories->links('pagination::bootstrap-4') }}
                    </div>
                </div>

            </div>
        </div>

    </div>

@endsection
