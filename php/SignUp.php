<?php 
    if(isset($_POST['Submit'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];
        $email = $_POST['email'];   
        $koneksi=mysqli_connect("localhost","root","","login") or die ("gagal koneksi");

        $result = mysqli_query($koneksi, "INSERT INTO users(username,password,email) VALUES('$username', '$password', '$email')");

        
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/login-video.css">
    <link href="https://fonts.cdnfonts.com/css/mantinia" rel="stylesheet">
                
</head>
<body>
    <div class="bg-container">
        <video src="../img/bg login.mp4" class="video-container"  autoplay muted loop></video>
        <div class="overlay"></div>
    </div>

    <div class="container">
        <div class="form-container">
            <h1>Create New Account</h1>
            <form action="" method="post" class="form-login">
                <div class="data-user">
                    <input type="text" name="username" id="username" placeholder="Username"  required>
                    <input type="email" name="email" id="email" placeholder="Email"  required>
                    <input type="password" name="password" id="password" placeholder="Password" required>
                    <input type="password" name="password2" id="password2" placeholder="Konfirmasi Password" required>
                </div>
                <button type="Submit" name="Submit">Register</button>
                <h2>Already Have an Account?<br> <a href="login-video.php">Log In</a></h2>
            </form>
        </div>
    </div>

    <a href="login-video.php">
        <div class="backBtn">
            <img src="../img/back-icon.png" alt="back">
            <p>back</p>
        </div>
    </a>
    
</body>
</html>