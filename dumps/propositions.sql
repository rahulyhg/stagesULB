-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 15 Juin 2017 à 20:40
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
-- Structure de la table `propositions`
--

CREATE TABLE `propositions` (
  `id` bigint(20) NOT NULL,
  `offres_id` bigint(20) NOT NULL,
  `etus_id` bigint(20) NOT NULL COMMENT 'id de l''étudiant qui fait le proposition et non de celui qui fait l''offres (cf offres_id)',
  `type` int(11) NOT NULL,
  `commentaire` varchar(255) NOT NULL,
  `statut` int(11) NOT NULL,
  `poste` varchar(255) DEFAULT NULL COMMENT 'attribué seulement si c''est un échange et non une reprise',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `propositions`
--

INSERT INTO `propositions` (`id`, `offres_id`, `etus_id`, `type`, `commentaire`, `statut`, `poste`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'Pas de souci gros :)', 1, 'HP', '2017-06-15 20:39:54', '2017-06-15 20:39:54'),
(2, 2, 1, 1, 'Ca ne me dérange pas', 1, '', '2017-06-15 20:39:54', '2017-06-15 20:39:54');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `propositions`
--
ALTER TABLE `propositions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offres_id` (`offres_id`),
  ADD KEY `etus_id` (`etus_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `propositions`
--
ALTER TABLE `propositions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `propositions`
--
ALTER TABLE `propositions`
  ADD CONSTRAINT `propositions_ibfk_1` FOREIGN KEY (`offres_id`) REFERENCES `offres` (`id`),
  ADD CONSTRAINT `propositions_ibfk_2` FOREIGN KEY (`etus_id`) REFERENCES `etus` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
