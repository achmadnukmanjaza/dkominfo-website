<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\kel_desa;
use App\m_kecamatan;

class KominfoController extends Controller
{
    public function index()
    {
        $kominfo = t_guru::all();

        return view('kominfo', compact('kominfo'));
    }

    public function m_kecamatan()
    {
        $id_kecamatan = m_kecamatan::all();
        
    }

    public function kominfo()
    {
    	// mengambil data dari table kominfo
        $guru    = DB::table('t_guru')->get();
        $kecamatan  = m_kecamatan::with('desa')->get();
        $kominfo = [
            'guru'      => $guru,
            'kecamatan' => $kecamatan,
        ];
        
    	// mengirim data kominfo ke view kominfo
    	return view('kominfo',['kominfo' => $kominfo]);
    }

    // method untuk menampilkan view form tambah kominfo
    public function tambah()
    {
	// memanggil view tambah
	return view('tambah');
    
    }

    // method untuk insert data ke table kominfo
    public function store(Request $request)
    {

        

    // insert data ke table kominfo
    $this->validate($request,[
        'nik' => 'required|min:16|max:16',
        'no_guru' => 'required|numeric',
        'rt' => 'required|min:2|max:2',
        'rw' => 'required|min:2|max:2',
        'no_hp' => 'required|min:12|max:12',
        'NSTPQ' => 'required|min:15|max:15',
        'no_rekening' => 'required|min:10|max:10',
        'cabang' => 'required|alpha'
    ]);

	DB::table('t_guru')->insert([
        'nik' => $request->nik,
        'no_kecamatan' => $request->no_kecamatan,
        'no_guru' => $request->no_guru,
        'nama_lengkap' => $request->nama_lengkap,
        'tempat_lahir' => $request->tempat_lahir,
        'tanggal_lahir' => $request->tanggal_lahir,
        'alamat' => $request->alamat,
        'rt' => $request->rt,
        'rw' => $request->rw,
        'kel_desa' => $request->kel_desa,
        'no_hp' => $request->no_hp,
        'nama_lembaga' => $request->nama_lembaga,
        'alamat_lembaga' => $request->alamat_lembaga,
        'jenis_lembaga' => $request->jenis_lembaga,
        'NSTPQ' => $request->NSTPQ,
        'nama_rekening' => $request->nama_rekening,
        'no_rekening' => $request->no_rekening,
        'cabang' => $request->cabang
    ]);
    $guru    = DB::table('t_guru')->get();
        $kecamatan  = m_kecamatan::with('desa')->get();
        $kominfo = [
            'guru'      => $guru,
            'kecamatan' => $kecamatan,
        ];
        // alihkan halaman ke halaman kominfo
	return redirect('/kominfo')->with('sukses','Data Berhasil Diinput');
 
    }

    // method untuk edit data kominfo
    public function edit($nik)
    {
	// mengambil data kominfo berdasarkan id yang dipilih
    $kominfo = DB::table('t_guru')->where('nik',$nik)->get();
    $guru    = DB::table('t_guru')->get();
        $kecamatan  = m_kecamatan::with('desa')->get();
        $kominfo = [
            'guru'      => $guru,
            'kecamatan' => $kecamatan,
        ];
	// passing data kominfo yang didapat ke view edit.blade.php
	return view('edit',['kominfo' => $kominfo]);
 
    }

    // update data kominfo
    public function update(Request $request)
    {
	// update data kominfo
	DB::table('t_guru')->where('nik',$request->nik)->update([
        'nik' => $request->nik,
        'no_guru' => $request->no_guru,
        'no_kecamatan' => $request->no_kecamatan,
        'nama_lengkap' => $request->nama_lengkap,
        'tempat_lahir' => $request->tempat_lahir,
        'tanggal_lahir' => $request->tanggal_lahir,
        'alamat' => $request->alamat,
        'rt' => $request->rt,
        'rw' => $request->rw,
        'kel_desa' => $request->kel_desa,
        'no_hp' => $request->no_hp,
        'nama_lembaga' => $request->nama_lembaga,
        'alamat_lembaga' => $request->alamat_lembaga,
        'jenis_lembaga' => $request->jenis_lembaga,
        'NSTPQ' => $request->NSTPQ,
        'nama_rekening' => $request->nama_rekening,
        'no_rekening' => $request->no_rekening,
        'cabang' => $request->cabang
	]);
	// alihkan halaman ke halaman kominfo
    return redirect('/kominfo')->with('sukses','Data Berhasil Diupdate');
    
    }

    // method untuk hapus data kominfo
    public function hapus($nik)
    {
	// menghapus data kominfo berdasarkan id yang dipilih
	DB::table('t_guru')->where('nik',$nik)->delete();
		
	// alihkan halaman ke halaman kominfo
    return redirect('/kominfo');
    
    }
    
}
