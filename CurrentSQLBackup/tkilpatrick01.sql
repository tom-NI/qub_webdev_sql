-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2021 at 03:16 PM
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
-- Table structure for table `epl_away_team_match_stats`
--

CREATE TABLE `epl_away_team_match_stats` (
  `AwayTeamStatID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `TotalGoals` int(11) NOT NULL,
  `HalfTimeGoals` int(11) NOT NULL,
  `Shots` int(11) NOT NULL,
  `ShotsOnTarget` int(11) NOT NULL,
  `Corners` int(11) NOT NULL,
  `Fouls` int(11) NOT NULL,
  `YellowCards` int(11) NOT NULL,
  `RedCards` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_club_names`
--

CREATE TABLE `epl_club_names` (
  `ClubID` int(11) NOT NULL,
  `ClubName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_home_team_match_stats`
--

CREATE TABLE `epl_home_team_match_stats` (
  `HomeTeamStatID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `TotalGoals` int(11) NOT NULL,
  `HalfTimeGoals` int(11) NOT NULL,
  `Shots` int(11) NOT NULL,
  `ShotsOnTarget` int(11) NOT NULL,
  `Corners` int(11) NOT NULL,
  `Fouls` int(11) NOT NULL,
  `YellowCards` int(11) NOT NULL,
  `RedCards` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epl_matches`
--

CREATE TABLE `epl_matches` (
  `MatchID` int(11) NOT NULL,
  `SeasonID` int(11) NOT NULL,
  `MatchDate` varchar(255) NOT NULL,
  `KickOffTime` varchar(255) NOT NULL,
  `RefereeID` int(11) NOT NULL,
  `HomeClubID` int(11) NOT NULL,
  `AwayClubID` int(11) NOT NULL
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `epl_away_team_match_stats`
--
ALTER TABLE `epl_away_team_match_stats`
  ADD PRIMARY KEY (`AwayTeamStatID`),
  ADD KEY `fk_matchname` (`MatchID`);

--
-- Indexes for table `epl_club_names`
--
ALTER TABLE `epl_club_names`
  ADD PRIMARY KEY (`ClubID`);

--
-- Indexes for table `epl_home_team_match_stats`
--
ALTER TABLE `epl_home_team_match_stats`
  ADD PRIMARY KEY (`HomeTeamStatID`),
  ADD KEY `fk_newmatchname` (`MatchID`);

--
-- Indexes for table `epl_matches`
--
ALTER TABLE `epl_matches`
  ADD PRIMARY KEY (`MatchID`),
  ADD KEY `fk_referee` (`RefereeID`),
  ADD KEY `fk_homeclub` (`HomeClubID`),
  ADD KEY `fk_awayclub` (`AwayClubID`),
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `epl_away_team_match_stats`
--
ALTER TABLE `epl_away_team_match_stats`
  MODIFY `AwayTeamStatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `epl_club_names`
--
ALTER TABLE `epl_club_names`
  MODIFY `ClubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `epl_home_team_match_stats`
--
ALTER TABLE `epl_home_team_match_stats`
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
  MODIFY `RefereeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `epl_seasons`
--
ALTER TABLE `epl_seasons`
  MODIFY `SeasonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `epl_away_team_match_stats`
--
ALTER TABLE `epl_away_team_match_stats`
  ADD CONSTRAINT `fk_matchname` FOREIGN KEY (`MatchID`) REFERENCES `epl_matches` (`MatchID`);

--
-- Constraints for table `epl_home_team_match_stats`
--
ALTER TABLE `epl_home_team_match_stats`
  ADD CONSTRAINT `fk_newmatchname` FOREIGN KEY (`MatchID`) REFERENCES `epl_matches` (`MatchID`);

--
-- Constraints for table `epl_matches`
--
ALTER TABLE `epl_matches`
  ADD CONSTRAINT `fk_awayclub` FOREIGN KEY (`AwayClubID`) REFERENCES `epl_club_names` (`ClubID`),
  ADD CONSTRAINT `fk_homeclub` FOREIGN KEY (`HomeClubID`) REFERENCES `epl_club_names` (`ClubID`),
  ADD CONSTRAINT `fk_referee` FOREIGN KEY (`RefereeID`) REFERENCES `epl_referees` (`RefereeID`),
  ADD CONSTRAINT `fk_season` FOREIGN KEY (`SeasonID`) REFERENCES `epl_seasons` (`SeasonID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;