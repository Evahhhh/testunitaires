-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 27 nov. 2023 à 13:54
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pers`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE `adresse` (
  `id` int(9) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `rue` varchar(100) NOT NULL,
  `codepostal` varchar(10) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `id_pers` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`id`, `numero`, `rue`, `codepostal`, `ville`, `id_pers`) VALUES
(16, '8', 'Somewhere', '49100', 'Nowhere', 6);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `edition` varchar(50) NOT NULL,
  `information` text NOT NULL,
  `AUTEUR` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `edition`, `information`, `AUTEUR`) VALUES
(2, 'L’Étranger', 'Gallimard', '', 'Albert Camus'),
(3, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(4, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(5, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(6, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(7, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(8, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(9, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(10, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(11, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(12, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(14, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(15, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(16, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(17, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(18, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(19, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(20, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(21, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(22, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(23, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(24, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(25, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(26, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(27, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(28, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(29, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(30, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(31, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(32, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(33, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(34, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(36, 'test', 'test', 'test', 'test'),
(37, 'gfhfg', 'fghfg', 'hggfgg', 'fghf'),
(38, 'dsfdsffsd', 'sdfdsdf', 'sdfsddfd', 'sfddsf'),
(39, 'dfgdffgf', 'fgdfg', 'dfgd', 'dfgdfg'),
(40, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(41, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(42, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(43, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(44, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(45, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(46, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(47, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(48, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(49, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(50, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(51, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(52, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(53, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(54, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(55, 'vxcvxc', 'vcxxcv', 'vcxcvxccv', 'cvxxccvxcv'),
(56, 'gdfg', 'gdffg', 'dgg', 'dfgd'),
(57, 'gtuui', 'tyutu', 'tutu', 'yutyy'),
(58, 'd', 'dfgd', 'dfgd', 'dg'),
(59, 'd', 'dfgd', 'dfgd', 'dg'),
(60, '(-è(è', '(-è', '(-è(è', '(-è(-'),
(61, 'Les miserables', 'Galimmard', 'Victor Hugo', 'livre en bon état'),
(62, '-(è(', '(-è(-', '(-è(-', '(-è('),
(63, 'Les miserables', 'Gallimard', 'Victor Hugo', 'Livre en bon état'),
(64, 'Les miserables', 'Galimmard', 'Victor Hugo', 'livre en bon état'),
(65, 'Les miserables', 'Gallimard', 'Victor Hugo', 'Livre en bon état'),
(66, 'Les miserables', 'Gallimard', 'Victor Hugo', 'Livre en bon état'),
(67, 'Les miserables', 'Gallimard', 'Victor Hugo', 'Livre en bon état'),
(68, 'Les miserables', 'Gallimard', 'Victor Hugo', 'Livre en bon état'),
(69, 'Les miserables', 'Gallimard', 'Victor Hugo', 'Livre en bon état'),
(70, 'Les miserables', 'Gallimard', 'Victor Hugo', 'Livre en bon état'),
(71, 'Les miserables', 'Gallimard', 'Victor Hugo', 'Livre en bon état');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(9) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `datenaissance` datetime NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `datenaissance`, `telephone`, `email`, `login`, `pwd`) VALUES
(6, 'test', 'test', '2000-01-01 00:00:00', '0600000001', 'user@domain.mail', 'jvaljean', '098f6bcd4621d373cade4e832627b4f6'),
(7, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(9, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(10, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(11, 'dsfs', 'fddsfds', '0000-00-00 00:00:00', '', 'sdfds@free.fr', 'fsdfsd', 'f4afe93ad799484b1d512cc20e93efd1'),
(12, 'fdfgfd', 'gdfgffg', '0000-00-00 00:00:00', '', 'toto@free.Fr', 'toto', 'f71dbe52628a3f83a77ab494817525c6'),
(13, 'titi', 'tutu', '0000-00-00 00:00:00', '', 'titi@free.fr', 'titi', '5d933eef19aee7da192608de61b6c23d'),
(15, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(16, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(18, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(19, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(21, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(22, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(24, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(25, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(27, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(28, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(30, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(31, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_idpers` (`id_pers`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_idpers` (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adresse`
--
ALTER TABLE `adresse`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD CONSTRAINT `adresse_ibfk_1` FOREIGN KEY (`id_pers`) REFERENCES `personne` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
