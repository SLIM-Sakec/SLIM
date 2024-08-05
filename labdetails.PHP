<?php 
   session_start();

   if (isset($_SESSION['role']) && isset($_SESSION['uid'])) {   ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.3.0/mustache.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/d82cbb91b9.js" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" type= "text/css" media="screen" href="style.php">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <title>SLIM</title>





</head>


<body>
<script>
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }
</script>
<script>
function formToggle(ID){
    var element = document.getElementById(ID);
    if(element.style.display === "none"){
        element.style.display = "block";
    }else{
        element.style.display = "none";
    }
}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <?php
  require_once "config.php";

  $sql = "SELECT * FROM `devices`";
  $all_pc_info = getAllValues($sql);
  $sql = "SELECT * FROM `extra_devices`";
  $all_ex_info = getAllValues($sql);

 

  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if(isset($_POST['city'])){                                    
      $selectedOption = $_POST['city'];
      $SelectedLab=$selectedOption;
      setcookie("SelectedLab",$selectedOption,time()+50,"/");
      $sql = "SELECT `file_name` FROM `files` WHERE `timestamp` = (SELECT MAX(`timestamp`) FROM `files` WHERE `category` = 'layout' AND `lab` = $selectedOption)";
                $ttinfo1= getValue($sql);
                $ttinfo1 = json_encode($ttinfo1);
                $ttinfo1 = substr($ttinfo1,14);
                $layout=$ttinfo1;
                setcookie("layout", $ttinfo1, time() + 50, "/");
                $sql = "SELECT `file_name` FROM `files` WHERE `timestamp` = (SELECT MAX(`timestamp`) FROM `files` WHERE `category` = 'timetable' AND `lab` = $selectedOption)";
                $ttinfo2 = getValue($sql);
                $ttinfo2 = json_encode($ttinfo2);               
                $ttinfo2 = substr($ttinfo2,14);
                $timetable=$ttinfo2;
                setcookie("timetable", $ttinfo2, time() + 50, "/");
    }
    if (isset($_POST['action'])) {
      if ($_POST['action'] == "add" ) {
        $pcno = $_POST['pcno'];
        $mname = $_POST['mname'];
        $msno = $_POST['msno'];
        $ksno = $_POST['ksno'];
        $muno = $_POST['muno'];
        $mono = $_POST['mono'];
        $ip = $_POST['ip'];
        $submsk = $_POST['submsk'];
        $pcname = $_POST['pcname'];
        $processor = $_POST['processor'];
        $cpuspeed= $_POST['CPUspeed'];
        $memory = $_POST['memory'];
        $harddisk = $_POST['harddisk'];
        $dvd = $_POST['dvd'];
        $display = $_POST['display'];
        $sound = $_POST['sound'];
        $monitor = $_POST['monitor'];
        $keyboard = $_POST['keyboard'];
        $mouse = $_POST['mouse'];
        $softwares  = $_POST['softwares'];
        $dept='comps';
        $labno = $_COOKIE['SelectedLab'];
        $lancard = $_POST['lancard'];
        if($_SESSION['labno']==$labno || $_SESSION['role']=='admin'){
        $sql1 =
          "INSERT INTO `devices`(`sno`, `pcno`, `mname`, `msno`, `ksno`, `muno`, `mono`, `ip`, `submsk`, `pcname`, `processor`, `CPUspeed`, `memory`, `harddisk`, `dvd`, `display`, `sound`, `lancard`, `monitor`, `keyboard`, `mouse`, `softwares`, `dept`, `labno`, `isworking`, `istransfered`, `isscrapped`) 
          VALUES ('','$pcno','$mname','$msno','$ksno','$muno','$mono','$ip','$submsk','$pcname','$processor','$cpuspeed','$memory','$harddisk','$dvd','$display','$sound','$lancard','$monitor','$keyboard','$mouse','$softwares','$dept','$labno','1','0','0')";
        $result = mysqli_query($conn, $sql1);
        }
        else {
          echo '<script>alert("No access for this lab")</script>';
        }
      } else if ($_POST['action'] == "report" ) {
        $dtype = $_POST['dtype'];
        $labno = $_COOKIE['SelectedLab'];
        $pcno = $_POST['pcno'];
        $issue = $_POST['issue'];
        $currentDateTimeNumeric = date("YmdHis");
        if($_SESSION['labno']==$labno || $_SESSION['role']=='admin'){
          if($dtype=='pc'){
          $sql1 = "INSERT INTO `repair_log`(`labno`, `device_no`,`issue`, `remarks`,`ticketno`, `dtype`) VALUES ('$labno','$pcno','$issue','','$currentDateTimeNumeric','$dtype')";
          $sql2 = "UPDATE `devices` SET `isworking` = 0 WHERE `pcno`= '$pcno'";
          $result = mysqli_query($conn, $sql1);
          $result = mysqli_query($conn, $sql2);
          echo "<meta http-equiv='refresh' content='0'>";
          }
          else if($dtype=='printer'){
            $sql1 = "INSERT INTO `repair_log`(`labno`, `device_no`,`issue`, `remarks`,`ticketno`, `dtype`) VALUES ('$labno','$pcno','$issue','','$currentDateTimeNumeric','$dtype')";
          $sql2 = "UPDATE `extra_devices` SET `isworking` = 0 WHERE `dsno`= '$pcno'";
          $result = mysqli_query($conn, $sql1);
          $result = mysqli_query($conn, $sql2);
          echo "<meta http-equiv='refresh' content='0'>";
          }
        }
        else {
          echo '<script>alert("No access for this lab")</script>';
        }
      
      }
      else if ($_POST['action'] == "delete" ) {
        $labno = $_COOKIE['SelectedLab'];
        $pcno = $_POST['pcno'];
        if($_SESSION['labno']==$labno || $_SESSION['role']=='admin'){
          $sql1 = "DELETE FROM `devices` WHERE `pcno`='$pcno'";

          $result = mysqli_query($conn, $sql1);
        }
        else {
          echo '<script>alert("No access for this lab")</script>';
        }
      }
      else if ($_POST['action'] == "update" ) {
        $pcno = $_POST['pcno'];
        $mname = $_POST['mname'];
        $msno = $_POST['msno'];
        $ksno = $_POST['ksno'];
        $muno = $_POST['muno'];
        $mono = $_POST['mono'];
        $ip = $_POST['ip'];
        $submsk = $_POST['submsk'];
        $pcname = $_POST['pcname'];
        $processor = $_POST['processor'];
        $cpuspeed= $_POST['cpuspeed'];
        $memory = $_POST['memory'];
        $harddisk = $_POST['harddisk'];
        $dvd = $_POST['dvd'];
        $display = $_POST['display'];
        $sound = $_POST['sound'];
        $monitor = $_POST['monitor'];
        $keyboard = $_POST['keyboard'];
        $mouse = $_POST['mouse'];
        $softwares  = $_POST['softwares'];
        $dept='comps';
        $labno = $_COOKIE['SelectedLab'];
        $lancard = $_POST['lancard'];
        if($_SESSION['labno']==$labno || $_SESSION['role']=='admin'){
          $sql1 =
            "UPDATE `devices` SET (`sno`, `pcno`, `mname`, `msno`, `ksno`, `muno`, `mono`, `ip`, `submsk`, `pcname`, `processor`, `CPUspeed`, `memory`, `harddisk`, `dvd`, `display`, `sound`, `lancard`, `monitor`, `keyboard`, `mouse`, `softwares`, `dept`, `labno`, `isworking`, `istransfered`, `isscrapped`) 
            VALUES ('','$pcno','$mname','$msno','$ksno','$muno','$mono','$ip','$submsk','$pcname','$processor','$cpuspeed','$memory','$harddisk','$dvd','$display','$sound','$lancard','$monitor','$keyboard','$mouse','$softwares','$dept','$labno','1','0','0') WHERE 'pcno'=$pcno";
          $result = mysqli_query($conn, $sql1);
        }
        else {
          echo '<script>alert("No access for this lab")</script>';
        }
      }
      else if ($_POST['action'] == "transfer" )
      {
        $pcno = $_POST['pcno'];
        $newlab= $_POST['newlab'];

        if($_SESSION['role']=='admin'){
          $sql= "UPDATE `devices` SET `labno` = '$newlab' WHERE `pcno`='$pcno'";
          $result = mysqli_query($conn, $sql);
        }
        else {
          echo '<script>alert("No access for this lab")</script>';
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
        <a href="logout.php"><button class="btn btn-primary">logout</button></a>
        
          <!-- <div class="collapse collapse-horizontal" id="collapseWidthExample" style="position:absolute; align-items: right;" >
            <div class="card card-body" style=" float:right; width: 100px; ">
              
            </div>
          </div> -->
        
      </div>
    </div>
  </nav>
  <div class="ActionBar">
    <div class="deplab">
      <div class="Dep">
        Department : <select id="DepartmentDropdown">
          <option value="" >Select a Department</option>
        </select>
      </div>
      <div class="lab">
        Lab : <select id="LabDropdown">
          <option value="" >Select a Lab</option>
        </select>
      </div>
    </div>
    <?php if($_SESSION['role']=="Lab Assistant" || $_SESSION['role']=="Lab Incharge" || $_SESSION['role']=="admin"){

      echo  <<<EOD
              <div class="buttons">  
                <button type="button" class="Add" style="background-color:#DFFFCB;border: 1px solid black;padding:0 10px 0 10px;" data-bs-toggle="modal" data-bs-target="#addDeivce">ADD</button>
                <button type="button" class="delete" style="background-color:#FFCBCB;border: 1px solid black;padding:0 10px 0 10px;" data-bs-toggle="modal" data-bs-target="#deleteDeivce">DELETE</button>
                <button type="button" class="Update" style="background-color:#CBDAFF;border: 1px solid black;padding:0 10px 0 10px;" data-bs-toggle="modal" data-bs-target="#transferDeivce">TRANSFER</button>
                <button type="button" class="Report" style="background-color:#DFFFCB;border: 1px solid black;padding:0 10px 0 10px;" data-bs-toggle="modal" data-bs-target="#ReportDeivce">REPORT ERROR</button> 
              </div>
            EOD;
      }
    ?>

  </div>
  <div class="Hero">
    <div class="SideNav">
      <ul style="margin-top: 50px; padding:20px;">
        <li><a href="manual.php" style="text-decoration: none;font-size:20px;">Subject Manual</a></li>
          <?php if($_SESSION['role']=="Lab Assistant" || $_SESSION['role']=="Lab Incharge" || $_SESSION['role']=="admin"){

          echo <<<EOD
                  <li><a href="repair_log.php" style="text-decoration: none;font-size:20px;">Repair Log</a></li>
                EOD;
          }
          ?>
          <?php if($_SESSION['role']=="admin"){

          echo <<<EOD
                  <li><a href="admin.php" style="text-decoration: none;font-size:20px;">Admin Page</a></li>
                EOD;
          }
          ?>
      </ul>
    </div>
    <div id="gridChanger">
        <div class="Grid-container">
              <?php
              if(isset($SelectedLab)){                                    
                $selectedOption = $SelectedLab;
                // setcookie("SelectedLab",$selectedOption,time()+3600,"/");
                
                $sql ="SELECT `fname`, `lname` FROM `slim_users` WHERE `labno` =$selectedOption AND `role`= 'Lab Assistant' ";
                $labAssistant = getValue($sql);
                $sql ="SELECT `fname`, `lname` FROM `slim_users` WHERE `labno` =$selectedOption AND `role`= 'Lab Incharge' ";
                $labIncharge = getValue($sql);

                                
              } else{
              $selectedOption = "Please select a lab";
              echo $selectedOption;
              }
            
            foreach ($all_pc_info as $pc_info) {
              
              if($selectedOption==$pc_info['labno'] && $pc_info['pcno']!='lablist'){

            ?>
            <div class="Grid-item">
              <div class="Item-icon<?php echo $pc_info['pcno'];?>">
                <i class="fa-solid fa-desktop fa-2xl"></i>
              </div>
              <!-- Button trigger modal -->
              <div class="Item-button">
                <button type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop<?php echo $pc_info['pcno']; ?>">
                  <?php echo $pc_info['pcno'];
                  ?>

                </button>
              </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="staticBackdrop<?php echo $pc_info['pcno']; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                <div class="modal-content">
                  <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">PC Information</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <?php echo "PC Number:&emsp;"   . $pc_info['pcno']; ?><br>
                    <?php echo "Processor:&emsp;"     . $pc_info['processor']; ?><br>
                    <?php echo "Memory size:&emsp;"  . $pc_info['memory']; ?><br>
                    <?php echo "Machine Name:&emsp;"   . $pc_info['mname']; ?><br>
                    <?php echo "Lab Number:&emsp;"    . $pc_info['labno']; ?><br>
                    <?php echo "Softwares:&emsp;"    . $pc_info['softwares']; ?><br>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>
            <?php
            }
            }
          foreach($all_ex_info as $ex_info){
            if($selectedOption==$ex_info['labno']){
              ?>
              <div class="Grid-item">
              <div class="Item-icon<?php echo $ex_info['dsno'];?>">
                <i class="fa-solid fa-desktop fa-2xl"></i>
              </div>
              <!-- Button trigger modal -->
              <div class="Item-button">
                <button type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop<?php echo $ex_info['dsno']; ?>">
                  <?php echo $ex_info['dname'];
                  ?>

                </button>
              </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="staticBackdrop<?php echo $ex_info['dsno']; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                <div class="modal-content">
                  <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Device Information</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <?php echo "Device Serial Number:&emsp;"   . $ex_info['dsno']; ?><br>
                    <?php echo "Device Name:&emsp;"     . $ex_info['dname']; ?><br>
                    <?php echo "Device Type:&emsp;"  . $ex_info['dtype']; ?><br>                    
                    <?php echo "Lab Number:&emsp;"    . $ex_info['labno']; ?><br>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>
            <?php
            }
          }
            ?>
          </div>
     </div>
      <div>
          <div id="imageChanger">
            <div class="TT">
              <?php
              $finalimage="SAKEC123.jpg";
              if (isset($_POST['type'])) {
                $type = $_POST['type'];
                if ($type == 1) {
                  if (isset($_COOKIE['layout'])) {
                    $ttinfo2=$_COOKIE['layout'];
                  $finalimage = $ttinfo2;
                  }
                } elseif ($type == 2) {
                  if (isset($_COOKIE['timetable'])) {
                    $imgname2 = $_COOKIE['timetable'];
                    $finalimage = $imgname2;
                  }
                } 
              } else {
                $type = "0";
                $finalimage="SAKEC-NewBuilding.JPG";
              }
              ?>
              <img src="upload/<?php echo $finalimage; ?>" class="TTImage" alt="<?php echo $finalimage; ?>">
            </div>
          </div>
          <div style="justify-content: space-between;display: flex;padding-left:5vw;padding-right:5vw">
          <div style="border-radius:20px;background-color:lightgrey;border: 1px solid rgb(71, 71, 71); padding:0;">
            <button class="LayoutBtn" id="Limg">LAYOUT</button>
            <button class="TTBtn" id ="TTimg">TimeTable</button>
          </div>
          <?php if($_SESSION['role']=="Lab Assistant" || $_SESSION['role']=="Lab Incharge" || $_SESSION['role']=="admin"){

echo <<<EOD
        
        <button class="EditBtn" type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Edit</button>
      EOD;
        }?>
          <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                <div class="modal-content">
                  <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Edit Images</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <form action="upload.php" method="post" enctype="multipart/form-data" target="blank">
                      <input type="file" name="file" />
                      <select name="category">
                          <option value="timetable">TimeTable</option>
                          <option value="layout">Layout</option>
                          
                      </select>
                      <button type="submit" name="upload" id="submit" onclick="submitForm(event)">Submit</button>
                      <button type="reset">reset</button>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div> 
    </div>
    <div class="modal fade" id="addDeivce" tabindex="-1" aria-labelledby="addDeivceLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="addDeivceLabel">Add New PC Information </h1> 
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <form class="modal-content" action="labdetails.php" method="post">
              <div class="container-fluid">
                <div class="mb-3 row">
                <input type="hidden" name="action" value="add">
                    <label for="pcno" class="col-sm-4 col-form-label"><b>PC Number:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter the PC number" name="pcno" required>
                    </div>
                </div>
                
                <div class="mb-3 row">
                    <label for="mname" class="col-sm-4 col-form-label"><b>Machine Name:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter machine name" name="mname" required>
                    </div>
                </div>
                
                <div class="mb-3 row">
                    <label for="msno" class="col-sm-4 col-form-label"><b>Machine Serial Number:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter machine serial number" name="msno" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="ksno" class="col-sm-4 col-form-label"><b>Keyboard Serial Number:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter keyboard serial number" name="ksno" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="muno" class="col-sm-4 col-form-label"><b>Mouse Serial Number:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter mouse serial number" name="muno" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="mono" class="col-sm-4 col-form-label"><b>Monitor Serial Number:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter monitor serial number" name="mono" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="ip" class="col-sm-4 col-form-label"><b>IP address</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter machine IP address" name="ip" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="submsk" class="col-sm-4 col-form-label"><b>Subnet Mask Number</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter machine subnet mask" name="submsk" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="pcname" class="col-sm-4 col-form-label"><b>PC Name:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter PC name" name="pcname" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="processor" class="col-sm-4 col-form-label"><b>Processor:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter machine processor" name="processor" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="CPUspeed" class="col-sm-4 col-form-label"><b>CPU Speed:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter CPU speed" name="CPUspeed" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="memory" class="col-sm-4 col-form-label"><b>Memory Size (RAM):</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter machine memory size" name="memory" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="harddisk" class="col-sm-4 col-form-label"><b>Disk Size (HDD):</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter hard disk size" name="harddisk" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="dvd" class="col-sm-4 col-form-label"><b>DVD Type:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter DVD ROM type" name="dvd" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="display" class="col-sm-4 col-form-label"><b>Display:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter display specifications" name="display" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="sound" class="col-sm-4 col-form-label"><b>Speakers:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter speaker specifications" name="sound" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="lancard" class="col-sm-4 col-form-label"><b>LAN card Type:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter LAN card type" name="lancard" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="monitor" class="col-sm-4 col-form-label"><b>Monitor Model:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter monitor model" name="monitor" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="keyboard" class="col-sm-4 col-form-label"><b>Keyboard Model:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter keyboard model" name="keyboard" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="mouse" class="col-sm-4 col-form-label"><b>Mouse Model:</b></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="Enter mouse model" name="mouse" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="softwares" class="col-sm-4 col-form-label"><b>Softwares Installed:</b></label>
                    <div class="col-sm-8">
                      <textarea class="form-control" placeholder="Enter softwares in the machine" name="softwares" required rows="4"></textarea>
                    </div>
                </div>
                <div class="mb-3 clearfix">
                  <button type="submit" class="btn btn-primary signup">Save</button>
                </div>
            </div>
            
            </form>
        </div>
        <div class="modal-footer">
        <div class="col-md-12 head">
        <div class="float-end">
            <a href="javascript:void(0);" class="btn btn-success" onclick="formToggle('importFrm');"><i class="plus"></i> Import Excel</a>
        </div>
    </div>
    <!-- Excel file upload form -->
    <div class="col-md-12" id="importFrm" style="display: none;">
        <form class="row g-3" action="import-data.php" method="post" enctype="multipart/form-data">
            <div class="col-auto">
                <label for="fileInput" class="visually-hidden">File</label>
                <input type="file" class="form-control" name="file" id="fileInput" />
            </div>
            <div class="col-auto">
                <input type="submit" class="btn btn-primary mb-3" name="importSubmit" value="Import">
            </div>
        </form>
    </div>
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          
        </div>
      </div>
    </div>
  </div>
       
       <!-- ------------------------------------ -->

  <div class="modal fade" id="ReportDeivce" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" >
    <div class="modal-dialog modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="ReportDevice">Report Device</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal"></span>
          <form  id="report" class="modal-content"  method="post" action="labdetails.php">
            <div class="container-fluid">
              <input type="hidden" name="action" value="report">

              <label for="dtype"><b>Device Type</b></label>
              <select class="form-select" id="dtype" name="dtype">
                <option value="pc">PC</option>
                <option value="printer">Printer</option>
              </select>

                <label for="pcno" class="col-sm-4 col-form-label"><b>Device Number</b></label>
                <div class="mb-3 col-sm-8">
                  <input type="text" class="form-control" placeholder="Eg - 701-15" name="pcno" required>
                </div>

                <label for="pcno" class="col-sm-4 col-form-label"><b>Issue</b></label>
                <div class="mb-3 col-sm-8">
                  <input type="text" class="form-control" name="issue" required>
                </div>



              <div class="mb-3 clearfix">
                <button type="submit" class="btn btn-primary signup">Submit</button>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="deleteDeivce" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" >
    <div class="modal-dialog modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="deleteDevice">Delete Device</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal"></span>
          <form class="modal-content" action="labdetails.php" method="post">
            <div class="container-fluid">
              <input type="hidden" name="action" value="delete">
              <label for="pcno" class="col-sm-4 col-form-label"><b>Device Number</b></label>
                <div class="mb-3 col-sm-8">
                  <input type="text" class="form-control" placeholder="eg - 701-15" name="pcno" required>
                </div>

              <div class="mb-3 clearfix">
                <button type="submit" class="btn btn-danger signup">Delete</button>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div> 


  <div class="modal fade" id="transferDeivce" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="transferDeivceLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="transferDeivceLabel">Transfer System</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal"></span>
          <form class="modal-content" action="labdetails.php" method="post">
            <div class="container-fluid">
              
              <input type="hidden" name="action" value="transfer">
            <label for="pcno" class="col-sm-4 col-form-label"><b>PC Number</b></label>
                <div class="mb-3 col-sm-8">
                  <input type="text" class="form-control" placeholder="eg - 701-15" name="pcno" required>
                </div>

                <label for="newlab" class="col-sm-4 col-form-label"><b>Change Lab to</b></label>
                <div class="mb-3 col-sm-8">
                  <input type="text" class="form-control" placeholder="eg - 701" name="newlab" required>
                </div>

              


              <div class="clearfix  mb-3">
                <button type="submit" class="signup btn btn-primary">Transfer</button>
              </div>
            </div>
          </form>
        </div>
        </div>
        </div>
        </div>

        
            <div class="footer">
              <div id="roleChanger">
                  <div class="rolesViewer">
                      <?php 
                        if (isset($labAssistant) && isset($labIncharge)) {
                      ?>
                        <b>Lab Incharge :</b> <?php echo $labIncharge['fname'];?>  <?php echo $labIncharge['lname'];  ?>
                        &emsp;&emsp;&emsp;&emsp;
                        <b>Lab Assistant :</b> <?php echo $labAssistant['fname'];?> <?php echo $labAssistant['lname'];  ?>
                    
                      <?php
                        }
                        else{  
                        }
                      ?>
                  </div>

            </div>             
          

  <script>
    function submitForm(event) {
        event.preventDefualt();
            document.contact-form.submit();
            document.getElementById("myform").reset();
            }
    // Sample JSON data for countries and cities
    const college = {
      countries: [{
          name: "Comps",
          cities: [<?php 
             $sql = "SELECT DISTINCT`labno` FROM `devices` WHERE `pcno` = 'lablist' ";
             $labinfo= getAllValues($sql);
                 foreach($labinfo as $linfo){
                   
                   echo "'".$linfo['labno']."',";
                 } ?>]
        },
        {
          name: "IT",
          cities: ["4", "5", "6"]
        },
        {
          name: "EXTC",
          cities: ["7", "8", "9"]
        }
        
      ]
    };

    // Get references to the dropdown elements
    const countryDropdown = document.getElementById("DepartmentDropdown");
    console.log(countryDropdown);  
    const cityDropdown = document.getElementById("LabDropdown");

    // Populate the country dropdown
    college.countries.forEach(country => {
      const option = document.createElement("option");
      option.text = country.name;
      option.value = country.name;
      countryDropdown.appendChild(option);
    });

    // Update the city dropdown based on the selected country
    countryDropdown.addEventListener("change", function() {
      const selectedCountry = this.value;

      // Clear existing options
      cityDropdown.innerHTML = "<option value=''>Select a Lab</option>";

      // Find the selected country from the data
      const country = college.countries.find(c => c.name === selectedCountry);
      console.log(country);

      // Populate the city dropdown with the cities of the selected country
      if (country) {
        country.cities.forEach(city => {
          const option = document.createElement("option");
          option.text = city;
          option.value = city;
          cityDropdown.appendChild(option);
        });
      }
    });

    cityDropdown.addEventListener("change", function() {
      var selectedOption = this.value;
      const selectedCountry = countryDropdown.value;

      // Find the selected country from the data
      const country = college.countries.find(c => c.name === selectedCountry);

      if (country) {
        var city = 100;
        city = country.cities.find(c => c === selectedOption);
        console.log(city);

        $.ajax({
          url: window.location.href,
          method: 'POST',
          data: {
            city: city
          },
          success: function(data) {
            var $response = $(data);  // Convert the response to a jQuery object
    
            // Find the specific class within the response
            var $specificClass = $response.find('.Grid-container');
            var $specificClass2 = $response.find('.TT');
            var $specificClass3 = $response.find('.rolesViewer');
            console.log('Selected elements:', $specificClass);
            console.log('Selected elements:', $specificClass2);
            console.log('Selected elements:', $specificClass3);
            $("#gridChanger").html($specificClass);
            $("#imageChanger").html($specificClass2);
            $("#roleChanger").html($specificClass3);
          }
        });

      }
    });

    const Limg = document.getElementById("Limg");
    Limg.addEventListener("click", function() {

      var type = "1";



      console.log(type);

      $.ajax({
        url: window.location.href,
        method: 'POST',
        data: {
          type: type
        },
        success: function(data) {
          var $response = $(data); // Convert the response to a jQuery object

          // Find the specific class within the response

          var $specificClass2 = $response.find('.TT');


          console.log('Selected elements:', $specificClass2);

          $("#imageChanger").html($specificClass2);
        }
      });
    });
    const TTimg = document.getElementById("TTimg");
    TTimg.addEventListener("click", function() {

      var type = "2";



      console.log(type);
      

      $.ajax({
        url: window.location.href,
        method: 'POST',
        data: {
          type: type
        },
        success: function(data) {
          var $response = $(data); // Convert the response to a jQuery object

          // Find the specific class within the response

          var $specificClass2 = $response.find('.TT');


          console.log('Selected elements:', $specificClass2);

          $("#imageChanger").html($specificClass2);
        }
      });
    });


    async function submitForm2(event) {
        
        var form = document.getElementById('report');
        var formData = new FormData(form);

        // Send data to the first action page
        await fetch('labdetails.php', {
            method: 'POST',
            body: formData,
        });

        // Send data to the second action page
        await fetch('send-email.php', {
            method: 'POST',
            body: formData,
        });

        // You can do something after both submissions if needed
        console.log('Form data submitted to both pages successfully.');
        
    }
  </script>

</body>

</html>

<?php }else{
    header("Location: login_page.php");
} ?>