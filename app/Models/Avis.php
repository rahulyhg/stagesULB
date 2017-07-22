<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 */
class Avis extends Model
{
    protected $table = 'avis';

    protected $fillable = [
        'hospital_id',
        'etus_id',
        'services_id',
        'commentaire',
        'anonyme'
    ];

    public function hospital()
    {
        return $this->belongsTo('App\Models\Hospital');
    }

    public function etu()
    {
        return $this->belongsTo('App\Models\Etus');
    }

    public function service()
    {
        return $this->belongsTo('App\Models\Services');
    }
}