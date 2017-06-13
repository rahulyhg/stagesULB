-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 13 juin 2017 à 22:33
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
-- Structure de la table `hospital`
--

CREATE TABLE `hospital` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hospital`
--

INSERT INTO `hospital` (`id`, `nom`) VALUES
(1, 'Saint-Pierre'),
(2, 'Erasme'),
(3, 'Brugmann'),
(4, 'HUDERF'),
(5, 'CHIREC');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
