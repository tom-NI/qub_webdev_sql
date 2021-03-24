-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 20, 2021 at 02:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkilpatrick01`
--

-- --------------------------------------------------------

--
-- Table structure for table `epl_admins`
--

CREATE TABLE `epl_admins` (
  `AdminID` int(11) NOT NULL,
  `AdminName` varchar(100) NOT NULL,
  `AdminSurname` varchar(100) NOT NULL,
  `AdminEmail` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_api_users`
--

CREATE TABLE `epl_api_users` (
  `id` int(11) NOT NULL,
  `UserFirstName` varchar(100) NOT NULL,
  `UserSecondName` varchar(100) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `UserKey` varchar(255) NOT NULL,
  `OrganisationName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_away_team_stats`
--

CREATE TABLE `epl_away_team_stats` (
  `AwayTeamStatID` int(11) NOT NULL,
  `AwayClubName` varchar(100) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `ATTotalGoals` int(11) NOT NULL,
  `ATHalfTimeGoals` int(11) NOT NULL,
  `ATShots` int(11) NOT NULL,
  `ATShotsOnTarget` int(11) NOT NULL,
  `ATCorners` int(11) NOT NULL,
  `ATFouls` int(11) NOT NULL,
  `ATYellowCards` int(11) NOT NULL,
  `ATRedCards` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_clubs`
--

CREATE TABLE `epl_clubs` (
  `ClubID` int(11) NOT NULL,
  `ClubName` varchar(255) NOT NULL,
  `ClubLogoURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_home_team_stats`
--

CREATE TABLE `epl_home_team_stats` (
  `HomeTeamStatID` int(11) NOT NULL,
  `HomeClubName` varchar(100) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `HTTotalGoals` int(11) NOT NULL,
  `HTHalfTimeGoals` int(11) NOT NULL,
  `HTShots` int(11) NOT NULL,
  `HTShotsOnTarget` int(11) NOT NULL,
  `HTCorners` int(11) NOT NULL,
  `HTFouls` int(11) NOT NULL,
  `HTYellowCards` int(11) NOT NULL,
  `HTRedCards` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_matches`
--

CREATE TABLE `epl_matches` (
  `MatchID` int(11) NOT NULL,
  `SeasonYears` varchar(100) NOT NULL,
  `MatchDate` varchar(255) NOT NULL,
  `KickOffTime` varchar(255) DEFAULT NULL,
  `RefereeName` varchar(100) NOT NULL,
  `AddedByUserID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_match_edits`
--

CREATE TABLE `epl_match_edits` (
  `EditID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `EditedByUserID` varchar(100) NOT NULL,
  `EditDescription` varchar(255) NOT NULL,
  `EditedDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_referees`
--

CREATE TABLE `epl_referees` (
  `RefereeID` int(11) NOT NULL,
  `RefereeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_seasons`
--

CREATE TABLE `epl_seasons` (
  `SeasonID` int(11) NOT NULL,
  `SeasonYears` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_site_users`
--

CREATE TABLE `epl_site_users` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `UserSurname` varchar(100) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `UserPassword` varchar(255) NOT NULL,
  `UserEmailConfirmed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `epl_admins`
--
ALTER TABLE `epl_admins`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `epl_api_users`
--
ALTER TABLE `epl_api_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `epl_away_team_stats`
--
ALTER TABLE `epl_away_team_stats`
  ADD PRIMARY KEY (`AwayTeamStatID`),
  ADD KEY `fk_matchname` (`MatchID`),
  ADD KEY `fk_awayclubid` (`AwayClubName`);

--
-- Indexes for table `epl_clubs`
--
ALTER TABLE `epl_clubs`
  ADD PRIMARY KEY (`ClubID`);

--
-- Indexes for table `epl_home_team_stats`
--
ALTER TABLE `epl_home_team_stats`
  ADD PRIMARY KEY (`HomeTeamStatID`),
  ADD KEY `fk_newmatchname` (`MatchID`),
  ADD KEY `fk_clubId` (`HomeClubName`);

--
-- Indexes for table `epl_matches`
--
ALTER TABLE `epl_matches`
  ADD PRIMARY KEY (`MatchID`),
  ADD KEY `fk_referee` (`RefereeName`),
  ADD KEY `fk_season` (`SeasonYears`);

--
-- Indexes for table `epl_match_edits`
--
ALTER TABLE `epl_match_edits`
  ADD PRIMARY KEY (`EditID`),
  ADD KEY `fk_user_who_edited` (`EditedByUserID`),
  ADD KEY `fk_match_id` (`MatchID`);

--
-- Indexes for table `epl_referees`
--
ALTER TABLE `epl_referees`
  ADD PRIMARY KEY (`RefereeID`);

--
-- Indexes for table `epl_seasons`
--
ALTER TABLE `epl_seasons`
  ADD PRIMARY KEY (`SeasonID`);

--
-- Indexes for table `epl_site_users`
--
ALTER TABLE `epl_site_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `epl_admins`
--
ALTER TABLE `epl_admins`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50000;

--
-- AUTO_INCREMENT for table `epl_api_users`
--
ALTER TABLE `epl_api_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `epl_away_team_stats`
--
ALTER TABLE `epl_away_team_stats`
  MODIFY `AwayTeamStatID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `epl_clubs`
--
ALTER TABLE `epl_clubs`
  MODIFY `ClubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT for table `epl_home_team_stats`
--
ALTER TABLE `epl_home_team_stats`
  MODIFY `HomeTeamStatID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `epl_matches`
--
ALTER TABLE `epl_matches`
  MODIFY `MatchID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `epl_match_edits`
--
ALTER TABLE `epl_match_edits`
  MODIFY `EditID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `epl_referees`
--
ALTER TABLE `epl_referees`
  MODIFY `RefereeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `epl_seasons`
--
ALTER TABLE `epl_seasons`
  MODIFY `SeasonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `epl_site_users`
--
ALTER TABLE `epl_site_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `epl_away_team_stats`
--
ALTER TABLE `epl_away_team_stats`
  ADD CONSTRAINT `fk_matchname` FOREIGN KEY (`MatchID`) REFERENCES `epl_matches` (`MatchID`);

--
-- Constraints for table `epl_home_team_stats`
--
ALTER TABLE `epl_home_team_stats`
  ADD CONSTRAINT `fk_newmatchname` FOREIGN KEY (`MatchID`) REFERENCES `epl_matches` (`MatchID`);

--
-- Constraints for table `epl_match_edits`
--
ALTER TABLE `epl_match_edits`
  ADD CONSTRAINT `fk_match_id` FOREIGN KEY (`MatchID`) REFERENCES `epl_matches` (`MatchID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
