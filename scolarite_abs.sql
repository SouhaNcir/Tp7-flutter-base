-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 10 nov. 2026 à 11:04
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `scolarite_abs`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

CREATE TABLE `absence` (
  `cod_mat` varchar(20) NOT NULL,
  `nce` varchar(20) NOT NULL,
  `date_a` date NOT NULL,
  `nha` decimal(4,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `absence`
--

INSERT INTO `absence` (`cod_mat`, `nce`, `date_a`, `nha`) VALUES
('AFCP', 'E1', '2025-10-04', 4.5),
('AFCP', 'E1', '2025-11-11', 1.5),
('SOA', 'E1', '2025-10-16', 3.0),
('SOA', 'E1', '2025-10-20', 1.5),
('SOA', 'E1', '2025-10-23', 3.0);

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `cod_class` int(11) NOT NULL,
  `nom_class` varchar(50) NOT NULL,
  `nbr_etud` int(11) DEFAULT 0,
  `cod_dept` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`cod_class`, `nom_class`, `nbr_etud`, `cod_dept`) VALUES
(1, 'DSI33', 2, 1),
(2, 'DSI31', 1, 1),
(3, 'GM11', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `cod_dept` int(11) NOT NULL,
  `nom_dept` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`cod_dept`, `nom_dept`) VALUES
(1, 'TI'),
(2, 'GM');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `nce` varchar(20) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_nais` date DEFAULT NULL,
  `lieu_nais` varchar(50) DEFAULT NULL,
  `cod_class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`nce`, `nom`, `prenom`, `date_nais`, `lieu_nais`, `cod_class`) VALUES
('E1', 'Ben Foulen1', 'Foulen1', '2002-05-14', 'Tunis', 1),
('E2', 'Trabelsi', 'Amira', '2001-11-02', 'Sfax', 1),
('E3', 'Gharbi', 'Youssef', '2002-03-21', 'Sousse', 2),
('E4', 'Mansouri', 'Ines', '2002-07-09', 'Tunis', 3);

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `cod_mat` varchar(20) NOT NULL,
  `int_mat` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`cod_mat`, `int_mat`, `description`) VALUES
('AFCP', 'Framework cross-platform', NULL),
('MOB', 'Développement mobile', NULL),
('SOA', 'Architecture orientée services', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`cod_mat`,`nce`,`date_a`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`cod_class`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`cod_dept`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`nce`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`cod_mat`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `cod_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `cod_dept` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
