<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Routing\Controller;

class LoginController extends Controller{

    public  function index()
    {

        return view('admin/login');

    }
}