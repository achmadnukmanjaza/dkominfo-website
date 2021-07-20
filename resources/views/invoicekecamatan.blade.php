<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <center>
        <h1>DATA GURU NGAJI, GURU SEKOLAH MINGGU DAN GURU PASRAMAN</h1>
        <h1>KECAMATAN KASEMBON KABUPATEN MALANG</h1>
        <h1>TAHUN 2020</h1>
    </center>
    <table border="1">
        <thead>
            <tr>
                <th scope="col">No</th>
                <th scope="col">Nama Kecamatan</th>
                <th scope="col">NIK</th>
                <th scope="col">Nama Sesuai KTP</th>
                <th scope="col">Tempat Lahir</th>
                <th scope="col">Tanggal Lahir</th>
                <th scope="col">Alamat Lengkap</th>
                <th scope="col">RT</th>
                <th scope="col">RW</th>
                <th scope="col">Kelurahan/Desa</th>
                <th scope="col">No Hp</th>
                <th scope="col">Nama Lembaga</th>
                <th scope="col">Alamat Lembaga</th>
                <th scope="col">Jenis Lembaga</th>
                <th scope="col">NSTPQ</th>
                <th scope="col">Nama Rekening</th>
                <th scope="col">No Rekening</th>
                <th scope="col">Cabang/Capem</th>
            </tr>
        </thead>
        <tbody>
        @foreach($guru as $p)
            <tr>
                <th scope="row">{{ $p->no_guru }}</th>
                <th scope="row">{{ $p->no_kecamatan }}</th>
                <th scope="row">{{ $p->nik }}</th>
                <th scope="row">{{ $p->nama_lengkap }}</th>
                <th scope="row">{{ $p->tempat_lahir }}</th>
                <th scope="row">{{ $p->tanggal_lahir }}</th>
                <th scope="row">{{ $p->alamat }}</th>
                <th scope="row">{{ $p->rt }}</th>
                <th scope="row">{{ $p->rw }}</th>
                <th scope="row">{{ $p->kel_desa }}</th>
                <th scope="row">{{ $p->no_hp }}</th>
                <th scope="row">{{ $p->nama_lembaga }}</th>
                <th scope="row">{{ $p->alamat_lembaga }}</th>
                <th scope="row">{{ $p->jenis_lembaga }}</th>
                <th scope="row">{{ $p->NSTPQ }}</th>
                <th scope="row">{{ $p->nama_rekening }}</th>
                <th scope="row">{{ $p->no_rekening }}</th>
                <th scope="row">{{ $p->cabang }}</th>
            </tr>
        @endforeach
        </tbody>
    </table>
        <p class = "text">Di update tanggal,. . . . . 2020</p><br><br>
        <p class = "text">Mengetahui camat</p><br><br>
        <p class = "text">NIP . . . . . . . </p><br><br>
        <p>Catatan : </p>
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
</style>
</html>