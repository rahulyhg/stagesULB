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
        'choixgarde_date',
        'choixgarde_lieu',
        'general',
        'type'
    ];

    public function hospital()
    {
        return $this->belongsTo('App\Models\Hospital');
    }
}