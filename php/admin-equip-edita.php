
<?php
// Koneksi ke database
$host = 'localhost';
$dbname = 'elden';
$username = 'root';
$password = '';

try {
    // Membuat koneksi PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error connecting to database: " . $e->getMessage());
}

// Tentukan jumlah data per halaman
$items_per_page = 5;

// Ambil nomor halaman dari parameter GET, default halaman = 1
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? (int)$_GET['page'] : 1;

// Hitung offset (mulai dari data ke-berapa)
$offset = ($page - 1) * $items_per_page;

// Query data armor dengan batasan LIMIT dan OFFSET menggunakan PDO
$query = $pdo->prepare("SELECT * FROM armor LIMIT :limit OFFSET :offset");
$query->bindParam(':limit', $items_per_page, PDO::PARAM_INT);
$query->bindParam(':offset', $offset, PDO::PARAM_INT);
$query->execute();
$armors = $query->fetchAll(PDO::FETCH_ASSOC);

// Hitung total data untuk membuat tombol navigasi
$total_query = $pdo->query("SELECT COUNT(*) as total FROM armor");
$total_items = $total_query->fetch(PDO::FETCH_ASSOC)['total'];
$total_pages = ceil($total_items / $items_per_page);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/admin-equip-edit.css">
    <link href="https://fonts.cdnfonts.com/css/mantinia" rel="stylesheet">
    <script src="https://unpkg.com/feather-icons"></script>

</head>
<body>
<nav class="header">
    <div class="header-container">
        <div class="header-left">
            <h3>EldenLands</h3>
        </div>
        <div class="header-right">
            <h3>ADMINISTRATOR</h3>
        </div>
    </div>
</nav>

<div class="sidebar">
    <div class="sidebar-list">
        <a href="admin-home.php">
            <div class="sidebar-item">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M575.8 255.5c0 18-15 32.1-32 32.1l-32 0 .7 160.2c0 2.7-.2 5.4-.5 8.1l0 16.2c0 22.1-17.9 40-40 40l-16 0c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1L416 512l-24 0c-22.1 0-40-17.9-40-40l0-24 0-64c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32 14.3-32 32l0 64 0 24c0 22.1-17.9 40-40 40l-24 0-31.9 0c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2l-16 0c-22.1 0-40-17.9-40-40l0-112c0-.9 0-1.9 .1-2.8l0-69.7-32 0c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z"/></svg>
                <p>DASHBOARD</p>
            </div>
        </a>
        <a href="admin-user copy.php">
            <div class="sidebar-item">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512l388.6 0c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304l-91.4 0z"/></svg>
                <p>USER</p>
            </div>
        </a>
        <a href="admin-equip.php">
            <div class="sidebar-item">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M448 80l0 48c0 44.2-100.3 80-224 80S0 172.2 0 128L0 80C0 35.8 100.3 0 224 0S448 35.8 448 80zM393.2 214.7c20.8-7.4 39.9-16.9 54.8-28.6L448 288c0 44.2-100.3 80-224 80S0 332.2 0 288L0 186.1c14.9 11.8 34 21.2 54.8 28.6C99.7 230.7 159.5 240 224 240s124.3-9.3 169.2-25.3zM0 346.1c14.9 11.8 34 21.2 54.8 28.6C99.7 390.7 159.5 400 224 400s124.3-9.3 169.2-25.3c20.8-7.4 39.9-16.9 54.8-28.6l0 85.9c0 44.2-100.3 80-224 80S0 476.2 0 432l0-85.9z"/></svg>
                <p>EQUIPMENT</p>
            </div>
        </a>
        <a href="logout.php">
            <div class="sidebar-item">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"/></svg>
                <p>LOG OUT</p>
            </div>
        </a>
    </div>
</div>


<div class="main">
    <div class="equip-edit-container">
        <div class="equip-edit-judul">
            <h3>ARMOR DATABASE</h3>
        </div>
        <div class="table-equip">
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Action</th> <!-- Tambahkan kolom Action -->
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($armors as $armor): ?>
                        <tr>
                            <td><?= htmlspecialchars($armor['name'] ?? 'N/A') ?></td>
                            <td>
                                <!-- Edit Button -->
                                <a href="edit_armor.php?id=<?= htmlspecialchars($armor['id']) ?>" style="text-decoration: none;">
                                    <button style="border: none; background: none;">
                                        <!-- Edit Icon -->
                                        <i class="fas fa-edit" style="color: blue; font-size: 20px;"></i>
                                    </button>
                                </a>
                            <form method="POST" action="delete_armor.php" style="display: inline;">
                                    <input type="hidden" name="armor_id" value="<?= htmlspecialchars($armor['id']) ?>">
                                    <!-- Tombol dengan ikon trashcan -->
                                    <button type="submit" onclick="return confirm('Are you sure you want to delete this armor?');" style="border: none; background: none;">
                                        <!-- Ganti ini menjadi ikon trashcan FontAwesome -->
                                        <i class="fas fa-trash-alt" style="color: red; font-size: 20px;"></i>
                                    </button>
                                </form>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>


<a href="admin-equip.php">
<div class="back">
    <h3>BACK</h3>
</div>
</a>


<a href="admin-adda.php">
<div class="tambah">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M256 80c0-17.7-14.3-32-32-32s-32 14.3-32 32l0 144L48 224c-17.7 0-32 14.3-32 32s14.3 32 32 32l144 0 0 144c0 17.7 14.3 32 32 32s32-14.3 32-32l0-144 144 0c17.7 0 32-14.3 32-32s-14.3-32-32-32l-144 0 0-144z"/></svg>
</div>
</a>





<script>
    feather.replace();
</script>
<script src="../js/home.js"></script>

</body>
</html>