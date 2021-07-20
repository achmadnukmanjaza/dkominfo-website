@extends('layouts.layout')
@section('content')
    <div>
        <div class="main-content">
            <div class="contaier-fluid">
                <div class="row">
                    <div class="col-md-12">
					<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Edit Data Kominfo</h3>
								</div>
								<div class="panel-body">
								@foreach($kominfo['guru'] as $p)
	<form action="/kominfo/update" method="post">
		{{ csrf_field() }}
        No <input type="number" required="required" name="no_guru" value="{{ $p->no_guru }}"> <br/>
        Nama Kecamatan<select id="exampleFormControlSelect1" name="no_kecamatan" value="{{ $p->no_kecamatan }}" onchange="selectKecamatan()">
                                <option>Kasembon</option>
                                <option>Ngantang</option>
                                <option>Pujon</option>
                                <option>Singosari</option>
                                <option>Lawang</option>
                                <option>Karangploso</option>
                                <option>Dau</option>
                                <option>Tumpang</option>
                                <option>Pakis</option>
                                <option>Jabung</option>
                                <option>Poncokusumo</option>
                                <option>Bululawang</option>
                                <option>Wajak</option>
                                <option>Tajinan</option>
                                <option>Gondanglegi</option>
                                <option>Pagelaran</option>
                                <option>Turen</option>
                                <option>Dampit</option>
                                <option>Tirtoyudo</option>
                                <option>Ampelgading</option>
                                <option>Sumberwajing Wetan</option>
                                <option>Kepanjen</option>
                                <option>Pakisaji</option>
                                <option>Wagir</option>
                                <option>Ngajum</option>
                                <option>Wonosari</option>
                                <option>Suberpucung</option>
                                <option>Kromengan</option>
                                <option>Pagak</option>
                                <option>Kalipare</option>
                                <option>Donomulyo</option>
                                <option>Gedangan</option>
                                <option>Bantur</option>
                     </select></br>
                     Nik <input type="number" required="required" name="nik" value="{{ $p->nik }}"> <br/>
		Nama Lengkap <input type="text" required="required" name="nama_lengkap" value="{{ $p->nama_lengkap }}"> <br/>
        Tempat Lahir <input type="text" required="required" name="tempat_lahir" value="{{ $p->tempat_lahir }}"> <br/>
        Tanggal Lahir <input type="date" required="required" name="tanggal_lahir" value="{{ $p->tanggal_lahir }}"> <br/>
        Alamat Lengkap <input type="text" required="required" name="alamat" value="{{ $p->alamat }}"> <br/>
        RT <input type="number" required="required" name="rt" value="{{ $p->rt }}"> <br/>
        RW <input type="number" required="required" name="rw" value="{{ $p->rw }}"> <br/>
		Kelurahan/Desa
        <select class="form-control" id="formDesa" name="kel_desa" value="{{old('kel_desa')}}" >
                                <option>--Nama Desa--</option><br/>
        No.Hp(Wajib Disi) <input type="number" required="required" name="no_hp" value="{{ $p->no_hp }}"> <br/>
        Nama Lembaga <input type="text" required="required" name="nama_lembaga" value="{{ $p->nama_lembaga }}"> <br/>
        Alamat Lembaga <input type="text" required="required" name="alamat_lembaga" value="{{ $p->alamat_lembaga }}"> <br/>
        Jenis Lembaga<select name="jenis_lembaga" value="{{ $p->jenis_lembaga }}" >
        <option>TPQ</option>
                                <option>Sekolah Minggu</option>
                                <option>Pasraman</option>
                                </select>
                     </select></br>
                     NSTPQ <input type="number" required="required" name="NSTPQ" value="{{ $p->NSTPQ }}"> <br/>

        Nama Rekening <input type="text" required="required" name="nama_rekening" value="{{ $p->nama_rekening }}"> <br/>
		No.Rekening <input type="number" required="required" name="no_rekening" value="{{ $p->no_rekening }}"> <br/>
        Cabang/Capem <input type="text" required="required" name="cabang" value="{{ $p->cabang }}"> <br/>
        

		<input type="submit" value="Simpan Data">
	</form>
	@endforeach
	<a href="/kominfo"> Kembali</a>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    <script src="https://code.jquery.com/jquery-git.js"></script>
    <script>
        var text = $( "#exampleFormControlSelect1 option:selected" ).text();
        var arr = {!! json_encode($kominfo['kecamatan']->toArray()) !!};
        var desa = "";
        $.each(arr, function(i, v) {
            if (v.nama_kecamatan == text) {
                $.each(v.desa, function(ii, vv) {
                    desa += "<option>"+vv.kel_desa+"</option>";
                });
                $("#formDesa").html(desa);
            }
        });
        function selectKecamatan(){
            desa = "";
            text = $( "#exampleFormControlSelect1 option:selected" ).text();
            console.log(text);
            $.each(arr, function(i, v) {
            if (v.nama_kecamatan == text) {
                $.each(v.desa, function(ii, vv) {
                    desa += "<option>"+vv.kel_desa+"</option>";
                });
                $("#formDesa").html(desa);
            }    
            });  
        };
    </script>
@stop
