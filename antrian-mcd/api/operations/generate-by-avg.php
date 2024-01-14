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
$item->generateByAVG();

if ($item->selisih_kedatangan != null) {

    // Convert arrival and departure times to hours and minutes
    $waktu_datang = date('H:i:s', strtotime($item->waktu_datang));
    $waktu_selesai = date('H:i:s', strtotime($item->waktu_selesai));

    // Create response array
    $data_arr = array(
        "minimaltunggu" => "Jika awal waktu kedatangan konsumen pada: " . 
                             $waktu_datang . " dan kedatangan pelanggan terakhir pada:" ,
        "maksimaltunggu" =>  $waktu_selesai . " maka",
        "ratarata" => "rata-rata waktu tunggu di gerai McDonalds adalah ".
        round($item->selisih_keluar_antrian)." menit"
    );


    http_response_code(200);
    echo json_encode($data_arr);
} else {
    http_response_code(404);
    echo json_encode(array("message" => "User not found."));
}

?>