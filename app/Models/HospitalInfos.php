<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 */
class HospitalInfos extends Model
{
    protected $table = 'hospitalInfos';

    protected $fillable = [
        'date',
        'lieu',
        'general',
        'type'
    ];

    public function hospital()
    {
        return $this->belongsTo('App\Models\Hospital');
    }
}