-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 15 Juin 2017 à 20:36
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
-- Structure de la table `offres`
--

CREATE TABLE `offres` (
  `id` bigint(20) NOT NULL,
  `hospital_id` bigint(20) NOT NULL,
  `etus_id` bigint(20) NOT NULL,
  `poste` varchar(255) NOT NULL,
  `commentaire` text NOT NULL,
  `statut` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `offres`
--

INSERT INTO `offres` (`id`, `hospital_id`, `etus_id`, `poste`, `commentaire`, `statut`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Porte', 'Je suis à un mariage', 1, '2017-06-15 20:22:07', '2017-06-15 20:22:07'),
(2, 1, 2, 'HP', 'J\'ai exam le lendeman svpsvp', 1, '2017-06-15 20:22:33', '2017-06-15 20:22:33');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `offres`
--
ALTER TABLE `offres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_id` (`hospital_id`),
  ADD KEY `etus_id` (`etus_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `offres`
--
ALTER TABLE `offres`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `offres`
--
ALTER TABLE `offres`
  ADD CONSTRAINT `offres_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `offres_ibfk_2` FOREIGN KEY (`etus_id`) REFERENCES `etus` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
