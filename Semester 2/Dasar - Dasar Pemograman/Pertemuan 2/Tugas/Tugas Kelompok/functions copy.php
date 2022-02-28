<?php
// Koneksi Ke Database
$conn = mysqli_connect("localhost", "root", "", "arvinmuhammadajif");

function query($query)
{
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

require_once 'vendor/fzaninotto/Faker/src/autoload.php';
$faker = Faker\Factory::create('id_ID');

function tambah($data)
{
    global $conn;
    $nama = htmlspecialchars($data["nama"]);
    $nim = htmlspecialchars($data["nim"]);
    $kelas = htmlspecialchars($data["kelas"]);
    $email = htmlspecialchars($data["email"]);
    $jurusan = htmlspecialchars($data["jurusan"]);
    //upload gambar
    $gambar = upload();
    if (!$gambar) {
        return false;
    }
    // $gambar= htmlspecialchars($data["gambar"]); 
    //$sukses=[""];
    //$error=[""];

    $query = "INSERT INTO mahasiswa 
   VALUES
   ('', '$nama','$nim', '$kelas', '$email', '$jurusan', '$gambar')";
    //  if ($nama && $kelas && $email && $jurusan && $gambar) {
    //     $query = "INSERT INTO mahasiswa 
    //    VALUES
    //    ('', '$nama','$nim', '$kelas', '$email', '$jurusan', '$gambar')";
    //    $q1 = mysqli_query($conn,$query);
    //    if ($q1) {
    //        $sukses ="Berhasil Memasukan Data Baru";
    //    } else {
    //     $error ="Gagal Memasukan Data Baru";
    //    }

    //  } else {
    //      $error ="Silahkan Memasukan Semua Data";
    //  }

    $q1 = mysqli_query($conn, $query);
    return mysqli_affected_rows($conn);
}

function upload()
{

    // $namaFile = $_FILES['gambar']['name'];
    $ukuranFile = $_FILES['gambar']['size'];
    $namaFile = $_FILES['gambar']['name'];
    $error = $_FILES['gambar']['error'];
    $tmpName = $_FILES['gambar']['tmp_name'];

    // Cek apakah ada gambar/tidak

    if ($error === 4) {
        echo "
        <script >
            alert('Silahkan Pilih Gambar!');
            document.location.href= 'index.php';
        </script>
        ";
        return false;
    }
    // Cek apakah yangDiupload Gambar/Bukan
    $ekstensiGambarvalid = ['jpg', 'jpeg', 'png'];
    // $ekstensiGambarvalid = array('jpg', 'jpeg', 'png');
    $x = explode('.', $namaFile);
    $ekstensiGambar = strtolower(end($x));
    if (!in_array($ekstensiGambar, $ekstensiGambarvalid)) {
        echo "
        <script >
            alert('Silahkan Pilih Gambar Dengan gambar yang valid!');
        </script>
        ";
        return false;
    }
    // var_dump(explode('.', $namaFile));
    // die;

    // Cek Jika Ukuran Nya Terlalu Besar
    if ($ukuranFile > 100000000) {
        echo "
    <script >
        alert('Ukuran Gambar Terlalu Besar!');
    </script>
    ";
        return false;
    }

    //Lolos Pengecekan, Gambar Siap :Di Upload
    //Generate Uniq ID
    $namaFileBaru = uniqid();
    $namaFileBaru .= '.';
    $namaFileBaru .= $ekstensiGambar;

    move_uploaded_file($tmpName, 'img/' . $namaFileBaru);
    return $namaFileBaru;
}
