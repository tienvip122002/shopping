@extends('layouts.admin')

@section('title', 'Create Setting')

@section('content')

    <div class="content-wrapper">

        @include('partials.content-header', ['name' => 'Setting', 'key' => 'Add'])


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="card w-100">
                        <div class="card-body">
                            <form action="{{ route('settings.store') . '?type=' . request()->type }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label>Category Key</label>
                                    <input type="text" name="config_key"
                                        class="form-control @error('config_key') is-invalid @enderror"
                                        placeholder="Enter config key">
                                    @error('config_key')
                                        <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                    @enderror
                                </div>

                                @if (request()->type === 'Text')
                                    <div class="form-group">
                                        <label>Category Value</label>
                                        <input type="text" name="config_value"
                                            class="form-control @error('config_value') is-invalid @enderror"
                                            placeholder="Enter config value">
                                        @error('config_value')
                                            <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                        @enderror
                                    </div>
                                @elseif (request()->type === 'Textarea')
                                    <div class="form-group">
                                        <label>Category Value</label>
                                        <textarea name="config_value" class="form-control @error('config_value') is-invalid @enderror"
                                            placeholder="Enter config value" rows="3"></textarea>
                                        @error('config_value')
                                            <div class="alert alert-danger mt-1 p-1 px-2">{{ $message }}</div>
                                        @enderror
                                    </div>
                                @endif
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

@endsection
