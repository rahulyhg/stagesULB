-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 13 juin 2017 à 23:53
-- Version du serveur :  5.7.18
-- Version de PHP :  7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `stages`
--

-- --------------------------------------------------------

--
-- Structure de la table `etus`
--

CREATE TABLE `etus` (
  `id` bigint(20) NOT NULL,
  `idUniv` varchar(11) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `telephone` varchar(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etus`
--
ALTER TABLE `etus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etus`
--
ALTER TABLE `etus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
