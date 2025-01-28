<?php 
   session_start();

   if (isset($_SESSION['role']) && isset($_SESSION['uid']) && $_SESSION['role']=="admin") {   ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <link rel="stylesheet" href="logs.css" />
    <script src="logs.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"
        integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<?php
require_once "config.php";
$currentDateTimeNumeric = date("M d,Y");
$sql= "SELECT DISTINCT labno FROM devices ORDER BY labno ASC";
$labs=getAllValues($sql); 
$sql= "SELECT * FROM logs ORDER BY date DESC";
$logs=getAllValues($sql); 
$sql= "SELECT SUM(cost) as tcost FROM slim_labdetails";
$tcost=getValue($sql);
?>

       
</head>

<body>
    <div class="container d-flex justify-content-center mt-50 mb-50">
        <div class="row">
            <div class="col-md-12 text-right mb-3">
                <button class="btn btn-primary" id="download">Download Logs</button>
            </div>
            <div class="col-md-12">
                <div class="card" id="report">
                    <div class="card-header bg-transparent header-elements-inline">
                        <h6 class=" col-sm-10 card-title text-primary">Change Logs</h6>
                        <div class="col-sm-2">
                            <div>
                                <div class="text-sm-right">
                                    <ul class="list list-unstyled mb-0">
                                        <li><b>
                                            Date:
                                            <span class="font-weight-semibold"><?php echo $currentDateTimeNumeric; ?></span>
                                            </b>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    
                    <div class="table-responsive" style="text-align: left;">
                        <table class="table table-lg">
                            <thead>
                                <tr class="align-top">
                                    <th>Changes</th>
                                    <th>Changed By</th>
                                    <th>Date/Time</th>
                                    
                                    
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <?php 
                                foreach ($logs as $log)
                                {
                                    $change = $log['changes'];
                                    $email = $log['email'];                                  
                                    $date = $log['date'];                               
                                    ?>


                            <tr>                                
                                    <td><?php echo $change; ?></td>
                                    <td><?php echo $email; ?></</td>
                                    <td><?php echo $date; ?></</td>  
                                </tr>
                                <?php    
                                } ?>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

<?php }else{
    header("Location: login_page.php");
} ?>