DROP DATABASE IF EXISTS MACCAUD_OLIVIER_INFO1X_FILMS_164_2023;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS MACCAUD_OLIVIER_INFO1X_FILMS_164_2023;

-- Utilisation de cette base de donnée

USE MACCAUD_OLIVIER_INFO1X_FILMS_164_2023;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 10 juin 2023 à 13:22
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `t_biens`
--

DROP TABLE IF EXISTS `t_biens`;
CREATE TABLE IF NOT EXISTS `t_biens` (
  `id_biens` int NOT NULL AUTO_INCREMENT,
  `fk_client` int NOT NULL,
  `description_bien` varchar(700) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nb_piece` decimal(1,0) DEFAULT NULL,
  `prix` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_biens`),
  KEY `fk_client_idx` (`fk_client`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `t_biens`
--

INSERT INTO `t_biens` (`id_biens`, `fk_client`, `description_bien`, `nb_piece`, `prix`) VALUES
(149, 12, 'Superbe villa moderne située dans un quartier résidentiel calme. Cette propriété spacieuse comprend 5 chambres à coucher, un grand salon lumineux, une cuisine entièrement équipée, une piscine privée et une vue imprenable sur la mer. Idéal pour les familles en quête de tranquillité et de confort.', '5', '750000'),
(150, 26, 'Magnifique appartement de luxe en plein centre-ville. Offrant un espace de vie élégant et raffiné, cet appartement dispose de 3 chambres spacieuses, d\'une cuisine moderne entièrement équipée, d\'un balcon avec vue panoramique et d\'une salle de sport privée. Profitez d\'un style de vie haut de gamme avec toutes les commodités à votre porte.', '3', '550000'),
(151, 30, 'Charmante maison de campagne avec un grand jardin verdoyant. Cette propriété rustique offre 4 chambres confortables, un salon chaleureux avec cheminée, une cuisine traditionnelle et une terrasse couverte idéale pour les repas en plein air. Parfait pour les amoureux de la nature et les escapades relaxantes.', '4', '380000'),
(152, 7, 'Appartement moderne avec vue sur la ville. Ce spacieux appartement de 2 chambres comprend une cuisine ouverte entièrement équipée, un salon lumineux, une salle à manger élégante et une terrasse privée. Bénéficiez d\'un emplacement central pratique et profitez de tous les services à proximité.', '2', '320000'),
(153, 6, 'Superbe loft rénové avec un design contemporain. Ce loft de 1 chambre offre un espace de vie ouvert, une cuisine moderne entièrement équipée, des finitions haut de gamme et une abondance de lumière naturelle. Profitez de l\'ambiance urbaine dynamique et de la proximité des restaurants et des boutiques.', '1', '280000'),
(154, 17, 'Villa de luxe avec vue panoramique sur la mer. Cette somptueuse propriété de 6 chambres présente une architecture moderne, des espaces de vie spacieux, une cuisine haut de gamme, une piscine à débordement et de vastes terrasses. Profitez d\'un style de vie exclusif dans un cadre idyllique.', '6', '980000'),
(155, 29, 'Appartement contemporain en plein cœur du quartier animé. Ce spacieux appartement de 3 chambres offre des finitions de haute qualité, un salon lumineux, une cuisine moderne entièrement équipée et une terrasse privée pour profiter de la vue sur la ville. Vivez l\'effervescence de la vie urbaine avec style.', '3', '420000'),
(156, 44, 'Charmante maison de plage avec accès direct à la mer. Cette propriété de 4 chambres offre un style côtier décontracté, un salon lumineux, une cuisine équipée et une terrasse privée pour profiter des vues sur l\'océan. Vivez votre rêve de vivre près de la plage dans cette maison idyllique.', '4', '580000'),
(157, 35, 'Appartement en plein cœur du quartier historique. Cet appartement de 2 chambres présente des éléments architecturaux d\'époque, une cuisine ouverte, un salon confortable et une atmosphère charmante. Profitez de la proximité des sites touristiques, des boutiques et des restaurants.', '2', '260000'),
(158, 33, 'Superbe propriété avec vue sur le lac et les montagnes. Cette villa de 6 chambres offre un design contemporain, des espaces de vie élégants, une cuisine haut de gamme, une piscine à débordement et une terrasse panoramique. Profitez d\'une vie luxueuse dans un cadre naturel époustouflant.', '6', '1200000'),
(159, 11, 'Appartement spacieux avec jardin privé. Cet appartement de 3 chambres comprend un salon lumineux, une cuisine moderne, une salle à manger séparée et un jardin verdoyant pour se détendre. Profitez de l\'intimité et du confort de cette résidence moderne.', '3', '410000'),
(160, 20, 'Maison de village pittoresque avec un charme traditionnel. Cette propriété de 2 chambres offre un salon confortable, une cuisine rustique, une cour intérieure et une terrasse avec vue sur le village. Plongez dans l\'ambiance rustique d\'un village traditionnel français.', '2', '280000'),
(161, 15, 'Spacieuse villa contemporaine avec piscine privée. Cette propriété de 4 chambres offre un design moderne, des espaces de vie ouverts, une cuisine haut de gamme, un jardin paysager et une piscine à débordement. Profitez d\'un style de vie luxueux dans un environnement tranquille.', '4', '890000'),
(162, 28, 'Appartement élégant dans un quartier résidentiel exclusif. Cet appartement de 2 chambres offre des finitions de haute qualité, un salon spacieux, une cuisine moderne et une terrasse privée avec vue sur les jardins paysagers. Profitez du luxe et du confort dans ce quartier prisé.', '2', '360000'),
(163, 23, 'Charmante maison de campagne avec jardin privé. Cette propriété rustique offre 3 chambres confortables, un salon chaleureux avec cheminée, une cuisine traditionnelle et une terrasse ombragée pour profiter de la tranquillité de la campagne. Parfait pour une escapade relaxante.', '3', '320000'),
(164, 18, 'Appartement lumineux avec vue imprenable sur la mer. Ce spacieux appartement de 2 chambres comprend un salon ouvert, une cuisine moderne, une salle à manger séparée et un balcon pour admirer les vues panoramiques. Profitez de la proximité de la plage et des commodités.', '2', '420000'),
(165, 9, 'Villa de luxe avec vue sur le golf. Cette somptueuse propriété de 5 chambres présente une architecture moderne, des espaces de vie spacieux, une cuisine haut de gamme, une piscine privée et un jardin paysager. Profitez d\'une vie de luxe dans un environnement serein.', '5', '1100000'),
(166, 13, 'Appartement moderne en plein cœur de la ville. Ce spacieux appartement de 3 chambres offre un design contemporain, un salon lumineux, une cuisine entièrement équipée et une terrasse privée. Profitez de la proximité des commerces, des restaurants et des transports en commun.', '3', '380000'),
(167, 21, 'Belle maison de caractère avec jardin paysager. Cette propriété de 4 chambres offre un intérieur élégant, un salon spacieux avec cheminée, une cuisine traditionnelle et une terrasse ombragée pour se détendre. Profitez de l\'ambiance charmante d\'une maison traditionnelle française.', '4', '480000'),
(168, 31, 'Appartement moderne avec vue sur la mer. Cet appartement de 2 chambres offre un intérieur élégant, un salon lumineux, une cuisine entièrement équipée et un balcon pour profiter des vues panoramiques sur la mer. Profitez de l\'emplacement privilégié à proximité de la plage et des commodités.', '2', '450000'),
(169, 37, 'Magnifique villa contemporaine avec vue sur l\'océan. Cette propriété de 5 chambres offre des espaces de vie spacieux, une cuisine haut de gamme, une piscine à débordement et une terrasse panoramique. Profitez d\'un style de vie luxueux dans un cadre côtier spectaculaire.', '5', '1300000'),
(170, 16, 'Appartement élégant dans une résidence de standing. Cet appartement de 3 chambres offre des finitions haut de gamme, un salon spacieux, une cuisine moderne entièrement équipée et une terrasse privée pour profiter de la vue sur le jardin. Profitez d\'un confort absolu dans cet environnement exclusif.', '3', '480000'),
(171, 10, 'Maison de charme avec jardin et piscine. Cette propriété de 4 chambres offre un cadre paisible, un salon spacieux avec cheminée, une cuisine traditionnelle et une terrasse couverte pour se détendre. Profitez d\'un véritable havre de paix à proximité de toutes les commodités.', '4', '620000'),
(172, 24, 'Appartement moderne avec vue sur la ville. Cet appartement de 2 chambres présente un design contemporain, un salon lumineux, une cuisine entièrement équipée et un balcon pour profiter des vues panoramiques. Profitez de l\'emplacement central et de toutes les commodités à votre porte.', '2', '390000'),
(173, 22, 'Villa de luxe avec vue sur la mer. Cette somptueuse propriété de 5 chambres offre un design contemporain, des espaces de vie spacieux, une cuisine haut de gamme, une piscine à débordement et une terrasse panoramique. Profitez d\'une vie de luxe dans un cadre idyllique.', '5', '1150000'),
(174, 14, 'Appartement spacieux et lumineux en plein cœur de la ville. Cet appartement de 3 chambres offre un espace de vie ouvert, une cuisine moderne entièrement équipée, une salle à manger séparée et une terrasse privée. Profitez de la vie urbaine avec style et confort.', '3', '450000'),
(175, 27, 'Charmante maison de campagne avec jardin privé. Cette propriété rustique offre 4 chambres confortables, un salon chaleureux avec cheminée, une cuisine traditionnelle et une terrasse couverte pour profiter de la tranquillité de la nature. Parfait pour une évasion rurale.', '4', '380000'),
(176, 19, 'Appartement moderne avec vue sur le lac. Cet appartement de 2 chambres offre des finitions de haute qualité, un salon lumineux, une cuisine entièrement équipée et un balcon pour profiter de la vue panoramique sur le lac. Profitez de la proximité des activités nautiques et des paysages pittoresques.', '2', '420000'),
(177, 34, 'Superbe villa contemporaine avec piscine privée. Cette propriété de 6 chambres offre un design moderne, des espaces de vie spacieux, une cuisine haut de gamme, un jardin paysager et une piscine à débordement. Profitez d\'un style de vie luxueux dans un environnement paisible.', '6', '990000'),
(178, 38, 'Appartement lumineux en plein cœur du quartier historique. Cet appartement de 2 chambres présente des éléments d\'époque, un salon spacieux, une cuisine entièrement équipée et une vue imprenable sur les monuments historiques. Profitez de l\'ambiance charmante de cette résidence historique.', '2', '360000'),
(179, 36, 'Belle maison de campagne avec jardin paysager. Cette propriété de 3 chambres offre un intérieur élégant, un salon chaleureux avec cheminée, une cuisine traditionnelle et une terrasse ombragée pour profiter de la tranquillité de la nature. Profitez d\'une escapade relaxante dans un environnement pittoresque.', '3', '440000'),
(180, 39, 'Appartement moderne avec vue sur la mer. Cet appartement de 2 chambres offre un espace de vie ouvert, une cuisine entièrement équipée, une salle à manger séparée et un balcon privé. Profitez de la vie côtière avec style et confort.', '2', '410000'),
(181, 41, 'Villa de luxe avec vue sur le lac. Cette somptueuse propriété de 5 chambres offre un design contemporain, des espaces de vie spacieux, une cuisine haut de gamme, une piscine à débordement et une terrasse panoramique. Profitez d\'une vie de luxe dans un cadre idyllique.', '5', '1250000'),
(182, 40, 'Appartement spacieux et lumineux en plein cœur de la ville. Cet appartement de 3 chambres offre un espace de vie ouvert, une cuisine moderne entièrement équipée, une salle à manger séparée et une terrasse privée. Profitez de la vie urbaine avec style et confort.', '3', '460000'),
(183, 42, 'Charmante maison de campagne avec jardin privé. Cette propriété rustique offre 4 chambres confortables, un salon chaleureux avec cheminée, une cuisine traditionnelle et une terrasse couverte pour profiter de la tranquillité de la nature. Parfait pour une évasion rurale.', '4', '400000'),
(184, 43, 'Appartement moderne avec vue sur le lac. Cet appartement de 2 chambres offre des finitions de haute qualité, un salon lumineux, une cuisine entièrement équipée et un balcon pour profiter de la vue panoramique sur le lac. Profitez de la proximité des activités nautiques et des paysages pittoresques.', '2', '440000'),
(185, 44, 'Superbe villa contemporaine avec piscine privée. Cette propriété de 6 chambres offre un design moderne, des espaces de vie spacieux, une cuisine haut de gamme, un jardin paysager et une piscine à débordement. Profitez d\'un style de vie luxueux dans un environnement paisible.', '6', '950000');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
