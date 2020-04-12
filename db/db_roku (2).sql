-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 12, 2020 at 01:34 AM
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
-- Table structure for table `tbl_decade_a`
--

CREATE TABLE `tbl_decade_a` (
  `decade_a_id` int(11) NOT NULL,
  `decade_a_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_decade_a`
--

INSERT INTO `tbl_decade_a` (`decade_a_id`, `decade_a_name`) VALUES
(1, 'Fifties'),
(2, 'Sixties'),
(3, 'Seventies'),
(4, 'Eighties'),
(5, 'Nineties');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_decade_m`
--

CREATE TABLE `tbl_decade_m` (
  `decade_m_id` int(11) NOT NULL,
  `decade_m_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_decade_m`
--

INSERT INTO `tbl_decade_m` (`decade_m_id`, `decade_m_name`) VALUES
(1, 'Fifties'),
(2, 'Sixties'),
(3, 'Seventies'),
(4, 'Eighties'),
(5, 'Nineties');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_decade_t`
--

CREATE TABLE `tbl_decade_t` (
  `decade_t_id` int(11) NOT NULL,
  `decade_t_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_decade_t`
--

INSERT INTO `tbl_decade_t` (`decade_t_id`, `decade_t_name`) VALUES
(1, 'Fifties'),
(2, 'Sixties'),
(3, 'Seventies'),
(4, 'Eighties'),
(5, 'Nineties');

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
(3, 'Hip-Hop'),
(4, ' Vocal');

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
(10, 'Comedy'),
(11, 'Animation');

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
(7, 'Fantasy'),
(8, 'Education'),
(9, 'Animation'),
(10, 'Family');

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
  `movie_summary` text NOT NULL,
  `ratings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_image`, `movie_title`, `movie_year`, `movie_video`, `movie_summary`, `ratings`) VALUES
(1, 'window.png', 'Rear Window', '1954', 'rear_window.mp4', 'Professional photographer Jeff is stuck in his apartment, recuperating from a broken leg. Out of boredom, he begins to spy on his neighbours and comes across a shocking revelation.\r\n', 5),
(2, 'julie.jpg', 'The Sound of Music', '1965', 'sound_of_music.mp4', 'Maria, an aspiring nun, is sent as a governess to take care of seven motherless children. Soon her jovial and loving nature tames their hearts and the children become fond of her.\r\n', 2),
(3, 'starwars.jpg', 'Star Wars: A New Hope', '1977', 'star_wars.mp4', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.\r\n', 4),
(4, 'princess.jpg', 'The Princess Bride', '1987', 'princess_bride.mp4', 'While home sick in bed, a young boy\'s grandfather reads him the story of a farmboy-turned-pirate who encounters numerous obstacles, enemies and allies in his quest to be reunited with his true love.\r\n', 4),
(5, 'titanic.png', 'Titanic', '1997', 'titanic.mp4', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.\r\n', 5),
(6, 'peterpan.jpg', 'Peter Pan', '1953', 'peterpan.mp4', 'Peter Pan and his friend Tinker Bell, a fairy, whisk away siblings Wendy, John and Michael to the island of Never Land, where Captain Hook seeks vengeance against Peter for cutting off his hand.\r\n', 1),
(7, 'junglebook.jpeg', 'Jungle Book', '1967', 'junglebook.mp4', 'Mowgli is a young boy who has been raised by wolves. When a man-eating tiger threatens his life, his animal family tries to convince him to leave the jungle and live in the human village.\r\n', 2),
(8, 'aristocats.jpg', 'Aristocats', '1970', 'aristocats.mp4', 'A retired old lady, living a lavish life in Paris, wills all her possessions to her four cats. The greedy butler kidnaps the cats, but a bunch of retired army dogs and a stray cat stand in his way.\r\n', 3),
(9, 'annie.jpg', 'Annie', '1982', 'annie.mp4', 'An orphan in a facility run by the mean Miss Hannigan (Carol Burnett), Annie (Aileen Quinn) believes that her parents left her there by mistake. When a rich man named Oliver \"Daddy\" Warbucks (Albert Finney) decides to let an orphan live at his home to promote his image, Annie is selected. While Annie gets accustomed to living in Warbucks\' mansion, she still longs to meet her parents. So Warbucks announces a search for them and a reward, which brings out many frauds.\r\n\r\n', 3),
(10, 'homeAlone.jpg', 'Home Alone', '1990', 'homeAlone.mp4', 'Eight-year-old Kevin is accidentally left behind when his family leaves for France. At first, he is happy to be in charge, but when thieves try to break into his home, he tries to put up a fight.\r\n\r\n', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_decade`
--

CREATE TABLE `tbl_mov_decade` (
  `mov_decade_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `decade_m_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_decade`
--

INSERT INTO `tbl_mov_decade` (`mov_decade_id`, `movie_id`, `decade_m_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4),
(10, 10, 5);

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
(15, 5, 9),
(16, 6, 11),
(17, 6, 1),
(18, 6, 7),
(19, 6, 4),
(20, 7, 11),
(21, 7, 1),
(22, 7, 9),
(23, 7, 10),
(24, 7, 7),
(25, 8, 11),
(26, 8, 1),
(27, 8, 9),
(28, 8, 10),
(29, 8, 7),
(30, 8, 4),
(31, 9, 1),
(32, 9, 9),
(33, 9, 10),
(34, 9, 7),
(35, 9, 4),
(36, 10, 10),
(37, 10, 4),
(38, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_ratings`
--

CREATE TABLE `tbl_mov_ratings` (
  `mov_ratings_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `ratings_m_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_ratings`
--

INSERT INTO `tbl_mov_ratings` (`mov_ratings_id`, `movie_id`, `ratings_m_id`) VALUES
(1, 1, 5),
(2, 2, 3),
(3, 3, 4),
(4, 4, 4),
(5, 5, 5),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 3),
(11, 2, 1),
(12, 2, 2),
(13, 2, 4),
(14, 2, 5),
(15, 3, 5),
(16, 4, 5),
(17, 6, 2),
(18, 6, 3),
(19, 6, 4),
(20, 6, 5),
(21, 7, 2),
(22, 7, 3),
(23, 7, 4),
(24, 7, 5),
(25, 8, 2),
(26, 8, 3),
(27, 9, 4),
(28, 9, 5),
(29, 10, 4),
(30, 10, 5);

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
  `music_year` varchar(5) NOT NULL,
  `ratings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_image`, `music_title`, `music_artist`, `music_audio`, `music_year`, `ratings`) VALUES
(1, 'santa.jpg', 'I Saw Mommy Kissing Santa Clause ', 'Jimmy Boyd', 'santa_clause.mp3', '1952', 1),
(2, 'mountain.jpeg', 'Ain\'t No Mountain High Enough', 'Marvin Gaye', 'mountain.mp3', '1967', 1),
(3, 'yoursong.jpg', 'Your Song', 'Elton John', 'your_song.mp3', '1970', 1),
(4, 'whitney.jpg', 'I Wanna Dance With Somebody', 'Whitney Houston', 'whitney.mp3', '1987', 2),
(5, 'mchammer.jpg', 'U Can’t Touch This', 'MC Hammer', 'touchthis.mp3 ', '1990', 5),
(6, 'witchdoctor.jpg', 'Witch Doctor', 'David Seville ', 'witchdoctor.mp3', '1958', 4),
(7, 'browneye.jpg', 'Brown Eyed Girl', 'Van Morrison', 'browneye.mp3', '1967', 4),
(8, 'dancing.jpg', 'Dancing Queen', 'ABBA', 'abba.mp3', '1976', 3),
(9, 'safety.jpg', 'The Safety Dance', 'Men Without Hats', 'safety.mp3', '1982', 3),
(10, 'backstreet.jpg', 'I Want It That Way', 'Backstreet Boys', 'backstreet.mp3', '1999', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mus_decade`
--

CREATE TABLE `tbl_mus_decade` (
  `mus_decade_id` int(11) NOT NULL,
  `music_id` int(11) NOT NULL,
  `decade_a_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mus_decade`
--

INSERT INTO `tbl_mus_decade` (`mus_decade_id`, `music_id`, `decade_a_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4),
(10, 10, 5);

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
(5, 5, 3),
(6, 6, 4),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ratings_m`
--

CREATE TABLE `tbl_ratings_m` (
  `ratings_m_id` int(11) NOT NULL,
  `ratings_m_int` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ratings_m`
--

INSERT INTO `tbl_ratings_m` (`ratings_m_id`, `ratings_m_int`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

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
  `tv_summary` text NOT NULL,
  `ratings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_image`, `tv_title`, `tv_year`, `tv_video`, `tv_summary`, `ratings`) VALUES
(1, 'lucy.jpg', 'I Love Lucy', '1951', 'lovelucy.mp4', 'A daffy woman constantly strives to become a star along with her bandleader husband and gets herself in the strangest situations.\r\n\r\n', 5),
(2, 'batman.jpg', 'Batman', '1966', 'batman.mp4', 'Eccentric Gotham City tycoon Bruce Wayne dons tights to fight crime as Batman, aided by pal Dick Ward as equally Spandex-clad Robin, in this \'60s camp classic. Together, they fight evildoers such as the Penguin, the Joker, the Riddler, Egghead, Catwoman and Mr. Freeze.\r\n', 3),
(3, 'charlie.jpg', 'Charlie’s Angels\r\n', '1976', 'charlie.mp4', 'A wealthy mystery man named Charlie runs a detective agency via a speakerphone and his personal assistant, John Bosley. His detectives are three beautiful women, who end up in a variety of difficult situations.\r\n', 4),
(4, 'miami.jpg', 'Miami Vice', '1984', 'miami.mp4', 'Resplendent with authentic 1980\'s music, fashion and vibe, \"Miami Vice\" follows two undercover detectives and their extended team through the mean streets of Miami.\r\n', 5),
(5, 'sabrina.jpg', 'Sabrina the Teenage Witch', '1996', 'sabrina.mp4', 'When a sixteen-year-old high school student finds out she\'s a witch, her two aunts offer guidance on how to control her newly-discovered magical powers.', 3),
(6, 'hound.jpg', 'The Huckleberry Hound', '1958', 'hound.mp4', 'Premiering in 1958, \"The Huckleberry Hound Show\" introduced the world to the affable, blue-skinned canine with a Southern drawl, who calmly conquered obstacles standing in the way of the many occupations he held: cowboy, chef, lion tamer, police officer, farmer, and \"stuff like that there.\"', 1),
(7, 'sesame.jpg', 'Sesame Street', '1969', 'sesame.mp4', 'A longtime favorite of children and adults, and a staple of PBS, \"Sesame Street\" bridges many cultural and educational gaps with a fun program. Big Bird leads a cast of characters teaching children numbers, colors and the alphabet. Bert and Ernie, Oscar the Grouch and Grover are just a few of the other creatures involved in this show, set on a city street full of valuable learning opportunities.\r\n', 1),
(8, 'muppet.jpg', 'The Muppet Show', '1976', 'muppet.mp4', 'A fantastic medley of sweet and mischievous, Jim Henson\'s Muppets, including Kermit the Frog and Miss Piggy, produce a weekly variety show with a range of famous guests. Along for the ride are Gonzo, Fozzie the bear and Scooter -- who is the closest thing to a human puppet this series has.\r\n', 1),
(9, 'thomas.jpg', 'Thomas and Friends', '1984', 'thomas.mp4', 'Thomas is apt to get into trouble by trying too hard to be, in his words, a \"really useful engine,\" attempting to do things that are best left to bigger engines. Other members of Sir Topham Hatt\'s railway include junior engine Percy, Thomas\' best friend, who is always willing to help, and big engine Gordon -- the fastest and most powerful member of the team -- who uses his superior strength to help the smaller engines get out of trouble..', 1),
(10, 'recess.jpg', 'Disney\'s Recess', '1997', 'recess.mp4', 'Six brave fourth-graders at Third Street School make it their mission to protect the other kids on the playground. Despite the rule of King Bob and his minions, who enforce his unwritten laws, T.J, Ashley, Vince, Gus, Gretchen and Mikey seek a rational balance between conformity and individuality.\r\n', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv_decade`
--

CREATE TABLE `tbl_tv_decade` (
  `tv_decade_id` int(11) NOT NULL,
  `tv_id` int(11) NOT NULL,
  `decade_t_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv_decade`
--

INSERT INTO `tbl_tv_decade` (`tv_decade_id`, `tv_id`, `decade_t_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4),
(10, 10, 5);

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
(13, 5, 7),
(14, 6, 1),
(15, 7, 8),
(16, 8, 8),
(17, 8, 1),
(18, 9, 9),
(19, 9, 10),
(20, 10, 9),
(21, 10, 1),
(22, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_avatar` varchar(20) NOT NULL,
  `user_permissions` int(11) NOT NULL,
  `user_admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_avatar`, `user_permissions`, `user_admin`) VALUES
(3, 'Parent', 'user1', 'password', 'me@you.com', '2020-03-09 15:48:21', '::1', 'parent.png', 5, 1),
(4, 'Child', 'user2', 'password', 'me@ou.com', '2020-03-09 15:49:04', '::1', 'child.png', 3, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_decade_a`
--
ALTER TABLE `tbl_decade_a`
  ADD PRIMARY KEY (`decade_a_id`);

--
-- Indexes for table `tbl_decade_m`
--
ALTER TABLE `tbl_decade_m`
  ADD PRIMARY KEY (`decade_m_id`);

--
-- Indexes for table `tbl_decade_t`
--
ALTER TABLE `tbl_decade_t`
  ADD PRIMARY KEY (`decade_t_id`);

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
-- Indexes for table `tbl_mov_decade`
--
ALTER TABLE `tbl_mov_decade`
  ADD PRIMARY KEY (`mov_decade_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_mov_ratings`
--
ALTER TABLE `tbl_mov_ratings`
  ADD PRIMARY KEY (`mov_ratings_id`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`music_id`);

--
-- Indexes for table `tbl_mus_decade`
--
ALTER TABLE `tbl_mus_decade`
  ADD PRIMARY KEY (`mus_decade_id`);

--
-- Indexes for table `tbl_mus_genre`
--
ALTER TABLE `tbl_mus_genre`
  ADD PRIMARY KEY (`mus_genre_id`);

--
-- Indexes for table `tbl_ratings_m`
--
ALTER TABLE `tbl_ratings_m`
  ADD PRIMARY KEY (`ratings_m_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

--
-- Indexes for table `tbl_tv_decade`
--
ALTER TABLE `tbl_tv_decade`
  ADD PRIMARY KEY (`tv_decade_id`);

--
-- Indexes for table `tbl_tv_genre`
--
ALTER TABLE `tbl_tv_genre`
  ADD PRIMARY KEY (`tv_genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_decade_a`
--
ALTER TABLE `tbl_decade_a`
  MODIFY `decade_a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_decade_m`
--
ALTER TABLE `tbl_decade_m`
  MODIFY `decade_m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_decade_t`
--
ALTER TABLE `tbl_decade_t`
  MODIFY `decade_t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_genre_a`
--
ALTER TABLE `tbl_genre_a`
  MODIFY `genre_a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_genre_m`
--
ALTER TABLE `tbl_genre_m`
  MODIFY `genre_m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_genre_t`
--
ALTER TABLE `tbl_genre_t`
  MODIFY `genre_t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_mov_decade`
--
ALTER TABLE `tbl_mov_decade`
  MODIFY `mov_decade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_mov_ratings`
--
ALTER TABLE `tbl_mov_ratings`
  MODIFY `mov_ratings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_mus_decade`
--
ALTER TABLE `tbl_mus_decade`
  MODIFY `mus_decade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_mus_genre`
--
ALTER TABLE `tbl_mus_genre`
  MODIFY `mus_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_ratings_m`
--
ALTER TABLE `tbl_ratings_m`
  MODIFY `ratings_m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_tv_decade`
--
ALTER TABLE `tbl_tv_decade`
  MODIFY `tv_decade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_tv_genre`
--
ALTER TABLE `tbl_tv_genre`
  MODIFY `tv_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
