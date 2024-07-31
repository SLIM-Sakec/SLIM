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
    <link rel="stylesheet" type="text/css" media="screen" href="style.php">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <title>SLIM</title>

    <style>
    .addLabModal {
        border: 1px solid #abb4c6;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: Arial, Helvetica, sans-serif;
        background-color: #f5f5f5;
        height: 480px;
        width: 30vw;
        border-radius: 10px;
    }

    .deleteLabModal {
        border: 1px solid #abb4c6;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: Arial, Helvetica, sans-serif;
        background-color: #f5f5f5;
        height: 480px;
        width: 30vw;
        border-radius: 10px;
    }

    .changeRoleModal {
        border: 1px solid #abb4c6;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: Arial, Helvetica, sans-serif;
        background-color: #f5f5f5;
        height: 480px;
        width: 30vw;
        border-radius: 10px;
    }
    </style>
</head>


<body>
    <script>
    if (window.history.replaceState) {
        window.history.replaceState(null, null, window.location.href);
    }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous">
    </script>
    <?php
  require_once "config.php";
  // $SelectedLab = $_COOKIE['SelectedLab'];
  $sql = "SELECT * FROM `devices`";
  $all_pc_info = getAllValues($sql);



  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['action'])) {
      if ($_POST['action'] == "changeRole") {
        $labAssistantnew=$_POST['labassist'];
        $labno = $_COOKIE['SelectedLab'];
        $labInchargenew=$_POST['labinc'];
        $olduidla2=$_COOKIE['olduidla'];
        $olduidlc2=$_COOKIE['olduidlc'];
         if(isset($_POST['labassist']))
         {
        $sql="UPDATE `slim_users` SET `role`='Lab Assistant',`current_status`='1' WHERE `uid`=$labAssistantnew";
        $result = mysqli_query($conn, $sql);
        $sql1="UPDATE `slim_users` SET `role`='Proffesor',`current_status`='0' WHERE `uid`=$olduidla2";
        $result = mysqli_query($conn, $sql1);

         }
         if(isset($_POST['labinc']))
         {
        $sql="UPDATE `slim_users` SET `role`='Lab Incharge',`current_status`='1' WHERE `uid`='$labInchargenew'";
        $result = mysqli_query($conn, $sql); 
        $sql1="UPDATE `slim_users` SET `role`='Proffesor',`current_status`='0' WHERE `uid`=$olduidlc2";
        $result = mysqli_query($conn, $sql1);
        }
      }
      else if($_POST['action'] == "addLabModal"){
        $labNo = $_POST['labno'];
        $labname = $_POST['labname'];
        $branch = $_POST['branch'];

        $sql1 =
          "INSERT INTO `devices`( `dept`, `labno`, `pcno`) VALUES ('$branch','$labNo','lablist')";
        $result = mysqli_query($conn, $sql1);
      }
      else if($_POST['action'] == "deleteLabModal"){
        $labNo = $_POST['labno'];
        $branch = $_POST['branch'];
        $sql4 ="DELETE FROM `devices` WHERE `labno` = '$labNo' AND `pcno` = 'lablist' ";
        $result = mysqli_query($conn, $sql4);
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
                <a href="#">CONTACT</a>
                <a href="#">ABOUT</a>
                <i class="fa-solid fa-circle-user fa-2xl" style="color: #2596ff;"></i>
            </div>
        </div>
    </nav>
    <div class="ActionBar">
        <div class="deplab">

        </div>
        <div class="options">
            <a href="repair_log.php" style="text-decoration: none;font-size:20px;">Repair Log</a>
        </div>
    </div>
    <div class="Hero">
        <div class="SideNav">
            <button type="button" class="Add"
                style="background-color:#DFFFCB;border: 1px solid black;padding:20px 60px 20px 60px;margin:50px 40px 0px 50px;border-radius:5px;"
                id="addLab">ADD LAB</button>
            <button type="button" class="delete"
                style="background-color:#FFCBCB;border: 1px solid black;padding:20px 50px 20px 50px;margin:50px 40px 0px 50px;border-radius:5px;"
                id="deleteLab">DELETE LAB</button>
            <button type="button" class="delete"
                style="background-color:#FFCBCB;border: 1px solid black;padding:20px 35px 20px 35px;margin:50px 40px 0px 50px;border-radius:5px;"
                id="changeRoles">CHANGE ROLES</button>
        </div>

        <div id="gridChanger" style="width:100%;display:flex; justify-content: center; align-items:center">

            <div class="TT">
                <?php
        $finalimage = "SAKEC123.jpg";
        if (isset($_POST['type'])) {
          $type = $_POST['type'];
          if ($type == 1) { ?>
                <form class="addLabModal" method="post">
                    <div>
                        <h1 style="color:#12AEF5; text-align: center; font-size: 50px; "><b>ADD LAB</b></h1><br>
                        <div style="display:flex; justify-content: center;">
                            <input type="hidden" name="action" value="addLabModal">
                            <input type="text" class="input"
                                style="border: 1px solid #abb4c6; padding: 15px 50px 15px 50px; margin-bottom: 20px;"
                                placeholder="Enter Lab Number" name="labno" required>
                        </div>
                        <div style="display:flex; justify-content: center;"><input type="text" class="input"
                                style="border: 1px solid #abb4c6; padding: 15px 50px 15px 50px; margin-bottom: 20px;"
                                placeholder="Enter Lab Name" name="labname" required></div>
                        <div style="display:flex; justify-content: center;"><input type="text" class="input"
                                style="border: 1px solid #abb4c6;padding: 15px 50px 15px 50px; margin-bottom: 20px;"
                                placeholder="Enter Branch Name" name="branch" required></div>
                        <div style="display:flex; justify-content: center;">
                            <button type="submit" class="afbutton"
                                style="background-color:#DFFFCB; border: 1px solid black; padding: 15px 120px 15px 120px; margin: 5px;border-radius:5px; ">Submit</button>
                        </div>
                    </div>
                </form>
                <?php

          } elseif ($type == 2) {
            ?>
                <form class="deleteLabModal" method="post">
                    <div>
                        
                        <h1 style="text-align: center; font-size: 50px; color:#12AEF5;"><b>Delete LAB</b></h1><br>
                        <div style="display:flex; justify-content: center;">
                            <input type="hidden" name="action" value="deleteLabModal">    
                            <input type="text" class="input"
                                style="border: #ffffff; padding: 15px 50px 15px 50px; margin-bottom: 20px;"
                                placeholder="Enter Lab Number" name="labno" required></div>
                        <div style="display:flex; justify-content: center;"><input type="text" class="input"
                                style="border: #ffffff; padding: 15px 50px 15px 50px; margin-bottom: 20px;"
                                placeholder="Enter Branch Name" name="branch" required></div>
                        <div style="display:flex; justify-content: center;"><button type="submit" class="afbutton"
                                style="background-color:#DFFFCB;border-radius:5px; border: 1px solid black; padding: 15px 100px 15px 100px; margin: 5px; ">Submit</button>
                        </div>
                    </div>
                </form>
                <?php
          } elseif ($type == 3) {
               
          }
        } 
        ?>
            </div>

        </div>
    </div>

    


    <div class="footer">
        <div id="roleChanger">
            <div class="rolesViewer">
            <?php
                                if(isset($_POST['city'])){
                                                        
                                    $selectedOption = $_POST['city'];
                                    $sql ="SELECT `fname`, `lname` FROM `slim_users` WHERE `labno` =$selectedOption AND `role`= 'Lab Assistant' AND `current_status`=1";
                                    $labAssistant = getValue($sql);
                                    $sql ="SELECT `fname`, `lname` FROM `slim_users` WHERE `labno` =$selectedOption AND `role`= 'Lab Incharge' AND `current_status`=1";
                                    $labIncharge = getValue($sql);
                                    $sql2 = "SELECT `uid` FROM `slim_users` WHERE `labno` =$selectedOption AND `role`= 'Lab Incharge' AND `current_status`=1";
                                    $olduidlc= getValue($sql2);
                                     setcookie("olduidlc",$olduidlc['uid'],time()+3600,"/");
                                    $sql ="SELECT `uid` FROM `slim_users` WHERE `labno` =$selectedOption AND `role`= 'Lab Assistant' AND `current_status`=1";
                                    $olduidla = getValue($sql);
                                     setcookie("olduidla",$olduidla['uid'],time()+3600,"/");

                                
                                } else{
                                
                                }
                                ?>
                <?php 
                        if (isset($labAssistant) && isset($labIncharge)) {
                      ?>
                <br>&nbsp;&nbsp;&nbsp;&nbsp;Current Lab Incharge : <b><?php echo $labIncharge['fname'];?></b> &nbsp; <b><?php echo $labIncharge['lname'];  ?></b>&nbsp; <b><?php echo $olduidlc['uid'];  ?></b>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;Current Lab Assistant : <b><?php echo $labAssistant['fname'];?></b> &nbsp; <b><?php echo $labAssistant['lname'];  ?></b>&nbsp; <b><?php echo $olduidla['uid'];  ?></b>

                <?php
                        }
                        else{  
                        }
                      ?>
            </div>
        </div>
        <div>
            Made with &#10083;
        </div>

    </div>


    <script>
    function submitForm(event) {
        event.preventDefualt();
        document.contact - form.submit();
        document.getElementById("myform").reset();
    }



    const addLab = document.getElementById("addLab");
    addLab.addEventListener("click", function() {

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

                $("#gridChanger").html($specificClass2);
            }
        });
    });

    const deleteLab = document.getElementById("deleteLab");
    deleteLab.addEventListener("click", function() {

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

                $("#gridChanger").html($specificClass2);
            }
        });
    });

    const changeRoles = document.getElementById("changeRoles");
    changeRoles.addEventListener("click", function() {

        var type = "3";



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

                $("#gridChanger").html($specificClass2);
                const college = {
                    countries: [{
                            name: "Comps",
                            cities: [<?php
            $sql = "SELECT DISTINCT`labno` FROM `devices` ";
            $labinfo = getAllValues($sql);
                foreach ($labinfo as $linfo) {
        
                echo "'" . $linfo['labno'] . "',";
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
                                var $response = $(
                                data); // Convert the response to a jQuery object
                                // Find the specific class within the response
                                var $specificClass = $response.find('.Grid-container');
                                var $specificClass2 = $response.find('.TT');
                                var $specificClass3 = $response.find('.rolesViewer');
                                console.log('Selected elements:',$specificClass);
                                console.log('Selected elements:',$specificClass2);
                                console.log('Selected elements:',$specificClass3);
                               // $("#gridChanger").html($specificClass);
                                $("#imageChanger").html($specificClass2);
                                $("#roleChanger").html($specificClass3);
                            }
                        });

                    }
                });
            }
        });



    });



    // Sample JSON data for countries and cities
    </script>

</body>

</html>