<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Producto
 *
 * @property $id_producto
 * @property $codigoprod
 * @property $descrip
 * @property $stock
 * @property $precio
 * @property $preciocom
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Producto extends Model
{
    
    static $rules = [
		'id_producto' => 'required',
		'codigoprod' => 'required',
		'descrip' => 'required',
		'stock' => 'required',
		'precio' => 'required',
		'preciocom' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['id_producto','codigoprod','descrip','stock','precio','preciocom'];



}
