-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 15 Juin 2017 à 20:14
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
-- Structure de la table `etus`
--

CREATE TABLE `etus` (
  `id` bigint(20) NOT NULL,
  `idUniv` varchar(11) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `telephone` varchar(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `etus`
--

INSERT INTO `etus` (`id`, `idUniv`, `prenom`, `nom`, `telephone`, `email`, `facebook`, `created_at`, `updated_at`) VALUES
(1, '848161', 'Martin', 'FONTAINE', '03214580515', 'martin.fontaine@fakeemail.ulb.ac.be', 'https://www.facebook.com/martinfontaine', '2017-06-15 20:07:29', '2017-06-15 20:07:29'),
(2, '45468778', 'Léonard', 'CHEROUVRIER', '0184818151', 'leo@cherou.fr', 'http://www.facebook.com/leo', '2017-06-15 20:14:30', '2017-06-15 20:14:30');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `etus`
--
ALTER TABLE `etus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `etus`
--
ALTER TABLE `etus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
