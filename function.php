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
