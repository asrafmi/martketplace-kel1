<?php
$id_prov_terpilih = $_POST['id_provinsi'];
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://api.rajaongkir.com/starter/city?province=".$id_prov_terpilih,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "key: 8f22875183c8c65879ef1ed0615d3371"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
    $array_response = json_decode($response, TRUE);
    $data_kota = $array_response['rajaongkir']['results'];
    
    echo "<option value=''>-- Pilih Kota --</option>";

    foreach ($data_kota as $key => $tiap_kota) {
        echo "<option value='".$tiap_kota['city_id']."' 
        nama_prov='".$tiap_kota['province']."'
        nama_kota='".$tiap_kota['city_name']."'
        id_kota='".$tiap_kota['city_id']."'
        tipe_kota='".$tiap_kota['type']."'
        kode_pos='".$tiap_kota['postal_code']."'>";
        echo $tiap_kota['type']." ";
        echo $tiap_kota['city_name'];
        echo "<option>";
    }
    // echo "<pre>";
    // print_r ($data_kota);
    // echo "<pre>";
}

?>