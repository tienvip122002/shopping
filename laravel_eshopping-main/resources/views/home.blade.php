@extends('layouts.admin')

@section('title', 'Home')

@section('content')

    <div class="content-wrapper">
        @include('partials.content-header', ['name' => 'Home', 'key' => 'Dashboard'])

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="card w-100">
                        <div class="card-body">
                            <h1>home.blade.php</h1>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

@endsection
