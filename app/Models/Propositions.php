<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 */
class Propositions extends Model
{
    protected $table = 'propositions';

    protected $fillable = [
        'offres_id',
        'etus_id',
        'type',
        'date',
        'commentaire',
        'statut',
        'poste'
    ];

    public function offre()
    {
        return $this->belongsTo('App\Models\Offres');
    }

    public function etu()
    {
        return $this->belongsTo('App\Models\Etus');
    }
}