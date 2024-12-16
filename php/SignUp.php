<?php
// Periksa apakah form SignUp disubmit
if (isset($_POST['SignUp'])) {
    // Ambil data dari form
    $username = trim($_POST['username']);
    $email = trim($_POST['email']);
    $password = $_POST['password'];
    $password2 = $_POST['password2'];

    // Validasi konfirmasi password
    if ($password !== $password2) {
        echo "<script>alert('Password dan Konfirmasi Password tidak cocok!');</script>";
        exit;
    }
    

    // Koneksi ke database
    $koneksi = mysqli_connect("localhost", "root", "", "elden");

    if (!$koneksi) {
        die("Gagal koneksi ke database: " . mysqli_connect_error());
    }

    // Pastikan username dan email tidak duplikat
    $stmt_check = $koneksi->prepare("SELECT id FROM users WHERE username = ? OR email = ?");
    $stmt_check->bind_param("ss", $username, $email);
    $stmt_check->execute();
    $stmt_check->store_result();
    
    if ($stmt_check->num_rows > 0) {
        echo "<script>alert('Username atau Email sudah terdaftar. Silakan pilih yang lain.');</script>";
        $stmt_check->close();
        exit;
    }

    // Hash password untuk keamanan
    $hashed_password = password_hash($password, PASSWORD_BCRYPT);

    // Menyiapkan query untuk memasukkan data pengguna ke dalam tabel
    $stmt = $koneksi->prepare("INSERT INTO users (username, password, email) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $username, $hashed_password, $email);

    // Eksekusi dan cek apakah berhasil
    if ($stmt->execute()) {
        echo "<script>alert('Akun telah dibuat, Silahkan Login');</script>";
    } else {
        echo "<script>alert('Gagal menyimpan data: " . $stmt->error . "');</script>";
    }

    // Tutup statement dan koneksi
    $stmt->close();
    $koneksi->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create New Account</title>
    <link rel="stylesheet" href="../css/login-video.css">
    <link href="https://fonts.cdnfonts.com/css/mantinia" rel="stylesheet">
</head>
<body>
    <div class="blur">
        <div class="bg-container">
            <video src="../img/bg login.mp4" class="video-container" autoplay muted loop></video>
            <div class="overlay"></div>
        </div>

        <div class="container">
        <div class="form-container">
            <h1>Create New Account</h1>
            <form action="" method="post" class="form-login">
                <div class="data-user">
                    <input type="text" name="username" id="username" placeholder="Username" required>
                    <input type="email" name="email" id="email" placeholder="Email" required>
                    <input type="password" name="password" id="password" placeholder="Password" required>
                    <input type="password" name="password2" id="password2" placeholder="Konfirmasi Password" required>
                </div>
                <button type="submit" name="SignUp">Sign Up</button>
                <h2>Already Have an Account?<br> <a href="login-video.php">Log In</a></h2>
            </form>
            
        </div>
    </div>

        <a href="login-video.php">
            <div class="backBtn">
                <p>back</p>
            </div>
        </a>
    </div>

    
    <script>
        // Ambil elemen form dan input
        const form = document.querySelector('.form-login');
        const usernameInput = document.getElementById('username');
        const emailInput = document.getElementById('email');
        const passwordInput = document.getElementById('password');
        const confirmPasswordInput = document.getElementById('password2');

        // Tambahkan event listener untuk validasi saat form disubmit
        form.addEventListener('submit', function(event) {
            // Hentikan pengiriman form default
            event.preventDefault();

            // Reset pesan error sebelumnya
            resetErrors();

            let isValid = true;

            // Validasi username (tidak boleh kosong dan minimal 3 karakter)
            if (usernameInput.value.trim().length < 3) {
                showError(usernameInput, 'Username harus minimal 3 karakter');
                isValid = false;
            }

            // Validasi email menggunakan regex
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(emailInput.value.trim())) {
                showError(emailInput, 'Masukkan email yang valid');
                isValid = false;
            }

            // Validasi password (minimal 6 karakter)
            if (passwordInput.value.trim().length < 6) {
                showError(passwordInput, 'Password harus minimal 6 karakter');
                isValid = false;
            }

            // Validasi konfirmasi password (harus sama dengan password)
            if (passwordInput.value.trim() !== confirmPasswordInput.value.trim()) {
                showError(confirmPasswordInput, 'Konfirmasi password tidak sesuai');
                isValid = false;
            }

            // Jika validasi lolos, kirim form
            if (isValid) {
                form.submit();
            }
        });

        // Fungsi untuk menampilkan pesan error
        function showError(inputElement, message) {
            const errorElement = document.createElement('span');
            errorElement.classList.add('error-message');
            errorElement.textContent = message;
            inputElement.parentNode.appendChild(errorElement);
            inputElement.classList.add('error');
        }

        // Fungsi untuk mereset error
        function resetErrors() {
            const errorMessages = document.querySelectorAll('.error-message');
            errorMessages.forEach(error => error.remove());

            const errorInputs = document.querySelectorAll('.error');
            errorInputs.forEach(input => input.classList.remove('error'));
        }
    </script>
</body>
</html>
