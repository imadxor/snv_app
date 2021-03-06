-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 27 déc. 2017 à 21:26
-- Version du serveur :  10.1.22-MariaDB
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
-- Base de données :  `snv`
--

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `Nom` varchar(32) NOT NULL,
  `Prenom` varchar(32) NOT NULL,
  `Depar` varchar(32) NOT NULL,
  `login` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `user_statut` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `Nom`, `Prenom`, `Depar`, `login`, `pass`, `user_statut`) VALUES
(16, 'chouaibi', 'imad', 'Industrielle', 'admin', 'admin', 'Administrateur'),
(17, 'nifer', 'yassine', 'Industrielle', 'admin1', 'admin123', 'Utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `produit_entree`
--

CREATE TABLE `produit_entree` (
  `id` int(11) UNSIGNED NOT NULL,
  `Nom_prod` varchar(32) NOT NULL,
  `qte` int(11) NOT NULL,
  `Date_entree` date NOT NULL,
  `fournisseur` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit_entree`
--

INSERT INTO `produit_entree` (`id`, `Nom_prod`, `qte`, `Date_entree`, `fournisseur`) VALUES
(9, 'k12', 0, '2017-12-31', 'UJU'),
(10, 'K25', 99, '2017-12-03', 'IJIJ'),
(1, 'Produit 1', -38, '2017-12-02', 'FGJG'),
(2, 'Produit 2', 400, '2017-11-04', 'HHHH'),
(3, 'Produit 3', 200, '2017-12-01', 'TOTALE'),
(5, 'Produit 4', 0, '2017-12-02', '45'),
(4, 'Produit 5', 0, '2017-12-02', '45'),
(8, 'Produit 6', 0, '2017-12-10', 'FGFG'),
(7, 'Produit 7', 100, '2017-12-17', 'JHJJ'),
(6, 'Produit 8', 300, '2017-12-31', 'IMAD'),
(11, 'SACS KAKI', 120, '2017-12-03', 'snv');

-- --------------------------------------------------------

--
-- Structure de la table `produit_sortie`
--

CREATE TABLE `produit_sortie` (
  `id` int(11) UNSIGNED NOT NULL,
  `Nom_prod` varchar(32) NOT NULL,
  `qte` int(6) NOT NULL,
  `Date_sortie` date NOT NULL,
  `fournisseur` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit_sortie`
--

INSERT INTO `produit_sortie` (`id`, `Nom_prod`, `qte`, `Date_sortie`, `fournisseur`) VALUES
(1, 'Produit 1', 234, '2017-12-02', 'FGJG'),
(2, 'Produit 2 ', 100, '2017-11-17', ''),
(3, 'Produit 3', 2000, '2017-12-02', ''),
(4, 'Produit 5', 120, '2017-12-08', ''),
(5, 'Produit 4', 294000, '2017-12-09', ''),
(6, 'Produit 8', 200, '2017-12-09', 'IMAD'),
(7, 'Produit 7', 200, '2017-12-16', ''),
(8, 'Produit 6', 30, '2017-12-09', ''),
(9, 'k12', 70, '2017-12-29', 'ooooo');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Index pour la table `produit_entree`
--
ALTER TABLE `produit_entree`
  ADD PRIMARY KEY (`Nom_prod`);

--
-- Index pour la table `produit_sortie`
--
ALTER TABLE `produit_sortie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Nom_prod` (`Nom_prod`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit_sortie`
--
ALTER TABLE `produit_sortie`
  ADD CONSTRAINT `Nom_prod` FOREIGN KEY (`Nom_prod`) REFERENCES `produit_entree` (`Nom_prod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
