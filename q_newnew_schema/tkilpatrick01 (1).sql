-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 17, 2021 at 11:53 AM
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
-- Table structure for table `epl_away_team_stats`
--

CREATE TABLE `epl_away_team_stats` (
  `AwayTeamStatID` int(11) NOT NULL,
  `AwayClubID` int(11) NOT NULL,
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
  `ClubName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_home_team_stats`
--

CREATE TABLE `epl_home_team_stats` (
  `HomeTeamStatID` int(11) NOT NULL,
  `HomeClubID` int(11) NOT NULL,
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
  `SeasonID` int(11) NOT NULL,
  `MatchDate` varchar(255) NOT NULL,
  `KickOffTime` varchar(255) DEFAULT NULL,
  `RefereeID` int(11) NOT NULL
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
-- Table structure for table `epl_siteusers`
--

CREATE TABLE `epl_siteusers` (
  `userID` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `UserPassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `epl_away_team_stats`
--
ALTER TABLE `epl_away_team_stats`
  ADD PRIMARY KEY (`AwayTeamStatID`),
  ADD KEY `fk_matchname` (`MatchID`),
  ADD KEY `fk_awayclubid` (`AwayClubID`);

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
  ADD KEY `fk_clubId` (`HomeClubID`);

--
-- Indexes for table `epl_matches`
--
ALTER TABLE `epl_matches`
  ADD PRIMARY KEY (`MatchID`),
  ADD KEY `fk_referee` (`RefereeID`),
  ADD KEY `fk_season` (`SeasonID`);

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
-- Indexes for table `epl_siteusers`
--
ALTER TABLE `epl_siteusers`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `epl_away_team_stats`
--
ALTER TABLE `epl_away_team_stats`
  MODIFY `AwayTeamStatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `epl_clubs`
--
ALTER TABLE `epl_clubs`
  MODIFY `ClubID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `epl_home_team_stats`
--
ALTER TABLE `epl_home_team_stats`
  MODIFY `HomeTeamStatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `epl_matches`
--
ALTER TABLE `epl_matches`
  MODIFY `MatchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

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
-- AUTO_INCREMENT for table `epl_siteusers`
--
ALTER TABLE `epl_siteusers`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50000;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `epl_away_team_stats`
--
ALTER TABLE `epl_away_team_stats`
  ADD CONSTRAINT `fk_awayclubid` FOREIGN KEY (`AwayClubID`) REFERENCES `epl_clubs` (`ClubID`),
  ADD CONSTRAINT `fk_matchname` FOREIGN KEY (`MatchID`) REFERENCES `epl_matches` (`MatchID`);

--
-- Constraints for table `epl_home_team_stats`
--
ALTER TABLE `epl_home_team_stats`
  ADD CONSTRAINT `fk_clubId` FOREIGN KEY (`HomeClubID`) REFERENCES `epl_clubs` (`ClubID`),
  ADD CONSTRAINT `fk_newmatchname` FOREIGN KEY (`MatchID`) REFERENCES `epl_matches` (`MatchID`);

--
-- Constraints for table `epl_matches`
--
ALTER TABLE `epl_matches`
  ADD CONSTRAINT `fk_referee` FOREIGN KEY (`RefereeID`) REFERENCES `epl_referees` (`RefereeID`),
  ADD CONSTRAINT `fk_season` FOREIGN KEY (`SeasonID`) REFERENCES `epl_seasons` (`SeasonID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
