-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 03, 2020 at 09:16 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre_a`
--

CREATE TABLE `tbl_genre_a` (
  `genre_a_id` int(11) NOT NULL,
  `genre_a_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre_a`
--

INSERT INTO `tbl_genre_a` (`genre_a_id`, `genre_a_name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-Hop');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre_m`
--

CREATE TABLE `tbl_genre_m` (
  `genre_m_id` int(11) NOT NULL,
  `genre_m_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre_m`
--

INSERT INTO `tbl_genre_m` (`genre_m_id`, `genre_m_name`) VALUES
(1, 'Adventure'),
(2, 'Action'),
(3, 'Mystery'),
(4, 'Family'),
(5, 'ScFi'),
(6, 'Thriller'),
(7, 'Musical'),
(8, 'Romance'),
(9, 'Drama'),
(10, 'Comedy');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre_t`
--

CREATE TABLE `tbl_genre_t` (
  `genre_t_id` int(11) NOT NULL,
  `genre_t_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre_t`
--

INSERT INTO `tbl_genre_t` (`genre_t_id`, `genre_t_name`) VALUES
(1, 'Comedy'),
(2, 'Sitcom'),
(3, 'Action'),
(4, 'Adventure'),
(5, 'Mystery'),
(6, 'Crime'),
(7, 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movie_id` int(11) NOT NULL,
  `movie_image` varchar(75) NOT NULL,
  `movie_title` varchar(125) NOT NULL,
  `movie_year` varchar(5) NOT NULL,
  `movie_video` varchar(75) NOT NULL,
  `movie_summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_image`, `movie_title`, `movie_year`, `movie_video`, `movie_summary`) VALUES
(1, 'window.png', 'Rear Window', '1954', 'rear_window.mp4', 'Professional photographer Jeff is stuck in his apartment, recuperating from a broken leg. Out of boredom, he begins to spy on his neighbours and comes across a shocking revelation.\r\n'),
(2, 'julie.jpg', 'The Sound of Music', '1965', 'sound_of_music.mp4', 'Maria, an aspiring nun, is sent as a governess to take care of seven motherless children. Soon her jovial and loving nature tames their hearts and the children become fond of her.\r\n'),
(3, 'starwars.jpg', 'Star Wars: A New Hope', '1977', 'star_wars.mp4', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.\r\n'),
(4, 'princess.jpg', 'The Princess Bride', '1987', 'princess_bride.mp4', 'While home sick in bed, a young boy\'s grandfather reads him the story of a farmboy-turned-pirate who encounters numerous obstacles, enemies and allies in his quest to be reunited with his true love.\r\n'),
(5, 'titanic.png', 'Titanic', '1997', 'titanic.mp4', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_m_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movie_id`, `genre_m_id`) VALUES
(1, 1, 6),
(2, 1, 2),
(3, 1, 3),
(4, 2, 7),
(5, 2, 8),
(6, 2, 4),
(7, 2, 9),
(8, 3, 5),
(9, 3, 2),
(10, 3, 1),
(11, 4, 8),
(12, 4, 10),
(13, 4, 1),
(14, 5, 8),
(15, 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

CREATE TABLE `tbl_music` (
  `music_id` int(11) NOT NULL,
  `music_image` varchar(75) NOT NULL,
  `music_title` varchar(75) NOT NULL,
  `music_artist` varchar(75) NOT NULL,
  `music_audio` varchar(75) NOT NULL,
  `music_year` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_image`, `music_title`, `music_artist`, `music_audio`, `music_year`) VALUES
(1, 'santa.jpg', 'I Saw Mommy Kissing Santa Clause ', 'Jimmy Boyd', 'santa_clause.mp3', '1952'),
(2, 'mountain.jpeg', 'Ain\'t No Mountain High Enough', 'Marvin Gaye', 'mountain.mp3', '1967'),
(3, 'yoursong.jpg', 'Your Song', 'Elton John', 'your_song.mp3', '1970'),
(4, 'whitney.jpg', 'I Wanna Dance With Somebody', 'Whitney Houston', 'whitney.mp3', '1987'),
(5, 'mchammer.jpg', 'U Can’t Touch This', 'MC Hammer', 'touchthis.mp3 ', '1990');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mus_genre`
--

CREATE TABLE `tbl_mus_genre` (
  `mus_genre_id` int(11) NOT NULL,
  `music_id` int(11) NOT NULL,
  `genre_a_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mus_genre`
--

INSERT INTO `tbl_mus_genre` (`mus_genre_id`, `music_id`, `genre_a_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `tv_id` int(11) NOT NULL,
  `tv_image` varchar(75) NOT NULL,
  `tv_title` varchar(75) NOT NULL,
  `tv_year` varchar(5) NOT NULL,
  `tv_video` varchar(75) NOT NULL,
  `tv_summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_image`, `tv_title`, `tv_year`, `tv_video`, `tv_summary`) VALUES
(1, 'lucy.jpg', 'I Love Lucy', '1951', 'lovelucy.mp4', 'A daffy woman constantly strives to become a star along with her bandleader husband and gets herself in the strangest situations.\r\n\r\n'),
(2, 'batman.jpg', 'Batman', '1966', 'batman.mp4', 'Eccentric Gotham City tycoon Bruce Wayne dons tights to fight crime as Batman, aided by pal Dick Ward as equally Spandex-clad Robin, in this \'60s camp classic. Together, they fight evildoers such as the Penguin, the Joker, the Riddler, Egghead, Catwoman and Mr. Freeze.\r\n'),
(3, 'charlie.jpg', 'Charlie’s Angels\r\n', '1976', 'charlie.mp4', 'A wealthy mystery man named Charlie runs a detective agency via a speakerphone and his personal assistant, John Bosley. His detectives are three beautiful women, who end up in a variety of difficult situations.\r\n'),
(4, 'miami.jpg', 'Miami Vice', '1984', 'miami.mp4', 'Resplendent with authentic 1980\'s music, fashion and vibe, \"Miami Vice\" follows two undercover detectives and their extended team through the mean streets of Miami.\r\n'),
(5, 'sabrina.jpg', 'Sabrina the Teenage Witch', '1996', 'sabrina.mp4', 'When a sixteen-year-old high school student finds out she\'s a witch, her two aunts offer guidance on how to control her newly-discovered magical powers.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv_genre`
--

CREATE TABLE `tbl_tv_genre` (
  `tv_genre_id` int(11) NOT NULL,
  `tv_id` int(11) NOT NULL,
  `genre_t_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv_genre`
--

INSERT INTO `tbl_tv_genre` (`tv_genre_id`, `tv_id`, `genre_t_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 4),
(6, 3, 5),
(7, 3, 3),
(8, 4, 3),
(9, 4, 6),
(10, 4, 5),
(11, 5, 2),
(12, 5, 1),
(13, 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `avatar` varchar(20) DEFAULT NULL,
  `isadmin` int(11) DEFAULT NULL,
  `permissions` int(11) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `uname`, `avatar`, `isadmin`, `permissions`, `password`) VALUES
(1, 'Sarah', 'Conway', 'scone', NULL, 1, 5, 'password'),
(2, 'kid', 'kidson', 'kid', NULL, 0, 3, 'password1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre_a`
--
ALTER TABLE `tbl_genre_a`
  ADD PRIMARY KEY (`genre_a_id`);

--
-- Indexes for table `tbl_genre_m`
--
ALTER TABLE `tbl_genre_m`
  ADD PRIMARY KEY (`genre_m_id`);

--
-- Indexes for table `tbl_genre_t`
--
ALTER TABLE `tbl_genre_t`
  ADD PRIMARY KEY (`genre_t_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`music_id`);

--
-- Indexes for table `tbl_mus_genre`
--
ALTER TABLE `tbl_mus_genre`
  ADD PRIMARY KEY (`mus_genre_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

--
-- Indexes for table `tbl_tv_genre`
--
ALTER TABLE `tbl_tv_genre`
  ADD PRIMARY KEY (`tv_genre_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre_a`
--
ALTER TABLE `tbl_genre_a`
  MODIFY `genre_a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_genre_m`
--
ALTER TABLE `tbl_genre_m`
  MODIFY `genre_m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_genre_t`
--
ALTER TABLE `tbl_genre_t`
  MODIFY `genre_t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_mus_genre`
--
ALTER TABLE `tbl_mus_genre`
  MODIFY `mus_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_tv_genre`
--
ALTER TABLE `tbl_tv_genre`
  MODIFY `tv_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
