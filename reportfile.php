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
    <link rel="stylesheet" href="reportfile.css" />
    <script src="reportfile.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"
        integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<?php
require_once "config.php";
$currentDateTimeNumeric = date("M d,Y");
$sql= "SELECT DISTINCT labno FROM devices ORDER BY labno ASC";
$labs=getAllValues($sql); 
$sql= "SELECT * FROM slim_labdetails ORDER BY labno ASC";
$labdetails=getAllValues($sql); 
$sql= "SELECT SUM(cost) as tcost FROM slim_labdetails";
$tcost=getValue($sql);
?>

       
</head>

<body>
    <div class="container d-flex justify-content-center mt-50 mb-50">
        <div class="row">
            <div class="col-md-12 text-right mb-3">
                <button class="btn btn-primary" id="download">Download Report</button>
            </div>
            <div class="col-md-12">
                <div class="card" id="report">
                    <div class="card-header bg-transparent header-elements-inline">
                        <h6 class=" col-sm-10 card-title text-primary">Lab Report</h6>
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

                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="mb-4 pull-left">
                                    <ul class="list list-unstyled mb-0 text-left">
                                        <div class="row">
                                            <li class="col-md-5"><b>Branch:</b></li>
                                            <li class="col-md-6">Computer Engineering</li>
                                        </div>
                                        <div class="row">
                                            <li class="col-md-5"><b>Total Labs:</b></li>
                                            <li class="col-md-6">15</li>
                                        </div>
                                        <div class="row">
                                            <li class="col-md-5"><b>Total PCs:</b></li>
                                            <li class="col-md-6">450</li>
                                        </div>
                                        <div class="row">
                                            <li class="col-md-5"><b>Total Printers:</b></li>
                                            <li class="col-md-6">50</li>
                                        </div>
                                        <div class="row">
                                            <li class="col-md-5"><b>Total Cost for PCs:</b></li>
                                            <li class="col-md-6"><?php echo "Rs. ".$tcost['tcost']; ?></li>
                                        </div>
                                        <div class="row">
                                            <li class="col-md-5"><b>Total Cost for Printers:</b></li>
                                            <li class="col-md-6">Rs. 5,00,000</li>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="table-responsive" style="text-align: center;">
                        <table class="table table-lg">
                            <thead>
                                <tr class="align-top">
                                    <th>Lab No.</th>
                                    <th>Lab Name</th>
                                    <th>Lab Incharge</th>
                                    <th>Lab Assistant</th>
                                    <th>No. of PCs</th>
                                    <th>No. of Printers</th>
                                    <th>Area</th>
                                    <th>No. of Working PCs</th>
                                    <th>No. of Non-Working PCs</th>
                                    <th>Total Cost</th>
                                    
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <?php 
                                foreach ($labs as $lab)
                                {

                                    $sql = "SELECT fname, lname FROM slim_users WHERE role='Lab Assistant' AND labno=" . $lab['labno'];
                                    $assistname = getValue($sql);
                                    $sql = "SELECT fname, lname FROM slim_users WHERE role='Lab Incharge' AND labno=" . $lab['labno'];
                                    $inchargename = getValue($sql);
                                    $sql = "SELECT count(DISTINCT pcno) AS pc FROM devices WHERE pcno!= 'lablist' AND labno=" . $lab['labno'];
                                    $pccount = getValue($sql);
                                    $sql = "SELECT count(DISTINCT pcno) AS wpc FROM devices WHERE pcno!= 'lablist' AND isworking = 1 AND labno=" . $lab['labno'];
                                    $wpccount = getValue($sql);
                                    $sql = "SELECT count(DISTINCT pcno) AS epc FROM devices WHERE pcno!= 'lablist' AND isworking = 0 AND labno=" . $lab['labno'];
                                    $epccount = getValue($sql);
                                    $sql = "SELECT area FROM slim_labdetails WHERE labno=" . $lab['labno'];
                                    $labarea =getValue($sql);
                                    $sql = "SELECT cost FROM slim_labdetails WHERE labno=" . $lab['labno'];
                                    $labcost =getValue($sql);

                                
                                    ?>


                            <tr>
                                    <td><?php echo $lab['labno']; ?></td>
                                    <td>Computer Organization/ Microprocessor</td>
                                    <td><?php if($inchargename['fname']!= null && $inchargename['lname']!= null ) {echo $inchargename['fname'] . $inchargename['lname'] ;} else echo "No Incharge"; ?></td>
                                    <td><?php if($assistname['fname']!= null && $assistname['lname']!= null ) {echo $assistname['fname'] . $assistname['lname'] ;} else echo "no assistant"; ?></td>
                                    <td><?php echo $pccount['pc']; ?></td>
                                    <td>2</td>
                                    <td><?php echo $labarea['area']; ?></td>
                                    <td><?php echo $wpccount['wpc']; ?></</td>
                                    <td><?php echo $epccount['epc']; ?></</td>
                                    <td><?php echo "Rs. ".$labcost['cost']; ?></td>
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