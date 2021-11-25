<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('id_producto') }}
            {{ Form::text('id_producto', $producto->id_producto, ['class' => 'form-control' . ($errors->has('id_producto') ? ' is-invalid' : ''), 'placeholder' => 'Id Producto']) }}
            {!! $errors->first('id_producto', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('codigoprod') }}
            {{ Form::text('codigoprod', $producto->codigoprod, ['class' => 'form-control' . ($errors->has('codigoprod') ? ' is-invalid' : ''), 'placeholder' => 'Codigoprod']) }}
            {!! $errors->first('codigoprod', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('descrip') }}
            {{ Form::text('descrip', $producto->descrip, ['class' => 'form-control' . ($errors->has('descrip') ? ' is-invalid' : ''), 'placeholder' => 'Descrip']) }}
            {!! $errors->first('descrip', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('stock') }}
            {{ Form::text('stock', $producto->stock, ['class' => 'form-control' . ($errors->has('stock') ? ' is-invalid' : ''), 'placeholder' => 'Stock']) }}
            {!! $errors->first('stock', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('precio') }}
            {{ Form::text('precio', $producto->precio, ['class' => 'form-control' . ($errors->has('precio') ? ' is-invalid' : ''), 'placeholder' => 'Precio']) }}
            {!! $errors->first('precio', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('preciocom') }}
            {{ Form::text('preciocom', $producto->preciocom, ['class' => 'form-control' . ($errors->has('preciocom') ? ' is-invalid' : ''), 'placeholder' => 'Preciocom']) }}
            {!! $errors->first('preciocom', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>