<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $conn = new mysqli('localhost', 'root', '', 'login');

    if ($conn->connect_error) {
        die("Koneksi gagal: " . $conn->connect_error);
    }

    $stmt = $conn->prepare("SELECT password FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $stmt->bind_result($hashed_password);
        $stmt->fetch();

        if (password_verify($password, $hashed_password)) {
            echo "Login berhasil!";
            
        } else {
            echo "Password salah!";
        }
    } else {
        echo "Pengguna tidak ditemukan!";
    }

    $stmt->close();
    $conn->close();
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
