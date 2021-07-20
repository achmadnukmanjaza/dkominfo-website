<?php

namespace App\Http\Controllers;

use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\kel_desa;
use App\m_kecamatan;

class AuthController extends Controller
{
    public function login()
    {
        return view('login', compact('login'));
    }

    public function postlogin(Request $request)
    {
        if(Auth::attempt($request->only('email','password'))){
            return redirect('/kominfo');
        }
        return redirect('/login');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        return redirect('/login');
    }
}
