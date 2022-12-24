<?php
   
   $conn = mysqli_connect("localhost","root","","user_details");

        if(!$conn)
        {
            echo "Can't Connect to the Database";
        
        }
       

        $regno = $_POST['regno'];
        $rollno = $_POST['rollno'];
        $branch = $_POST['branch'];
        $studentemail = $_POST['studentemail'];
        $lastname = $_POST['lastname'];
        $firstname = $_POST['firstname'];
        $middlename = $_POST['middlename'];
        $address = $_POST['address'];
        $studmobno = $_POST['studmobno'];
        $city = $_POST['city'];
        $pincode = $_POST['pincode'];
        $gender = $_POST['gender'];
        $query = "INSERT INTO user_info(regno, rollno, branch,studentemail, lastname, firstname, middlename, address, studmobno, city, pincode, gender) VALUES('$regno','$rollno','$branch','$studentemail', '$lastname','$firstname','$middlename','$address', '$studmobno','$city','$pincode','$gender')";
        $result = mysqli_query($conn,$query);

        if($result)
        {
            echo "<script> location.href = 'submitted.php';</script>";
            exit();
        }



?>
