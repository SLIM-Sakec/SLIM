<?php 
 
// Load the database configuration file 
require_once "config.php";
 
// Include PhpSpreadsheet library autoloader 
require_once 'vendor/autoload.php'; 
use PhpOffice\PhpSpreadsheet\Reader\Csv; 
 
if(isset($_POST['importSubmit'])){ 
     
    // Allowed mime types 
    $excelMimes = array('text/xls', 'text/xlsx', 'application/excel', 'application/vnd.msexcel', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'text/csv','application/csv',); 
     
    // Validate whether selected file is a Excel file 
    if(!empty($_FILES['file']['name']) && in_array($_FILES['file']['type'], $excelMimes)){ 
         
        // If the file is uploaded 
        if(is_uploaded_file($_FILES['file']['tmp_name'])){ 
            $reader = new Csv(); 
            $spreadsheet = $reader->load($_FILES['file']['tmp_name']); 
            $worksheet = $spreadsheet->getActiveSheet();  
            $worksheet_arr = $worksheet->toArray(); 
 
            // Remove header row 
            unset($worksheet_arr[0]); 
 
            foreach($worksheet_arr as $row){ 
                
                $pcno = $row[0];
                $mname = $row[1];
                $msno = $row[2];
                $ksno = $row[3];
                $muno = $row[4];
                $mono = $row[5];
                $ip = $row[6];
                $submsk = $row[7];
                $pcname = $row[8];
                $processor = $row[9];
                $cpuspeed= $row[10];
                $memory = $row[11];
                $harddisk = $row[12];
                $dvd = $row[13];
                $display = $row[14];
                $sound = $row[15];
                $lancard = $row[16];
                $monitor = $row[17];
                $keyboard = $row[18];
                $mouse = $row[19];
                $softwares  = $row[20];
                $dept=$row[21];
                $labno = $row[22];
                // $isworking='1';
                // $istransfered='0';
                // $isscrapped='0';
                

                $sql1 ="INSERT INTO `devices`(`sno`, `pcno`, `mname`, `msno`, `ksno`, `muno`, `mono`, `ip`, `submsk`, `pcname`, `processor`, `CPUspeed`, `memory`, `harddisk`, `dvd`, `display`, `sound`, `lancard`, `monitor`, `keyboard`, `mouse`, `softwares`, `dept`, `labno`, `isworking`, `istransfered`, `isscrapped`) 
                            VALUES ('','".$pcno."','".$mname."','".$msno."','".$ksno."','".$muno."','".$mono."','".$ip."','".$submsk."','".$pcname."','".$processor."','".$cpuspeed."','".$memory."','".$harddisk."','".$dvd."','".$display."','".$sound."','".$lancard."','".$monitor."','".$keyboard."','".$mouse."','".$softwares."','".$dept."','".$labno."','1','0','0')";
                $result = mysqli_query($conn, $sql1);
                // Check whether member already exists in the database with the same email 
                // $prevQuery = "SELECT id FROM members WHERE email = '".$email."'"; 
                // $prevResult = $db->query($prevQuery); 
                 
                // if($prevResult->num_rows > 0){ 
                //     // Update member data in the database 
                //     $db->query("UPDATE members SET first_name = '".$first_name."', last_name = '".$last_name."', email = '".$email."', phone = '".$phone."', status = '".$status."', modified = NOW() WHERE email = '".$email."'"); 
                // }else{ 
                //     // Insert member data in the database 
                //     $db->query("INSERT INTO members (first_name, last_name, email, phone, status, created, modified) VALUES ('".$first_name."', '".$last_name."', '".$email."', '".$phone."', '".$status."', NOW(), NOW())"); 
                // } 
            } 
             
            $qstring = '?status=succ'; 
        }else{ 
            $qstring = '?status=err'; 
        } 
    }else{ 
        $qstring = '?status=invalid_file'; 
    } 
} 
 
// Redirect to the listing page 
header("Location: labdetails.php".$qstring); 
 
?>