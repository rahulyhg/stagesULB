-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 15 Juin 2017 à 20:10
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `hospital`
--

INSERT INTO `hospital` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Saint-Pierre', '2017-06-15 20:09:52', '2017-06-15 20:09:52'),
(2, 'Erasme', '2017-06-15 20:09:52', '2017-06-15 20:09:52'),
(3, 'Brugmann', '2017-06-15 20:09:52', '2017-06-15 20:09:52'),
(4, 'HUDERF', '2017-06-15 20:09:52', '2017-06-15 20:09:52'),
(5, 'CHIREC', '2017-06-15 20:09:52', '2017-06-15 20:09:52');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
