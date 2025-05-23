
CREATE TABLE enseignants (
    id INT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    telephone VARCHAR(20)
);

CREATE TABLE niveaux (
    id INT PRIMARY KEY,
    libelle VARCHAR(10)
);

CREATE TABLE classes (
    id INT PRIMARY KEY,
    nom_classe VARCHAR(50),
    niveau_id INT,
    enseignant_id INT,
    jours VARCHAR(100),
    moment_journee VARCHAR(50),
    FOREIGN KEY (niveau_id) REFERENCES niveaux(id),
    FOREIGN KEY (enseignant_id) REFERENCES enseignants(id)
);

CREATE TABLE eleves (
    id INT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    date_naissance DATE,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES classes(id)
);

CREATE TABLE cours (
    id INT PRIMARY KEY,
    titre VARCHAR(100),
    description TEXT
);

INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (1, 'Dahmani', 'Jamila', '677237920');
INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (2, 'Josepha', 'Chaïma', '767727325');
INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (3, 'Benallal', 'Amina', '699908066');
INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (4, 'Na', 'Saliha', '775864093');
INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (5, 'Cozette', 'Lisa-Nour', '618314953');
INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (6, 'Dekhinet', 'Meriem', '659332503');
INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (7, 'Abdesselem', 'Samira', '749880453');
INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (8, 'Dahmani', 'Maroua', '656873698');
INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (9, 'El Marchik', 'Jamila', '658549836');
INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (10, 'Kanté', 'Rokia', '646892639');
INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (11, 'Benallal', 'Hafsa', '668811251');
INSERT INTO enseignants (id, nom, prenom, telephone) VALUES (12, 'Na', 'Nesrine', '659716568');
INSERT INTO niveaux (id, libelle) VALUES (1, 'A0');
INSERT INTO niveaux (id, libelle) VALUES (2, 'A1');
INSERT INTO niveaux (id, libelle) VALUES (3, 'A2');
INSERT INTO niveaux (id, libelle) VALUES (4, 'B1');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (1, 'A0-1', 1, 3,
'Mercredi', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (2, 'A0-2', 1, 2,
'Mercredi', 'Après-Midi');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (3, 'A0-3', 1, 2,
'Samedi', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (4, 'A0-4', 1, 2,
'Samedi', 'Après-Midi');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (5, 'A0-5', 1, 2,
'Dimanche', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (6, 'A0-6', 1, 2,
'Dimanche', 'Après-Midi');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (7, 'A0-7', 1, 1,
'Dimanche', 'Après-Midi');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (8, 'A0-8', 1, 7,
'Dimanche', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (9, 'A1-1', 2, 2,
'Mercredi', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (10, 'A1-2', 2, 4,
'Mercredi', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (11, 'A1-3', 2, 5,
'Samedi', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (12, 'A1-4', 2, 5,
'Samedi', 'Après-Midi');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (13, 'A1-5', 2, 5,
'Dimanche', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (14, 'A1-6', 2, 7,
'Samedi', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (15, 'A1-7', 2, 7,
'Dimanche', 'Après-Midi');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (16, 'A1-8', 2, 3,
'Dimanche', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (17, 'A2-1', 3, 6,
'Samedi', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (18, 'A2-2', 3, 7,
'Samedi', 'Après-Midi');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (19, 'A2-3', 3, 6,
'Dimanche', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (20, 'A2-4', 3, 8,
'Dimanche', 'Après-Midi');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (21, 'B1-1', 4, 4,
'Samedi', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (22, 'B1-2', 4, 3,
'Samedi', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (23, 'B1-3', 4, 3,
'Samedi', 'Après-Midi');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (24, 'B1-4', 4, 4,
'Samedi', 'Après-Midi');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (25, 'B1-5', 4, 8,
'Dimanche', 'Matin');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (26, 'B1-6', 4, 3,
'Dimanche', 'Après-Midi');
INSERT INTO classes (id, nom_classe, niveau_id, enseignant_id, jours, moment_journee)
VALUES (27, 'B1-7', 4, 9,
'Dimanche', 'Après-Midi');
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (1, 'Khaouad', 'Nima', '2017-09-17', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (2, 'Bah', 'Youri', '2018-07-16', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (3, 'Benmeriem', 'Kassim', '2017-02-23', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (4, 'Bruno', 'Imran', '2017-06-23', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (5, 'El Hamel', 'Nour-El-Houda', '2017-08-20', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (6, 'Faraj', 'Amira', '2016-10-17', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (7, 'Faraj', 'Yasmina', '2016-06-18', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (8, 'Florès', 'Neila', '2018-03-11', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (9, 'Idnaroun', 'Ayoub', '2017-01-21', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (10, 'Kibo', 'Rima', '2017-11-22', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (11, 'Kibo', 'Rihen', '2019-02-27', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (12, 'Lesbir', 'Waël', '2016-09-30', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (13, 'Maali', 'Ines', '2017-03-19', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (14, 'Mallem', 'Chahine Hassan', '2017-11-24', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (15, 'Menadi', 'Amine', '2014-12-18', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (16, 'Menadi', 'Amir', '2018-05-19', 1);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (17, 'Benayache', 'Hania', '2015-11-19', 10);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (18, 'Benmakhlouf', 'Hanna', '2015-07-01', 10);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (19, 'Benmeriem', 'Issam', '2014-04-29', 10);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (20, 'Camara', 'Issa', '2014-04-14', 10);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (21, 'El Bahjaoui', 'Imrane', '2015-01-05', 10);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (22, 'El hilali', 'Jad', '2017-03-17', 10);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (23, 'Haron', 'Nasiem', '2016-09-20', 10);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (24, 'Maoui', 'AdamRayane', '2015-03-04', 10);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (25, 'Chamaate', 'Sama', '2016-09-08', 10);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (26, 'Adda Benyoucef', 'Mohamed', '2016-11-10', 9);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (27, 'Adda Benyoucef', 'Islam', '2016-11-10', 9);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (28, 'khaouad', 'Zahra', '2017-09-17', 9);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (29, 'Benayache', 'Jessim', '2016-11-15', 9);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (30, 'Camara', 'Mikaïl', '2016-09-19', 9);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (31, 'El hilali', 'Rayan', '2016-02-19', 9);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (32, 'Flores', 'Ilyes', '2016-07-08', 9);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (33, 'Quemart', 'Sajim', '2016-09-07', 9);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (34, 'Maoui', 'Kamélia', '2016-08-03', 9);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (35, 'Meziani', 'Zakaria', '2017-04-01', 9);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (36, 'Meziani', 'Mohamed', '2015-07-16', 9);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (37, 'Akhdar', 'Rayan', '2018-10-02', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (38, 'Alzaki', 'Ajad', '2018-08-25', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (39, 'Bordès-Bounaaja', 'Naël', '2012-01-19', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (40, 'Bordès-Bounaaja', 'Noam', '2014-05-21', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (41, 'Chalak', 'Billal', '2016-08-17', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (42, 'El Moussi', 'Nesrine', '2019-01-03', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (43, 'Jamal', 'Mohamed Ali', '2018-05-11', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (44, 'Jamal', 'Maysan', '2017-10-26', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (45, 'Khamlichi', 'Sofia', '2015-09-11', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (46, 'Khamlichi', 'Ines', '2018-07-26', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (47, 'Mouhou', 'farah', '2016-12-02', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (48, 'Oulalit', 'Inaya', '2018-07-20', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (49, 'Samson', 'Salem', '2015-07-12', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (50, 'Shinwari', 'Rana', '2016-12-16', 2);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (51, 'Ain Seba', 'Safwane', '2018-11-26', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (52, 'Aouari', 'Ilyes', '2017-08-29', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (53, 'Arbia', 'Rayan', '2019-04-09', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (54, 'Chtitihi', 'Imran', '2018-09-02', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (55, 'Flinois', 'Naël', '2018-01-15', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (56, 'Gaceur', 'Mouhammed', '2018-11-07', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (57, 'Gesmer', 'Assla', '2018-08-09', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (58, 'Gribi', 'Nesrine', '2018-01-15', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (59, 'Habani', 'Isra', '2018-03-17', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (60, 'Habani', 'Yasmine', '2019-02-05', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (61, 'Hammou', 'Aliya', '2018-05-20', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (62, 'Ijanaten', 'Wassim', '2017-12-18', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (63, 'Meziab', 'Zakaria', '2015-08-25', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (64, 'Tabiga', 'Nissrine', '2017-02-08', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (65, 'Krimach', 'Sakina', '2018-12-14', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (66, 'Khiniteche', 'Dayen', '2018-06-13', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (67, 'Hachmi', 'Imran', '2017-04-16', 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (68, 'Ndiaye', 'Fatima', NULL, 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (69, 'Barrie', 'Fatima', NULL, 3);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (70, 'Agouram', 'Nawel', '2017-02-08', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (71, 'Arbia', 'Adel', '2023-09-14', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (72, 'Agourrame', 'Nassim', '2016-12-12', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (73, 'Bendmissi', 'Ilyes', '2017-10-30', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (74, 'Ijanaten', 'Fatim-Zahra', '2016-06-08', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (75, 'El Mizeb', 'Jana', '2017-02-07', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (76, 'Il Boudo', 'Myriam', '2017-04-12', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (77, 'Diouf', 'Asmaa', NULL, 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (78, 'Iloughmane', 'Neyla', '2017-04-23', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (79, 'Kimfoko', 'Karim', '2015-02-09', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (80, 'Djafar', 'Hafsa', '2017-08-29', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (81, 'Ain Seba', 'Fatima', '2016-09-05', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (82, 'Dahhaouy', 'Hafsa', '2016-12-03', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (83, 'Ouahman', 'Assya', '2017-12-28', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (84, 'Trichi', 'Nassim', '2014-10-07', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (85, 'Touimi', 'Roumayssaa', '2017-01-25', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (86, 'Tabiga', 'Ibtissam', '2013-12-08', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (87, 'Barrie', 'Jameela', '2011-08-25', 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (88, 'Barrie', 'Raihana', NULL, 11);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (89, 'Ain Seba', 'Fouazi Soulymane', '2017-02-03', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (90, 'Akdar', 'Salma', '2014-02-08', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (91, 'Akdar', 'Marwa', '2015-05-12', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (92, 'Akdar', 'Hafsa', '2011-05-16', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (93, 'Ben Dhaou', 'Wassim', '2015-02-15', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (94, 'Berraho', 'Zayane', '2011-01-02', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (95, 'Dahhaouy', 'Mohamed Zyad', '2014-01-14', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (96, 'Gesmier', 'Ayoub', '2016-04-23', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (97, 'Gesmier', 'Haroun', '2014-04-28', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (98, 'Hanyn ', 'Nahim', '2014-08-10', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (99, 'Lopés', 'Ilyés', '2016-03-09', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (100, 'Hanyn', 'Dounia', '2011-08-22', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (101, 'Miled', 'Hamouda', '2011-08-19', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (102, 'Jameela', 'Bab-Condé', '2011-08-25', 14);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (103, 'Boukhemis', 'souleimane', '2016-10-06', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (104, 'Agourram', 'Ilyess', '2015-11-24', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (105, 'Ain Seba', 'Ayoub', '2016-09-26', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (106, 'Amti', 'Malika', '2013-06-10', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (107, 'Boufenchouch', 'Maya', NULL, 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (108, 'Cabel', 'Maya', '2015-04-21', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (109, 'Diagana', 'Osmane', '2016-11-16', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (110, 'El Bahri', 'Hanaa', '2014-10-01', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (111, 'El Mizeb', 'Lina', '2013-06-25', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (112, 'Habbani', 'Kamilia', '2016-08-07', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (113, 'Habbani', 'Assinate', '2015-09-22', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (114, 'Hebjaoui', 'Mohamed', '2013-08-22', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (115, 'Karbid', 'Youness', '2013-09-27', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (116, 'Khidous', 'Soumayya', '2015-11-13', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (117, 'Lopes', 'Réda', '2011-08-17', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (118, 'Salim', 'Imane', '2015-12-04', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (119, 'Trichi', 'Salma', '2013-03-28', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (120, 'Amti', 'Amal', '2014-09-23', 17);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (121, 'Ait bari', 'Oumayma', NULL, 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (122, 'Ait-Bari', 'Nesma', '2014-12-22', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (123, 'Akdar', 'Hafsa', NULL, 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (124, 'Chikhi', 'Shams', '2013-06-08', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (125, 'Draoui', 'Diaa', '2012-03-28', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (126, 'Elkahlaoui', 'Sana', '2014-11-16', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (127, 'Ijanten', 'Amina', '2014-06-19', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (128, 'Ilboudo', 'Fati', '2013-09-16', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (129, 'Karbid', 'Ali', '2010-03-11', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (130, 'Khidous', 'Selma', '2011-06-17', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (131, 'Labzae', 'Selma', '2015-03-02', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (132, 'Lmaqami', 'Sarah', '2014-12-26', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (133, 'Lmouallem', 'Tasnime', '2014-07-08', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (134, 'Maailikoum', 'Inaya', '2011-12-27', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (135, 'Osman Ilme', 'Nastecho', '2015-08-25', 21);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (136, 'Ain Seba', 'Asma', '2012-08-08', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (137, 'Ainseba', 'Lina Mariam', NULL, 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (138, 'Akdar', 'Mayssa', '2009-11-24', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (139, 'Akdar', 'Hajar', '2007-12-01', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (140, 'Amti', 'Adil', '2010-04-24', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (141, 'Chenane', 'Malak', '2007-08-07', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (142, 'Diagana', 'Bacary', '2010-09-22', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (143, 'Diagana', 'Oumar', '2011-11-29', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (144, 'Diagana', 'Daouda', '2009-01-20', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (145, 'El Hazel', 'Nadia', '2012-02-28', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (146, 'Elkahlaoui', 'Lina', '2013-01-29', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (147, 'Labzae', 'Sara', '2014-01-01', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (148, 'Labzae', 'Manal', '2011-01-19', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (149, 'Lamqami', 'Nadir', '2011-07-11', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (150, 'Medjdoub', 'Malak', '2008-12-14', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (151, 'Ounoughi', 'Meryem', '2014-04-20', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (152, 'Salami', 'Ihssane', '2011-06-25', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (153, 'Salim', 'Sanaa', '2011-05-31', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (154, 'Abdelallaoui', 'Hichem', NULL, 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (155, 'Thabouti', 'Abderrahmane', '2015-10-23', 22);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (156, 'Es-Sahhal', 'Wassim', NULL, 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (157, 'Fanidki', 'Nassim', '2018-12-27', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (158, 'Hedna', 'Adam', '2018-05-29', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (159, 'Jemal', 'Hawi', '2017-04-24', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (160, 'Mehental', 'Nassim', '2012-07-14', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (161, 'Mehental', 'Asma', '2015-07-21', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (162, 'Keita', 'Aicha', '2018-09-21', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (163, 'Osah', 'Mohammed', '2018-09-17', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (164, 'Oumaï', 'Ilyes', '2018-09-30', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (165, 'Saoud', 'Zakaria', NULL, 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (166, 'Smida', 'Fatima', '2014-11-14', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (167, 'Smida', 'Khadija', '2014-11-25', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (168, 'Tahrioui', 'Malek', '2016-09-11', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (169, 'Youceff', 'Adem', '2018-10-19', 4);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (170, 'Bounoir', 'Loujaïna', '2013-07-26', 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (171, 'Chettoub', 'Yacine', '2016-06-14', 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (172, 'Dahmane', 'Nourhane', NULL, 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (173, 'Diallo', 'Assia', '2016-11-23', 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (174, 'Diallo', 'Idrissa', '2013-05-17', 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (175, 'Thabouti', 'khadija', '2017-07-23', 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (176, 'Mediouni', 'Dounia', '2014-10-11', 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (177, 'Mellal', 'Norane', '2014-01-25', 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (178, 'Miled', 'Yassine', '2015-02-12', 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (179, 'Mouhsen', 'Dany', '2016-07-04', 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (180, 'Tula', 'Djemal', '2016-03-15', 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (181, 'Youcef Fellouh', 'Laila', '2017-09-24', 12);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (182, 'Blaacha', 'Jinane', NULL, 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (183, 'Almchachti', 'Ibrahim', '2014-04-13', 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (184, 'Smida', 'Amine', NULL, 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (185, 'Aitbout', 'Lina', '2014-07-05', 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (186, 'Chettouh', 'Chaima', '2011-12-14', 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (187, 'Chenane', 'Nesreddine', '2014-10-25', 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (188, 'Chegdali', 'Yasser', '2014-10-12', 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (189, 'Khodja', 'Adam', '2016-10-19', 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (190, 'El Houari', 'Bilel', '2015-09-04', 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (191, 'Medjdoub', 'Rayan', '2011-10-05', 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (192, 'Birouk', 'Najma', '2013-05-16', 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (193, 'Hamdoun', 'Serin Fatma', '2014-11-14', 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (194, 'Fall Diouf', 'Ibrahima', '2016-05-30', 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (195, 'Thabouti', 'Khadija', NULL, 18);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (196, 'Benmakhlouf', 'Omar', '2010-10-03', 23);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (197, 'Khodja', 'Mohamed Fadi', '2010-11-15', 23);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (198, 'Khodja', 'Darine', '2013-05-11', 23);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (199, 'Mellal', 'Nadine', '2004-11-18', 23);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (200, 'Mellal', 'Lena', '2008-09-03', 23);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (201, 'Mellal', 'Johana', '2009-08-24', 23);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (202, 'Soffi', 'Adam', '2017-04-03', 23);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (203, 'Ssou', 'Adam', '2014-11-08', 23);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (204, 'Ssou', 'Aya', '2011-10-14', 23);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (205, 'Hoblos ', 'Rayane', '2015-05-29', 23);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (206, 'Blaacha', 'Tasnime', '2013-08-04', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (207, 'Blaacha', 'Salsabile', '2009-05-04', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (208, 'El Houari', 'Jawad', '2012-09-03', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (209, 'El Houari', 'Walid', '2009-12-04', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (210, 'Fall Diouf', 'Khadija', '2013-03-25', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (211, 'Fall Diouf', 'Aminata', '2010-05-17', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (212, 'Hamdoun', 'Farah', '2009-01-05', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (213, 'Hoblos', 'Sarah', '2012-04-30', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (214, 'Mouhsen', 'Hany', '2012-03-16', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (215, 'Reggani', 'fadwa', '2005-05-06', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (216, 'Reggani', 'Maissa', '2008-08-04', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (217, 'Soffi', 'Yasmine', '2009-05-19', 24);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (218, 'Abderahman', 'Abdallah', '2018-12-14', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (219, 'Ayadi', 'Sofia', '2017-11-03', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (220, 'Belarbi', 'Kamilia', '2018-09-13', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (221, 'Bey', 'Assia', '2018-07-05', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (222, 'Boukezoula', 'Iyed', '2016-09-21', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (223, 'Chegdali', 'Neila', '2018-03-28', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (224, 'Dahbi', 'Safiya', '2017-09-14', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (225, 'Diakhite', 'Aicha', '2016-07-17', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (226, 'El jaouhari', 'Youssef', '2015-08-22', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (227, 'El omari', 'Maissane', '2018-11-17', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (228, 'N''Diaye', 'Dahirou', '2018-10-07', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (229, 'Oukdim', 'Nehlia', '2017-10-04', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (230, 'Oulachir', 'Lamia', '2018-10-27', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (231, 'Ragoubi', 'Rayan', '2016-12-21', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (232, 'Saïdi', 'said', NULL, 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (233, 'Tall', 'Ibrahim', '2017-03-26', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (234, 'Viau', 'Sofiya', '2018-10-29', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (235, 'Zemmouri', 'Leila', '2018-04-03', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (236, 'El jaouhari', 'Zakarya', '2018-04-05', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (237, 'Barech ', 'Basmala', '2018-12-29', 5);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (238, 'Aïchi', 'Riteg', '2015-04-20', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (239, 'Ayadi', 'Imran', '2016-07-29', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (240, 'Berrayah', 'Imran', '2011-02-01', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (241, 'Dekhinet', 'Imane', '2014-11-21', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (242, 'Diakhite', 'Safiya', '2013-03-07', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (243, 'Diakhite', 'Idrissa', '2009-12-24', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (244, 'El Omari', 'Noam', '2015-08-04', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (245, 'Kaaoichi', 'Riyad', NULL, 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (246, 'Medjahed', 'Inès', NULL, 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (247, 'N''Diaye', 'Fatimata', '2008-07-06', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (248, 'N''Diaye', 'Abderrahmane', '2010-06-06', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (249, 'Oukdim', 'Ayen', '2012-08-08', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (250, 'Oukdim', 'Seïna', '2018-09-07', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (251, 'Ourarhi', 'Youssef', '2015-01-22', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (252, 'Taleb', 'Mohamed-Gihod', '2012-06-07', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (253, 'Tarifit', 'Fatima', '2013-02-13', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (254, 'Tarifit', 'Imrane', '2014-10-10', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (255, 'Medghoil', 'Sirine', '2027-10-29', 8);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (256, 'Ahmed Manis', 'Mustafa', '2017-08-14', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (257, 'Bendjama', 'Yahia', '2017-01-11', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (258, 'Chmourk', 'Riyad', '2014-09-28', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (259, 'Essouabeny', 'Adam', '2017-08-10', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (260, 'Limeme', 'Emna', '2016-10-15', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (261, 'Narour', 'Amina', '2015-07-06', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (262, 'Oulachir', 'Youssef', '2014-09-28', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (263, 'Oulachir', 'Sofiane', '2013-07-30', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (264, 'Rakraki', 'Younes', NULL, 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (265, 'Rakraki', 'Marwa', NULL, 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (266, 'Savane', 'Daouda', '2015-12-12', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (267, 'tabibi ', 'Sofiane', NULL, 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (268, 'Viau', 'Ziane', '2015-12-13', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (269, 'Yonli', 'Imrane', '2017-10-25', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (270, 'Zemmouri', 'Ritej', '2016-08-02', 13);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (271, 'Ahmed Manis', 'Manara', '2015-05-07', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (272, 'Barhdadi', 'Ihabe', '2015-05-21', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (273, 'Bekhti', 'Lina', '2015-09-20', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (274, 'Belarbi', 'Abdelghani', '2016-01-09', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (275, 'Bey', 'Oumnia', '2015-12-08', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (276, 'Chaar', 'Aya', '2016-12-20', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (277, 'Haddou', 'Asmaa', '2016-08-16', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (278, 'Harabech', 'Mayar', '2015-10-05', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (279, 'Id Ghaira', 'Nassim', '2014-06-03', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (280, 'Kalda', 'Safaa', '2014-01-21', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (281, 'Khidous', 'Mohamed', '2012-09-27', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (282, 'Latreche', 'Youssef', '2016-07-05', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (283, 'Maghri', 'Adam', '2007-05-04', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (284, 'Maghri', 'Hamza', '2010-01-31', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (285, 'Medjahed', 'Sondos', '2015-02-14', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (286, 'Ourarhi', 'Marwa', '2012-11-12', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (287, 'Saidi', 'Mohamed Amine', '2015-03-14', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (288, 'Zemmouri', 'Hadjer', '2011-11-23', 16);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (289, 'Ben slimane', 'Khaled', '2014-06-22', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (290, 'Bhutto Dahas', 'Mounia', '2011-12-05', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (291, 'Chaar', 'Wafa', '2013-09-14', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (292, 'Dahbi', 'Salman', '2015-09-14', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (293, 'Dia', 'Malick', '2013-12-09', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (294, 'El Marrakchi', 'Taha', '2012-08-21', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (295, 'Kalda', 'Amir', '2012-09-29', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (296, 'Maghri', 'Malak', '2014-01-25', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (297, 'Nourdine', 'Elyssia', '2012-05-08', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (298, 'Ouchen', 'Ines', '2015-07-15', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (299, 'Sahouane', 'Mériem', '2016-12-25', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (300, 'Sahouane', 'Ahmed', '2015-03-27', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (301, 'Savane', 'Ousmane', '2013-08-29', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (302, 'Tabibi', 'Ahmed', '2014-01-24', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (303, 'Viau', 'Yanis', '2013-04-03', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (304, 'Khidous', 'Ishaq', '2015-10-31', 19);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (305, 'Achichi', 'Mohamed', '2015-12-21', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (306, 'Barech', 'Mayssara', NULL, 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (307, 'Chaar', 'Sofiane', '2011-10-31', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (308, 'Chmourk', 'Aya', '2009-01-04', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (309, 'Harabech', 'Mayssa', '2012-05-14', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (310, 'Yonli', 'Leïla', '2010-07-25', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (311, 'Zemmouri', 'Ranya', '2009-10-18', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (312, 'Abdarahman', 'Mustafa', '2014-01-26', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (313, 'Ahmed Manis', 'Mohamed', '2011-02-12', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (314, 'Bey', 'Sajid', '2013-03-08', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (315, 'Chmourk', 'Saifallah', '2010-02-11', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (316, 'Dekhinet', 'Yanis', '2011-01-02', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (317, 'Essouabeny', 'Abdellah', '2014-02-13', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (318, 'Haddou', 'Soukayna', '2012-09-20', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (319, 'Oulachir', 'Jihane', '2010-04-25', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (320, 'Reggani', 'Nacim', '2012-04-26', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (321, 'Ribani', 'Marwane', '2011-04-28', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (322, 'Saïdi', 'Hajar', '2012-11-06', 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (323, 'Zerouali', 'Maissa', NULL, 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (324, 'Zerouali', 'Zeyneb', NULL, 25);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (325, 'Aaddi', 'Amel', '2018-01-24', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (326, 'Aabika', 'Yazan', '2017-06-11', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (327, 'Abed', 'Zakaria', '2014-08-08', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (328, 'Ahdaoui', 'Ramy', '2018-12-10', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (329, 'Babou', 'Bilal', '2014-02-06', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (330, 'Barrie', 'Fatimah', '2017-12-01', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (331, 'Barrie', 'Jamila', NULL, 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (332, 'Barrie', 'Raïhana', '2015-01-01', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (333, 'Ben Dahou', 'Islam', '2018-10-22', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (334, 'Boukhatem', 'Karima', '2017-06-06', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (335, 'Chambry', 'Selim', '2019-09-20', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (336, 'Daouar', 'Adem', '2017-04-18', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (337, 'El Atia', 'Youssef', NULL, 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (338, 'Fofana', 'Ibrahim', '2013-12-22', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (339, 'Hadi', 'Nabil', NULL, 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (340, 'Mahmoudi', 'Osman', NULL, 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (341, 'Najjar', 'Amir', '2017-10-28', 6);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (342, 'Arbi', 'Nouriya', '2017-08-31', 7);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (343, 'Chambry', 'Shahine', '2019-09-12', 7);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (344, 'Drahmoun', 'Jad', '2014-04-20', 7);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (345, 'Drahmoun', 'Rinad', '2017-01-30', 7);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (346, 'Duval', 'Anes', '2013-12-05', 7);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (347, 'Fofana', 'Salim', '2009-12-17', 7);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (348, 'Gouijjane', 'Wassim', '2019-04-25', 7);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (349, 'Islam', 'Habib', '2015-07-09', 7);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (350, 'Mohammaji', 'Mubadnir', NULL, 7);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (351, 'Mohammaji', 'Mehnagha', '2014-11-26', 7);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (352, 'Abdall Mohamad', 'Ahmed', '2015-03-04', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (353, 'Abdall Mohamad', 'Amal', NULL, 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (354, 'Bankouch', 'Shemseddine', '2014-11-26', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (355, 'Bankouch', 'Emna', '2017-01-15', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (356, 'Bankouch', 'Abdeljalil', '2013-01-20', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (357, 'Bcha', 'Lehna', '2017-08-04', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (358, 'Ben Dhaou', 'Intissan', NULL, 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (359, 'Chauvel', 'Shérine', '2015-04-24', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (360, 'Crestey Smaili', 'Anas', NULL, 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (361, 'Crestey Smaili', 'Adam', '2015-08-03', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (362, 'Dufresne', 'Ismaël', '2016-10-25', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (363, 'Filil', 'Aya', NULL, 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (364, 'Gharbi', 'Zaina', '2015-07-18', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (365, 'Graibis', 'Yassine', '2015-09-02', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (366, 'Idoumghar', 'Jad', '2017-10-01', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (367, 'Smairy', 'Anwar', '2014-08-05', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (368, 'Smairy', 'Zahra', '2016-04-15', 15);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (369, 'Aaddi', 'Aya', NULL, 20);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (370, 'bacha', 'nassim', '2016-03-02', 20);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (371, 'Chauvel', 'Adam', '2009-02-17', 20);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (372, 'Dufresne', 'Elias', '2015-07-12', 20);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (373, 'El Bonne', 'Ilyess', '2012-12-11', 20);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (374, 'Filil', 'Reda', '2015-06-25', 20);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (375, 'Gourchi', 'Ikrame', '2015-01-18', 20);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (376, 'Ijiuiy', 'Yassine', '2014-05-25', 20);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (377, 'Jerbi', 'Hamza', '2016-12-29', 20);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (378, 'Keïta', 'Mikkaïl', '2014-05-14', 20);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (379, 'Smat', 'Soujoud', '2016-11-10', 20);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (380, 'Ahdaoui', 'Lina', '2015-01-04', 26);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (381, 'Bacha', 'Aliya', '2014-04-08', 26);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (382, 'Duval', 'Youssef', '2013-11-21', 26);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (383, 'El atia', 'Mohamed Amine', '2015-04-27', 26);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (384, 'Gourchi', 'Wassila', NULL, 26);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (385, 'Hadi', 'Soulaymane', '2014-04-14', 26);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (386, 'Idoumghar', 'Sara', '2014-12-30', 26);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (387, 'Kanté', 'Marie', '2007-11-30', 26);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (388, 'Mahmud Mohamed', ' Yassin', '2016-10-13', 26);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (389, 'Aaddi', 'Rayan', '2012-09-23', 27);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (390, 'Ahdaoui', 'Sara', '2011-09-05', 27);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (391, 'Duval', 'Idriss', '2013-06-20', 27);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (392, 'Kanté', 'Yasmina', '2012-09-16', 27);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (393, 'Messad', 'Zakaria', '2010-07-17', 27);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (394, 'Bouharba', 'Nibras', '2014-11-15', 27);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (395, 'Gourchi', 'Salsabile', NULL, 27);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (396, 'Mahani', 'Ryad', NULL, 27);
INSERT INTO eleves (id, nom, prenom, date_naissance, classe_id)
VALUES (397, 'Mahani', 'Lakhadar', NULL, 27);
INSERT INTO cours (id, titre, description)
VALUES (1, 'Quran', 'Tajwid, Mémorisation, Explication');
INSERT INTO cours (id, titre, description)
VALUES (2, 'Langue Arabe', 'Compréhension orale et écrite, Expression orale et écrite');
INSERT INTO cours (id, titre, description)
VALUES (3, 'Education Islamique', 'Tawhid, Aquidah, Biographie du Prophète sws, Histoires des Prophètes, Comportement du musulman');