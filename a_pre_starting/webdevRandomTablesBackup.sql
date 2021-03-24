-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2021 at 12:18 PM
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
-- Table structure for table `07myfacts`
--

CREATE TABLE `07myfacts` (
  `id` int(11) NOT NULL,
  `factcontent` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `07myfacts`
--

INSERT INTO `07myfacts` (`id`, `factcontent`) VALUES
(2, 'The 100 folds in a chef\'s toque are said to represent 100 ways to cook an egg.'),
(3, 'Guinness estimates that 93,000 litres of beer are lost in facial hair each year in the UK alone.'),
(4, 'Some cats are allergic to humans.'),
(5, 'Volvo gave away the 1962 patent for their revolutionary three-point seat belt for free, in order to save lives.'),
(6, 'Ravens in captivity can learn to talk better than parrots.');

-- --------------------------------------------------------

--
-- Table structure for table `7084guitarstock`
--

CREATE TABLE `7084guitarstock` (
  `id` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `maker` varchar(50) NOT NULL,
  `descript` varchar(500) NOT NULL,
  `price` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `7084guitarstock`
--

INSERT INTO `7084guitarstock` (`id`, `product`, `maker`, `descript`, `price`) VALUES
(100, 'Stratocaster', 'Fender', 'First designed in 1954 by Leo Fender and probably the most recognisable electric guitar in the world.', '899.00'),
(102, 'Streamliner G2210', 'Gretsch', 'The G2210 Streamliner Junior Jet Club is a stripped-down workhouse that’s built to take a beating.', '299.00'),
(103, 'Telecaster', 'Fender', 'Its simple yet effective design and revolutionary sound broke ground and set trends in electric guitar manufacturing and popular music. ', '759.00'),
(105, 'Flying V', 'Gibson', 'The Flying V still has heads turning to this day over half a century since its release.', '1399.00'),
(106, 'Jazzmaster', 'Fender', 'The Jazzmaster ultimately became the alternative Fender guitar, for the players looking to stand out from the crowd and make a musical statement.', '689.00'),
(107, 'Ibanez ART120QASB', 'Ibanez', 'Ibanez ART are affordable solid body electric guitars based on the Ibanez Artist model.', '325.00'),
(108, 'Les Paul', 'Gibson', 'The Gibson Les Paul is one of the two most iconic guitar designs in the world. Renowned for its single-cutaway body shape.', '1099.00'),
(109, 'Stratocaster', 'Fender', 'Nice new guitar', '9.99'),
(110, 'Whatevs', 'Fender', 'Lovely lovely instrument', '9.99'),
(111, 'Lovely new geetar', 'Gibson', 'nice one', '300.00');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `purchase_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kaggle_data`
--

CREATE TABLE `kaggle_data` (
  `id` int(11) NOT NULL,
  `url_path` varchar(81) DEFAULT NULL,
  `col_num` int(2) DEFAULT NULL,
  `user_rating` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kaggle_data`
--

INSERT INTO `kaggle_data` (`id`, `url_path`, `col_num`, `user_rating`) VALUES
(1, 'tps://www.kaggle.com/lava18/google-play-store-apps', 15, 5),
(2, 'https://www.kaggle.com/shivamb/netflix-shows', 45, 6),
(3, 'https://www.kaggle.com/rounakbanik/the-movies-dataset', 34, 5),
(4, 'https://www.kaggle.com/gregorut/videogamesales', 12, 4),
(5, 'https://www.kaggle.com/sootersaalu/amazon-top-50-bestselling-books-2009-2019', 13, 3),
(6, 'https://www.kaggle.com/datasnaek/youtube-new', 7, 7),
(7, 'https://www.kaggle.com/dgomonov/new-york-city-airbnb-open-data', 9, 8),
(8, 'https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results', 10, 5),
(9, 'https://www.kaggle.com/aaron7sun/stocknews', 11, 7),
(10, 'https://www.kaggle.com/fivethirtyeight/fivethirtyeight-comic-characters-dataset', 23, 4),
(11, 'https://www.kaggle.com/martj42/international-football-results-from-1872-to-2017', 35, 3),
(12, 'https://www.kaggle.com/jealousleopard/goodreadsbooks', 52, 8),
(13, 'https://www.kaggle.com/ramamet4/app-store-apple-data-set-10k-apps', 13, 9),
(14, 'https://www.kaggle.com/mylesoneill/game-of-thrones?select=character-deaths.csv', 23, 7),
(15, 'https://www.kaggle.com/abecklas/fifa-world-cup', 26, 6),
(16, 'https://www.kaggle.com/rounakbanik/ted-talks', 27, 4),
(17, 'https://www.kaggle.com/rounakbanik/pokemon', 12, 8),
(18, 'https://www.kaggle.com/CooperUnion/anime-recommendations-database', 11, 3),
(19, 'https://www.kaggle.com/rush4ratio/video-game-sales-with-ratings', 32, 5),
(20, 'https://www.kaggle.com/drgilermo/nba-players-stats', 31, 7),
(21, 'https://www.kaggle.com/tristan581/17k-apple-app-store-strategy-games', 21, 3),
(22, 'https://www.kaggle.com/austinreese/craigslist-carstrucks-data', 22, 8),
(23, 'https://www.kaggle.com/rtatman/chocolate-bar-ratings', 8, 6),
(24, 'https://www.kaggle.com/cjgdev/formula-1-race-data-19502017', 9, 7);

-- --------------------------------------------------------

--
-- Table structure for table `mybooks06`
--

CREATE TABLE `mybooks06` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `author` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mybooks06`
--

INSERT INTO `mybooks06` (`id`, `title`, `author`) VALUES
(1, 'The Adventures of Tom Sawyer', 'Mark Twain'),
(2, 'Pride and Prejudice	', 'Jane Austen'),
(3, 'The Origin of the Species', 'Charles Darwin'),
(4, 'The Grapes of Wrath', 'John Steinbeck'),
(5, 'To the Lighthouse', 'Virginia Woolf');

-- --------------------------------------------------------

--
-- Table structure for table `oscars`
--

CREATE TABLE `oscars` (
  `id` int(11) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `winner` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oscars`
--

INSERT INTO `oscars` (`id`, `movie_name`, `year`, `winner`) VALUES
(3, 'The Shape of Summer', 2018, 1),
(5, 'Black Panther Eh what?', 2019, 1),
(8, 'The Posting', 2018, 0),
(9, 'Phantom Thread', 2018, 0),
(10, 'Get In', 2018, 0),
(11, 'The Favourite', 2019, 0),
(13, 'Blackkklansman', 2019, 0),
(16, 'Green Book', 2019, 0),
(19, 'Bohemian Rhapsody', 2019, 0),
(20, 'Darkest Hour', 2018, 0),
(21, 'Call me by your name', 2018, 0),
(24, 'Lady Bird', 2018, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz7`
--

CREATE TABLE `quiz7` (
  `id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz7`
--

INSERT INTO `quiz7` (`id`, `content`, `answer`, `mark`) VALUES
(1, 'Who was the first man to fly around the earth', 'Gagarin', 1),
(2, 'On Which hemisphere were the most dinosaur skeletons', 'Northern', 1),
(3, 'What colour is cobalt', 'Blue', 1),
(4, 'What device do we use to look at the stars?', 'telescope', 1),
(5, 'Which Unit indicates the intensity of light', 'Candela', 2),
(6, 'What is the lightest known metal?', 'Aluminium', 2),
(7, 'What did Alexander Fleming discover?', 'Penicillin', 2),
(8, 'Which planet is nearest the sun?', 'Mercury', 3),
(9, 'What was the name of the first computer network?', 'Arpanet', 1),
(10, 'In what year was google launced on the web?', '1998', 2),
(11, 'In which european city can you find the home of Anne Frank?', 'Amsterdam', 1),
(12, 'How many stars has the American flag got', 'Fifty', 2),
(13, 'How long in miles is the great wall of China?', '4000', 2),
(14, 'Which animal is on the golden Flemish flag', 'Lion', 2),
(15, 'Which South American country is named after Venice?', 'Venezuela', 2),
(16, 'How many stars feature on the flag of New Zealand', '4', 2),
(17, 'What colour do you get when you mix red and white?', 'Pink', 1);

-- --------------------------------------------------------

--
-- Table structure for table `solar_system`
--

CREATE TABLE `solar_system` (
  `id` int(11) NOT NULL,
  `planet` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solar_system`
--

INSERT INTO `solar_system` (`id`, `planet`, `description`) VALUES
(45, 'tommylad', 'Mercury is the closest planet to the sun. As such, it circles the sun faster than all the other planets, which is why Romans named it after their swift-footed messenger god.'),
(56, 'Venus', 'Venus, the second planet from the sun, is named after the Roman goddess of love and beauty and is the only planet named after a female.'),
(79, 'Earth', 'Earth, our home, is the third planet from the sun. It\'s the only planet known to have an atmosphere containing free oxygen, oceans of water on its surface and, of course, life.'),
(81, 'Mars', 'Needs data.');

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `town` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` (`id`, `name`, `address`, `town`, `email`, `telephone`) VALUES
(1, 'J Busch', '23 Park st', 'BallyPoe', 'jbusch@my.com', '089999 123434'),
(2, 'A Morrow', '4 Loop Ave', 'Red Town', 'amorrow@my.com', '089356 999099'),
(3, 'H Pollock', '78 Hammersmyth st', 'Aller', 'hpollock@my.com', '099699 800887'),
(4, 'R Giles', '3 Grange Hill', 'Red Town', 'giles@my.com', '0769274759322'),
(5, 'C Moo', '23 Farm Park', 'Smeek', 'moohead@my.com', '075939275503'),
(6, 'D Quack', '22 Pond St', 'Red Town', 'quack@my.com', '37559223455'),
(7, 'S Baa', '2 Upper Field Way', 'Ballypoe', 'baabaa@my.com', '075320485833');

-- --------------------------------------------------------

--
-- Table structure for table `usa_population`
--

CREATE TABLE `usa_population` (
  `id` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pop2018` int(11) NOT NULL,
  `pop2019` int(11) NOT NULL,
  `pop2020` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usa_population`
--

INSERT INTO `usa_population` (`id`, `state`, `pop2018`, `pop2019`, `pop2020`) VALUES
(2, 'Alabama', 4902604, 4903185, 4906850),
(3, 'Alaska', 730571, 731545, 723937),
(4, 'Arizona', 7279601, 7278717, 7278334),
(5, 'Arkansas', 3017356, 3017804, 3027087),
(6, 'California', 39511672, 39512223, 39518984),
(7, 'Colorado', 5757763, 5758736, 5758348),
(8, 'Connecticut', 3564683, 3565287, 3563530),
(9, 'Delaware', 974094, 973764, 975925),
(10, 'District of Columbia', 705045, 705749, 711376),
(11, 'Florida', 21477268, 21477737, 21477337),
(12, 'Georgia', 10618068, 10617423, 10622117),
(13, 'Hawaii', 1414906, 1415872, 1423446),
(14, 'Idaho', 1787354, 1787065, 1795107),
(15, 'Illinois', 12672075, 12671821, 12672865),
(16, 'Indiana', 6732260, 6732219, 6737459),
(17, 'Iowa', 3155455, 3155070, 3150328),
(18, 'Kansas', 2913523, 2913314, 2914481),
(19, 'Kentucky', 4467451, 4467673, 4473875),
(20, 'Louisiana', 4649638, 4648794, 4657161),
(21, 'Maine', 1344826, 1344212, 1351204),
(22, 'Maryland', 6044752, 6045680, 6037583),
(23, 'Massachusetts', 6893223, 6892503, 6888867),
(24, 'Michigan', 9987692, 9986857, 9993090),
(25, 'Minnesota', 5638689, 5639632, 5646362),
(26, 'Mississippi', 2975863, 2976149, 2977989),
(27, 'Missouri', 6136586, 6137428, 6144935),
(28, 'Montana', 1068138, 1068778, 1076674),
(29, 'Nebraska', 1934638, 1934408, 1936282),
(30, 'Nevada', 3080561, 3080156, 3089737),
(31, 'New Hampshire', 1360017, 1359711, 1354865),
(32, 'New Jersey', 8883022, 8882190, 8882979),
(33, 'New Mexico', 2097822, 2096829, 2095363),
(34, 'New York', 19453391, 19453561, 19450311),
(35, 'North Carolina', 10487365, 10488084, 10486826),
(36, 'North Dakota', 761400, 762062, 769253),
(37, 'Ohio', 11688353, 11689100, 11689665),
(38, 'Oklahoma', 3956591, 3956971, 3958965),
(39, 'Oregon', 4218054, 4217737, 4223820),
(40, 'Pennsylvania', 12801891, 12801989, 12805443),
(41, 'Rhode Island', 1058638, 1059361, 1054397),
(42, 'South Carolina', 5148645, 5148714, 5156202),
(43, 'South Dakota', 884902, 884659, 893409),
(44, 'Tennessee', 6828626, 6829174, 6822144),
(45, 'Texas', 28995660, 28995881, 29000400),
(46, 'Utah', 3205019, 3205958, 3211917),
(47, 'Vermont', 624965, 623989, 615243),
(48, 'Virginia', 8534655, 8535519, 8539765),
(49, 'Washington', 7615224, 7614893, 7611315),
(50, 'West Virginia', 1791615, 1792147, 1788783),
(51, 'Wisconsin', 5821765, 5822434, 5823659),
(52, 'Wyoming', 578536, 578759, 577924);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `07myfacts`
--
ALTER TABLE `07myfacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `7084guitarstock`
--
ALTER TABLE `7084guitarstock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kaggle_data`
--
ALTER TABLE `kaggle_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mybooks06`
--
ALTER TABLE `mybooks06`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oscars`
--
ALTER TABLE `oscars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz7`
--
ALTER TABLE `quiz7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solar_system`
--
ALTER TABLE `solar_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usa_population`
--
ALTER TABLE `usa_population`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `07myfacts`
--
ALTER TABLE `07myfacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `7084guitarstock`
--
ALTER TABLE `7084guitarstock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kaggle_data`
--
ALTER TABLE `kaggle_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `mybooks06`
--
ALTER TABLE `mybooks06`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oscars`
--
ALTER TABLE `oscars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `quiz7`
--
ALTER TABLE `quiz7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `solar_system`
--
ALTER TABLE `solar_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `studentdetails`
--
ALTER TABLE `studentdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usa_population`
--
ALTER TABLE `usa_population`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
