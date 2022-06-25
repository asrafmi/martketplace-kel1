<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.rajaongkir.com/starter/cost",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "origin=108&destination=114&weight=1700&courier=jne",
  CURLOPT_HTTPHEADER => array(
    "content-type: application/x-www-form-urlencoded",
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
    $data_paket = $array_response['rajaongkir']['results']['0']['costs'];

    foreach ($data_paket as $key => $tiap_paket) {
        echo "<option paket='".$tiap_paket['service']."' 
        ongkir='".$tiap_paket['cost']['0']['value']."'
        estimasi='".$tiap_paket['cost']['0']['etd']."'>";
        echo $tiap_paket['service']." ";
        echo $tiap_paket['cost']['0']['value']." ";
        echo $tiap_paket['cost']['0']['etd'];
        echo "</option>";
    }

    // echo "<pre>";
    // print_r ($array_response);
    // echo "<pre>";
}