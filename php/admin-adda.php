<?php
// Connect to the database
$host = 'localhost';
$user = 'root'; // Update with your database username
$password = ''; // Update with your database password
$dbname = 'elden'; // Update with your database name

$conn = new mysqli($host, $user, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the POST data
    $Img = isset($_POST['Img']) ? $_POST['Img'] : '';
    $name = isset($_POST['name']) ? $_POST['name'] : '';
    $slot = isset($_POST['Slot']) ? $_POST['Slot'] : '';
    $weight = isset($_POST['Weight']) ? $_POST['Weight'] : '';
    $poise = isset($_POST['Poise']) ? $_POST['Poise'] : '';
    $physical = isset($_POST['Physical']) ? $_POST['Physical'] : '';
    $vs_strike = isset($_POST['VsStrike']) ? $_POST['VsStrike'] : '';
    $vs_slash = isset($_POST['VsSlash']) ? $_POST['VsSlash'] : '';
    $vs_pierce = isset($_POST['VsPierce']) ? $_POST['VsPierce'] : '';
    $magic = isset($_POST['Magic']) ? $_POST['Magic'] : '';
    $fire = isset($_POST['Fire']) ? $_POST['Fire'] : '';
    $lightning = isset($_POST['Lightning']) ? $_POST['Lightning'] : '';
    $holy = isset($_POST['Holy']) ? $_POST['Holy'] : '';
    $immunity = isset($_POST['Immunity']) ? $_POST['Immunity'] : '';
    $robustness = isset($_POST['Robustness']) ? $_POST['Robustness'] : '';
    $focus = isset($_POST['Focus']) ? $_POST['Focus'] : '';
    $vitality = isset($_POST['Vitality']) ? $_POST['Vitality'] : '';
    
    if (isset($_GET['id'])) {
        // Update query for armor
        $sql = "UPDATE armor SET 
            image_weapon = ?, name = ?, slot = ?, weight = ?, poise = ?, 
            physical = ?, vs_strike = ?, vs_slash = ?, vs_pierce = ?, magic = ?, 
            fire = ?, lightning = ?, holy = ?, immunity = ?, robustness = ?, 
            focus = ?, vitality = ? WHERE id = ?";
        
        $stmt = $conn->prepare($sql);
        $stmt->bind_param('sssssssssssssssssi',
            $Img, $name, $slot, $weight, $poise, 
            $physical, $vs_strike, $vs_slash, $vs_pierce, $magic, 
            $fire, $lightning, $holy, $immunity, $robustness, 
            $focus, $vitality, $id
        );

        if ($stmt->execute()) {
            echo "Armor data updated successfully!";
        } else {
            echo "Error updating data: " . $conn->error;
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
    <link rel="stylesheet" href="../css/admin-add.css">
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

<form action="" method="post">
<div class="main">
    <div class="equip-add-container">
        <div class="judul">
            <h3>TAMBAHKAN DATA</h3>
        </div>
        <div class="form-container">
            <table>
                <tbody>
                    <tr>
                        <td class="form-left"><label for="pic">Pic</label></td>
                        <td class="form-right"><input type="text" id="pic" name="Img" value="<?php echo isset($data['image_weapon']) ? $data['image_weapon'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="name">Name</label></td>
                        <td class="form-right"><input type="text" id="name" name="name" value="<?php echo isset($data['name']) ? $data['name'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Slot">Slot</label></td>
                        <td class="form-right"><input type="text" id="Slot" name="Slot" value="<?php echo isset($data['slot']) ? $data['slot'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Weight">Weight</label></td>
                        <td class="form-right"><input type="text" id="Weight" name="Weight" value="<?php echo isset($data['weight']) ? $data['weight'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Poise">Poise</label></td>
                        <td class="form-right"><input type="text" id="Poise" name="Poise" value="<?php echo isset($data['poise']) ? $data['poise'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Physical">Physical</label></td>
                        <td class="form-right"><input type="text" id="Physical" name="Physical" value="<?php echo isset($data['physical']) ? $data['physical'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="VsStrike">Vs Strike</label></td>
                        <td class="form-right"><input type="text" id="VsStrike" name="VsStrike" value="<?php echo isset($data['vs_strike']) ? $data['vs_strike'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="VsSlash">Vs Slash</label></td>
                        <td class="form-right"><input type="text" id="VsSlash" name="VsSlash" value="<?php echo isset($data['vs_slash']) ? $data['vs_slash'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="VsPierce">Vs Pierce</label></td>
                        <td class="form-right"><input type="text" id="VsPierce" name="VsPierce" value="<?php echo isset($data['vs_pierce']) ? $data['vs_pierce'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Magic">Magic</label></td>
                        <td class="form-right"><input type="text" id="Magic" name="Magic" value="<?php echo isset($data['magic']) ? $data['magic'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Fire">Fire</label></td>
                        <td class="form-right"><input type="text" id="Fire" name="Fire" value="<?php echo isset($data['fire']) ? $data['fire'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Lightning">Lightning</label></td>
                        <td class="form-right"><input type="text" id="Lightning" name="Lightning" value="<?php echo isset($data['lightning']) ? $data['lightning'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Holy">Holy</label></td>
                        <td class="form-right"><input type="text" id="Holy" name="Holy" value="<?php echo isset($data['holy']) ? $data['holy'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Immunity">Immunity</label></td>
                        <td class="form-right"><input type="text" id="Immunity" name="Immunity" value="<?php echo isset($data['immunity']) ? $data['immunity'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Robustness">Robustness</label></td>
                        <td class="form-right"><input type="text" id="Robustness" name="Robustness" value="<?php echo isset($data['robustness']) ? $data['robustness'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Focus">Focus</label></td>
                        <td class="form-right"><input type="text" id="Focus" name="Focus" value="<?php echo isset($data['focus']) ? $data['focus'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Vitality">Vitality</label></td>
                        <td class="form-right"><input type="text" id="Vitality" name="Vitality" value="<?php echo isset($data['vitality']) ? $data['vitality'] : ''; ?>" placeholder="Input Here" required></td>
                    </tr>
                </tbody>
            </table>

        </div>
    </div>
    <div class="InputToDatabase">
        <button id="input" name="input" class="input">
            <h3>ENTER</h3>
        </button>
    </div>
</div>
</form>

<a href="admin-equip.php">
<div class="back">
    <h3>BACK</h3>
</div>
</a>



<script>
    feather.replace();
</script>
<script src="../js/home.js"></script>

</body>
</html>