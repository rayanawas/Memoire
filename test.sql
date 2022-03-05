-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 05 mars 2022 à 10:57
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `bon commande`
--

CREATE TABLE `bon commande` (
  `N° bc` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bon commande`
--

INSERT INTO `bon commande` (`N° bc`, `date`) VALUES
(23, '2021-06-28'),
(24, '2021-06-16'),
(32, '2021-05-31'),
(54, '2021-05-31');

-- --------------------------------------------------------

--
-- Structure de la table `bon_pour`
--

CREATE TABLE `bon_pour` (
  `N° bp` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bon_pour`
--

INSERT INTO `bon_pour` (`N° bp`, `date`) VALUES
(5678, '2021-06-03'),
(4456, '2021-06-11'),
(344, '2021-06-08'),
(444, '2021-06-07'),
(3, '2021-06-08');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `code` int(10) NOT NULL,
  `tél` int(10) NOT NULL,
  `ccp` int(11) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `rc` varchar(16) NOT NULL,
  `cart fiscal` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`name`, `code`, `tél`, `ccp`, `adresse`, `rc`, `cart fiscal`) VALUES
('mohammed', 6435, 756432198, 10347856, 'bourdj bou arreridj', '66/003452b42148', 1123456789),
('aymen', 6439, 732567432, 10721729, 'batna', '66/003299C42132', 1877655432);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_commande`
--

CREATE TABLE `ligne_commande` (
  `nom_prod` varchar(30) NOT NULL,
  `unite` varchar(10) NOT NULL,
  `qte` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `TTotale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ligne_commande`
--

INSERT INTO `ligne_commande` (`nom_prod`, `unite`, `qte`, `prix`, `TTotale`) VALUES
('agrafes 24/26 mm', 'U', 7, 16, NULL),
('bloc ordonnances 100', 'U', 88, 90, NULL),
('bloc ordonnances 100', 'U', 6, 90, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_pour`
--

CREATE TABLE `ligne_pour` (
  `desingation` varchar(30) NOT NULL,
  `qte volu` int(11) NOT NULL,
  `qte reçu` int(11) NOT NULL,
  `observation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `mp`
--

CREATE TABLE `mp` (
  `mp` int(11) NOT NULL,
  `uname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mp`
--

INSERT INTO `mp` (`mp`, `uname`) VALUES
(1234, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `N° prod` int(11) NOT NULL,
  `nom_pro` varchar(30) NOT NULL,
  `qte` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `famille` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`N° prod`, `nom_pro`, `qte`, `prix`, `famille`) VALUES
(201, 'agrafes 24/26 mm', 89, 16, 'affaire bureautique'),
(209, 'agrafeuse pm', 30, 220, 'affaire bureautique'),
(303, 'bloc ordonnances 100', 289, 90, 'affaire papiterie'),
(207, 'boit d\'archive ', 21, 85, 'affaire bureautique'),
(222, 'boite de tempon ', 9, 80, 'affaire bureautique'),
(302, 'cahier dialyse', 66, 75, 'affaire  papiterie'),
(301, 'carnet reçue payant 2 exp ncr', 20, 125, 'affaire papiterie'),
(105, 'cartouche couleur 122', 2, 100, 'affaire informatique '),
(104, 'cd veirge +pochette', 203, 25, 'affaire informatique'),
(316, 'certificat médicale', 50, 1, 'affaire informatique'),
(212, 'chemise cartonnier', 20, 6, 'affaire bureautique'),
(208, 'chemise elastique', 50, 30, 'affaire bureautique'),
(204, 'crayon noir', 100, 10, 'affaire bureautique'),
(33, 'DD', 3, 2, 'affaire informatique'),
(223, 'effaceur', 10, 42, 'affaire bureautique'),
(206, 'encre atampon', 20, 30, 'affaire bureautique'),
(219, 'etiquette de prix ', 50, 1, 'affaire bureautique'),
(308, 'feuille centrale de biologie ', 50, 1, 'affaire  papiterie'),
(307, 'feuille de mise en observation', 50, 1, 'affaire papiterie'),
(309, 'feuille de prescription alimen', 20, 1, 'affaire papiterie'),
(310, 'feuille résume clinique de sor', 20, 1, 'affaire  papiterie'),
(311, 'feuille résume standard de sor', 50, 1, 'affaire papiterie'),
(306, 'feuille température g f', 20, 1, 'affaire  papiterie'),
(315, 'fiche d\'anesthésie', 20, 8, 'affaire papiterie'),
(313, 'fiche de casier magasin', 20, 8, 'affaire papiterie'),
(312, 'fiche de stock magasin', 20, 8, 'affaire  papiterie'),
(314, 'fiche navette en 2chemises r/v', 10, 21, 'affaire  papiterie'),
(205, 'gomme', 10, 12, 'affaire bureautique'),
(110, 'onduler professionnel', 2, 25000, 'affaire informatique'),
(109, 'onduleur normal', 10, 6500, 'affaire informatique '),
(215, 'papier lesting 132c 3 EX', 20, 3600, 'affaire bureautique'),
(213, 'papier lesting 80c2 EX', 20, 2700, 'affaire bureautique'),
(214, 'papier lesting 80c3 EX', 20, 2200, 'affaire bureautique'),
(216, 'papier thermique 5 cm', 20, 200, 'affaire bureautique'),
(221, 'porte badge ', 15, 7, 'affaire bureautique'),
(210, 'ramme papier 80 GR', 20, 450, 'affaire bureautique'),
(304, 'relevé compte grand livre ', 20, 1, 'affaire  papiterie'),
(305, 'relevé compte grand livre indi', 20, 1, 'affaire papiterie'),
(203, 'scotche de bureau ', 50, 20, 'affaire bureautique'),
(211, 'sous chemise', 50, 2, 'affaire bureautique'),
(218, 'spiral gm 16', 10, 900, 'affaire bureautique'),
(217, 'spiral mm 10 ', 10, 750, 'affaire bureautique'),
(220, 'stylo', 100, 12, 'affaire bureautique'),
(106, 'tonner 1460-1525-2030', 2, 100, 'affaire informatique'),
(101, 'tonner canon 2612', 50, 1200, 'affaire informatique '),
(103, 'tonner epson 3900/4300', 3, 100, 'affaire informatique '),
(107, 'tonner kit 1018', 8, 100, 'affaire informatique '),
(108, 'tonner kit 130', 23, 1600, 'affaire informatique'),
(111, 'tonner ml 1660', 10, 2600, 'affaire informatique '),
(113, 'tonner photocopieuse reseau', 5, 1800, 'affaire informatique '),
(112, 'tonner so 50521/23', 10, 3500, 'affaire informatique'),
(102, 'tonner TTP 435-436 g', 50, 1200, 'affaire informatique '),
(114, 'tonneur tk 1130', 10, 100, 'affaire informatique'),
(202, 'trombonnes boite ', 10, 16, 'affaire bureautique');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `N° ser` int(11) NOT NULL,
  `nom_ser` varchar(30) NOT NULL,
  `N° dep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`N° ser`, `nom_ser`, `N° dep`) VALUES
(105, 'S.block opération', 1),
(502, 'S.cardiologie', 0),
(301, 'S.chirurgie générale', 0),
(102, 'S.concer(tumeur)', 1),
(501, 'S.covid', 0),
(503, 'S.infectieux', 0),
(401, 'S.médecine générale interne', 0),
(201, 'S.O R L', 0),
(202, 'S.ophtalmologie', 0),
(504, 'S.pneumologue', 0),
(103, 'S.prévention', 1),
(106, 'S.réanimation', 0),
(101, 'S.réception', 1),
(203, 'S.traumatologie', 0),
(104, 'S.urgence médicale et chirurgi', 1);

-- --------------------------------------------------------

--
-- Structure de la table `unite`
--

CREATE TABLE `unite` (
  `unite` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `unite`
--

INSERT INTO `unite` (`unite`) VALUES
('U');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bon commande`
--
ALTER TABLE `bon commande`
  ADD PRIMARY KEY (`N° bc`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `ligne_commande`
--
ALTER TABLE `ligne_commande`
  ADD KEY `qte` (`qte`),
  ADD KEY `nom_prod` (`nom_prod`);

--
-- Index pour la table `ligne_pour`
--
ALTER TABLE `ligne_pour`
  ADD KEY `desingation` (`desingation`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`nom_pro`),
  ADD KEY `qte` (`qte`),
  ADD KEY `nom_pro` (`nom_pro`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD KEY `N° ser` (`N° ser`) USING BTREE,
  ADD KEY `nom_ser` (`nom_ser`) USING BTREE;

--
-- Index pour la table `unite`
--
ALTER TABLE `unite`
  ADD PRIMARY KEY (`unite`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `code` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6440;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
