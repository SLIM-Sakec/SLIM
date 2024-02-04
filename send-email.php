<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve form data
    $pcno = $_POST['pcno'];
    $issue = $_POST['issue'];
}

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

$mail->Subject = $pcno;
$mail->Body = $email."\n".$issue."\n".$currentDateTimeNumeric;

$mail->send();

header("Location: sent.html");
?>