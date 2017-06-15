-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 15 Juin 2017 à 20:42
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
-- Structure de la table `hospitalinfos`
--

CREATE TABLE `hospitalinfos` (
  `choixgarde_date` varchar(255) NOT NULL,
  `choixgarde_lieu` varchar(255) NOT NULL,
  `general` longtext NOT NULL,
  `id` int(11) NOT NULL,
  `hospital_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `hospitalinfos`
--

INSERT INTO `hospitalinfos` (`choixgarde_date`, `choixgarde_lieu`, `general`, `id`, `hospital_id`, `created_at`, `updated_at`) VALUES
('15/06/2017 à 9h30', 'Auditoire O', '<p><b>Caution</b> : 50€</p>\r\n<p><b>Où se présenter</b> : secrétariat de votre service </p>\r\n<p><b>Badges</b> : le mardi de 11h à 12h30 et le vendredi de 11h à 12h30</p> \r\n<p><b>Lingerie</b> : temporaire le lundi, activée le mardi</p>', 1, 1, '2017-06-15 20:42:42', '2017-06-15 20:42:42'),
('15/06/2017 à 9h30', 'Au fond du trou', 'Je chantais gaiement dans le bois et l\'accueil apparut', 2, 2, '2017-06-15 20:42:42', '2017-06-15 20:42:42'),
('Après la visite', 'Tour Eiffel', 'Promenons nous dans les bois\r\nPromenons nous dans les bois\r\nPromenons nous dans les bois\r\nPromenons nous dans les bois\r\n<h3>Promenons nous dans les bois</h3>', 3, 3, '2017-06-15 20:42:42', '2017-06-15 20:42:42'),
('15/06/2017 à 9h30', 'Plage du Castel', 'Promenons nous dans les bois et les prés\r\n<h3>Promenons nous dans les prés</h3>', 4, 4, '2017-06-15 20:42:42', '2017-06-15 20:42:42'),
('15/06/2017 à 9h30', 'St Roman de Bellet', '<h3>Promenons nous dans les ....</h3>', 5, 5, '2017-06-15 20:42:42', '2017-06-15 20:42:42');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `hospitalinfos`
--
ALTER TABLE `hospitalinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `hospitalinfos`
--
ALTER TABLE `hospitalinfos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `hospitalinfos`
--
ALTER TABLE `hospitalinfos`
  ADD CONSTRAINT `hospitalinfos_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
