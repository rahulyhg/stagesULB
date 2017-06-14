<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 */
class Hospital extends Model
{
    protected $table = 'hospital';

    protected $fillable = [
        'nom'
    ];

    public function notifications()
    {
        return $this->hasMany('App\Models\Notifications');
    }
}