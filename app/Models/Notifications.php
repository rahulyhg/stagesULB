<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 */
class Notifications extends Model
{
    protected $table = 'notifications';

    protected $fillable = [
        'hospital_id',
        'message',
        'type'
    ];

    public function hospital()
    {
        return $this->belongsTo('App\Models\Hospital');
    }
}