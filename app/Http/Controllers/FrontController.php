<?php namespace Autopartes\Http\Controllers;

use Autopartes\Http\Requests;
use Autopartes\Http\Controllers\Controller;

use Illuminate\Http\Request;

class FrontController extends Controller {

	public function index()
	{
		return view('index');
	}

	public function nosotros()
	{
		return view('nosotros');
	}
}