-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql305.epizy.com
-- Generation Time: Dec 11, 2021 at 04:47 AM
-- Server version: 5.7.35-38
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_30564020_hMUSIC`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(45) DEFAULT NULL,
  `artist_biography` text,
  `artist_details` varchar(45) DEFAULT NULL,
  `artist_photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `artist_biography`, `artist_details`, `artist_photo`) VALUES
(9, 'James', 'Faruq Mahfuz Anam, known mononymously as James, is a Bangladeshi singer-songwriter, guitarist, and composer and a playback singer.', NULL, '1639206741_19527489060438_James.jpg'),
(10, 'Ayub Bachchu', 'Ayub Bachchu was a Bangladeshi South Asian rockstar guitarist, composer, singer and songwriter, who was the founder of the Bangladeshi rock band LRB and earned success as the lead singer and the lead guitarist of the band.', NULL, '1639206839_85674132547704_LRB_Ayub_Bachchu_(cropped).jpg'),
(12, 'Tahsan Rahman Khan', 'Tahsan Rahman Khan is a Bangladeshi actor, model, singer, songwriter, composer and teacher. Born and raised in Dhaka, Tahsan first started his music career at 21 through the music band Black.', NULL, '1639207092_31328927334722_tahsan-rahman-khan.jpg'),
(13, 'Bappa Mazumder', 'Shubhashish Mojumder Bappa, popularly known as Bappa Mazumder, is a Bangladeshi singer, lyricist and composer. Bappa is famous for his Bengali romantic compositions, some of which have been performed with his band, Dalchhut.', NULL, '1639207221_47462736412493_1540056094.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `download_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `download_time` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int(11) NOT NULL,
  `song_mp3` text,
  `song_photo` text,
  `song_date` text,
  `aritst_id` varchar(35) DEFAULT NULL,
  `song_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `song_mp3`, `song_photo`, `song_date`, `aritst_id`, `song_name`) VALUES
(14, '1639208098_93042145448674_Ekhane_Sarabela_MP3_Song_Download_by_James_%28Amay_Bhulisna%29-_Listen_Ekhane_Sarabela_Bengali_Song_Free_Online.ts', '1639208098_37304316741376_song02.jpg', NULL, '10', 'Ekhane Sarabela Song'),
(15, '1639208416_96303301948642_School_Jibon_MP3_Song_Download_by_Ayub_Bachchu_%28Rim_Jim_Brishti%29-_Listen_School_Jibon_Bengali_Song_Free_Online.ts', '1639208416_40898285678120_song03.jpg', NULL, '10', 'School Jibon'),
(16, '', '1639208582_46974528821078_song01.jpg', NULL, '9', 'Bheegi Bheegi - LoFi'),
(17, '1639208998_59176054682467_Chhuye_Dile_Mon_MP3_Song_Download_by_Shakila_Saki_%28Chhuye_Dile_Mon_%28Original_Motion_Pictur_Soundtrack%29%29-_Listen_Chhuye_Dile_Mon_Bengali_Song_Free_Online.ts', '1639208998_48550441208165_song04.jpg', NULL, '12', 'Chhuye Dile Mon'),
(18, '1639209294_60599442082043_Chayanile_Song_Download-_Chayanile_MP3_Bengali_Song_Online_Free_on_Gaana.com.ts', '1639209294_61387383611981_song05.jpg', NULL, '12', 'Chayanile');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` text,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `reg_date` varchar(45) DEFAULT NULL,
  `last_seen` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `reg_date`, `last_seen`, `photo`) VALUES
(1, 'Fardin', '$2y$10$P9xP8Cx9fCWE8tzQ79Xspuy8CyYXX0qChUl8yZXwGK3YikSRq7xBy', 'Fardin', 'Rahat', NULL, '1639206634', ''),
(2, 'Alif', '$2y$10$P9xP8Cx9fCWE8tzQ79Xspuy8CyYXX0qChUl8yZXwGK3YikSRq7xBy', 'Arefin', 'Alif', NULL, '1639206645', ''),
(3, 'Rana', '$2y$10$P9xP8Cx9fCWE8tzQ79Xspuy8CyYXX0qChUl8yZXwGK3YikSRq7xBy', 'Shohag', 'Rana', NULL, '1639206682', ''),
(4, 'Mumu', '$2y$10$P9xP8Cx9fCWE8tzQ79Xspuy8CyYXX0qChUl8yZXwGK3YikSRq7xBy', 'Sadia', 'Anika', NULL, '1639206652', '');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `view_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `view_time` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`view_id`, `user_id`, `song_id`, `view_time`) VALUES
(40, 8, 15, '1639208449'),
(41, 2, 18, '1639212047');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`view_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
