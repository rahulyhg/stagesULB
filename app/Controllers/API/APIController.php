<?php

namespace App\Controllers\API;

use App\Controllers\Controller;
use App\Models\Hospital;

class APIController extends Controller {
    public function hospitalList(){
        $hospitals = Hospital::all();
        return json_encode($hospitals);
    }
}