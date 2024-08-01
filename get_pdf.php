<?php
// get_pdf.php

if (isset($_GET['file'])) {
    $filename = $_GET['file'];
    $filepath = 'upload/submanual/' . $filename;

    if (file_exists($filepath)) {
        header('Content-Type: application/pdf');
        header('Content-Disposition: inline; filename="' . $filename . '"');
        readfile($filepath);
        exit;
    } else {
        echo "File not found.";
        exit;
    }
} else {
    echo "No file specified.";
    exit;
}
?>
