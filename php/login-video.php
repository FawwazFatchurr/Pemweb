<?php
session_start();
$conn = new mysqli('localhost', 'root', '', 'elden');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Akun admin hardcoded
$admin_username = "zia";
$admin_password = "admin123";

// Proses login
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = htmlspecialchars($_POST['username'], ENT_QUOTES, 'UTF-8');
    $password = $_POST['password'];

    if ($username === $admin_username && $password === $admin_password) {
        // Login admin
        $_SESSION['logged_in'] = true;
        $_SESSION['username'] = $admin_username;
        $_SESSION['role'] = 'admin';
        header("Location: admin-home.php");
        exit;
    } else {
        // Login user biasa
        $stmt = $conn->prepare("SELECT * FROM users WHERE username = ?");
        $stmt->bind_param('s', $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $user = $result->fetch_assoc();
            if (password_verify($password, $user['password'])) {
                $_SESSION['logged_in'] = true;
                $_SESSION['username'] = $user['username'];
                $_SESSION['role'] = 'user';
                header("Location: homep.php");
                exit;
            } else {
                $error_message = "Invalid username or password.";
            }
        } else {
            $error_message = "Invalid username or password.";
        }
    }
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
    <div class="blur">
        <div class="bg-container">
            <video src="../img/bg login.mp4" class="video-container"  autoplay muted loop></video>
            <div class="overlay"></div>
        </div>

        <div class="container">
            <div class="form-container">
                <h1>Log in</h1>
                <form action="" method="post" class="form-login">
                    <div class="data-user">
                        <input type="text" name="username" id="username" placeholder="Username"  required>
                        <input type="password" name="password" id="password" minlength="8" placeholder="Password" required>
                    </div>
                    <div class="remember">
                        <input type="checkbox" name="remember">
                        <label for="remember">Remember me</label>
                    </div>
                    <button type="submit" name="masuk">Login</button>
                    <h2>Dont Have an Account?<br> <a href="SignUp.php">Sign Up</a></h2>
                </form>
            </div>
        </div>



    <a href="homep.php">
        <div class="backBtn">
            <p>back</p>
        </div>
    </a>
    </div>
    
</body>
</html>