<?php 
   session_start();

   if (isset($_SESSION['role']) && isset($_SESSION['uid'])) {   ?>

<?php
include("repairData.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.3.0/mustache.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/d82cbb91b9.js" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" media="screen" href="style.php">
  <title>Repair Log</title>
  
  <style>
  table {
    font-family: Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    margin-top: 40px;
    width: 100%;
  }

  table td, table th {
    border: 1px solid #ddd;
    padding: 30px;
    width: 30px;
    
    text-align: center;
  }

  table tr:nth-child(even){background-color: #f2f2f2;}

  table tr:hover {background-color: #ddd;}

  table th {
    padding-top: 20px;
    padding-bottom: 20px;

    text-align: center;
    background-color: #333;
    color: white;
  }
</style>
</head>
<body>
<script>
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['action'])) {
      if ($_POST['action'] == "repair") {
        $dtype = $_POST['dtype'];
        $pcno = $_POST['pcno'];
        $labno=$_POST['labno'];
        $issue=$_POST['issue'];
        $ed = $_POST['ed'];
        $remarks = $_POST['remarks'];
        $date = date('Y-m-d H:i:s');
        if($dtype=='pc'){
        $sql= "UPDATE `repair_log` SET `labno`='$labno',`device_no`='$pcno',`kharab_date`='$ed',`repair_date`='$date',`issue`='$issue',`remarks`='$remarks' WHERE `device_no` ='$pcno' AND `kharab_date` = '$ed'";
        $sql1="UPDATE `devices` SET `isworking`='1' WHERE `pcno`='$pcno' ";
        $result = mysqli_query($conn, $sql);
        $result1 = mysqli_query($conn, $sql1);
        echo "<meta http-equiv='refresh' content='0'>";
        }
        elseif($dtype=='printer'){
        $sql= "UPDATE `repair_log` SET `labno`='$labno',`device_no`='$pcno',`kharab_date`='$ed',`repair_date`='$date',`issue`='$issue',`remarks`='$remarks' WHERE `device_no` ='$pcno' AND `kharab_date` = '$ed'";
        $sql1="UPDATE `extra_devices` SET `isworking`='1' WHERE `dsno`='$pcno' ";
        $result = mysqli_query($conn, $sql);
        $result1 = mysqli_query($conn, $sql1);
        echo "<meta http-equiv='refresh' content='0'>";
        }
        
      }
    }
  }
  ?>
<nav>
    <div class="NavContainer">
      <div class="logo">
        <h1>
          SLIM
        </h1>
      </div>
      <div class="NavItem">
        <a href="landing_page.php">HOME</a>
        <a href="login_page.php" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample" ><?php echo $_SESSION['email'];?> </a>  
        <a href="logout.php"><button class="btn btn-primary">Logout</button></a>
      </div>
    </div>
  </nav>

<div class="container">
 <div class="row">
   
    <?php echo $deleteMsg??''; ?>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
       <thead>
        <tr>
          <th>Ticket No </th>
          <th>Lab number</th>
          <th>Device type </th>
          <th>Device Number</th>
          <th>Date of Issue</th>
          <th>Status</th>
          <th>Issue</th>
          <th>Date of repair</th>
        </tr>
        </thead>
    <tbody>
  <?php
      if(is_array($fetchData)){      
      $sn=1;
      foreach($fetchData as $data){
    ?>
      <tr>
      <td><?php echo $data['ticketno']??''; ?></td>
      <td><?php echo $data['labno']??''; ?></td>
      <td><?php echo $data['dtype']??''; ?></td>
      <td><?php echo $data['device_no']??''; ?></td>
      <td><?php echo $data['kharab_date']??''; ?></td>
      <td><?php 
      if($data['repair_date']=="To Be Repaired")
      {
      echo $data['repair_date']??'';
      }
      else{
        echo "Repaired";
      }
      ?>
  
      </td>
      <td><?php echo $data['issue']??''; ?></td>
      <td><?php echo $data['repair_date']??''; ?></td>

      <td>
        <?php if($data['repair_date']=='To Be Repaired')
        {

          echo <<<EOD
          
      <div>   
       <button type="button" class="Repair" style="background-color:#DFFFCB;border: 1px solid black;padding:5px 20px 5px 20px;" data-bs-toggle="modal" data-bs-target="#staticBackdrop{$data['ticketno']}">Repair</button></td>
      </div> 
      EOD;
        }
        else {
          echo $data['remarks'];
        }
     ?>
     </tr>
      <div class="modal fade" id="staticBackdrop<?php echo $data['ticketno']; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel<?php echo $data['ticketno']; ?>" aria-hidden="true">
               <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                 <div class="modal-content">
                   <div class="modal-header">
                     <h1 class="modal-title fs-5" id="staticBackdropLabel<?php echo $data['ticketno']; ?>">Repair Log</h1>
                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                   </div>
                   <div class="modal-body">
                    <form id="repair_form" action="repair_log.php" method="post">
                    <input type="hidden" name="action" value="repair">
                    <input type="hidden" name="labno" value="<?php echo $data['labno'] ?>">
                    <input type="hidden" name="dtype" value="<?php echo $data['dtype'] ?>">
                    <input type="hidden" name="ed" value="<?php echo $data['kharab_date'] ?>">
                    <input type="hidden" name="pcno" value="<?php echo $data['device_no'] ?>">
                    <input type="hidden" name="issue" value="<?php echo $data['issue'] ?>">
                    <label for="remarks"><b>Remark</b></label>
                    <input type="text" placeholder="remarks" name="remarks" required><br>

                    </div>
                    <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                    </form>
                  </div>
               </div>
      </div>
     <?php
      $sn++;}}else{ ?>
      <tr>
        <td colspan="9">
    <?php echo $fetchData; ?>
  </td>
      </tr>
    <?php
    }?>
    </tbody>
     </table>
   </div>
</div>
</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    // $(document).ready(function() {
    //     $('#repair_form').on('submit', function(e) {
    //         e.preventDefault(); // Prevent the default form submission
    //         $.ajax({
    //             url: 'repair_log.php',
    //             type: 'POST',
    //             data: $(this).serialize(), // Serialize form data
    //             success: function(response) {
    //                 // Optionally process the response here
    //                 // Refresh the page after successful form submission
    //                 window.location.reload();
    //             }
    //         });
    //     });
    // });

    
</script>
</body>
</html>

<?php }else{
    header("Location: login_page.php");
} ?>
