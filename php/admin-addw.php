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

$fields_weapon = [
    'image_weapon' => 'Image',
    'name' => 'Name',
    'type' => 'Type',
    'damage_types' => 'Dmg Types',
    'str_scaling' => 'Strength',
    'dex_scaling' => 'Dexterity',
    'int_scaling' => 'Intelligence',
    'fai_scaling' => 'Faith',
    'arc_scaling' => 'Arcane',
    'weight' => 'Weight',
    'phys_damage' => 'Physical',
    'mag_damage' => 'Magic',
    'fir_damage' => 'Fire',
    'lgt_damage' => 'Lightning',
    'hly_damage' => 'Holy',
    'crit_damage' => 'Critical',
    'skill' => 'Skill'
];


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Check if POST variables are set, if not set to empty string
    $Img = isset($_POST['Img']) ? $_POST['Img'] : '';
    $name = isset($_POST['name']) ? $_POST['name'] : '';
    $type = isset($_POST['Type']) ? $_POST['Type'] : '';
    $damageType = isset($_POST['DamageType']) ? $_POST['DamageType'] : '';
    $str = isset($_POST['Str']) ? $_POST['Str'] : '';
    $dex = isset($_POST['Dex']) ? $_POST['Dex'] : '';
    $int = isset($_POST['Int']) ? $_POST['Int'] : '';
    $fai = isset($_POST['Fai']) ? $_POST['Fai'] : '';
    $arc = isset($_POST['Arc']) ? $_POST['Arc'] : '';
    $weight = isset($_POST['Weight']) ? $_POST['Weight'] : '';
    $physical = isset($_POST['Physical']) ? $_POST['Physical'] : '';
    $magic = isset($_POST['Magic']) ? $_POST['Magic'] : '';
    $fire = isset($_POST['Fire']) ? $_POST['Fire'] : '';
    $lighting = isset($_POST['Lighting']) ? $_POST['Lighting'] : '';
    $holy = isset($_POST['Holy']) ? $_POST['Holy'] : '';
    $critical = isset($_POST['Critical']) ? $_POST['Critical'] : '';
    $skill = isset($_POST['Skill']) ? $_POST['Skill'] : '';

    
}else {
    if (isset($_GET['id'])) {
        // Update query based on the type (weapon, armor, shield)
        if ($type == 'weapon') {
            $sql = "UPDATE weapon SET 
                image_weapon = ?, name = ?, type = ?, damage_types = ?, 
                str_scaling = ?, dex_scaling = ?, int_scaling = ?, fai_scaling = ?, 
                arc_scaling = ?, weight = ?, phys_damage = ?, mag_damage = ?, 
                fir_damage = ?, lgt_damage = ?, hly_damage = ?, crit_damage = ?, skill = ?
                WHERE id = ?";
                
            $stmt = $conn->prepare($sql);
            $stmt->bind_param('ssssssssssssssssi',
                $Img, $name, $type, $damageType,
                $str, $dex, $int, $fai, $arc,
                $weight, $physical, $magic, $fire,
                $lighting, $holy, $critical, $skill, $id
            );
   
            if ($stmt->execute()) {
                echo "Weapon data updated successfully!";
            } else {
                echo "Error updating data: " . $conn->error;
            }
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
                        <td class="form-right"><input type="text" id="pic" name="pic" placeholder="Input Here" required ></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="name">Name</label></td>
                        <td class="form-right"><input type="text" id="name" name="name" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Type">Type</label></td>
                        <td class="form-right"><input type="text" id="Type" name="Type" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="DamageType">Damage Type</label></td>
                        <td class="form-right"><input type="text" id="DamageType" name="DamageType" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Str">Str</label></td>
                        <td class="form-right"><input type="text" id="Str" name="Str" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Dex">Dex</label></td>
                        <td class="form-right"><input type="text" id="Dex" name="Dex" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Int">Int</label></td>
                        <td class="form-right"><input type="text" id="Int" name="Int" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Fai">Fai</label></td>
                        <td class="form-right"><input type="text" id="Fai" name="Fai" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Arc">Arc</label></td>
                        <td class="form-right"><input type="text" id="Arc" name="Arc" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Weight">Weight</label></td>
                        <td class="form-right"><input type="text" id="Weight" name="Weight" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Physical">Physical</label></td>
                        <td class="form-right"><input type="text" id="Physical" name="Physical" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Magic">Magic</label></td>
                        <td class="form-right"><input type="text" id="Magic" name="Magic" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Fire">Fire</label></td>
                        <td class="form-right"><input type="text" id="Fire" name="Fire" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Lighting">Lighting</label></td>
                        <td class="form-right"><input type="text" id="Lighting" name="Lighting" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Holy">Holy</label></td>
                        <td class="form-right"><input type="text" id="Holy" name="Holy" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Critical">Critical</label></td>
                        <td class="form-right"><input type="text" id="Critical" name="Critical" placeholder="Input Here" required></td>
                    </tr>
                    <tr>
                        <td class="form-left"><label for="Skill">Skill</label></td>
                        <td class="form-right"><input type="text" id="Skill" name="Skill" placeholder="Input Here" required></td>
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