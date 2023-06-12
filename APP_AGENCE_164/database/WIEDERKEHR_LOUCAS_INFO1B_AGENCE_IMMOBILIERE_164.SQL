DROP DATABASE IF EXISTS WIEDERKEHR_LOUCAS_INFO1B_AGENCE_IMMOBILIERE_164;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS WIEDERKEHR_LOUCAS_INFO1B_AGENCE_IMMOBILIERE_164;

-- Utilisation de cette base de donnée

USE WIEDERKEHR_LOUCAS_INFO1B_AGENCE_IMMOBILIERE_164;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 12 juin 2023 à 00:30
-- Version du serveur : 8.0.33
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wiederkehr_loucas_info1b_agence_immobiliere_164`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_adresses`
--

DROP TABLE IF EXISTS `t_adresses`;
CREATE TABLE IF NOT EXISTS `t_adresses` (
  `id_adresses` int NOT NULL AUTO_INCREMENT,
  `rue` varchar(45) DEFAULT NULL,
  `code_postal` int DEFAULT NULL,
  `ville` varchar(45) DEFAULT NULL,
  `pays` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_adresses`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `t_adresses`
--

INSERT INTO `t_adresses` (`id_adresses`, `rue`, `code_postal`, `ville`, `pays`) VALUES
(1, '1st Street', 12345, 'New York', 'États-Unis'),
(2, 'Main Street', 98765, 'Los Angeles', 'États-Unis'),
(3, 'High Street', 54321, 'Londres', 'Royaume-Uni'),
(4, 'Rue de la Paix', 75001, 'Paris', 'France'),
(5, 'Alexanderplatz', 10178, 'Berlin', 'Allemagne'),
(6, 'Rua Augusta', 1100, 'Lisbonne', 'Portugal'),
(7, 'Gran Vía', 28013, 'Madrid', 'Espagne'),
(8, 'Princes Street', 0, 'Édimbourg', 'Royaume-Uni'),
(9, 'Piazza del Duomo', 20121, 'Milan', 'Italie'),
(10, 'Nyhavn', 1051, 'Copenhague', 'Danemark'),
(11, 'Plaza de Mayo', 1084, 'Buenos Aires', 'Argentine'),
(12, 'Rodeo Drive', 90210, 'Beverly Hills', 'États-Unis'),
(13, 'Ginza', 1040061, 'Tokyo', 'Japon'),
(14, 'O\'Connell Street', 0, 'Dublin', 'Irlande'),
(15, 'Nevsky Prospekt', 191186, 'Saint-Pétersbourg', 'Russie'),
(16, 'Orchard Road', 238824, 'Singapour', 'Singapour'),
(17, 'La Rambla', 8002, 'Barcelone', 'Espagne'),
(18, 'Kremlin Embankment', 103073, 'Moscou', 'Russie'),
(19, 'Broadway', 10003, 'New York', 'États-Unis'),
(20, 'Paseo de la Reforma', 6500, 'Mexico', 'Mexique'),
(21, 'Champs-Élysées', 75008, 'Paris', 'France'),
(22, 'Viale dei Fori Imperiali', 186, 'Rome', 'Italie'),
(23, 'Trafalgar Square', 0, 'Londres', 'Royaume-Uni'),
(24, 'Rue Sainte-Catherine', 0, 'Montréal', 'Canada'),
(25, 'Calle Florida', 1005, 'Buenos Aires', 'Argentine'),
(26, 'Nanluoguxiang', 100009, 'Pékin', 'Chine'),
(27, 'Kurfürstendamm', 10707, 'Berlin', 'Allemagne'),
(28, 'Myeong-dong', 4537, 'Séoul', 'Corée du Sud'),
(29, 'Oxford Street', 0, 'Londres', 'Royaume-Uni'),
(30, 'Nathan Road', 0, 'Kowloon', 'Hong Kong'),
(31, 'Avenue des Champs-Élysées', 75008, 'Paris', 'France'),
(32, 'Vaci Utca', 1056, 'Budapest', 'Hongrie'),
(33, 'Rodeo Drive', 90210, 'Los Angeles', 'États-Unis'),
(34, 'Rua de Santa Catarina', 4000447, 'Porto', 'Portugal');

-- --------------------------------------------------------

--
-- Structure de la table `t_biens`
--

DROP TABLE IF EXISTS `t_biens`;
CREATE TABLE IF NOT EXISTS `t_biens` (
  `id_biens` int NOT NULL AUTO_INCREMENT,
  `fk_client` int DEFAULT NULL,
  `nom_bien` varchar(55) NOT NULL,
  `description_bien` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nb_piece` int DEFAULT NULL,
  `prix` int DEFAULT NULL,
  PRIMARY KEY (`id_biens`),
  KEY `fk_client_idx` (`fk_client`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `t_biens`
--

INSERT INTO `t_biens` (`id_biens`, `fk_client`, `nom_bien`, `description_bien`, `nb_piece`, `prix`) VALUES
(198, 1, 'Appartement moderne avec balcon', 'Appartement moderne avec balcon offrant une vue dégagée sur la ville. Il se compose de 2 chambres, un séjour lumineux, une cuisine équipée et un garage.', 3, 230000),
(199, 2, 'Maison de campagne avec jardin', 'Maison de campagne avec jardin et terrasse. Elle dispose de 4 chambres, un salon avec cheminée, une cuisine équipée, un terrain arboré et un abri de jardin.', 5, 340000),
(200, 3, 'Appartement en plein centre-ville', 'Appartement spacieux en plein centre-ville. Il comprend 3 chambres, un grand séjour, une cuisine équipée et un balcon avec vue sur la place principale.', 4, 280000),
(201, 4, 'Villa avec piscine et vue panoramique', 'Magnifique villa avec piscine et vue panoramique sur la mer. Elle offre 5 chambres, un vaste séjour, une cuisine équipée, un jardin paysager et un garage.', 6, 680000),
(202, 5, 'Appartement avec terrasse ensoleillée', 'Appartement avec terrasse ensoleillée toute la journée. Il se compose de 2 chambres, un séjour lumineux, une cuisine ouverte et un garage. Proche des commerces et des transports.', 2, 210000),
(203, 6, 'Maison de charme rénovée', 'Maison de charme entièrement rénovée avec des matériaux de qualité. Elle dispose de 3 chambres, un salon avec poutres apparentes, une cuisine équipée et un jardin fleuri.', 4, 320000),
(204, 7, 'Appartement avec vue sur le parc', 'Appartement avec vue sur un parc verdoyant. Il comprend 3 chambres, un séjour lumineux, une cuisine équipée et un balcon. Proche des écoles et des commerces.', 3, 230000),
(205, 8, 'Villa provençale avec piscine', 'Villa provençale avec piscine et jardin paysager. Elle dispose de 4 chambres, un séjour avec cheminée, une cuisine ouverte et un garage.', 5, 450000),
(206, 9, 'Appartement en rez-de-chaussée avec jardin', 'Appartement en rez-de-chaussée avec jardin privatif. Il se compose de 2 chambres, un séjour, une cuisine équipée et un garage. Proche des transports en commun et des commerces.', 2, 200000),
(207, 10, 'Maison avec piscine chauffée', 'Belle maison avec piscine chauffée et pool house. Elle offre 5 chambres, un vaste séjour, une cuisine équipée, un jardin arboré et un garage.', 6, 580000),
(208, 11, 'Appartement avec vue sur le canal', 'Appartement avec vue sur le canal et les bateaux. Il comprend 2 chambres, un séjour lumineux, une cuisine équipée et un balcon. Emplacement idéal pour les amoureux de la navigation.', 2, 195000),
(209, 12, 'Maison contemporaine avec piscine', 'Maison contemporaine avec piscine et jardin paysager. Elle dispose de 4 chambres, un séjour spacieux, une cuisine ouverte et un garage.', 5, 520000),
(210, 13, 'Appartement en duplex avec terrasse', 'Appartement en duplex avec grande terrasse. Il se compose de 3 chambres, un séjour lumineux, une cuisine équipée et un garage. Proche des commerces et des transports.', 3, 280000),
(211, 14, 'Villa avec vue imprenable sur la mer', 'Villa avec vue imprenable sur la mer Méditerranée. Elle offre 5 chambres, un salon spacieux, une cuisine équipée, un jardin paysager et un garage.', 6, 750000),
(212, 15, 'Appartement avec balcon dans résidence sécurisée', 'Appartement avec balcon dans une résidence sécurisée. Il comprend 2 chambres, un séjour, une cuisine équipée et un garage. Proche des écoles et des commerces.', 2, 215000),
(213, 16, 'Maison de caractère avec jardin', 'Maison de caractère avec jardin arboré. Elle dispose de 3 chambres, un salon avec cheminée, une cuisine équipée, un terrain paysager et un garage.', 4, 330000),
(214, 17, 'Appartement lumineux en plein centre-ville', 'Appartement lumineux en plein centre-ville avec vue dégagée. Il se compose de 3 chambres, un séjour spacieux, une cuisine équipée et un balcon.', 4, 290000),
(215, 18, 'Villa contemporaine avec piscine', 'Villa contemporaine avec piscine et jardin paysager. Elle dispose de 4 chambres, un séjour avec baies vitrées, une cuisine ouverte et un garage.', 5, 480000),
(216, 19, 'Appartement avec terrasse et vue mer', 'Appartement avec terrasse et vue panoramique sur la mer. Il comprend 2 chambres, un séjour lumineux, une cuisine équipée et un garage. Proche de la plage.', 2, 225000),
(217, 20, 'Maison de plain-pied avec jardin', 'Maison de plain-pied avec jardin clos. Elle offre 3 chambres, un séjour, une cuisine équipée, une terrasse et un garage. Proche des commodités.', 4, 280000),
(218, 21, 'Appartement en rez-de-jardin avec piscine', 'Appartement en rez-de-jardin avec accès à une piscine commune. Il se compose de 2 chambres, un séjour, une cuisine équipée et un garage. Proche des transports en commun.', 2, 210000),
(219, 22, 'Maison avec jardin et vue sur la montagne', 'Maison avec jardin et vue panoramique sur la montagne. Elle dispose de 4 chambres, un séjour spacieux, une cuisine équipée, un terrain arboré et un garage.', 5, 360000),
(220, 23, 'Appartement avec vue sur le lac', 'Appartement avec vue sur un lac paisible. Il comprend 3 chambres, un séjour lumineux, une cuisine équipée et un balcon. Proche des écoles et des commerces.', 3, 245000),
(221, 24, 'Villa provençale avec piscine et vue mer', 'Villa provençale avec piscine, jardin paysager et vue imprenable sur la mer. Elle offre 5 chambres, un salon spacieux, une cuisine équipée et un garage.', 6, 680000),
(222, 25, 'Appartement rénové avec terrasse', 'Appartement rénové avec terrasse offrant une belle vue. Il se compose de 2 chambres, un séjour lumineux, une cuisine ouverte et un garage. Proche des transports et des commerces.', 2, 220000),
(223, 26, 'Maison de ville avec cour intérieure', 'Maison de ville avec cour intérieure et jardin arboré. Elle dispose de 3 chambres, un salon, une cuisine équipée et un garage. Proche des commodités.', 4, 315000),
(224, 27, 'Appartement avec vue sur les jardins', 'Appartement avec vue sur de beaux jardins paysagers. Il comprend 3 chambres, un séjour lumineux, une cuisine équipée et un balcon. Proche des parcs et des transports.', 3, 235000),
(225, 28, 'Villa contemporaine avec piscine et jardin', 'Villa contemporaine avec piscine et grand jardin paysager. Elle dispose de 4 chambres, un séjour spacieux, une cuisine ouverte et un garage.', 5, 495000),
(226, 29, 'Appartement en plein centre historique', 'Appartement situé en plein centre historique. Il se compose de 2 chambres, un séjour, une cuisine équipée et un balcon. Proche des monuments et des commerces.', 2, 230000),
(227, 30, 'Maison avec piscine et vue dégagée', 'Belle maison avec piscine et vue dégagée sur la campagne. Elle offre 5 chambres, un vaste séjour, une cuisine équipée, un jardin arboré et un garage.', 6, 620000),
(228, 31, 'Appartement avec balcon dans résidence de standing', 'Appartement avec balcon dans une résidence de standing. Il comprend 2 chambres, un séjour, une cuisine équipée et un garage. Proche des écoles et des commerces.', 2, 205000),
(229, 32, 'Maison de caractère avec jardin et piscine', 'Maison de caractère avec jardin paysager et piscine. Elle dispose de 4 chambres, un salon avec cheminée, une cuisine équipée et un garage.', 5, 420000),
(230, 33, 'Appartement lumineux avec vue sur la rivière', 'Appartement lumineux avec vue sur une rivière paisible. Il se compose de 3 chambres, un séjour spacieux, une cuisine équipée et un balcon. Proche des écoles et des commerces.', 3, 275000),
(231, 34, 'Villa contemporaine avec piscine et vue panoramique', 'Villa contemporaine avec piscine, jardin paysager et vue panoramique. Elle offre 5 chambres, un salon spacieux, une cuisine équipée et un garage.', 6, 780000),
(232, 35, 'Appartement avec terrasse ensoleillée', 'Appartement avec terrasse ensoleillée toute la journée. Il comprend 2 chambres, un séjour lumineux, une cuisine équipée et un garage. Proche des commerces et des transports.', 2, 210000),
(233, 36, 'Maison rénovée avec jardin clos', 'Maison entièrement rénovée avec jardin clos. Elle dispose de 3 chambres, un salon avec poutres apparentes, une cuisine équipée et un garage.', 4, 335000),
(234, 37, 'Appartement avec vue sur le parc', 'Appartement avec vue sur un parc verdoyant. Il comprend 3 chambres, un séjour lumineux, une cuisine équipée et un balcon. Proche des écoles et des commerces.', 3, 230000),
(235, 38, 'Villa provençale avec piscine', 'Villa provençale avec piscine et jardin paysager. Elle dispose de 4 chambres, un séjour avec cheminée, une cuisine ouverte et un garage.', 5, 450000),
(236, 39, 'Appartement en rez-de-chaussée avec jardin', 'Appartement en rez-de-chaussée avec jardin privatif. Il se compose de 2 chambres, un séjour, une cuisine équipée et un garage. Proche des transports en commun et des commerces.', 2, 200000),
(237, 40, 'Maison avec piscine chauffée', 'Belle maison avec piscine chauffée et pool house. Elle offre 5 chambres, un vaste séjour, une cuisine équipée, un jardin arboré et un garage.', 6, 580000);

-- --------------------------------------------------------

--
-- Structure de la table `t_biens_adresse`
--

DROP TABLE IF EXISTS `t_biens_adresse`;
CREATE TABLE IF NOT EXISTS `t_biens_adresse` (
  `id_biens_adresse` int NOT NULL AUTO_INCREMENT,
  `fk_biens` int DEFAULT NULL,
  `fk_adresses` int DEFAULT NULL,
  PRIMARY KEY (`id_biens_adresse`),
  KEY `fk_biens_idx` (`fk_biens`),
  KEY `fk_adresse_idx` (`fk_adresses`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `t_client`
--

DROP TABLE IF EXISTS `t_client`;
CREATE TABLE IF NOT EXISTS `t_client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) DEFAULT NULL,
  `prenom_client` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `t_client`
--

INSERT INTO `t_client` (`id_client`, `nom_client`, `prenom_client`) VALUES
(1, 'Dupont', 'Jean'),
(2, 'Lefèvre', 'Sophie'),
(3, 'Martin', 'Thomas'),
(4, 'Gagnon', 'Élise'),
(5, 'Tremblay', 'Alexandre'),
(6, 'Lavoie', 'Marie'),
(7, 'Boucher', 'Nicolas'),
(8, 'Roy', 'Catherine'),
(9, 'Fortin', 'Patrick'),
(10, 'Gauthier', 'Julie'),
(11, 'Pelletier', 'Maxime'),
(12, 'Deschamps', 'Isabelle'),
(13, 'Dufour', 'Simon'),
(14, 'Côté', 'Valérie'),
(15, 'Morin', 'Jonathan'),
(16, 'Bergeron', 'Émilie'),
(17, 'Girard', 'Vincent'),
(18, 'Simard', 'Caroline'),
(19, 'Beaulieu', 'Marc'),
(20, 'Dion', 'Mélanie'),
(21, 'Lévesque', 'Sophie'),
(22, 'Bélanger', 'Alexandre'),
(23, 'Thériault', 'Gabrielle'),
(24, 'Gagné', 'Samuel'),
(25, 'Bertrand', 'Catherine'),
(26, 'Laplante', 'David'),
(27, 'Gagnon', 'Marie-Pier'),
(28, 'Fournier', 'Mathieu'),
(29, 'Rousseau', 'Julie'),
(30, 'Côté', 'Maxime'),
(31, 'Morin', 'Audrey'),
(32, 'Pelletier', 'Jonathan'),
(33, 'Gauthier', 'Émilie'),
(34, 'Girard', 'Philippe'),
(35, 'Simard', 'Isabelle'),
(36, 'Beauchemin', 'Martin'),
(37, 'Dubois', 'Sophie'),
(38, 'Fortin', 'Alexandre'),
(39, 'Lavoie', 'Stéphanie'),
(40, 'Caron', 'David'),
(41, 'Tremblay', 'Camille'),
(42, 'Gauthier', 'Mathis'),
(43, 'Rochon', 'Audrey'),
(44, 'Lévesque', 'Gabriel'),
(45, 'Beauchamp', 'Élodie');

-- --------------------------------------------------------

--
-- Structure de la table `t_contact`
--

DROP TABLE IF EXISTS `t_contact`;
CREATE TABLE IF NOT EXISTS `t_contact` (
  `id_contact` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `fk_client` int DEFAULT NULL,
  PRIMARY KEY (`id_contact`),
  KEY `fk_client_idx` (`fk_client`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `t_contact`
--

INSERT INTO `t_contact` (`id_contact`, `email`, `telephone`, `fk_client`) VALUES
(1, 'dupont.jean@gmail.com', '0123456789', 1),
(2, 'lefevre.sophie@gmail.com', '0234567891', 2),
(3, 'martin.thomas@gmail.com', '0345678912', 3),
(4, 'gagnon.elise@gmail.com', '0456789123', 4);

-- --------------------------------------------------------

--
-- Structure de la table `t_type`
--

DROP TABLE IF EXISTS `t_type`;
CREATE TABLE IF NOT EXISTS `t_type` (
  `id_type` int NOT NULL AUTO_INCREMENT,
  `intitule_type` varchar(50) NOT NULL,
  `date_ins_type` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `t_type`
--

INSERT INTO `t_type` (`id_type`, `intitule_type`, `date_ins_type`) VALUES
(8, 'Maison', '2023-06-12 02:16:39'),
(9, 'Appartement', '2023-06-12 02:16:39'),
(10, 'Villa', '2023-06-12 02:16:39'),
(11, 'Studio', '2023-06-12 02:16:39'),
(12, 'Duplex', '2023-06-12 02:16:39'),
(13, 'Penthouse', '2023-06-12 02:16:39'),
(14, 'Chalet', '2023-06-12 02:16:39'),
(15, 'Ferme', '2023-06-12 02:16:39'),
(16, 'Château', '2023-06-12 02:16:39'),
(17, 'Manoir', '2023-06-12 02:16:39'),
(18, 'Bungalow', '2023-06-12 02:16:39'),
(19, 'Loft', '2023-06-12 02:16:39'),
(20, 'Maison de ville', '2023-06-12 02:16:39'),
(21, 'Maison jumelée', '2023-06-12 02:16:39'),
(22, 'Maison individuelle', '2023-06-12 02:16:39'),
(23, 'Ranch', '2023-06-12 02:16:39'),
(24, 'Immeuble', '2023-06-12 02:16:39'),
(25, 'Terrain', '2023-06-12 02:16:39'),
(26, 'Commerce', '2023-06-12 02:16:39'),
(27, 'Bureau', '2023-06-12 02:16:39'),
(28, 'Entrepôt', '2023-06-12 02:16:39'),
(29, 'Garage', '2023-06-12 02:16:39'),
(30, 'Local commercial', '2023-06-12 02:16:39'),
(31, 'Hôtel', '2023-06-12 02:16:39'),
(32, 'Restaurant', '2023-06-12 02:16:39'),
(33, 'Bar', '2023-06-12 02:16:39'),
(34, 'Café', '2023-06-12 02:16:39'),
(35, 'Cabinet médical', '2023-06-12 02:16:39'),
(36, 'Pharmacie', '2023-06-12 02:16:39'),
(37, 'École', '2023-06-12 02:16:39'),
(38, 'Gymnase', '2023-06-12 02:16:39'),
(39, 'Salle de sport', '2023-06-12 02:16:39'),
(40, 'Centre commercial', '2023-06-12 02:16:39'),
(41, 'Supermarché', '2023-06-12 02:16:39'),
(42, 'Cinéma', '2023-06-12 02:16:39'),
(43, 'Théâtre', '2023-06-12 02:16:39'),
(44, 'Musée', '2023-06-12 02:16:39'),
(45, 'Parc', '2023-06-12 02:16:39'),
(46, 'Stade', '2023-06-12 02:16:39'),
(47, 'Aéroport', '2023-06-12 02:16:39'),
(48, 'Gare', '2023-06-12 02:16:39'),
(49, 'Port', '2023-06-12 02:16:39'),
(50, 'Hôpital', '2023-06-12 02:16:39');

-- --------------------------------------------------------

--
-- Structure de la table `t_type_bien`
--

DROP TABLE IF EXISTS `t_type_bien`;
CREATE TABLE IF NOT EXISTS `t_type_bien` (
  `id_type_bien` int NOT NULL AUTO_INCREMENT,
  `fk_type` int NOT NULL,
  `fk_bien` int NOT NULL,
  `date_insert_type` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_type_bien`),
  KEY `fk_bien` (`fk_bien`),
  KEY `fk_type` (`fk_type`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `t_type_bien`
--

INSERT INTO `t_type_bien` (`id_type_bien`, `fk_type`, `fk_bien`, `date_insert_type`) VALUES
(11, 9, 198, '2023-06-12 00:29:50'),
(12, 19, 198, '2023-06-12 00:29:50'),
(13, 14, 198, '2023-06-12 00:29:50'),
(14, 15, 198, '2023-06-12 00:29:50'),
(15, 33, 216, '2023-06-12 00:30:18');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_biens`
--
ALTER TABLE `t_biens`
  ADD CONSTRAINT `fk_client_biens` FOREIGN KEY (`fk_client`) REFERENCES `t_client` (`id_client`);

--
-- Contraintes pour la table `t_biens_adresse`
--
ALTER TABLE `t_biens_adresse`
  ADD CONSTRAINT `fk_adresse` FOREIGN KEY (`fk_adresses`) REFERENCES `t_adresses` (`id_adresses`),
  ADD CONSTRAINT `fk_biens` FOREIGN KEY (`fk_biens`) REFERENCES `t_biens` (`id_biens`);

--
-- Contraintes pour la table `t_contact`
--
ALTER TABLE `t_contact`
  ADD CONSTRAINT `fk_client` FOREIGN KEY (`fk_client`) REFERENCES `t_client` (`id_client`);

--
-- Contraintes pour la table `t_type_bien`
--
ALTER TABLE `t_type_bien`
  ADD CONSTRAINT `fk_bien` FOREIGN KEY (`fk_bien`) REFERENCES `t_biens` (`id_biens`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_type` FOREIGN KEY (`fk_type`) REFERENCES `t_type` (`id_type`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
