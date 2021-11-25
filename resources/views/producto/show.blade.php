@extends('layouts.app')

@section('template_title')
    {{ $producto->name ?? 'Show Producto' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Producto</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('productos.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="form-group">
                            <strong>Id Producto:</strong>
                            {{ $producto->id_producto }}
                        </div>
                        <div class="form-group">
                            <strong>Codigoprod:</strong>
                            {{ $producto->codigoprod }}
                        </div>
                        <div class="form-group">
                            <strong>Descrip:</strong>
                            {{ $producto->descrip }}
                        </div>
                        <div class="form-group">
                            <strong>Stock:</strong>
                            {{ $producto->stock }}
                        </div>
                        <div class="form-group">
                            <strong>Precio:</strong>
                            {{ $producto->precio }}
                        </div>
                        <div class="form-group">
                            <strong>Preciocom:</strong>
                            {{ $producto->preciocom }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
