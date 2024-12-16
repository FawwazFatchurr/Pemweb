<?php
// Variabel login untuk user
$isLoggedIn = isset($_SESSION['loggedIn']) ? $_SESSION['loggedIn'] : false;
$username = isset($_SESSION['username']) ? $_SESSION['username'] : '';

// Variabel login admin
$isAdmin = ($username === 'zia' && isset($_SESSION['password']) && $_SESSION['password'] === 'admin123');
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/homep.css">
    <link rel="stylesheet" href="../css/reset.css">
    <link href="https://fonts.cdnfonts.com/css/mantinia" rel="stylesheet">
    <script src="https://unpkg.com/feather-icons"></script>


</head>
<body>
<nav class="header">
    <div class="bingkai1">
        <div class="header-container">

            <div class="header-kiri">
                <div class="logo">
                    <a href="homep.php">EldenLands</a>
                </div>
            </div>

            <div class="header-kanan">
                <a href="char.php">
                    <div class="navigasi">
                        <h3>CHARACTER BUILD</h3>
                    </div>
                </a>
                <a href="equip.php">
                    <div class="navigasi">
                        <h3>EQUIPMENT</h3>
                    </div>
                </a>
                
                <?php if (!$isLoggedIn): ?>
                    <!-- Tampilkan tombol LOGIN jika belum login -->
                    <a href="login-video.php">
                        <div class="navigasi-login">
                            <i data-feather="user"></i>
                            LOGIN
                        </div>
                    </a>
                <?php endif; ?>

                <?php if ($isLoggedIn): ?>
                    <!-- Tampilkan nama pengguna jika sudah login -->
                    <div class="user-name">
                        <img src="" alt="">
                        <h3>Haiii, <?php echo htmlspecialchars($username); ?>!!</h3>
                        <div class="dropdown-menu">
                            <a href="profile.php">
                                <div class="btn-profile">
                                    <h3>PROFILE</h3>
                                </div>
                            </a>
                            <a href="logout.php">
                                <div class="btn-profile">
                                    <h3>LOGOUT</h3>
                                </div>
                            </a>
                        </div>
                    </div>
                <?php endif; ?>

                <?php if ($isAdmin): ?>
                    <!-- Tampilkan menu Admin hanya jika login sebagai admin -->
                    <a href="admin-dashboard.php">
                        <div class="navigasi-admin">
                            <h3>ADMIN DASHBOARD</h3>
                        </div>
                    </a>
                <?php endif; ?>
            </div>

            <div class="hum-menu">
                <i data-feather="menu"></i>
            </div>

        </div>
    </div>
</nav>

<div class="main">

    <div class="opening">
        <div class="opening-container">
            <div class="opening-vd" id="parallax-video">
                <video src="https://static.bandainamcoent.eu/video/elden-ring-header-animated.webm" autoplay muted loop></video>
                <div class="opening-detail">
                    <!--<h3>Build Your Best <br>Character</h3>
                    <p>Embark on a journey through <br>the Lands Between. Discover <br>lore, conquer foes, and master 
                        <br>the art of battle. This is your <br>gateway to the world of <br>Elden Ring.</p>
                    <a href="login-video.html">
                        <div class="get-start">Get Started</div>
                    </a>-->
                </div>
            </div>
        </div>
    </div>

    <div class="content">

        <div class="orientasi">

            <div class="elden-ring">
                <img src="https://p325k7wa.twic.pics/high/elden-ring/elden-ring/00-page-setup/eldenring_new.png?twic=v1/resize=800/step=10/quality=80" alt="elden ring" cla>
            </div>

            <div class="opening-main">

                <div class="opening-pintu-elden">
                    <img src="../img/pintu-elden.png" alt="">
                    <h3>Welcome to Elden Lands</h3>
                </div>

                <div class="opening-trailer">

                    <div class="opening-trailer-left">
                        <h3>The Golden Order has been broken</h3><br>
                        <p>Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between. <br><br>

                            In the Lands Between ruled by Queen Marika the Eternal, the Elden Ring, the source of the Erdtree, has been shattered. <br><br>
                            
                            Marika's offspring, demigods all, claimed the shards of the Elden Ring known as the Great Runes, and the mad taint of their 
                            newfound strength triggered a war: The Shattering. A war that meant abandonment by the Greater Will. <br><br>
                            
                            And now the guidance of grace will be brought to the Tarnished who were spurned by the grace of gold and exiled from the Lands Between. 
                            Ye dead who yet live, your grace long lost, follow the path to the Lands Between beyond the foggy sea to stand before the Elden Ring. <br><br><br><br>
                            
                             
                            
                            And become the Elden Lord.</p>
                    </div>

                    <div class="opening-trailer-right">
                        <a href="https://www.youtube.com/watch?v=qqiC88f9ogU" target="_blank">
                           <!-- <img src="../img/border-pedis.png" alt="">-->
                            <video src="https://static.bandainamcoent.eu/video/elden-ring-autoplay-launch-trailer.webm" autoplay muted loop></video>
                        </a>
                    </div>
                    
                </div>

            </div>

        </div>

        <section class="fitur">
            <div class="fitur-con">

                
                
                <div class="equipment">
                    <div class="equipment-left">
                        <div class="equipment-judul">
                            <h3>EQUIPMENT</h3>
                        </div>
                        <div class="equipment-respon">

                                <a href="#">
                                    <div class="eq-left-top">
                                        <img src="../img/arrows.png" alt="">
                                    </div>
                                </a>
                                <a href="#">
                                    <div class="eq-left-bottom">
                                        <img src="../img/shield.png" alt="">
                                    </div>
                                </a>
                            
    
                                <a href="#">
                                    <div class="eq-right-top">
                                        <img src="../img/book.png" alt="">
                                    </div>
                                </a>
                                <a href="#">
                                    <div class="eq-right-bottom">
                                        <img src="../img/armour.png" alt="">
                                    </div>
                                </a>
                            
    
                        </div>
                        <div class="equipment-ket">
                            <p>Elden Ring offers a wide variety of equipment that caters to different playstyles. This includes not only weapons but also armor, 
                                shields, rings, and talismans. Armor comes in light, medium, and heavy sets, affecting mobility and defense. Shields provide protection 
                                and can be used for parrying or blocking. Rings and talismans grant various buffs, enhancing stats or providing resistance to damage. 
                                Additionally, Ashes of War can be applied to weapons and shields to modify their abilities or add elemental effects, allowing for 
                                extensive customization to suit any build. <br><br>
                                Furthermore, materials can be collected to upgrade equipment, giving players even more ways to improve their combat effectiveness 
                                and adapt to different challenges in the world of Elden Ring. Crafting materials and consumables can also be used to create temporary 
                                advantages during exploration or in combat, adding layers of strategic depth to the equipment system. All in all, the variety of equipment 
                                in Elden Ring ensures that players can tailor their loadouts to suit their desired playstyle, whether focused on offense, defense, or 
                                magical prowess.

                            </p>
                        </div>

                    </div>

                    <div class="equipment-right">

                        <div class="eq-left">
                            <a href="#">
                                <div class="eq-left-top">
                                    <img src="../img/arrows.png" alt="">
                                </div>
                            </a>
                            <a href="#">
                                <div class="eq-left-bottom">
                                    <img src="../img/shield.png" alt="">
                                </div>
                            </a>
                        </div>

                        <div class="eq-right">
                            <a href="#">
                                <div class="eq-right-top">
                                    <img src="../img/book.png" alt="">
                                </div>
                            </a>
                            <a href="#">
                                <div class="eq-right-bottom">
                                    <img src="../img/armour.png" alt="">
                                </div>
                            </a>
                        </div>

                    </div>
                </div>

                <div class="karakter">
                    <div class="karakter-con">

                        <div class="karakter-judul">
                            <h3>CHARACTER BUILD</h3>
                            <p>Our website features a Character Build Calculator to help you plan and optimize your Tarnished's stats <br>and equipment. 
                                Experiment with different attributes, weapons, spells, and armor to create the perfect build for your playstyle.</p>
                        </div>

                                    
                        <div class="char-container">
                            <div class="char-slider">
                                <div class="char-list">

                                    <div class="char-item">
                                        <img src="../img/elden-ring-character-wretch-full.webp" alt="">
                                        <div class="char-detail">
                                            <h3>Wretch</h3>
                                            <p>A poor, purposeless sod, naked as the day they were born.
                                                A nice club is all they have.</p>
                                        </div>
                                    </div>

                                    <div class="char-item">
                                        <img src="../img/elden-ring-character-warrior-full.webp" alt="">
                                        <div class="char-detail">
                                            <h3>Warrior</h3>
                                            <p>A nomad warrior who fights wielding two blades at once.
                                                An origin of exceptional technique.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="char-item">
                                        <img src="../img/elden-ring-character-samourai-full.png" alt="">
                                        <div class="char-detail">
                                            <h3>Samurai</h3>
                                            <p>A capable fighter from the distant Land of Reeds.
                                                Handy with katana and longbows.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="char-item">
                                        <img src="../img/elden-ring-character-prophet-full.webp" alt="">
                                        <div class="char-detail">
                                            <h3>Prophet</h3>
                                            <p>A seer ostracized for inauspicious prophecies.
                                                Well-versed in healing incantations.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="char-item">
                                        <img src="../img/elden-ring-character-prisoner-full.webp" alt="">
                                        <div class="char-detail">
                                            <h3>Prisoner</h3>
                                            <p>A prisoner bound in an iron mask.Studied in glinstone 
                                                sorcery, having lived among the elite prior to sentencing.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="char-item">
                                        <img src="../img/elden-ring-character-hero-full-new.png" alt="">
                                        <div class="char-detail">
                                            <h3>Hero</h3>
                                            <p>A stalwart hero, at home with a battleaxe, descended from a badlands chieftain.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="char-item">
                                        <img src="../img/elden-ring-character-confessor-full.webp" alt="">
                                        <div class="char-detail">
                                            <h3>Confessor</h3>
                                            <p>A church spy adept at covert operations.
                                                Equally adept with a sword as they are with their incantations.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="char-item">
                                        <img src="../img/elden-ring-character-bandit-full.webp" alt="">
                                        <div class="char-detail">
                                            <h3>Bandit</h3>
                                            <p>A dangerous bandit who strikes for weak points.
                                                Excels at ranged combat with bows.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="char-item">
                                        <img src="../img/elden-ring-character-astrologer-full.webp" alt="">
                                        <div class="char-detail">
                                            <h3>Astrologer</h3>
                                            <p>A scholar who reads fate in the stars.
                                                Heir to the school of glintstone sorcery.</p>
                                        </div>
                                    </div>

                                    <div class="char-item">
                                        <img src="../img/elden-ring-character-vagabond-full.webp" alt="">
                                        <div class="char-detail">
                                            <h3>Vagabond</h3>
                                            <p>A knight exiled from their homeland to wander.
                                                A solid, armor-clad origin.</p>
                                        </div>
                                    </div>

                                </div>
                                
                            </div>
                            <div class="button">
                                <div class="kiri"></div>
                                <div class="mid">
                                    <div class="next-btn" id="next-btn">PREV</div>
                                    <div class="prev-btn" id="prev-btn">NEXT</div>
                                </div>
                                <a href="char.php">
                                    <div class="kanan">BUILD NOW!!</div>
                                </a>
                            </div>  
                            
                        </div>
                    

                    </div>
                </div>

            </div>
        </section>




    </div>

</div>


<footer class="footer">
    <div class="footer-con">
        <div class="atas">
            <hr>
            <div class="footer-judul">About Us</div>
            <hr>
        </div>
        <div class="footer-detail">
            <div class="top">Asset</div>
            <div class="mid">
                <div class="left">
                    <a href="https://wa.me/081220173953" target="_blank" class=" left"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                        <path d="M164.9 24.6c-7.7-18.6-28-28.5-47.4-23.2l-88 24C12.1 30.2 0 46 0 64C0 311.4 200.6 512 448 512c18 0 33.8-12.1 38.6-29.5l24-88c5.3-19.4-4.6-39.7-23.2-47.4l-96-40c-16.3-6.8-35.2-2.1-46.3 11.6L304.7 368C234.3 334.7 177.3 277.7 144 207.3L193.3 167c13.7-11.2 18.4-30 11.6-46.3l-40-96z"/></svg>
                        <h3>081220173953</h3>
                    </a>
                </div>
                <div class="midd"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                    <!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                    <path d="M64 112c-8.8 0-16 7.2-16 16l0 22.1L220.5 291.7c20.7 17 50.4 17 71.1 0L464 150.1l0-22.1c0-8.8-7.2-16-16-16L64 112zM48 212.2L48 384c0 8.8 7.2 16 16 
                    16l384 0c8.8 0 16-7.2 16-16l0-171.8L322 328.8c-38.4 31.5-93.7 31.5-132 0L48 212.2zM0 128C0 92.7 28.7 64 64 64l384 0c35.3 0 64 28.7 64 64l0 256c0 35.3-28.7 
                    64-64 64L64 448c-35.3 0-64-28.7-64-64L0 128z"/></svg>
                    <h3>papaw@gmail.com</h3>

                </div>
                <div class="right">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                        <path d="M464 256A208 208 0 1 1 48 256a208 208 0 1 1 416 0zM0 256a256 256 0 1 0 512 0A256 256 0 1 0 0 256zM232 120l0 136c0 8 4 15.5 10.7 20l96 64c11 7.4 
                        25.9 4.4 33.3-6.7s4.4-25.9-6.7-33.3L280 243.2 280 120c0-13.3-10.7-24-24-24s-24 10.7-24 24z"/></svg>
                        <h3>Indonesia <br> 09:00 am - 08:00 pm</h3>
                </div>
            </div>
            <div class="bot">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M194.4 211.7a53.3 53.3 0 1 0 59.3 88.7 53.3 53.3 0 1 0 -59.3-88.7zm142.3-68.4c-5.2-5.2-11.5-9.3-18.4-12c-18.1-7.1-57.6-6.8-83.1-6.5c-4.1 0-7.9 .1-11.2 .1c-3.3 0-7.2 0-11.4-.1c-25.5-.3-64.8-.7-82.9 6.5c-6.9 2.7-13.1 6.8-18.4 12s-9.3 11.5-12 18.4c-7.1 18.1-6.7 57.7-6.5 83.2c0 4.1 .1 7.9 .1 11.1s0 7-.1 11.1c-.2 25.5-.6 65.1 6.5 83.2c2.7 6.9 6.8 13.1 12 18.4s11.5 9.3 18.4 12c18.1 7.1 57.6 6.8 83.1 6.5c4.1 0 7.9-.1 11.2-.1c3.3 0 7.2 0 11.4 .1c25.5 .3 64.8 .7 82.9-6.5c6.9-2.7 13.1-6.8 18.4-12s9.3-11.5 12-18.4c7.2-18 6.8-57.4 6.5-83c0-4.2-.1-8.1-.1-11.4s0-7.1 .1-11.4c.3-25.5 .7-64.9-6.5-83l0 0c-2.7-6.9-6.8-13.1-12-18.4zm-67.1 44.5A82 82 0 1 1 178.4 324.2a82 82 0 1 1 91.1-136.4zm29.2-1.3c-3.1-2.1-5.6-5.1-7.1-8.6s-1.8-7.3-1.1-11.1s2.6-7.1 5.2-9.8s6.1-4.5 9.8-5.2s7.6-.4 11.1 1.1s6.5 3.9 8.6 7s3.2 6.8 3.2 10.6c0 2.5-.5 5-1.4 7.3s-2.4 4.4-4.1 6.2s-3.9 3.2-6.2 4.2s-4.8 1.5-7.3 1.5l0 0c-3.8 0-7.5-1.1-10.6-3.2zM448 96c0-35.3-28.7-64-64-64H64C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H384c35.3 0 64-28.7 64-64V96zM357 389c-18.7 18.7-41.4 24.6-67 25.9c-26.4 1.5-105.6 1.5-132 0c-25.6-1.3-48.3-7.2-67-25.9s-24.6-41.4-25.8-67c-1.5-26.4-1.5-105.6 0-132c1.3-25.6 7.1-48.3 25.8-67s41.5-24.6 67-25.8c26.4-1.5 105.6-1.5 132 0c25.6 1.3 48.3 7.1 67 25.8s24.6 41.4 25.8 67c1.5 26.3 1.5 105.4 0 131.9c-1.3 25.6-7.1 48.3-25.8 67z"/></svg>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M512 256C512 114.6 397.4 0 256 0S0 114.6 0 256C0 376 82.7 476.8 194.2 504.5V334.2H141.4V256h52.8V222.3c0-87.1 39.4-127.5 125-127.5c16.2 0 44.2 3.2 55.7 6.4V172c-6-.6-16.5-1-29.6-1c-42 0-58.2 15.9-58.2 57.2V256h83.6l-14.4 78.2H287V510.1C413.8 494.8 512 386.9 512 256h0z"/></svg>                
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103v-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z"/></svg>

            </div>
            <div class="copyright">
                <p>&copy; 2024 EldenLands. Semua hak dilindungi undang-undang.</p>

            </div>
        </div>
    </div>
</footer>


<script>  
    const slider = document.querySelector('.char-slider');
    const list = document.querySelector('.char-list');
    const next = document.querySelector('#next-btn');
    const prev = document.querySelector('#prev-btn');

    next.addEventListener('click', () =>{
        initSlider('next');
    });

    prev.addEventListener('click', () =>{
        initSlider('prev');
    });


    const initSlider = (type)  => {
        const sliderItems = list.querySelectorAll('.char-item');

        if(type === 'next'){
            list.appendChild(sliderItems[0]);
            slider.classList.add('next');
        }else{
            const lastPosition = sliderItems.length -1;
            list.prepend(sliderItems[lastPosition]);
            slider.classList.add('prev');
        }

        setTimeout(() =>{
            slider.classList.remove('next');
            slider.classList.remove('prev');
        },500);
    } 
</script>

<script>
    feather.replace();
</script>
<script src="../js/home.js"></script>


</body>
</html>