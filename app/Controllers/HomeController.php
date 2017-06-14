<?php

namespace App\Controllers;

use App\Models\Notifications;

class HomeController extends Controller
{
	public function index($request,$response)
	{
	    $notifications = Notifications::with('hospital')->get();
		return $this->view->render($response,'home.twig', ['notifications' => $notifications]);
	}
}