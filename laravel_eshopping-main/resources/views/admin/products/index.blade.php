@extends('layouts.admin')

@section('title', 'Products')

@section('css')
    <link rel="stylesheet" href="{{ asset('admins/products/index/index.css') }}">
@endsection

@section('content')

    <div class="content-wrapper">
        @include('partials.content-header', ['name' => 'Product', 'key' => 'List'])
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ route('products.create') }}" class="btn btn-success float-right m-2">Add</a>
                    </div>
                    <div class="card w-100">
                        <div class="card-body">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Image</th>
                                        <th scope="col">Category</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($products as $item)
                                        <tr>
                                            <th scope="row">{{ $item->id }}</th>
                                            <td>{{ $item->name }}</td>
                                            <td>{{ number_format($item->price) }}</td>
                                            <td><img class="product_image" src="{{ $item->feature_image_path }}"
                                                    alt=""></td>
                                            {{-- User optinal() de tranh bi bug null object --}}
                                            <td>{{ optional($item->getCategoryShow)->name }}</td>
                                            <td>
                                                <a href="{{ route('products.edit', ['id' => $item->id]) }}"
                                                    class="btn btn-warning">Edit</a>
                                                <a href="{{ route('products.delete', ['id' => $item->id]) }}"
                                                    class="btn btn-danger action-delete"
                                                    data-url="{{ route('products.delete', ['id' => $item->id]) }}">Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-12">
                        {{ $products->links('pagination::bootstrap-4') }}
                    </div>
                </div>

            </div>
        </div>

    </div>

@endsection

@section('js')
    <script src="{{ asset('admins/main.js') }}"></script>
@endsection
