<?php

session_start();


$koneksi = mysqli_connect("localhost", "root", "", "login") or die("Gagal koneksi");


if (isset($_POST['masuk'])) {
    $username = mysqli_real_escape_string($koneksi, $_POST['username']);
    $password = $_POST['password'];

    
    $query = "SELECT id, username, password FROM users WHERE username = '$username' LIMIT 1";
    $result = mysqli_query($koneksi, $query);

    if (mysqli_num_rows($result) > 0) {
        $user = mysqli_fetch_assoc($result);

        
        if ($password == $user['password']) {
            
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $user['username'];

            
            header("Location: home.php");
            exit();
        } else {
            $error_message = "Password salah.";
        }
    } else {
        $error_message = "Username tidak ditemukan.";
    }

    mysqli_close($koneksi);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../css/login-video.css">
    <link href="https://fonts.cdnfonts.com/css/mantinia" rel="stylesheet">
</head>
<body>
    <div class="bg-container">
        <video src="../img/bg login.mp4" class="video-container" autoplay muted loop></video>
        <div class="overlay"></div>
    </div>

    <div class="container">
        <div class="form-container">
            <h1>Login</h1>
            <form action="" method="post" class="form-login">
                <div class="data-user">
                    <input type="text" name="username" id="username" placeholder="Username" required>
                    <input type="password" name="password" id="password" minlength="8" placeholder="Password" required>
                </div>
                <div class="remember">
                    <input type="checkbox" name="remember">
                    <label for="remember">Remember me</label>
                </div>
                <button type="submit" name="masuk">Login</button>
                <h2>Don't Have an Account?<br> <a href="SignUp.php">Sign Up</a></h2>
            </form>
            <?php
            
            if (isset($error_message)) {
                echo "<p style='color: red;'>$error_message</p>";
            }
            ?>
        </div>
    </div>

    <a href="#">
        <div class="backBtn">
            <img src="../img/back-icon.png" alt="back">
            <p>back</p>
        </div>
    </a>
</body>
</html>
