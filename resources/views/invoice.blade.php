<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
</head>
    <body style="background-color:#ffff">
        <div class="border">
        {{ csrf_field() }}
            <center>
                <h1>FC E-KTP / KARTU PELAJAR</h1>
            </center>
        <table>
            <tr>
                <td>NIK</td>
                <td> : </td>
                <td>{{$guru->nik}}</td>
            </tr>
            <tr>
                <td>Nama</td>
                <td> : </td>
                <td>{{$guru->nama_lengkap}}</td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td> : </td>
                <td>{{$guru->alamat}}</td>
            </tr>
        </table>
        <center>
            <h3 class="text-center">“APABILA TIDAK JELAS / TIDAK TERBACA MOHON DI FOTOCOPY ULANG ATAU DI FOTO DARI HP DAN PRINT OUT”</h3>
        </center>
        </div><br>

    <div class="border">
    <center>
        <h1>FC REKENING BANK JATIM</h1>
    </center>
    <table>
        <tr>
            <td>Capem</td>
            <td> : </td>
            <td>{{$guru->cabang}}</td>
        </tr>
        <tr>
            <td>No Rekening</td>
            <td> : </td>
            <td>{{$guru->no_rekening}}</td>
        </tr>
        <tr>
            <td>Nama</td>
            <td> : </td>
            <td>{{$guru->nama_lengkap}}</td>
        </tr>
        <tr>
            <td>NO KTP</td>
            <td> : </td>
            <td>{{$guru->nik}}</td>
        </tr>
        <tr>
            <td>Alamat</td>
            <td> : </td>
            <td>{{$guru->alamat}}</td>
        </tr>
    </table>
    <center>
        <h3 class="text-center">“APABILA TIDAK JELAS / TIDAK TERBACA MOHON DI FOTOCOPY ULANG ATAU DI FOTO DARI HP DAN PRINT OUT”</h3>
    </center>
    </div><br>
    <center>
        <h1>FOTOCOPY KTP DAN FOTOCOPY REKENING BANK JATIM JADI 1 (SATU) HALAMAN</h1><br><br><br><br><br><br><br><br><br><br><br><br><br>
    </center>
    <div>
    <center>
        <h1>SURAT PERNYATAAN KEPEMILIKAN REKENING BANK</h1>
    </center>
    <table>
        <tr>
            <td>Yang bertanda tangan di bawah ini</td>
            <td> : </td>
            <td>{{$guru->nama_lengkap}}</td>
        </tr>
        <tr>
            <td>Nama di Rekening Bank Jatim</td>
            <td> : </td>
            <td>{{$guru->nama_rekening}}</td>
        </tr>
        <tr>
            <td>nama_rekening</td>
            <td> : </td>
            <td>{{$guru->cabang}}</td>
        </tr>
        <tr>
            <td>Nomor Rekening Bank Jatim</td>
            <td> : </td>
            <td>{{$guru->no_rekening}}</td>
        </tr>
        <tr>
            <td>No. HP (wajib untuk diisi)</td>
            <td> : </td>
            <td>{{$guru->no_hp}}</td>
        </tr>
    </table>

        <p>Dengan ini menerangkan bahwa nama dan nomor rekening bank sebagaimana tersebut diatas adalah benar dan masih aktif atas nama (sesuai dengan FC Rek. Bank Jatim) untuk proses pencairan SP2D dari Pemerintah Kabupaten Malang.</p>
        <p>Demikian surat pernyataan ini dibuat dengan benar dan untuk dipergunakan sebagaimana mestinya.</p><br>
        <p class = "text">Malang,. . . . . 2020</p> 
        <p class = "text">Penerima Belanja Bantuan Sosial</p> <br><br>
        <p class = "text">{{$guru->nama_lengkap}}</p> 

    </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <div >
    <center>
        <h2>BANTUAN SOSIAL KEPADA GURU NGAJI, GURU PASRAMAN DAN GURU SEKOLAH MINGGU DI KABUPATEN MALANG TAHUN 2020</h2><hr>
        <h3>P A K T A   I N T E G R I T A S</h3>
        <p>PERMOHONAN BELANJA BANTUAN SOSIAL</p>
    </center>
    <table>
        <tr>
            <td>Saya yang bertanda tangan dibawah ini </td>
            <td> : </td>
        </tr>
        <tr>
            <td>N a m a ( sesuai dengan KTP )</td>
            <td> : </td>
            <td>{{$guru->nama_lengkap}}</td>
        </tr>
        <tr>
            <td>Tempat / Tanggal Lahir </td>
            <td> : </td>
            <td>{{$guru->tempat_lahir}}/{{$guru->tanggal_lahir}}</td>
        </tr>
        <tr>
            <td>Telepon / HP ( wajib diisi ) </td>
            <td> : </td>
            <td>{{$guru->no_hp}}</td>
        </tr>
        <tr>
            <td>Lembaga </td>
            <td> : </td>
            <td>{{$guru->jenis_lembaga}}</td>
        </tr>
        <tr>
            <td>Alamat ( sesuai dengan KTP ) </td>
            <td> : </td>
            <td>Jln / Dusun {{$guru->alamat}}</td>  <td>RT. {{$guru->rt}}</td>  <td>RW. {{$guru->rw}}</td>  <td>Desa {{$guru->kel_desa}}</td>  <td>Kecamatan {{$guru->no_kecamatan}}</td>
        </tr>
        <tr>
            <td>Nomor Rekening Bank Jatim </td>
            <td> : </td>
            <td>{{$guru->no_rekening}}</td>
        </tr>
    </table>
        <p>Dengan ini, menyatakan dengan sebenarnya bahwa untuk memenuhi tujuan transparansi dan akuntabilitas penggunaan dana belanja bantuan sosial :</p>
        <p>1. Bertanggung jawab mutlak baik formal maupun material atas penggunaan belanja Bantuan Sosial yang diterima ;</p>
        <p>2. Akan menggunakan belanja Bantuan Sosial sesuai dengan rencana penggunaan dalam proposal yang telah disetujui ;</p>
        <p>3. Bersedia diaudit secara independen sesuai peraturan perundang-undangan yang berlaku ;</p>
        <p>Demikian Pakta Integritas ini dibuat dengan penuh kesadaran dan rasa tanggungjawab serta tidak ada unsur paksaan dari pihak manapun.</p><br>
        <p class = "text">Malang,. . . . .  2020</p> 
        <p class = "text">Penerima Belanja Bantuan Sosial</p> <br><br>
        <p class = "text">{{$guru->nama_lengkap}}</p> 
    </div><br>

    <div>
    <center>
        <h1>TPQ  {{$guru->alamat_lembaga}}</h1>
        <h1>NSTPQ : {{$guru->NSTPQ}}</h1>
    <table>
        <tr>
            <td>Alamat : </td>
            <td>Jln / Dusun {{$guru->alamat}}</td>  
            <td>RT. {{$guru->rt}}</td>  
            <td>RW. {{$guru->rw}}</td>  
            <td>Desa {{$guru->kel_desa}}</td>  
            <td>Kecamatan {{$guru->no_kecamatan}}</td>
        </tr>
    </table><hr>
        <h3>SURAT PERNYATAAN</h3>
    </center>
    <table>
        <tr>
            <td>Saya yang bertanda tangan dibawah ini</td>
            <td> : </td>
        </tr>
        <tr>
            <td>N a m a (sesuai dengan KTP)</td>
            <td> : </td>
            <td>{{$guru->nama_lengkap}}</td>
        </tr>
        <tr>
            <td>Tempat / Tanggal Lahir </td>
            <td> : </td>
            <td>{{$guru->tempat_lahir}}/{{$guru->tanggal_lahir}}</td>
        </tr>
        <tr>
            <td>NIK / Nomor KTP</td>
            <td> : </td>
            <td>{{$guru->nik}}</td>
        </tr>
        <tr>
            <td>Lembaga </td>
            <td> : </td>
            <td>{{$guru->jenis_lembaga}}</td>
        </tr>
        <tr>
            <td>Nomor Rekening Bank Jatim </td>
            <td> : </td>
            <td>{{$guru->no_rekening}}</td>
        </tr>
        <tr>
            <td>Alamat ( sesuai dengan KTP ) </td>
            <td> : </td>
            <td>Jln / Dusun {{$guru->alamat}}</td>
        </tr>
        <tr>
            <td>RT / RW </td>
            <td> : </td>
            <td>RT {{$guru->rt}}</td> <td>RW {{$guru->rw}}</td>
        </tr>
        <tr>
            <td>DESA </td>
            <td> : </td>
            <td>RT {{$guru->kel_desa}}</td>
        </tr>
        <tr>
            <td>KECAMATAN </td>
            <td> : </td>
            <td>RT {{$guru->no_kecamatan}}</td>
        </tr>
        <tr>
            <td>Telepon / HP (wajib diisi) </td>
            <td> : </td>
            <td>RT {{$guru->no_hp}}</td>
        </tr>
    </table>
        <p>Dengan ini menyatakan dengan sebenarnya bahwa : </p>
        <p>1.	Bertanggung jawab mutlak baik formal maupun material atas penggunaan belanja Bantuan Sosial yang telah saya terima ;</p>
        <p>2.	Bantuan Sosial yang diterima telah digunakan sesuai dengan usulan.</p>
        <p>Demikian Surat Pernyataan Tanggung Jawab ini dibuat dengan penuh kesadaran serta tidak ada unsur paksaan dari pihak manapun.</p><br>
        <p class = "text">Malang,. . . . .  2020</p> 
        <p class = "text">Yang bersangkutan</p> <br><br>
        <p class = "text">{{$guru->nama_lengkap}}</p> 
        <p>Tembusan:</p>
        <p>Yth. Sdr. Kepala Bagian Administrasi Kemasyarakatan dan Pembinaan Mental Setda Kabupaten Malang</p>
    </div><br>

    <div>
    <center>
        <h2>TPQ  {{$guru->alamat_lembaga}}</h2>
        <h2>NSTPQ : {{$guru->NSTPQ}}</h2>
    <table class ="center">
        <tr>
            <td>Alamat : </td>
            <td>Jln / Dusun {{$guru->alamat}}</td>  
            <td>RT. {{$guru->rt}}</td>  
            <td>RW. {{$guru->rw}}</td>  
            <td>Desa {{$guru->kel_desa}}</td>  
            <td>Kecamatan {{$guru->no_kecamatan}}</td>
        </tr>
    </table><hr>
    </center>
        <p class = "text">Malang,. . . . .  2020</p>
        <p class = "text">Kepada</p>
        <p class = "text">Yth. Bapak Bupati Malang</p>
        <p class = "text">c.q. Kepala Badan Keuangan dan Aset Daerah Kabupaten Malang di - M A L A N G</p>
    <table>
        <tr>
            <td>Nomor</td>
            <td> : </td>
            <td>   /TPQ/XII/2020</td>
        </tr>
        <tr>
            <td>Sifat</td>
            <td> : </td>
            <td>-</td>
        </tr>
        <tr>
            <td>Lampiran</td>
            <td> : </td>
            <td>1 (satu) berkas</td>
        </tr>
        <tr>
            <td>Perihal</td>
            <td> : </td>
            <td>Laporan Penggunaan Bantuan Sosial Guru Ngaji, Guru Pasraman dan Guru Sekolah Minggu Tahun Anggaran 2020</td>
        </tr>
    </table>
        <p>Sehubungan dengan belanja Bantuan Sosial Tahun 2020 yang telah kami terima sebesar Rp. 1.200.000,- (Satu Juta Dua Ratus Ribu Rupiah) yang peruntukannya adalah digunakan untuk bantuan insentif kepada Guru Ngaji, Guru Sekolah Minggu dan Guru Pasraman, berikut kami sampaikan Laporan Penggunaan Belanja Bantuan Sosial.</p>
        <p>Adapun Jumlah Belanja Bantuan Sosial yang diterima  sebesar                  Rp. 1.200.000,- dan telah digunakan sebesar Rp. 1.200.000,- untuk. meningkatkan kesejahteraan Guru Ngaji / Guru Sekolah Minggu / Guru Pasraman* dalam rangka meningkatkan pengabdian untuk mencerdaskan akhlak dan budi pekerti anak didik. (*coret yang tidak perlu)</p>
        <p>Laporan penggunaan belanja Bantuan Sosial telah disusun sesuai dengan fakta kejadian dan bukti-bukti yang dapat dipertanggungjawabkan.</p>
        <p>Untuk tujuan transparansi dan akuntabilitas Penggunaan Belanja Bantuan Sosial, saya bersedia dan siap untuk dilakukan pemeriksaan oleh instansi pengawasan fungsional sesuai peraturan perundang-undangan yang berlaku.</p>
        <p>Demikian kami sampaikan, atas perhatian dan bantuannya, kami ucapkan terima kasih. </p><br>
        <p class = "text">Yang bersangkutan</p><br><br>
        <p class = "text">{{$guru->nama_lengkap}}</p> 
        <p>Tembusan:</p>
        <p>Yth. Sdr. Kepala Bagian Administrasi Kemasyarakatan dan Pembinaan Mental Setda Kabupaten Malang</p>
    </div>

    <div class = "border">
    <table>
        <tr>
            <td>Kwitansi No.</td>
            <td> : </td>
            <td>. ./. . /2020</td>
        </tr>
        <tr>
            <td>Sudah Terima Dari</td>
            <td> : </td>
            <td>PEMERINTAH KABUPATEN MALANG</td>
        </tr>
        <tr>
            <td>Jumlah Uang</td>
            <td> : </td>
            <td>  == SATU JUTA DUA RATUS RIBU RUPIAH ==  </td>
        </tr>
        <tr>
            <td>Untuk Pembayaran</td>
            <td> : </td>
            <td>Belanja Bantuan Sosial kepada Guru Ngaji, Guru Pasraman, dan Guru Sekolah Minggu Tahun 2020 atas nama {{$guru->nama_lengkap}} sesuai dengan KTP {{$guru->nik}} TPQ/ Gereja/ Pura {{$guru->jenis_lembaga}} alamat di Jln / Dusun {{$guru->alamat}}   RT. {{$guru->rt}} RW. {{$guru->rw}} Desa {{$guru->kel_desa}} Kecamatan {{$guru->no_kecamatan}} Kabupaten Malang</td>
        </tr>
        <tr>
            <td>Terbilang</td>
            <td> : </td>
            <td>1.200.000</td>
        </tr>
    </table>
        <p class = "text">Malang,. . . . . 2020</p> 
        <p class = "text">Penerima</p> <br>
        <p class = "text">Materai 6000</p><br>
        <p class = "text">{{$guru->nama_lengkap}}</p>
    </div><br>
    <p>Catatan :</p>
    <p>1.  Berdomisili di wilayah Kab. Malang (E-KTP/SIM/Kartu Pelajar/Suket yang masih berlaku dari Dispendukcapil Kab. Malang)</p>
    <p>2.  Penulisan Ejaan Nama dan Alamat harus sesuai, benar dan tidak boleh disingkat</p>
    <p>3.  Penulisan awalan kata harus HURUF BESAR / KAPITAL dan untuk penulisan angka pada RT/RW ditulis 2 (DUA) digit saja</p>
    <p>4.  Setelah selesai dan lengkap diisi dan dijadikan 1 (satu) set secara urut, di fotocopy rangkap 3 (tiga) dan distempel basah.</p>
    <p>5.  Segera menyetorkan kembali berkas ke Bagian Bintal sebanyak 3 rangkap (1 berkas asli dan 2 berkas fotocopy)</p>
    <p>6.  Semua TANGGAL dan BULAN dalam SPJ untuk dikosongkan / tidak diisi</p>
    <p>7.  Stempel Lembaga dan 1 lembar Materai Rp. 6.000,-</p>

</body>
<style>
    .text{
        text-align: right
    }
    .border{
        border: 2px solid black;
    }
    td{
        padding-right:15px
    }
</style>
</html>