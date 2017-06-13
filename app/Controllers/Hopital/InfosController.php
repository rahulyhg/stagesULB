<?php

namespace App\Controllers\Hopital;

use App\Models\Hospital;
use App\Controllers\Controller;

class InfosController extends Controller
{
    public function getInfos($request, $response, $args)
    {
        $hospital = Hospital::where('id', $args['hopid'])->first();
        return $this->view->render($response, 'hopital/infos.twig', [ 'hopital' => $hospital ]);
    }
}