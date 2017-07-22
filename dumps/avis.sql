-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 22 Juillet 2017 à 11:31
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
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` bigint(20) NOT NULL,
  `hospital_id` bigint(20) NOT NULL,
  `etus_id` bigint(20) NOT NULL,
  `services_id` bigint(20) NOT NULL,
  `commentaire` text NOT NULL,
  `anonyme` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `avis`
--

INSERT INTO `avis` (`id`, `hospital_id`, `etus_id`, `services_id`, `commentaire`, `anonyme`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Super organisation dans le service ! blabla', 1, '2017-07-22 11:31:23', '2017-07-22 11:31:23'),
(2, 1, 2, 3, 'On ne laisse pas beaucoup les étudiants faire des actes techniques mais ils sont mis à contribution pour blabla', 0, '2017-07-22 11:29:50', '2017-07-22 11:29:50'),
(3, 2, 1, 3, 'Beaucoup de stress blabla', 0, '2017-07-22 11:30:23', '2017-07-22 11:30:23');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_id` (`hospital_id`),
  ADD KEY `etus_id` (`etus_id`),
  ADD KEY `services_id` (`services_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `avis_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `avis_ibfk_2` FOREIGN KEY (`etus_id`) REFERENCES `etus` (`id`),
  ADD CONSTRAINT `avis_ibfk_3` FOREIGN KEY (`services_id`) REFERENCES `services` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
