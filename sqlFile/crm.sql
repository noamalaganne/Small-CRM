-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 17 juin 2022 à 12:18
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `crm`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `prequest`
--

CREATE TABLE `prequest` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `wdd` varchar(255) DEFAULT NULL,
  `cms` varchar(255) DEFAULT NULL,
  `seo` varchar(255) DEFAULT NULL,
  `smo` varchar(255) DEFAULT NULL,
  `swd` varchar(255) DEFAULT NULL,
  `dwd` varchar(255) DEFAULT NULL,
  `fwd` varchar(255) DEFAULT NULL,
  `dr` varchar(255) DEFAULT NULL,
  `whs` varchar(255) DEFAULT NULL,
  `wm` varchar(255) DEFAULT NULL,
  `ed` varchar(255) DEFAULT NULL,
  `wta` varchar(255) DEFAULT NULL,
  `opi` varchar(255) DEFAULT NULL,
  `ld` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  `osc` varchar(255) DEFAULT NULL,
  `nd` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `query` longtext DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `prequest`
--

INSERT INTO `prequest` (`id`, `name`, `email`, `contactno`, `company`, `wdd`, `cms`, `seo`, `smo`, `swd`, `dwd`, `fwd`, `dr`, `whs`, `wm`, `ed`, `wta`, `opi`, `ld`, `da`, `osc`, `nd`, `others`, `query`, `posting_date`, `remark`, `status`) VALUES
(1, 'lmct65', 'lmct65@local.fr', '0123456789', 'marie curie', 'Website Design & Development', '', '', '', '', '', '', '', 'Web Hosting Services', 'Website Maintenance', '', '', '', '', '', '', 'NewsLetter Design', '', 'Demande de devis pour le site du bde', '2022-06-16', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `ticket_id` varchar(11) DEFAULT NULL,
  `email_id` varchar(300) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `task_type` varchar(300) DEFAULT NULL,
  `prioprity` varchar(300) DEFAULT NULL,
  `ticket` longtext DEFAULT NULL,
  `attachment` varchar(300) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  `admin_remark` longtext DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `admin_remark_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_id`, `email_id`, `subject`, `task_type`, `prioprity`, `ticket`, `attachment`, `status`, `admin_remark`, `posting_date`, `admin_remark_date`) VALUES
(1, '8', 'psaury@local.fr', 'facture 12-006 manquante', 'billing', 'important', 'Facture numÃ©ro 12-006 manquante ; Merci de ma la faire parvenir avant la fin du mois.', NULL, 'Open', NULL, '2022-06-16', '2022-06-16 19:33:36');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `alt_email`, `password`, `mobile`, `gender`, `address`, `status`, `posting_date`) VALUES
(1, 'saury', 'psaury@local.fr', NULL, 'sorry', '0687563443', 'm', NULL, NULL, '2022-06-16 20:21:34'),
(2, 'lmct65', 'lmct65@local.fr', NULL, 'lmct65', '0123456789', 'm', NULL, NULL, '2022-06-16 13:48:53'),
(3, 'Anuj Kumar', 'anuj@local.fr', NULL, 'a@123', NULL, 'm', NULL, NULL, '2022-04-22 12:25:19');

-- --------------------------------------------------------

--
-- Structure de la table `usercheck`
--

CREATE TABLE `usercheck` (
  `id` int(11) NOT NULL,
  `logindate` varchar(255) DEFAULT '',
  `logintime` varchar(255) DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `ip` varbinary(16) DEFAULT NULL,
  `mac` varbinary(15) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `usercheck`
--

INSERT INTO `usercheck` (`id`, `logindate`, `logintime`, `user_id`, `username`, `email`, `ip`, `mac`, `city`, `country`) VALUES
(1, '2022/06/16', '02:31:36pm', 2, 'lmct65', 'lmct65@local.fr', 0x39312e3136362e3235302e3838, 0x43302d31382d38352d33352d32352d, 'Tarbes', 'France'),
(2, '2022/06/16', '07:12:44pm', 1, 'saury', 'psaury@local.fr', 0x39312e3136362e3230332e3732, 0x30302d30322d32442d31312d35352d, 'Toulouse', 'France'),
(3, '2022/06/17', '09:09:21am', 2, 'lmct65', 'lmct65@local.fr', 0x39312e3136362e3235302e3838, 0x43302d31382d38352d33352d32352d, 'Tarbes', 'France'),
(4, '2022/06/17', '12:10:08pm', 1, 'saury', 'psaury@local.fr', 0x39312e3136362e3230332e3732, 0x30302d30322d32442d31312d35352d, 'Toulouse', 'France'),
(5, '2022/06/18', '12:35:25pm', 1, 'saury', 'psaury@local.fr', 0x39312e3136362e3230332e3732, 0x30302d30322d32442d31312d35352d, 'Toulouse', 'France'),
(6, '2022/06/19', '05:43:32am', 1, 'saury', 'guyfawkes@nowhere.fr', 0x3136342e3130302e3135362e3230, 0x30302d31302d35412d34342d31322d, 'New Delhi', 'India');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prequest`
--
ALTER TABLE `prequest`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `usercheck`
--
ALTER TABLE `usercheck`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `prequest`
--
ALTER TABLE `prequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `usercheck`
--
ALTER TABLE `usercheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
