<?php

namespace App\Controllers;

use App\Models\Hospital;
use App\Models\Avis;
use App\Controllers\Controller;

class AvisController extends Controller
{
    public function getHospitalAvis($request,$response, $args)
    {
        $avis = Avis::where('id', $args['hopid'])->orderBy('id', 'desc')->with('services', 'hospital')->take(10)->get();
        return $this->view->render($response,'hopital/avis.twig', [ 'avisList' => $avis ]);
    }

    public function getAvis($request,$response, $args)
    {
        $avis = Avis::orderBy('id', 'desc')->with('services', 'hospital')->take(10)->get();
        return $this->view->render($response,'avis.twig', [ 'avisList' => $avis ]);
    }

}