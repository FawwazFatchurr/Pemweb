CREATE DATABASE login;

USE login;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL, 
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE DATABASE elden_ring;

USE elden_ring;

CREATE TABLE weapons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(50) NOT NULL,
    damage_types VARCHAR(50),
    str_scaling VARCHAR(50),
    dex_scaling VARCHAR(50),
    int_scaling VARCHAR(50),
    fai_scaling VARCHAR(50),
    arc_scaling VARCHAR(50),
    weight DECIMAL(5,2),
    phys_damage INT,
    mag_damage INT,
    fir_damage INT,
    lgt_damage INT,
    hly_damage INT,
    crit_damage INT,
    skill VARCHAR(100)
);


INSERT INTO weapons (name, type, damage_types, str_scaling, dex_scaling, int_scaling, fai_scaling, arc_scaling, weight, phys_damage, mag_damage, fir_damage, lgt_damage, hly_damage, crit_damage, skill)
VALUES
    ('Dagger', 'Dagger', 'Slash/Pierce', 'D (52)', 'B (97)', NULL, NULL, NULL, 1.5, 74, 0, 0, 0, 0, 130, 'Quickstep'),
    ('Black Knife', 'Dagger', 'Slash/Pierce', 'E (18)', 'B (99)', NULL, 'C (63)', NULL, 2, 66, 0, 0, 0, 65, 110, 'Blade of Death'),
    ('Parrying Dagger', 'Dagger', 'Slash/Pierce', 'E (24)', 'B (114)', NULL, NULL, NULL, 1.5, 75, 0, 0, 0, 0, 110, 'Parry'),
    ('Miséricorde', 'Dagger', 'Slash/Pierce', 'E (22)', 'C (75)', NULL, NULL, NULL, 2, 92, 0, 0, 0, 0, 140, 'Quickstep'),
    ('Reduvia', 'Dagger', 'Slash/Pierce', 'E (18)', 'C (72)', NULL, NULL, 'B (99)', 2.5, 79, 0, 0, 0, 0, 110, 'Reduvia Blood Blade'),
    ('Crystal Knife', 'Dagger', 'Slash/Pierce', 'C (60)', 'D (37)', 'B (90)', NULL, NULL, 2, 82, 53, 0, 0, 0, 100, 'Quickstep'),
    ('Celebrant Sickle', 'Dagger', 'Slash/Pierce', 'E (22)', 'B (100)', NULL, NULL, NULL, 1.5, 79, 0, 0, 0, 0, 100, 'Quickstep'),
    ('Glintstone Kris', 'Dagger', 'Slash/Pierce', 'E (18)', 'C (81)', 'C (72)', NULL, NULL, 1.5, 57, 68, 0, 0, 0, 110, 'Glintstone Dart'),
    ('Scorpion Stinger', 'Dagger', 'Slash/Pierce', 'D (54)', 'B (126)', NULL, NULL, NULL, 2.5, 79, 0, 0, 0, 0, 110, 'Repeating Thrust'),
    ('Great Knife', 'Dagger', 'Slash/Pierce', 'E (7)', 'B (120)', NULL, NULL, NULL, 1.5, 75, 0, 0, 0, 0, 110, 'Quickstep'),
    ('Wakizashi', 'Dagger', 'Slash/Pierce', 'D (51)', 'C (67)', NULL, NULL, NULL, 3, 94, 0, 0, 0, 0, 100, 'Quickstep'),
    ('Cinquedea', 'Dagger', 'Slash/Pierce', 'B (102)', 'D (30)', NULL, NULL, NULL, 3.5, 98, 0, 0, 0, 0, 100, 'Quickstep'),
    ('Ivory Sickle', 'Dagger', 'Slash/Pierce', 'D (34)', 'C (88)', 'C (72)', NULL, NULL, 2, 60, 60, 0, 0, 0, 100, 'Quickstep'),
    ('Bloodstained Dagger', 'Dagger', 'Slash/Pierce', 'B (105)', 'D (30)', NULL, NULL, NULL, 2, 81, 0, 0, 0, 0, 110, 'Quickstep'),
    ('Erdsteel Dagger', 'Dagger', 'Slash/Pierce', 'D (45)', 'D (45)', NULL, 'D (54)', NULL, 2, 67, 0, 0, 0, 0, 110, 'Quickstep'),
    ('Blade of Calling', 'Dagger', 'Slash/Pierce', 'D (45)', 'C (68)', NULL, 'B (135)', NULL, 1.5, 71, 0, 0, 0, 43, 110, 'Blade of Gold'),
    ('Main-gauche', 'Dagger', 'Slash/Pierce', 'D (45)', 'B (90)', NULL, NULL, NULL, 2, 79, 0, 0, 0, 0, 110, 'Parry'),
    ('Falchion', 'Curved Sword', 'Slash', 'C (66)', 'C (66)', NULL, NULL, NULL, 3.5, 109, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Beastman Curved Sword', 'Curved Sword', 'Slash', 'B (97)', 'D (27)', NULL, NULL, NULL, 4, 113, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Shotel', 'Curved Sword', 'Slash', 'D (27)', 'C (87)', NULL, NULL, NULL, 2, 96, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Shamshir', 'Curved Sword', 'Slash', 'D (54)', 'C (75)', NULL, NULL, NULL, 3.5, 108, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Bandit Curved Sword', 'Curved Sword', 'Slash', 'D (52)', 'C (72)', NULL, NULL, NULL, 5, 118, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Magma Blade', 'Curved Sword', 'Slash', 'C (81)', 'D (55)', NULL, 'C (72)', NULL, 4, 96, 0, 62, 0, 0, 100, 'Magma Shower'),
    ('Flowing Curved Sword', 'Curved Sword', 'Slash', 'D (37)', 'C (82)', NULL, NULL, NULL, 3.5, 109, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Wing of Astel', 'Curved Sword', 'Slash', 'E (18)', 'C (81)', 'B (99)', NULL, NULL, 2.5, 65, 78, 0, 0, 0, 100, 'Nebula'),
    ('Scavenger Curved Sword', 'Curved Sword', 'Slash', 'C (60)', 'C (75)', NULL, NULL, NULL, 3.5, 105, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Eclipse Shotel', 'Curved Sword', 'Slash', 'D (36)', 'C (63)', NULL, 'C (81)', NULL, 3, 77, 0, 0, 0, 77, 100, 'Death Flare'),
    ('Serpent-God Curved Sword', 'Curved Sword', 'Slash', 'C (82)', 'D (30)', NULL, NULL, NULL, 4, 113, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Mantis Blade', 'Curved Sword', 'Slash', 'D (54)', 'C (72)', NULL, NULL, NULL, 4, 112, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Onyx Lord Greatsword', 'Curved Greatsword', 'Slash', 'B (90)', 'E (18)', 'B (90)', NULL, NULL, 11.5, 118, 76, 0, 0, 0, 100, 'Onyx Lords'' Repulsion'),
    ('Dismounter', 'Curved Greatsword', 'Slash', 'C (70)', 'D (55)', NULL, NULL, NULL, 10, 138, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Bloodhound Fang', 'Curved Greatsword', 'Slash', 'C (73)', 'B (108)', NULL, NULL, NULL, 11.5, 141, 0, 0, 0, 0, 100, 'Bloodhound Finesse'),
    ('Magma Wyrm Scalesword', 'Curved Greatsword', 'Slash', 'B (108)', 'D (45)', NULL, 'B (99)', NULL, 15, 114, 0, 74, 0, 0, 100, 'Magma Guillotine'),
    ('Zamor Curved Sword', 'Curved Greatsword', 'Slash', 'C (72)', 'B (90)', NULL, NULL, NULL, 9, 130, 0, 0, 0, 0, 100, 'Zamor Ice Storm'),
    ('Omen Cleaver', 'Curved Greatsword', 'Slash', 'C (66)', 'C (64)', NULL, NULL, NULL, 11.5, 142, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Monk Flameblade', 'Curved Greatsword', 'Slash', 'D (55)', 'C (78)', NULL, NULL, NULL, 9, 134, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Beastman Cleaver', 'Curved Greatsword', 'Slash', 'B (114)', NULL, NULL, NULL, NULL, 16.5, 143, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Morgott Cursed Sword', 'Curved Greatsword', 'Slash', 'D (27)', 'B (108)', NULL, NULL, 'D (54)', 7.5, 120, 0, 0, 0, 0, 110, 'Cursed-Blood Slice'),
    ('Putrescence Cleaver', 'Greataxe', 'Slash', 'C (81)', 'E (18)', NULL, NULL, 'C (63)', 13.5, 141, 42, 0, 0, 0, 100, 'Spinning Guillotine'),
    ('Freyja Greatsword', 'Curved Greatsword', 'Slash', 'B (90)', 'E (15)', NULL, NULL, NULL, 14, 146, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Horned Warrior Greatsword', 'Curved Greatsword', 'Slash', 'B (91)', 'D (45)', NULL, 'D (45)', NULL, 13, 130, 0, 0, 0, 0, 100, 'Horn Calling: Storm'),
    ('Uchigatana', 'Katana', 'Slash/Pierce', 'D (54)', 'C (82)', NULL, NULL, NULL, 5.5, 115, 0, 0, 0, 0, 100, 'Unsheathe'),
    ('Nagakiba', 'Katana', 'Slash/Pierce', 'D (40)', 'B (90)', NULL, NULL, NULL, 7, 115, 0, 0, 0, 0, 100, 'Unsheathe'),
    ('Hand of Malenia', 'Katana', 'Slash/Pierce', 'E (9)', 'B (135)', NULL, NULL, NULL, 7, 117, 0, 0, 0, 0, 100, 'Waterfowl Dance'),
    ('Meteoric Ore Blade', 'Katana', 'Slash/Pierce', 'C (81)', 'D (30)', 'C (64)', NULL, NULL, 7.5, 112, 72, 0, 0, 0, 100, 'Gravitas'),
    ('Rivers of Blood', 'Katana', 'Slash/Pierce', 'E (18)', 'B (90)', NULL, NULL, 'D (59)', 6.5, 76, 0, 76, 0, 0, 100, 'Corpse Piler'),
    ('Moonveil', 'Katana', 'Slash/Pierce', 'E (21)', 'B (90)', 'B (108)', NULL, NULL, 6.5, 73, 87, 0, 0, 0, 100, 'Transient Moonlight'),
    ('Dragonscale Blade', 'Katana', 'Slash/Pierce', 'D (54)', 'B (108)', NULL, NULL, NULL, 5.5, 110, 0, 0, 0, 0, 100, 'Ice Lightning Sword'),
    ('Serpentbone Blade', 'Katana', 'Slash/Pierce', 'E (15)', 'B (112)', NULL, NULL, NULL, 6, 120, 0, 0, 0, 0, 100, 'Double Slash'),
    ('Sword of Night', 'Katana', 'Slash/Pierce', 'B (113)', NULL, NULL, NULL, NULL, 6.5, 110, 33, 0, 0, 0, 100, 'Witching Hour Slash'),
    ('Twinblade', 'Twinblade', 'Standard/Pierce', 'D (52)', 'C (64)', NULL, NULL, NULL, 7, 119, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Godskin Peeler', 'Twinblade', 'Standard/Pierce', 'D (28)', 'B (90)', NULL, NULL, NULL, 8, 121, 0, 0, 0, 0, 100, 'Black Flame Tornado'),
    ('Twinned Knight Swords', 'Twinblade', 'Standard/Pierce', 'C (81)', 'D (36)', NULL, NULL, NULL, 8, 122, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Eleonora Poleblade', 'Twinblade', 'Standard/Pierce', 'E (18)', 'C (72)', NULL, NULL, 'D (54)', 6, 72, 0, 72, 0, 0, 100, 'Bloodblade Dance'),
    ('Gargoyle Twinblade', 'Twinblade', 'Standard/Pierce', 'B (99)', 'E (15)', NULL, NULL, NULL, 8.5, 123, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Gargoyle Black Blades', 'Twinblade', 'Standard/Pierce', 'B (118)', 'E (18)', NULL, 'D (45)', NULL, 8.5, 81, 0, 0, 0, 97, 100, 'Spinning Slash'),
    ('Bloodfiend Sacred Spear', 'Spear Heavy', 'Standard/Pierce', 'D (36)', 'E (7)', NULL, NULL, 8, 115, 0, 0, 0, 0, 100, 'Bloodfiends'' Bloodboon'),
    ('Mohgwyn Sacred Spear', 'Spear Heavy', 'Pierce', 'C (72)', 'D (27)', NULL, 'C (72)', 10, 96, 0, 62, 0, 0, 100, 'Bloodboon Ritual'),
    ('Siluria Tree', 'Spear Heavy', 'Pierce', 'B (104)', 'D (27)', NULL, 'C (81)', 10, 90, 0, 0, 0, 90, 100, 'Siluria Woe'),
    ('Serpent-Hunter', 'Spear Heavy', 'Pierce', 'A (171)', 'E (9)', NULL, NULL, 12, 111, 0, 0, 0, 0, 100, 'Great-Serpent Hunt'),
    ('Vyke War Spear', 'Spear Heavy', 'Pierce', 'D (36)', 'B (108)', NULL, 'C (72)', 8, 103, 0, 66, 0, 0, 100, 'Frenzyflame Thrust'),
    ('Lance', 'Spear Heavy', 'Pierce', 'C (75)', 'C (60)', NULL, NULL, 9, 123, 0, 0, 0, 0, 100, 'Charge Forth'),
    ('Treespear', 'Spear Heavy', 'Pierce', 'D (37)', 'C (66)', NULL, 'D (54)', 9.5, 122, 0, 0, 0, 79, 100, 'Sacred Order'),
    ('Spear of the Impaler', 'Spear Heavy', 'Standard/Pierce', 'E (9)', 'B (108)', NULL, 'C (72)', 9.5, 85, 0, 102, 0, 0, 100, 'Messmer Assault'),
    ('Messmer Soldier Spear', 'Spear Heavy', 'Standard/Pierce', 'C (70)', 'C (70)', NULL, NULL, 8.5, 122, 0, 0, 0, 0, 100, 'Impaling Thrust'),
    ('Barbed Staff-Spear', 'Spear Heavy', 'Standard/Pierce', 'D (27)', 'D (41)', NULL, 'A (144)', 7.5, 86, 0, 0, 0, 86, 100, 'Jori Inquisition'),
    ('Halberd', 'Halberd', 'Standard/Pierce', 'C (81)', 'D (57)', NULL, NULL, 8, 125, 0, 0, 0, 0, 100, 'Charge Forth'),
    ('Pest Glaive', 'Halberd', 'Slash/Pierce', 'D (54)', 'C (88)', NULL, NULL, 7, 120, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Lucerne', 'Halberd', 'Pierce', 'D (45)', 'B (90)', NULL, NULL, 7, 121, 0, 0, 0, 0, 100, 'Charge Forth'),
    ('Banished Knight Halberd', 'Halberd', 'Standard/Pierce', 'C (60)', 'C (78)', NULL, NULL, 8, 125, 0, 0, 0, 0, 100, 'Charge Forth'),
    ('Commanders Standard', 'Halberd', 'Standard/Pierce', 'B (99)', 'D (54)', NULL, NULL, 11.5, 138, 0, 0, 0, 0, 100, 'Rallying Standard'),
    ('Nightrider Glaive', 'Halberd', 'Slash/Pierce', 'B (118)', 'E (7)', NULL, NULL, 12, 129, 0, 0, 0, 0, 100, 'Spinning Slash'),
    ('Winged Scythe', 'Reaper', 'Slash', 'D (36)', 'C (63)', NULL, 'C (81)', 7.5, 87, 0, 0, 0, 104, 100, 'Angel Wings'),
    ('Great Club', 'Colossal Weapon', 'Strike', 'B (121)', NULL, NULL, 'D (36)', 17, 154, 0, 0, 0, 46, 100, 'Golden Land'),
    ('Carian Knight Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, 'D (54)', 4.5, 63, 40, 0, 0, 0, 100, 'No Skill'),
    ('Large Leather Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3, 75, 0, 0, 0, 0, 100, 'Parry'),
    ('Horse Crest Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3.5, 76, 0, 0, 0, 0, 100, 'No Skill'),
    ('Candletree Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3.5, 76, 0, 0, 0, 0, 100, 'Parry'),
    ('Flame Crest Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3.5, 76, 0, 0, 0, 0, 100, 'Parry'),
    ('Hawk Crest Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3.5, 76, 0, 0, 0, 0, 100, 'Parry'),
    ('Beast Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3.5, 77, 0, 0, 0, 0, 100, 'Parry'),
    ('Red Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3.5, 77, 0, 0, 0, 0, 100, 'Parry'),
    ('Blue Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3.5, 77, 0, 0, 0, 0, 100, 'Parry'),
    ('Eclipse Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3.5, 77, 0, 0, 0, 0, 100, 'No Skill'),
    ('Inverted Hawk Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3.5, 77, 0, 0, 0, 0, 100, 'Parry'),
    ('Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3.5, 77, 0, 0, 0, 0, 100, 'Parry'),
    ('Black Leather Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 3, 75, 0, 0, 0, 0, 100, 'No Skill'),
    ('Messmer Soldier Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 5, 80, 0, 0, 0, 0, 100, 'No Skill'),
    ('Wolf Crest Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 6, 82, 0, 0, 0, 0, 100, 'No Skill'),
    ('Serpent Crest Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, 6, 82, 0, 0, 0, 0, 100, 'No Skill'),
    ('Golden Lion Shield', 'Medium Shield', 'Strike', 'B (108)', NULL, NULL, NULL, 5.5, 81, 0, 0, 0, 0, 100, 'Roaring Bash'),
    ('Dragon Towershield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, 17.5, 115, 0, 0, 0, 0, 100, 'Shield Bash'),
    ('Distinguished Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, 17, 112, 0, 0, 0, 0, 100, 'No Skill'),
    ('Crucible Hornshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, 11.5, 123, 0, 0, 0, 0, 100, 'Shield Bash'),
    ('Dragonclaw Shield', 'Greatshield', 'Strike', 'C (72)', 'D (36)', NULL, NULL, 13.5, 99, 0, 0, 64, 0, 100, 'Shield Bash'),
    ('Briar Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, 9.5, 98, 0, 0, 0, 0, 100, 'Shield Bash'),
    ('Erdtree Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, 'D (54)', 13.5, 100, 0, 0, 0, 65, 100, 'Golden Retaliation'),
    ('Golden Beast Crest Shield', 'Greatshield', 'Strike', 'B (90)', 12.5, 104, 0, 0, 0, 0, 100, 'No Skill'),
    ('Jellyfish Shield', 'Greatshield', 'Strike', 'B (90)', 8, 103, 0, 0, 0, 0, 100, 'Contagious Fury'),
    ('Fingerprint Stone Shield', 'Greatshield', 'Strike', 'B (90)', 29, 139, 0, 0, 0, 0, 100, 'Shield Bash'),
    ('Icon Shield', 'Greatshield', 'Strike', 'B (90)', 11.5, 111, 0, 0, 0, 0, 100, 'No Skill'),
    ('One-Eyed Shield', 'Greatshield', 'Strike', 'B (90)', 20.5, 146, 0, 0, 0, 0, 100, 'Flame Spit'),
    ('Visage Shield', 'Greatshield', 'Strike', 'B (90)', 24, 155, 0, 0, 0, 0, 100, 'Tongues of Fire'),
    ('Spiked Palisade Shield', 'Greatshield', 'Strike', 'B (90)', 11.5, 116, 0, 0, 0, 0, 100, 'Shield Bash'),
    ('Manor Towershield', 'Greatshield', 'Strike', 'B (90)', 16, 111, 0, 0, 0, 0, 100, 'Shield Bash'),
    ('Crossed-Tree Towershield', 'Greatshield', 'Strike', 'B (90)', 16, 111, 0, 0, 0, 0, 100, 'Shield Bash'),
    ('Inverted Hawk Towershield', 'Greatshield', 'Strike', 'B (90)', 16, 111, 0, 0, 0, 0, 100, 'Shield Bash'),
    ('Ant Skull Plate', 'Greatshield', 'Strike', 'B (90)', 13.5, 114, 0, 0, 0, 0, 100, 'Shield Bash'),
    ('Redmane Greatshield', 'Greatshield', 'Strike', 'B (90)', 14, 108, 0, 0, 0, 0, 100, 'No Skill'),
    ('Eclipse Crest Greatshield', 'Greatshield', 'Strike', 'B (90)', 15, 110, 0, 0, 0, 0, 100, 'No Skill'),
    ('Cuckoo Greatshield', 'Greatshield', 'Strike', 'B (90)', 15, 110, 0, 0, 0, 0, 100, 'No Skill'),
    ('Golden Greatshield', 'Greatshield', 'Strike', 'B (90)', 17, 113, 0, 0, 0, 0, 100, 'No Skill'),
    ('Gilded Greatshield', 'Greatshield', 'Strike', 'B (90)', 17.5, 115, 0, 0, 0, 0, 100, 'No Skill'),
    ('Haligtree Crest Greatshield', 'Greatshield', 'Strike', 'B (90)', 18.5, 116, 0, 0, 0, 0, 100, 'No Skill'),
    ('Wooden Greatshield', 'Greatshield', 'Strike', 'B (90)', 8, 95, 0, 0, 0, 0, 100, 'No Skill'),
    ('Lordsworn Shield', 'Greatshield', 'Strike', 'B (90)', 10, 99, 0, 0, 0, 0, 100, 'Shield Bash'),
    ('Black Steel Greatshield', 'Greatshield', 'Strike', 'B (90)', 19.5, 119, 0, 0, 0, 0, 100, 'Shield Bash'),
    ('Verdigris Greatshield', 'Greatshield', 'Strike', 'B (90)', 28, 162, 0, 0, 0, 0, 100, 'Moore Charge'),
    ('Glintstone Staff', 'Glintstone Staff', 'Strike', 'D (36), S (255)', 3, 25, 0, 0, 0, 0, 100, 'No Skill'),
    ('Crystal Staff', 'Glintstone Staff', 'Strike', 'C (75), S (282)', 4.5, 31, 0, 0, 0, 0, 100, 'No Skill'),
    ('Gelmir Glintstone Staff', 'Glintstone Staff', 'Strike', 'D (36), B (120)', 2.5, 29, 0, 0, 0, 0, 100, 'No Skill'),
    ('Demi-Human Queen Staff', 'Glintstone Staff', 'Strike', 'C (75), S (225)', 3, 31, 0, 0, 0, 0, 100, 'No Skill'),
    ('Carian Regal Scepter', 'Glintstone Staff', 'Strike', 'D (36), D (30), S (288)', 3, 24, 0, 0, 0, 0, 100, 'Spinning Weapon');