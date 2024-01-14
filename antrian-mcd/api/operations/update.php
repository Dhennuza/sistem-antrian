<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-AllowHeaders, Authorization, X-Requested-With");

include_once '../../config/database.php';
include_once '../../models/AntrianMCD.php';

$database = new Database();
$db = $database->getConnection();
$item = new AntrianMCD($db);
$data = json_decode(file_get_contents("php://input"));
$item->id = $data->id;

// Antrian values
$data = json_decode(file_get_contents("php://input"));
$item->waktu_datang = $data->waktu_datang;
$item->selisih_kedatangan = $data->selisih_kedatangan;
$item->waktu_awal_pelayanan = $data->waktu_awal_pelayanan;
$item->selisih_pelayanan_kasir = $data->selisih_pelayanan_kasir;
$item->waktu_selesai = $data->waktu_selesai;
$item->selisih_keluar_antrian = $data->selisih_keluar_antrian;

if ($item->updateData()) {
    echo json_encode(['message' => 'Antrian EDIT successfully.']);
} else {
    echo json_encode(['message' => 'Antrian could not be created.']);
}
