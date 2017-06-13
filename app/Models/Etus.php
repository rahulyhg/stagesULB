<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 */
class Etus extends Model
{
    protected $table = 'etus';

    protected $fillable = [
        'telephone',
        'email',
        'facebook',
        //'password'?
    ];
}