<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PDF;
use App\kel_desa;
use App\m_kecamatan;

class InvoiceController extends Controller
{
    public function index($nik)
    {
        $guru    = DB::table('t_guru')->where('nik',$nik)->first();
        // return view('invoice',compact('guru'));     
        $pdf = PDF::loadview('invoice',['guru'=>$guru]);
        return $pdf->download('guru.pdf');
    }
    public function invoiceKecamatan($nokec)
    {
        $guru    = DB::table('t_guru')->where("no_kecamatan",$nokec)->get();
        // return view('invoicekecamatan',compact('guru'));     
        $pdf = PDF::loadview('invoicekecamatan',['guru'=>$guru]);
        return $pdf->download('kecamatan.pdf');
    }
}
