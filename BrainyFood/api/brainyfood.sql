-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 02 mars 2021 à 03:48
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `brainyfood`
--

-- --------------------------------------------------------

--
-- Structure de la table `bienetre`
--

CREATE TABLE `bienetre` (
  `id_b` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `motivation` varchar(100) DEFAULT NULL,
  `souffrez_pathologies` varchar(100) DEFAULT NULL,
  `fumer_reg` varchar(100) NOT NULL,
  `arret_fumer` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `taille` varchar(100) NOT NULL,
  `poids` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bodycheck`
--

CREATE TABLE `bodycheck` (
  `id_q` int(11) NOT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `info_perso` varchar(10) DEFAULT NULL,
  `alimentation1` varchar(150) DEFAULT NULL,
  `alimentation2` varchar(150) DEFAULT NULL,
  `budget_alimen` varchar(150) DEFAULT NULL,
  `consom_feculent` varchar(150) DEFAULT NULL,
  `consom_legume` varchar(150) DEFAULT NULL,
  `consom_fruit` varchar(150) DEFAULT NULL,
  `consom_viande` varchar(150) DEFAULT NULL,
  `consom_laitiers` varchar(150) DEFAULT NULL,
  `consom_prod_gras` varchar(150) DEFAULT NULL,
  `consom_prod_sucre` varchar(150) DEFAULT NULL,
  `consom_alcool` varchar(150) DEFAULT NULL,
  `vous_grignotez` varchar(150) DEFAULT NULL,
  `saute_repas` varchar(150) DEFAULT NULL,
  `oui_lequel` varchar(150) DEFAULT NULL,
  `activite_jour` varchar(150) DEFAULT NULL,
  `heure_sport` varchar(150) DEFAULT NULL,
  `travaill_horraire_decale` varchar(150) DEFAULT NULL,
  `probleme_de` varchar(150) DEFAULT NULL,
  `objectif` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bodycheck`
--

INSERT INTO `bodycheck` (`id_q`, `email_user`, `info_perso`, `alimentation1`, `alimentation2`, `budget_alimen`, `consom_feculent`, `consom_legume`, `consom_fruit`, `consom_viande`, `consom_laitiers`, `consom_prod_gras`, `consom_prod_sucre`, `consom_alcool`, `vous_grignotez`, `saute_repas`, `oui_lequel`, `activite_jour`, `heure_sport`, `travaill_horraire_decale`, `probleme_de`, `objectif`) VALUES
(6, 'jawher.zairi@sesame.com.tn', 'HOMME', 'J’aime cuisiner', 'Variée', 'Entre 30 et 50 euros', 'Plus de 3 portions par jour', 'Plus de 3 portions par jour', '2 à 3 portions par jour', 'Plus de 3 portions par jour', '2 à 3 portions par jour', 'Plusieurs fois par jour', 'Tous les jours', 'Plusieurs verres par jour', 'OUI', 'SOUVENT', 'DEJEUNER', 'Domestique (ménage, repassage, entretien de la maison ...)', 'de  1 à 2h', 'OUI', 'Sommeil Fatigue', 'Minceur'),
(8, 'djo199529@gmail.com', 'HOMME', 'J’aime cuisiner', 'Trop riche', 'Entre 30 et 50 euros', 'Plus de 3 portions par jour', 'Plus de 3 portions par jour', 'Plus de 3 portions par jour', '2 à 3 portions par jour', '2 à 3 portions par jour', 'Plusieurs fois par jour', 'Tous les jours', '1 verre par jour', 'OUI', 'SOUVENT', 'DEJEUNER', 'Domestique (ménage, repassage, entretien de la maison ...)', 'de  1 à 2h', 'OUI', 'Circulation', 'Sport');

-- --------------------------------------------------------

--
-- Structure de la table `checkout`
--

CREATE TABLE `checkout` (
  `id_checkout` int(11) NOT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `create_at` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `checkout`
--

INSERT INTO `checkout` (`id_checkout`, `email_user`, `create_at`) VALUES
(14, 'test@test.fr', '25/06/2222'),
(15, 'test@test.fr', '25/06/2222'),
(16, 'test@test.fr', '25/06/2222'),
(17, 'test@test.fr', '25/06/2222'),
(18, 'test@test.fr', '25/06/2222'),
(19, 'test@test.fr', '25/06/2222'),
(20, 'test@test.fr', '25/06/2222'),
(21, 'test@test.fr', '25/06/2222'),
(22, 'test@test.fr', '25/06/2222'),
(23, 'jawher@yopmail.com', '25/06/2222'),
(24, 'jawher@yopmail.com', '25/06/2222'),
(25, 'jawher@yopmail.com', '25/06/2222'),
(26, 'jawher@yopmail.com', '25/06/2222'),
(27, 'jawher@yopmail.com', '25/06/2222'),
(28, 'jawher@yopmail.com', '25/06/2222'),
(29, 'jawher@yopmail.com', '25/06/2222'),
(30, 'jawher@yopmail.com', '25/06/2222'),
(31, 'jawher@yopmail.com', '25/06/2222'),
(32, 'jawher@yopmail.com', '25/06/2222'),
(33, 'jawher@yopmail.com', '25/06/2222'),
(34, 'jawher@yopmail.com', '25/06/2222'),
(35, 'jawher@yopmail.com', '25/06/2222'),
(36, 'jawher@yopmail.com', '25/06/2222'),
(37, 'jawher@yopmail.com', '25/06/2222'),
(38, 'jawher@yopmail.com', '25/06/2222'),
(39, 'jawher@yopmail.com', '25/06/2222'),
(40, 'jawher@yopmail.com', '25/06/2222'),
(41, 'jawher@yopmail.com', '25/06/2222'),
(42, 'jawher@yopmail.com', '25/06/2222');

-- --------------------------------------------------------

--
-- Structure de la table `miniceur`
--

CREATE TABLE `miniceur` (
  `id_m` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `poids_souhaite` varchar(100) DEFAULT NULL,
  `ou_surpoids` varchar(100) DEFAULT NULL,
  `cause_surpoids` varchar(100) DEFAULT NULL,
  `souffrez_pathologies` varchar(100) DEFAULT NULL,
  `fumer_reg` varchar(100) DEFAULT NULL,
  `arret_fumer` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `taille` varchar(100) DEFAULT NULL,
  `poids` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `miniceur`
--

INSERT INTO `miniceur` (`id_m`, `question_id`, `poids_souhaite`, `ou_surpoids`, `cause_surpoids`, `souffrez_pathologies`, `fumer_reg`, `arret_fumer`, `age`, `taille`, `poids`) VALUES
(15, 6, '70', 'Hanches et fesses', 'Mauvaises Habitudes', 'troubles alimentaires', 'OUI', 'OUI', '25', '175', '93');

-- --------------------------------------------------------

--
-- Structure de la table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `file` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `newsletters`
--

INSERT INTO `newsletters` (`id`, `name`, `file`, `image`) VALUES
(3, 'test newsletter', '5215af6bbf6d0acbec59cc8e14d929a0.html', 'http://localhost:3001/api/getImageNewsletter/116f86f8e3593767b51d4f7a95a695c3.png');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `num_nom_rue` varchar(150) DEFAULT NULL,
  `societe` varchar(150) DEFAULT NULL,
  `code_postal` int(6) DEFAULT NULL,
  `ville` varchar(100) DEFAULT NULL,
  `pays` varchar(100) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `parrainage` varchar(10) DEFAULT NULL,
  `capteurs` varchar(10) DEFAULT NULL,
  `bodycheck` varchar(10) DEFAULT NULL,
  `ayurecheck` varchar(10) DEFAULT NULL,
  `access_token_google` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id_user`, `nom`, `prenom`, `email`, `num_nom_rue`, `societe`, `code_postal`, `ville`, `pays`, `telephone`, `parrainage`, `capteurs`, `bodycheck`, `ayurecheck`, `access_token_google`) VALUES
(2, 'zairi', 'jawher', 'jawher.zairi@sesame.com.tn', '24 rue essef', '', 8020, 'nabeul', 'france', '55951916', 'true', 'false', 'true', 'false', 'ya29.a0AfH6SMBpgkEVEMd2SrdVH2nBmKQPWndNpyNc4ctynxqxxldzBW8tkDfShDPlc30wD10VgPJZcklWUp01Wh1P3LSKoN0ZMCyZZmSDbV_hilKieU25--EKRDAmHcKptBHyYEQ--yXufFpJdLnlR0KPN_bXgH1RABfA2CEpGAlP91Y'),
(5, 'babba', 'amine', 'djo199529@gmail.com', '24 rue medina', 'majordome', 4444, 'ben arous', 'france', '55852654', 'true', 'false', 'true', 'false', NULL),
(6, 'zairi', 'jawher', 'jawher@yopmail.com', 'tunis', 'majorsante', 8020, 'tunis', 'tunisie', '6425114565', 'false', 'false', 'false', 'false', NULL),
(7, 'ZAIRI', 'JAWHER', 'slimmachat@test.com', '1', 'etape 2 ', 8020, 'Nabeul', 'france', '0602044631', 'false', 'false', 'false', 'false', 'null'),
(8, 'ZAIRI', 'JAWHER', 'ahla@ahla.com', '1', 'test etape 1 ', 8020, 'Nabeul', 'france', '0602044631', 'false', 'false', 'false', 'false', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `prodcheckout`
--

CREATE TABLE `prodcheckout` (
  `id` int(11) NOT NULL,
  `nomProd` varchar(100) DEFAULT NULL,
  `descriptionProd` text DEFAULT NULL,
  `prix` varchar(8) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `id_checkout` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `prodcheckout`
--

INSERT INTO `prodcheckout` (`id`, `nomProd`, `descriptionProd`, `prix`, `image`, `id_checkout`) VALUES
(6, 'Mac book pro', 'Un laptop de très haute gamme équipé d\'un processeur Intel i7 10éme génération', '1200', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 14),
(7, 'Mac air 2020', 'Un laptop de très haute gamme équipé d\'un processeur Intel i5 8éme génération + 16g Ram', '980.5', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 14),
(8, 'Mac book pro', 'Un laptop de très haute gamme équipé d\'un processeur Intel i7 10éme génération', '1200', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 15),
(9, 'Mac air 2020', 'Un laptop de très haute gamme équipé d\'un processeur Intel i5 8éme génération + 16g Ram', '980.5', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 15),
(10, 'Mac book pro', 'Un laptop de très haute gamme équipé d\'un processeur Intel i7 10éme génération', '1200', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 16),
(11, 'Mac air 2020', 'Un laptop de très haute gamme équipé d\'un processeur Intel i5 8éme génération + 16g Ram', '980.5', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 16),
(12, 'Mac book pro', 'Un laptop de très haute gamme équipé d\'un processeur Intel i7 10éme génération', '1200', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 17),
(13, 'Mac air 2020', 'Un laptop de très haute gamme équipé d\'un processeur Intel i5 8éme génération + 16g Ram', '980.5', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 17),
(14, 'Mac book pro', 'Un laptop de très haute gamme équipé d\'un processeur Intel i7 10éme génération', '1200', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 18),
(15, 'Mac air 2020', 'Un laptop de très haute gamme équipé d\'un processeur Intel i5 8éme génération + 16g Ram', '980.5', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 18),
(16, 'Mac book pro', 'Un laptop de très haute gamme équipé d\'un processeur Intel i7 10éme génération', '1200', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 19),
(17, 'Mac air 2020', 'Un laptop de très haute gamme équipé d\'un processeur Intel i5 8éme génération + 16g Ram', '980.5', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 19),
(18, 'Mac book pro', 'Un laptop de très haute gamme équipé d\'un processeur Intel i7 10éme génération', '1200', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 20),
(19, 'Mac air 2020', 'Un laptop de très haute gamme équipé d\'un processeur Intel i5 8éme génération + 16g Ram', '980.5', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 20),
(20, 'Mac book pro', 'Un laptop de très haute gamme équipé d\'un processeur Intel i7 10éme génération', '1200', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 21),
(21, 'Mac air 2020', 'Un laptop de très haute gamme équipé d\'un processeur Intel i5 8éme génération + 16g Ram', '980.5', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 21),
(22, 'Mac book pro', 'Un laptop de très haute gamme équipé d\'un processeur Intel i7 10éme génération', '1200', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 22),
(23, 'Mac air 2020', 'Un laptop de très haute gamme équipé d\'un processeur Intel i5 8éme génération + 16g Ram', '980.5', 'https://api.major.smartdom.ch/api/getImageProduct/dbd990f930f970c11b720eb1316b2a99.jpeg', 22),
(24, 'Saveur chocolat', '***********', '66', 'https://api.major.smartdom.ch/api/getImageProduct/37ddde23d22ada14a25ee9dc6ec6b98a.png', 23),
(25, 'Saveur vanille', '***********', '87', 'https://api.major.smartdom.ch/api/getImageProduct/95ccf3d3bfb7e9c420ba7284d535916d.png', 23),
(26, 'Saveur chocolat', '***********', '66', 'https://api.major.smartdom.ch/api/getImageProduct/37ddde23d22ada14a25ee9dc6ec6b98a.png', 24),
(27, 'Saveur vanille', '***********', '87', 'https://api.major.smartdom.ch/api/getImageProduct/95ccf3d3bfb7e9c420ba7284d535916d.png', 24),
(28, 'Saveur chocolat', '***********', '66', 'https://api.major.smartdom.ch/api/getImageProduct/37ddde23d22ada14a25ee9dc6ec6b98a.png', 25),
(29, 'Saveur vanille', '***********', '87', 'https://api.major.smartdom.ch/api/getImageProduct/95ccf3d3bfb7e9c420ba7284d535916d.png', 25),
(30, 'Saveur chocolat', '***********', '66', 'https://api.major.smartdom.ch/api/getImageProduct/37ddde23d22ada14a25ee9dc6ec6b98a.png', 26),
(31, 'Saveur vanille', '***********', '87', 'https://api.major.smartdom.ch/api/getImageProduct/95ccf3d3bfb7e9c420ba7284d535916d.png', 26),
(32, 'brassard ', 'version 1 ', '25', 'http://localhost:3001/api/getImageProduct/56e655eeb5d459620aa5d4459d9f4abb.jpeg', 27),
(33, 'brassard 2', 'version 2', '50', 'http://localhost:3001/api/getImageProduct/cd90c3c37cf979b152e9aee64cffdb85.jpeg', 27),
(34, 'brassard ', 'version 1 ', '25', 'http://localhost:3001/api/getImageProduct/56e655eeb5d459620aa5d4459d9f4abb.jpeg', 28),
(35, 'brassard 2', 'version 2', '50', 'http://localhost:3001/api/getImageProduct/cd90c3c37cf979b152e9aee64cffdb85.jpeg', 28),
(36, 'brassard ', 'version 1 ', '25', 'http://localhost:3001/api/getImageProduct/56e655eeb5d459620aa5d4459d9f4abb.jpeg', 29),
(37, 'brassard 2', 'version 2', '50', 'http://localhost:3001/api/getImageProduct/cd90c3c37cf979b152e9aee64cffdb85.jpeg', 29),
(38, 'brassard ', 'version 1 ', '25', 'http://localhost:3001/api/getImageProduct/56e655eeb5d459620aa5d4459d9f4abb.jpeg', 30),
(39, 'brassard 2', 'version 2', '50', 'http://localhost:3001/api/getImageProduct/cd90c3c37cf979b152e9aee64cffdb85.jpeg', 30),
(40, 'brassard ', 'version 1 ', '25', 'http://localhost:3001/api/getImageProduct/56e655eeb5d459620aa5d4459d9f4abb.jpeg', 31),
(41, 'brassard 2', 'version 2', '50', 'http://localhost:3001/api/getImageProduct/cd90c3c37cf979b152e9aee64cffdb85.jpeg', 31),
(42, 'brassard ', 'version 1 ', '25', 'http://localhost:3001/api/getImageProduct/56e655eeb5d459620aa5d4459d9f4abb.jpeg', 32),
(43, 'brassard 2', 'version 2', '50', 'http://localhost:3001/api/getImageProduct/cd90c3c37cf979b152e9aee64cffdb85.jpeg', 32),
(44, 'Boissons ENERGY EFFORT', 'Boissons', '30', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS001-BM.png', 33),
(45, 'Boissons ENERGY POWER STICKOLA 30 sticks', 'Boissons', '29', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS003-DO.png', 33),
(46, 'Boissons ENERGY DETOX', 'Boissons', '33', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS002-FL.png', 33),
(47, 'Boissons ENERGY EFFORT', 'Boissons', '30', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS001-BM.png', 34),
(48, 'Boissons ENERGY POWER STICKOLA 30 sticks', 'Boissons', '29', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS003-DO.png', 34),
(49, 'Boissons ENERGY DETOX', 'Boissons', '33', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS002-FL.png', 34),
(50, 'Boissons ENERGY EFFORT', 'Boissons', '30', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS001-BM.png', 35),
(51, 'Boissons ENERGY POWER STICKOLA 30 sticks', 'Boissons', '29', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS003-DO.png', 35),
(52, 'Boissons ENERGY DETOX', 'Boissons', '33', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS002-FL.png', 35),
(53, 'Boissons ENERGY EFFORT', 'Boissons', '30', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS001-BM.png', 36),
(54, 'Boissons ENERGY POWER STICKOLA 30 sticks', 'Boissons', '29', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS003-DO.png', 36),
(55, 'Boissons ENERGY DETOX', 'Boissons', '33', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS002-FL.png', 36),
(56, 'Boissons ENERGY EFFORT', 'Boissons', '30', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS001-BM.png', 37),
(57, 'Boissons ENERGY POWER STICKOLA 30 sticks', 'Boissons', '29', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS003-DO.png', 37),
(58, 'Boissons ENERGY DETOX', 'Boissons', '33', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS002-FL.png', 37),
(59, 'Boissons ENERGY EFFORT', 'Boissons', '30', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS001-BM.png', 38),
(60, 'Boissons ENERGY POWER STICKOLA 30 sticks', 'Boissons', '29', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS003-DO.png', 38),
(61, 'Boissons ENERGY DETOX', 'Boissons', '33', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS002-FL.png', 38),
(62, 'Boissons ENERGY EFFORT', 'Boissons', '30', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS001-BM.png', 39),
(63, 'Boissons ENERGY POWER STICKOLA 30 sticks', 'Boissons', '29', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS003-DO.png', 39),
(64, 'Boissons ENERGY DETOX', 'Boissons', '33', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS002-FL.png', 39),
(65, 'Boissons ENERGY EFFORT', 'Boissons', '30', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS001-BM.png', 40),
(66, 'Boissons ENERGY POWER STICKOLA 30 sticks', 'Boissons', '29', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS003-DO.png', 40),
(67, 'Boissons ENERGY DETOX', 'Boissons', '33', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS002-FL.png', 40),
(68, 'Boissons ENERGY EFFORT', 'Boissons', '30', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS001-BM.png', 41),
(69, 'Boissons ENERGY POWER STICKOLA 30 sticks', 'Boissons', '29', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS003-DO.png', 41),
(70, 'Boissons ENERGY DETOX', 'Boissons', '33', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS002-FL.png', 41),
(71, 'Boissons ENERGY EFFORT', 'Boissons', '30', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS001-BM.png', 42),
(72, 'Boissons ENERGY POWER STICKOLA 30 sticks', 'Boissons', '29', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS003-DO.png', 42),
(73, 'Boissons ENERGY DETOX', 'Boissons', '33', 'https://smrt28c3050551e74506985fbca107b0bf05.1.rocketbonds.ch/wp-content/uploads/2021/01/BS002-FL.png', 42);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id_prod` int(11) NOT NULL,
  `nomProd` varchar(100) DEFAULT NULL,
  `descriptionProd` text DEFAULT NULL,
  `prix` varchar(8) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id_prod`, `nomProd`, `descriptionProd`, `prix`, `image`) VALUES
(3, 'brassard ', 'version 1 ', '25', 'http://localhost:3001/api/getImageProduct/56e655eeb5d459620aa5d4459d9f4abb.jpeg'),
(4, 'brassard 2', 'version 2', '50', 'http://localhost:3001/api/getImageProduct/cd90c3c37cf979b152e9aee64cffdb85.jpeg'),
(5, 'new neww ', 'new ', '45', 'http://localhost:3001/api/getImageProduct/aedcbe2fbf33b601f827516407f979c5.jpeg'),
(6, 'secondTest', 'test descroption', '40', 'http://localhost:3001/api/getImageProduct/eef72f03fe896040e0b040484f29fedb.png'),
(7, 'testAmine', 'test', '80', 'http://localhost:3001/api/getImageProduct/c11e75ed27d8745169090814d9371006.png'),
(8, NULL, NULL, NULL, 'http://localhost:3001/api/getImageNewsletter/e5d4629e0f808e3914079e59d5e3796b.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `prospects`
--

CREATE TABLE `prospects` (
  `id` int(11) NOT NULL,
  `dateCreation` text DEFAULT NULL,
  `nom` text DEFAULT NULL,
  `prenom` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `telephone` text DEFAULT NULL,
  `ville` text DEFAULT NULL,
  `codePostal` text DEFAULT NULL,
  `statut` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `prospects`
--

INSERT INTO `prospects` (`id`, `dateCreation`, `nom`, `prenom`, `email`, `telephone`, `ville`, `codePostal`, `statut`) VALUES
(1, '2021-02-25 ', 'zairi', 'jawher', 'jawher.zairi@sesame.com.tn', '55951916', 'tunis', '8020', 'accepted'),
(2, '2021-02-25 ', 'lauret ', 'jean hugues', 'jawher.zairi@sesame.com.tn', '0602044631', 'tunis', '8020', 'accepted'),
(3, '2021-02-25 ', 'jean huge', 'Lauret', 'jeanHigue@gmail.com', '55951916', 'paris', '3000', 'accepted'),
(4, '2021-02-26 ', 'babba', 'amine', 'amine@babba.com', '44521485', 'tunis', '8020', 'accepted');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `info_perso` varchar(30) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `taille` varchar(10) DEFAULT NULL,
  `poids` varchar(10) DEFAULT NULL,
  `objectif` varchar(100) DEFAULT NULL,
  `stress` varchar(100) DEFAULT NULL,
  `habitude_alim` varchar(100) DEFAULT NULL,
  `aliment_consm_pas` varchar(100) DEFAULT NULL,
  `ethnicity` varchar(100) DEFAULT NULL,
  `activite_sportive` varchar(100) DEFAULT NULL,
  `activite_physique` varchar(100) DEFAULT NULL,
  `complement_alimentaire` varchar(100) DEFAULT NULL,
  `lequels` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `info_perso`, `age`, `taille`, `poids`, `objectif`, `stress`, `habitude_alim`, `aliment_consm_pas`, `ethnicity`, `activite_sportive`, `activite_physique`, `complement_alimentaire`, `lequels`, `email`) VALUES
(19, 'HOMME', '25', '175', '70', 'Améliorer ma performance physique', 'Un peu ', 'Non, je ne suis pas de régime particulier', 'Viande rouge', '2 fois par semaine', '20 min ', '5 Min ', 'Oui', 'Vitamine D', 'jawher.zairi@sesame.com.tn'),
(21, 'HOMME', '25', '175', '75', 'Détecter des carences alimentaires', 'Jamais / pas du tout ', 'Végétarien : je ne mange pas de viande (ni viande rouge, ni viande blanche), ni de poisson, mais je ', 'Viande rouge', 'Jamais ou peu (moins d’une fois par quinzaine)', '10 min ', '5 Min ', 'Oui', 'Vitamine D', 'djo199529@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `recettes`
--

CREATE TABLE `recettes` (
  `id_rec` int(11) NOT NULL,
  `list_Duree_Cuission` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `list_Duree_prepa_repas` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `list_Gramme_Glucide` float DEFAULT NULL,
  `list_Gramme_Lipide` float DEFAULT NULL,
  `list_Gramme_Proteine` float DEFAULT NULL,
  `list_Nombre_calorie` int(11) DEFAULT NULL,
  `list_Nombre_person` int(11) DEFAULT NULL,
  `list_Pourcentrage_glucides` int(11) DEFAULT NULL,
  `list_Pourcentrage_lipides` int(11) DEFAULT NULL,
  `list_Pourcentrage_proteines` int(11) DEFAULT NULL,
  `list_Tendances` int(11) DEFAULT NULL,
  `list_nomRecette` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `list_photo` text CHARACTER SET utf8 DEFAULT NULL,
  `list_plat` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `list_video` varchar(150) DEFAULT NULL,
  `nutriscore` varchar(30) NOT NULL,
  `preparation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `recettes`
--

INSERT INTO `recettes` (`id_rec`, `list_Duree_Cuission`, `list_Duree_prepa_repas`, `list_Gramme_Glucide`, `list_Gramme_Lipide`, `list_Gramme_Proteine`, `list_Nombre_calorie`, `list_Nombre_person`, `list_Pourcentrage_glucides`, `list_Pourcentrage_lipides`, `list_Pourcentrage_proteines`, `list_Tendances`, `list_nomRecette`, `list_photo`, `list_plat`, `list_video`, `nutriscore`, `preparation`) VALUES
(1, '15 min', '15 min', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 'Flans au cafe', 'https://firebasestorage.googleapis.com/v0/b/beautysane-61cf2.appspot.com/o/recettes%2F134.png?alt=media&token=fadd423c-c6ef-4911-9655-309aa6b7632d', 'Petit déjeuner', NULL, '', NULL),
(2, '15 min', '15 min', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 'Muesli suisse', 'https://firebasestorage.googleapis.com/v0/b/beautysane-61cf2.appspot.com/o/recettes%2Fmeusli.jpeg?alt=media&token=63e1e5b0-333c-4f5f-9457-860323b9c4bc', 'Plats principal', NULL, '', NULL),
(3, '15 min', '15 min', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 'Flans au cafe', 'https://firebasestorage.googleapis.com/v0/b/beautysane-61cf2.appspot.com/o/recettes%2F134.png?alt=media&token=fadd423c-c6ef-4911-9655-309aa6b7632d', 'Petit déjeuner', NULL, '', NULL),
(4, '15 min', '15 min', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 'Muesli suisse', 'https://firebasestorage.googleapis.com/v0/b/beautysane-61cf2.appspot.com/o/recettes%2Fmeusli.jpeg?alt=media&token=63e1e5b0-333c-4f5f-9457-860323b9c4bc', 'Plats principal', NULL, '', NULL),
(93, '15 min', '10 min', 123, 57, 54, 0, 4, 0, 0, 0, 0, 'Pad thai', 'https://firebasestorage.googleapis.com/v0/b/beautysane-61cf2.appspot.com/o/recettes%2F58.PNG?alt=media&token=fd02b70e-c6fd-476c-9aeb-95ec39950e5e', NULL, '', 'A', NULL),
(94, '15 min', '15 min', 43, 265, 106.95, 0, 4, 0, 0, 0, 0, 'pad thai 2 ', 'https://firebasestorage.googleapis.com/v0/b/beautysane-61cf2.appspot.com/o/recettes%2F58.PNG?alt=media&token=24d7e72c-5eae-463f-ad99-5d30de93ea52', NULL, '', 'A', NULL),
(114, '10 min', '15 min', 84, 4.8, 16.8, 0, 3, 0, 0, 0, 0, 'test', '', NULL, '', 'indisponible', NULL),
(124, '15 min', '15 min', 0, 22.5, 119.3, 0, 4, 0, 0, 0, 0, 'plat salade', 'https://firebasestorage.googleapis.com/v0/b/beautysane-61cf2.appspot.com/o/recettes%2FRisotto-cremeux-aux-champignons.jpg?alt=media&token=4de08b17-8d0', NULL, '', 'A', '0- preparation ingredient  (space) 1- etape 2  (space) 2- etape 3 (space) ');

-- --------------------------------------------------------

--
-- Structure de la table `sport`
--

CREATE TABLE `sport` (
  `id_s` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `motivation` varchar(100) DEFAULT NULL,
  `souffrez_pathologies` varchar(100) DEFAULT NULL,
  `fumer_reg` varchar(100) DEFAULT NULL,
  `arret_fumer` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `taille` varchar(100) DEFAULT NULL,
  `poids` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sport`
--

INSERT INTO `sport` (`id_s`, `question_id`, `motivation`, `souffrez_pathologies`, `fumer_reg`, `arret_fumer`, `age`, `taille`, `poids`) VALUES
(16, 7, 'Prise masse musculaire', 'troubles alimentaires', 'OUI', 'OUI', '25', '175', '75'),
(17, 8, 'Illumination fringales', 'troubles alimentaires', 'OUI', 'OUI', '25', '175', '75');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bienetre`
--
ALTER TABLE `bienetre`
  ADD PRIMARY KEY (`id_b`);

--
-- Index pour la table `bodycheck`
--
ALTER TABLE `bodycheck`
  ADD PRIMARY KEY (`id_q`);

--
-- Index pour la table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_checkout`);

--
-- Index pour la table `miniceur`
--
ALTER TABLE `miniceur`
  ADD PRIMARY KEY (`id_m`);

--
-- Index pour la table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `prodcheckout`
--
ALTER TABLE `prodcheckout`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id_prod`);

--
-- Index pour la table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`id_rec`);

--
-- Index pour la table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`id_s`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bienetre`
--
ALTER TABLE `bienetre`
  MODIFY `id_b` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `bodycheck`
--
ALTER TABLE `bodycheck`
  MODIFY `id_q` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_checkout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `miniceur`
--
ALTER TABLE `miniceur`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `prodcheckout`
--
ALTER TABLE `prodcheckout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id_rec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `sport`
--
ALTER TABLE `sport`
  MODIFY `id_s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
