<?php

function koneksi() {
    $conn = mysqli_connect('localhost', 'root', '', 'prakweb_2023_c_203040109') or die('Koneksi ke database Gagal');

    return $conn;
}

function query($query) {
    $conn = koneksi();
    $result = mysqli_query($conn, $query) or die('Query gagal'.mysqli_error($conn));

    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }

    return $rows;
}

function tambah($data){
    $conn = koneksi();

    //sanitasi data
    $judul = mysqli_real_escape_string($conn, htmlspecialchars($data['judul']));
    $penulis = mysqli_real_escape_string($conn, htmlspecialchars($data['penulis']));
    $penerbit = mysqli_real_escape_string($conn, htmlspecialchars($data['penerbit']));
    $kategori = mysqli_real_escape_string($conn, htmlspecialchars($data['kategori']));
    $gambar = mysqli_real_escape_string($conn, htmlspecialchars($data['gambar']));

    //query insert data
    $query = "INSERT INTO buku
                VALUES(null, '$judul', '$penulis', '$penerbit', '$kategori', '$gambar')";

    //insert data ke tabel buku
    mysqli_query($conn, $query) or die('Query GAGAL! ' . mysqli_error($conn));

    //kembalikan nilai keberhasilanmya
    return mysqli_affected_rows($conn);
}

function hapus($id){
    $conn = koneksi();
    mysqli_query($conn, "DELETE FROM buku WHERE id = $id") or die('Query GAGAL! ' . mysqli_error($conn));
    return mysqli_affected_rows($conn);
}

function ubah($data){
    $conn = koneksi();

    //sanitasi data
    $id =$data['id'];
    $judul = mysqli_real_escape_string($conn, htmlspecialchars($data['judul']));
    $penulis = mysqli_real_escape_string($conn, htmlspecialchars($data['penulis']));
    $penerbit = mysqli_real_escape_string($conn, htmlspecialchars($data['penerbit']));
    $kategori = mysqli_real_escape_string($conn, htmlspecialchars($data['kategori']));
    $gambar = mysqli_real_escape_string($conn, htmlspecialchars($data['gambar']));

    //query insert data
    $query = "UPDATE buku
                SET
                judul = '$judul',
                penulis = '$penulis',
                judul = '$judul',
                kategori = '$kategori',
                gambar = '$gambar'
                WHERE id = $id";
    //update data ke tabel buku
    mysqli_query($conn, $query) or die('Query GAGAL! ' . mysqli_error($conn));

    //kembalikan nilai keberhasilanmya
    return mysqli_affected_rows($conn);
}

?>