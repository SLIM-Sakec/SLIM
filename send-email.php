<?php

$name = $_POST["name"];
$email = $_POST["email"];
$subject = $_POST["subject"];
$message = $_POST["message"];

require "vendor/autoload.php";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

$mail = new PHPMailer(true);

// $mail->SMTPDebug = SMTP::DEBUG_SERVER;
$currentDateTimeNumeric = date("YmdHis");
$mail->isSMTP();
$mail->SMTPAuth = true;

$mail->Host = "smtp.gmail.com";
$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
$mail->Port = 587;

$mail->Username = "mastersumeetov@gmail.com";//helpdesk email//
$mail->Password = "lzzs tbzk bwlf ufyz";

$mail->setFrom($email,$name);
$mail->addReplyTo($email,$name);
$mail->addAddress("mastersumeetov@gmail.com");//helpdesk email//

$mail->Subject = $subject;
$mail->Body = $email."\n".$message."\n".$currentDateTimeNumeric;

$mail->send();

header("Location: sent.html");
?>