<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    function admin_dashboard(){
        $page['title'] = 'Dashboard';
        return view('backend.index', compact('page'));
    }
    function index(){
        return view('frontend.index');
    }

}
