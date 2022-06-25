<?php 
include 'koneksi.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


//Load Composer's autoloader
require 'vendor/autoload.php';

if(isset($_POST['submitreg']))
{

    //Create an instance; passing `true` enables exceptions
    $mail = new PHPMailer(true);

		// bagian register //
		$nama  = $_POST['nama'];
		$email = $_POST['email'];
		$hp = $_POST['hp'];
		$alamat = $_POST['alamat'];
		$password = md5($_POST['password']);

        //Server settings
       // $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'ardhanardiansyahardana@gmail.com';                     //SMTP username
        $mail->Password   = 'ckcajnultawrqabe';                               //SMTP password
    //  $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
        $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

        //Recipients
        $mail->setFrom('ardhanardiansyahardana@gmail.com', 'PayPlay Administrator');
        $mail->addAddress($email,$password);     //Add a recipient
    // $mail->addAddress('ellen@example.com');               //Name is optional
        $mail->addReplyTo('ardhanardiansyahardana@gmail.com', 'Percobaan');
    // $mail->addCC('cc@example.com');
    // $mail->addBCC('bcc@example.com');

        //Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
        //$mail->addAttachment('/gambar/bukti_pembayaran/', '1165898084.jpg');    //Optional name

        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = 'Selamat Datang Di PayPlay';
        $mail->Body    = 'Terimakasih Telah Mendaftar di situs kami';
        $mail->AltBody = 'Testing Dari Localhost';

        if($mail->send())
        {
            echo 'Message Sent';
        }
        else{
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
            
}
else {
    Echo "Accept Tombol";
}

$cek_email = mysqli_query($koneksi,"select * from customer where customer_email='$email'");
if(mysqli_num_rows($cek_email) > 0){
	header("location:daftar.php?alert=duplikat");
}else{
	mysqli_query($koneksi, "insert into customer values (NULL,'$nama','$email','$hp','$alamat','$password')");
	header("location:masuk.php?alert=terdaftar");
}
