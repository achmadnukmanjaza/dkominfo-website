@extends('layouts.layout')
@section('content')
    <div class="panel panel-headline">
        <div class="panel-heading">
            <h1 class="panel-title">Data Kominfo</h1>
        </div>
        <div class="panel-body">
        @if(session('sukses'))
            <div class="alert alert-success" role="alert">
            {{session('sukses')}}
            </div> 
        @endif
            <div class="row">
                <div class="col-md-12">
                   <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" >Tambah Data</button>
                   <select id="printKecSel" class="btn btn-primary" data-target="#exampleModal"> 
                                <option>--Nama Kecamatan--</option>
                                <option value="1">Kasembon</option>
                                <option value="2">Ngantang</option>
                                <option value="3">Pujon</option>
                                <option value="4">Singosari</option>
                                <option value="5">Lawang</option>
                                <option value="6">Karangploso</option>
                                <option value="7">Dau</option>
                                <option value="8">Tumpang</option>
                                <option value="9">Pakis</option>
                                <option value="10">Jabung</option>
                                <option value="11">Poncokusumo</option>
                                <option value="12">Bululawang</option>
                                <option value="13">Wajak</option>
                                <option value="14">Tajinan</option>
                                <option value="15">Gondanglegi</option>
                                <option value="16">Pagelaran</option>
                                <option value="17">Turen</option>
                                <option value="18">Dampit</option>
                                <option value="19">Tirtoyudo</option>
                                <option value="20">Ampelgading</option>
                                <option value="21">Sumberwajing Wetan</option>
                                <option value="22">Kepanjen</option>
                                <option value="23">Pakisaji</option>
                                <option value="24">Wagir</option>
                                <option value="25">Ngajum</option>
                                <option value="26">Wonosari</option>
                                <option value="27">Suberpucung</option>
                                <option value="28">Kromengan</option>
                                <option value="29">Pagak</option>
                                <option value="30">Kalipare</option>
                                <option value="31">Donomulyo</option>
                                <option value="32">Gedangan</option>
                                <option value="33">Bantur</option>
                   </select>
                   <button type="button" class="btn btn-primary" onclick="printKec()">Print Kecamatan</button>
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Tambah Data</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                        <form action="/kominfo/store" method="post">
                        {{ csrf_field() }}
                            <div class="form-group {{$errors->has('no_guru') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">NO</label>
                                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="no_guru" placeholder="no_guru" value="{{old('no_guru')}}">
                            @if($errors->has('no_guru'))
                                <span class="help-block">{{$errors->first('no_guru')}}</span>
                            @endif
                            </div>
                            <div class="form-group">
                            <label for="exampleFormControlSelect1">Nama Kecamatan</label>
                                <select class="form-control" id="exampleFormControlSelect1" name="no_kecamatan" value="{{old('no_kecamatan')}}" onchange="selectKecamatan()">>
                                <option>--Nama Kecamatan--</option>
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
                                </select>
                            </div>
                            <div class="form-group {{$errors->has('nik') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">NIK</label>
                                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="nik" placeholder="nik" value="{{old('nik')}}">
                                @if($errors->has('nik'))
                                <span class="help-block">{{$errors->first('nik')}}</span>
                            @endif
                            </div>
                            <div class="form-group {{$errors->has('nama_lengkap') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">Nama Sesuai KTP</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="nama_lengkap" placeholder="Nama Sesuai KTP" value="{{old('nama_lengkap')}}">
                                @if($errors->has('nama_lengkap'))
                                <span class="help-block">{{$errors->first('nama_lengkap')}}</span>
                            @endif
                            <div class="form-group {{$errors->has('tempat_lahir') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">Tempat Lahir</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="tempat_lahir" placeholder="tempat_lahir" value="{{old('tempat_lahir')}}">
                                @if($errors->has('tempat_lahir'))
                                <span class="help-block">{{$errors->first('tempat_lahir')}}</span>
                            @endif
                            </div>
                            <div class="form-group {{$errors->has('tanggal_lahir') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">Tanggal Lahir</label>
                                <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="tanggal_lahir" placeholder="tanggal_lahir" value="{{old('tanggal_lahir')}}">
                                @if($errors->has('tanggal_lahir'))
                                <span class="help-block">{{$errors->first('tanggal_lahir')}}</span>
                            @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Alamat</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="alamat" value="{{old('alamat')}}" placeholder="Alamat Lengkap(Jalan/Dusun/Rt/Rw/Desa/Kecamatan)">
                            </div>
                            <div class="form-group {{$errors->has('rt') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">RT</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="rt" placeholder="rt" value="{{old('rt')}}">
                                @if($errors->has('rt'))
                                <span class="help-block">{{$errors->first('rt')}}</span>
                            @endif
                            </div>
                            <div class="form-group {{$errors->has('rw') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">RW</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="rw" placeholder="rw" value="{{old('rw')}}">
                                @if($errors->has('rw'))
                                <span class="help-block">{{$errors->first('rw')}}</span>
                            @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Kelurahan / Desa</label>
                                <select class="form-control" id="formDesa" name="kel_desa" value="{{old('kel_desa')}}" >
                                <option>--Nama Desa--</option>
                                </select>
                            </div>
                            <div class="form-group {{$errors->has('no_hp') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">No Hp</label>
                                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="no_hp" placeholder="No Hp" value="{{old('no_hp')}}">
                                @if($errors->has('no_hp'))
                                <span class="help-block">{{$errors->first('no_hp')}}</span>
                            @endif
                            </div>
                            <div class="form-group {{$errors->has('nama_lembaga') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">Nama Lembaga</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="nama_lembaga" placeholder="Nama Lembaga" value="{{old('nama_lembaga')}}">
                                @if($errors->has('nama_lembaga'))
                                <span class="help-block">{{$errors->first('nama_lembaga')}}</span>
                            @endif
                            </div>
                            <div class="form-group {{$errors->has('alamat_lembaga') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">Alamat Lembaga</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="alamat_lembaga" placeholder="Alamat Lembaga" value="{{old('alamat_lembaga')}}">
                                @if($errors->has('alamat_lembaga'))
                                <span class="help-block">{{$errors->first('alamat_lembaga')}}</span>
                            @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Jenis Lembaga</label>
                                <select class="form-control" id="exampleFormControlSelect1" name="jenis_lembaga">
                                <option>TPQ</option>
                                <option>Sekolah Minggu</option>
                                <option>Pasraman</option>
                                </select>
                            </div>
                            <div class="form-group {{$errors->has('NSTPQ') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">NSTPQ</label>
                                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="NSTPQ" placeholder="NSTPQ" value="{{old('NSTPQ')}}">
                                @if($errors->has('NSTPQ'))
                                <span class="help-block">{{$errors->first('NSTPQ')}}</span>
                            @endif
                            </div>
                            <div class="form-group {{$errors->has('nama_rekening') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">Nama Rekening</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="nama_rekening" placeholder="Nama Rekening" value="{{old('nama_rekening')}}">
                                @if($errors->has('nama_rekening'))
                                <span class="help-block">{{$errors->first('nama_rekening')}}</span>
                            @endif
                            </div>
                            <div class="form-group {{$errors->has('no_rekening') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">No Rekening</label>
                                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="no_rekening" placeholder="No Rekening" value="{{old('no_rekening')}}">
                                @if($errors->has('no_rekening'))
                                <span class="help-block">{{$errors->first('no_rekening')}}</span>
                            @endif
                            </div>
                            <div class="form-group {{$errors->has('cabang') ? ' has-errors' : ''}}">
                                <label for="exampleInputEmail1">Cabang/Capem</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="cabang" placeholder="Cabang/Capem" value="{{old('cabang')}}">
                                @if($errors->has('cabang'))
                                <span class="help-block">{{$errors->first('cabang')}}</span>
                            @endif
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                        </div>
                        </div>
                    </div>
                    </div>
                </div>
                    <div class="col-md-12">
                        <table class="display" id="example"  style="width:100%">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama Kecamatan</th>
                                    <th>NIK</th>
                                    <th>Nama Sesuai KTP</th>
                                    <th>Tempat Lahir</th>
                                    <th>Tanggal Lahir</th>
                                    <th>Alamat Lengkap</th>
                                    <th>RT</th>
                                    <th>RW</th>
                                    <th>Keluahan/Desa</th>
                                    <th>No Hp</th>
                                    <th>Nama Lembaga</th>
                                    <th>Alamat Lembaga</th>
                                    <th>Jenis Lembaga</th>
                                    <th>NSTPQ</th>
                                    <th>Nama Rekening</th>
                                    <th>No Rekening</th>
                                    <th>Cabang/Capem</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            
                            <tbody>
                            @foreach($kominfo['guru'] as $p)
                            <tr>
                                <td>{{ $p->no_guru }}</td>
                                <td>{{ $p->no_kecamatan }}</td>
                                <td>{{ $p->nik }}</td>
                                <td>{{ $p->nama_lengkap }}</td>
                                <td>{{ $p->tempat_lahir }}</td>
                                <td>{{ $p->tanggal_lahir }}</td>
                                <td>{{ $p->alamat }}</td>
                                <td>{{ $p->rt }}</td>
                                <td>{{ $p->rw }}</td>
                                <td>{{ $p->kel_desa }}</td>
                                <td>{{ $p->no_hp }}</td>
                                <td>{{ $p->nama_lembaga }}</td>
                                <td>{{ $p->alamat_lembaga }}</td>
                                <td>{{ $p->jenis_lembaga }}</td>
                                <td>{{ $p->NSTPQ }}</td>
                                <td>{{ $p->nama_rekening }}</td>
                                <td>{{ $p->no_rekening }}</td>
                                <td>{{ $p->cabang }}</td>
                                <td>
                                @if(auth()->user()->role == 'admin')
                                    <a href="/kominfo/edit/{{ $p->nik }}">Edit</a>
                                    <a href="/kominfo/hapus/{{ $p->nik }}">Hapus</a>
                                    <a href="/kominfo/invoice/{{ $p->nik }}">Print</a>
                                @endif
                                </td>
                            </tr>
                            @endforeach
                            </tbody>
                                    
                        </table>
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
        console.log(arr);
        function selectKecamatan(){
            desa = "";
            text = $( "#exampleFormControlSelect1 option:selected" ).text();
            console.log();
            $.each(arr, function(i, v) {
            if (v.nama_kecamatan == text) {
                $.each(v.desa, function(ii, vv) {
                    desa += "<option>"+vv.kel_desa+"</option>";
                });
                $("#formDesa").html(desa);
            }    
            });  
        };
        function printKec() {
            valKec = $( "#printKecSel option:selected" ).text();
            location.href= "/kominfo/kecamatan/"+valKec;            
        }
    </script>
@stop


