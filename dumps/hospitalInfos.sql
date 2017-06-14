-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 14 juin 2017 à 22:01
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
-- Structure de la table `hospitalInfos`
--

CREATE TABLE `hospitalInfos` (
  `date` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `general` longtext NOT NULL,
  `id` int(11) NOT NULL,
  `hospital_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hospitalInfos`
--

INSERT INTO `hospitalInfos` (`date`, `lieu`, `general`, `id`, `hospital_id`) VALUES
('28/06/2017 09h00 ', 'Auditoire O', '<p><b>Caution</b> : 50€</p>\r\n<p><b>Où se présenter</b> : secrétariat de votre service </p>\r\n<p><b>Badges</b> : le mardi de 11h à 12h30 et le vendredi de 11h à 12h30</p> \r\n<p><b>Lingerie</b> : temporaire le lundi, activée le mardi</p>', 1, 1),
('39/06/2017 19h00 ', 'Au fond du trou', 'Je chantais gaiement dans le bois et l\'accueil apparut', 2, 2),
('20/08/2017 28h', 'Tour Eiffel', 'Promenons nous dans les bois\r\nPromenons nous dans les bois\r\nPromenons nous dans les bois\r\nPromenons nous dans les bois\r\n<h3>Promenons nous dans les bois</h3>', 3, 3),
('21/08/2017 28h', 'Plage du Castel', 'Promenons nous dans les bois et les prés\r\n<h3>Promenons nous dans les prés</h3>', 4, 4),
('29/08/2018 27h', 'St Roman de Bellet', '<h3>Promenons nous dans les ....</h3>', 5, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `hospitalInfos`
--
ALTER TABLE `hospitalInfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `hospitalInfos`
--
ALTER TABLE `hospitalInfos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `hospitalInfos`
--
ALTER TABLE `hospitalInfos`
  ADD CONSTRAINT `hospitalinfos_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
