<?php
   
   $conn = mysqli_connect("localhost","root","","user_details");

        if(!$conn)
        {
            echo "Can't Connect to the Database";
        
        }
       

        $email = $_POST['email'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $hash = password_hash($password, PASSWORD_DEFAULT);

        $duplicate=mysqli_query($conn,"select * from user_login where username='$username' or email='$email'");
            if (mysqli_num_rows($duplicate)>0)
            {
                echo"<script>
                alert('try again');
                window.location.href='create_account.html';
                </script>";
            }
        else
        {
            $query = "INSERT INTO user_login(email,username,password) VALUES('$email','$username','$hash')";
            $result = mysqli_query($conn,$query);
    
            if($result)
            {
                echo "<script> location.href = 'login.html';</script>";
                exit();
            }
        }
       



?>