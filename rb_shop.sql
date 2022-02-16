-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 16 fév. 2022 à 18:40
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rb_shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom_categorie`) VALUES
(1, 'tea'),
(2, 'cafe'),
(3, 'chocolat'),
(5, 'vin'),
(9, 'boisson chaude');

-- --------------------------------------------------------

--
-- Structure de la table `couleur`
--

CREATE TABLE `couleur` (
  `id_couleur` int(11) NOT NULL,
  `nom_couleur` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `couleur`
--

INSERT INTO `couleur` (`id_couleur`, `nom_couleur`) VALUES
(1, 'blue'),
(2, 'blanc'),
(3, 'rouge'),
(4, 'jaune ');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(222) NOT NULL,
  `prix_produit` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `id_couleur` int(11) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `nom_produit`, `prix_produit`, `id_categorie`, `id_couleur`, `images`) VALUES
(1, 'un tres bon cafe', 22, 2, 1, '/images/cafe.jpg'),
(2, 'un tres bon cafe', 22, 2, 1, ''),
(3, 'un tea de qualité ', 11, 1, 3, ''),
(4, 'un tea de qualité ', 11, 1, 3, ''),
(5, 'cafe de samir', 23, 2, 3, ''),
(7, 'delabiere', 5, 5, 4, '/images/biere.jpn');

-- --------------------------------------------------------

--
-- Structure de la table `sous_catégorie`
--

CREATE TABLE `sous_catégorie` (
  `id_sous_catégorie` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `nom_sous_catégorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sous_catégorie`
--

INSERT INTO `sous_catégorie` (`id_sous_catégorie`, `id_categorie`, `nom_sous_catégorie`) VALUES
(1, 1, 'de france'),
(2, 2, 'de marseille');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `couleur`
--
ALTER TABLE `couleur`
  ADD PRIMARY KEY (`id_couleur`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `id_categorie` (`id_categorie`),
  ADD KEY `id_couleur` (`id_couleur`);

--
-- Index pour la table `sous_catégorie`
--
ALTER TABLE `sous_catégorie`
  ADD PRIMARY KEY (`id_sous_catégorie`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `couleur`
--
ALTER TABLE `couleur`
  MODIFY `id_couleur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `sous_catégorie`
--
ALTER TABLE `sous_catégorie`
  MODIFY `id_sous_catégorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produit_ibfk_2` FOREIGN KEY (`id_couleur`) REFERENCES `couleur` (`id_couleur`);

--
-- Contraintes pour la table `sous_catégorie`
--
ALTER TABLE `sous_catégorie`
  ADD CONSTRAINT `sous_catégorie_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
