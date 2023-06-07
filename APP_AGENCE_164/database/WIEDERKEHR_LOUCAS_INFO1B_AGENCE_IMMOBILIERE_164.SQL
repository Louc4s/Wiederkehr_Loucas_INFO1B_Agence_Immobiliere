-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.33 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour wiederkehr_loucas_info1b_agence_immobiliere_164
DROP DATABASE IF EXISTS `wiederkehr_loucas_info1b_agence_immobiliere_164`;
CREATE DATABASE IF NOT EXISTS `wiederkehr_loucas_info1b_agence_immobiliere_164` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `wiederkehr_loucas_info1b_agence_immobiliere_164`;

-- Listage de la structure de la table wiederkehr_loucas_info1b_agence_immobiliere_164. t_adresses
DROP TABLE IF EXISTS `t_adresses`;
CREATE TABLE IF NOT EXISTS `t_adresses` (
  `id_adresses` int NOT NULL AUTO_INCREMENT,
  `rue` varchar(45) DEFAULT NULL,
  `code_postal` int DEFAULT NULL,
  `ville` varchar(45) DEFAULT NULL,
  `pays` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_adresses`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table wiederkehr_loucas_info1b_agence_immobiliere_164.t_adresses : ~0 rows (environ)
DELETE FROM `t_adresses`;

-- Listage de la structure de la table wiederkehr_loucas_info1b_agence_immobiliere_164. t_biens
DROP TABLE IF EXISTS `t_biens`;
CREATE TABLE IF NOT EXISTS `t_biens` (
  `id_biens` int NOT NULL AUTO_INCREMENT,
  `fk_client` int DEFAULT NULL,
  `description_bien` varchar(45) DEFAULT NULL,
  `nb_piece` decimal(1,0) DEFAULT NULL,
  `prix` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_biens`),
  KEY `fk_client_idx` (`fk_client`),
  CONSTRAINT `fk_client_biens` FOREIGN KEY (`fk_client`) REFERENCES `t_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table wiederkehr_loucas_info1b_agence_immobiliere_164.t_biens : ~0 rows (environ)
DELETE FROM `t_biens`;

-- Listage de la structure de la table wiederkehr_loucas_info1b_agence_immobiliere_164. t_biens_adresse
DROP TABLE IF EXISTS `t_biens_adresse`;
CREATE TABLE IF NOT EXISTS `t_biens_adresse` (
  `id_biens_adresse` int NOT NULL AUTO_INCREMENT,
  `fk_biens` int DEFAULT NULL,
  `fk_adresses` int DEFAULT NULL,
  PRIMARY KEY (`id_biens_adresse`),
  KEY `fk_biens_idx` (`fk_biens`),
  KEY `fk_adresse_idx` (`fk_adresses`),
  CONSTRAINT `fk_adresse` FOREIGN KEY (`fk_adresses`) REFERENCES `t_adresses` (`id_adresses`),
  CONSTRAINT `fk_biens` FOREIGN KEY (`fk_biens`) REFERENCES `t_biens` (`id_biens`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table wiederkehr_loucas_info1b_agence_immobiliere_164.t_biens_adresse : ~0 rows (environ)
DELETE FROM `t_biens_adresse`;

-- Listage de la structure de la table wiederkehr_loucas_info1b_agence_immobiliere_164. t_client
DROP TABLE IF EXISTS `t_client`;
CREATE TABLE IF NOT EXISTS `t_client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) DEFAULT NULL,
  `prenom_client` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table wiederkehr_loucas_info1b_agence_immobiliere_164.t_client : ~0 rows (environ)
DELETE FROM `t_client`;

-- Listage de la structure de la table wiederkehr_loucas_info1b_agence_immobiliere_164. t_contact
DROP TABLE IF EXISTS `t_contact`;
CREATE TABLE IF NOT EXISTS `t_contact` (
  `id_contact` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `fk_client` int DEFAULT NULL,
  PRIMARY KEY (`id_contact`),
  KEY `fk_client_idx` (`fk_client`),
  CONSTRAINT `fk_client` FOREIGN KEY (`fk_client`) REFERENCES `t_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table wiederkehr_loucas_info1b_agence_immobiliere_164.t_contact : ~0 rows (environ)
DELETE FROM `t_contact`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
