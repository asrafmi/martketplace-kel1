<?php
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'vendor/autoload.php';

if(isset($_POST['submitsaveinvoice']))
{

    //Create an instance; passing `true` enables exceptions
    $mail = new PHPMailer(true);

        $invoice_id = $_POST['invoice_id'];
        $invoice_tanggal = $_POST['invoice_tanggal'];
        $invoice_nama = $_POST['invoice_nama'];
        $customer_email = $_POST['customer_email'];


        //Server settings
        $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'timezoneonlinetesting@gmail.com';                     //SMTP username
        $mail->Password   = 'AkunTesting2020';                               //SMTP password
    //  $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
        $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

        //Recipients
        $mail->setFrom('timezoneonlinetesting@gmail.comm', 'Testing');
        $mail->addAddress($customer_email, $invoice_id, $invoice_nama);     //Add a recipient
    // $mail->addAddress('ellen@example.com');               //Name is optional
        $mail->addReplyTo('timezoneonlinetesting@gmail.com', 'Percobaan');
    // $mail->addCC('cc@example.com');
    // $mail->addBCC('bcc@example.com');

        //Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
        //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name

        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = 'Testing Localhost';
        $mail->Body    = 'This is the HTML message body <b>in bold!</b>';
        $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

        if($email->send())
        {
            echo 'Message Sent';
        }
        else{
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
        echo 'Message has been sent';
            
}
else {
    Echo "Accept Tombol"
}