<?php

namespace App\Controllers\Hopital;

use App\Models\Hospital;
use App\Models\HospitalInfos;
use App\Controllers\Controller;

class InfosController extends Controller
{
    public function getInfos($request, $response, $args)
    {
        $hospitalInfos = HospitalInfos::where('hospital_id', $args['hopid'])->with('hospital')->first();
        return $this->view->render($response, 'hopital/infos.twig', [ 'infos' => $hospitalInfos ]);
    }
}