<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 */
class Offres extends Model
{
    protected $table = 'offres';

    protected $fillable = [
        'hospital_id',
        'user_id',
        'poste',
        'commentaire',
        'statut'
    ];

    public function hospital()
    {
        return $this->belongsTo('App\Models\Hospital');
    }

    public function etu()
    {
        return $this->belongsTo('App\Models\Etus');
    }
}