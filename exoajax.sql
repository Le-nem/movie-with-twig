-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 31 mai 2022 à 09:32
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exoajax`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `categ_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`categ_id`, `category`, `created_at`) VALUES
(1, 'Thriller', '2022-05-23 21:39:24'),
(2, 'Action', '2022-05-23 21:39:24'),
(3, 'Romance', '2022-05-23 21:39:24'),
(4, 'Fiction', '2022-05-23 21:39:24'),
(5, 'Guerre', '2022-05-23 21:39:24'),
(6, 'Politique', '2022-05-23 21:39:24');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fk_categ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`movie_id`, `title`, `fk_categ`) VALUES
(64, ' Le Parrain (1972)\"', 1),
(65, ' The Dark Knight (2008)\"', 3),
(66, ' Les évadés (1994)\"', 4),
(67, ' Pulp Fiction (1994)\"', 5),
(68, ' Les Affranchis (1990)\"', 6),
(69, ' Les Aventuriers de l\'arche perdue (1981)\"', 1),
(70, ' Les Dents de la mer (1975)\"', 2),
(71, ' Le Seigneur des anneaux La Communauté de l\'anneau (2001)\"', 4),
(72, ' Retour vers le futur (1985)\"', 5),
(73, ' Le Parrain  (1974)\"', 6),
(74, ' Blade Runner (1982)\"', 1),
(75, ' Alien (1979)\"', 2),
(76, ' Aliens (1986)\"', 3),
(77, ' Le Seigneur des anneaux Le Retour du roi (2003)\"', 4),
(78, ' Fight Club de David Fincher (1999)\"', 5),
(79, ' Inception (2010)\"', 6),
(80, ' Jurrasic Park (1993)\"', 1),
(81, ' 2001 l\'Odyssée de l\'espace (1968)\"', 3),
(82, ' Apocalypse Now (1979)\"', 4),
(83, ' Le Seigneur des anneaux ( 2002)\"', 5),
(84, ' Matrix (1999)\"', 6),
(85, ' Terminator 2: Le Jugement dernier (1991)\"', 1),
(86, ' Heat (1996)\"', 2),
(87, ' Casablanca (1947)\"', 4),
(88, ' The Big Lebowski (1998)\"', 5),
(89, ' Seven (1996)\"', 6),
(90, ' Taxi Driver (1976)\"', 1),
(91, ' Usual Suspects (1995)\"', 2),
(92, ' La Liste de Schindler (1994)\"', 3),
(93, ' Les Gardiens de la Galaxie (2014)\"', 4),
(94, ' Shining (1980)\"', 5),
(95, ' Les Infiltrés (2006)\"', 6),
(96, ' The Thing (1982)\"', 1),
(97, ' Mad Max Fury Road (2015)\"', 2),
(98, ' Il faut sauver le soldat Ryan (1998)\"', 3),
(99, ' 12 hommes en colère (1957)\"', 4),
(100, ' Eternal Sunshine of the Spotless Mind (2004)\"', 5),
(101, ' There Will Be Blood (2008)\"', 6),
(102, ' Gladiator (2000)\"', 2),
(103, ' Drive (2011)\"', 3),
(104, ' Citizen Kane (1946)\"', 4),
(105, ' Interstellar (2014)\"', 5),
(106, ' Le Silence des Agneaux (1991)\"', 6),
(107, ' Trainspotting (1996)\"', 1),
(108, ' Lawrence d\'Arabie (1963)\"', 2),
(109, ' La vie est belle (1948)\"', 3),
(110, ' Il était une fois dans l\'Ouest (1969)\"', 4),
(111, ' Psychose (1960)\"', 5),
(112, ' Sueurs Froides (1958)\"', 6),
(113, ' Le Labyrinthe de Pan (2006)\"', 1),
(114, ' Reservoir Dogs (1992)\"', 2),
(115, ' Whiplash (2014)\"', 3),
(116, ' Inglourious Basterds (2009)\"', 4),
(117, ' E.T. (1982)\"', 5),
(118, ' American Beauty (2000)\"', 6),
(119, ' Forrest Gump (1994)\"', 1),
(120, ' La La Land (2017)\"', 2),
(121, ' Donnie Darko (2002)\"', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categ_id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `FK_CATEG_MOVIE` (`fk_categ`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `categ_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `FK_CATEG_MOVIE` FOREIGN KEY (`fk_categ`) REFERENCES `categories` (`categ_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
