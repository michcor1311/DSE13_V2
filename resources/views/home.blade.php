@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Inicio Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('DSE_13 CRM Para el control de ventas!') }}
                </div>
            </div>
            <button type="button" name="button" text="Logout"></button>
        </div>
    </div>
</div>
@endsection
