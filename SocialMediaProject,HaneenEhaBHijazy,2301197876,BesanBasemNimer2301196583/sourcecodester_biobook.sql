-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 مايو 2022 الساعة 13:22
-- إصدار الخادم: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourcecodester_biobook`
--

-- --------------------------------------------------------

--
-- بنية الجدول `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(100) NOT NULL,
  `post_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content_comment` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`) VALUES
(3, '5', '2', 'RubaHassanAlhorinay\r\n', 'cute ah', 'upload/haneen2.jpeg', '1413322987'),
(7, '2', '1', 'HaneenEhabHijazy', 'hehehe. :d', 'upload/raba2.jpeg', '1413322623'),
(13, '7', '2', 'RubaHassanAlhorinay\r\n', 'wahaha', 'upload/haneen2.jpeg', '1413322623'),
(21, '11', '5', 'BaraaOmerHijazy\r\n', 'sad', 'upload/world.png', '1605570528'),
(22, '11', '5', 'BaraaOmerHijazy\r\n', 'asd', 'upload/world.png', '1605570531'),
(23, '10', '5', 'BaraaOmerHijazy\r\n', 'sad', 'upload/world.png', '1605575090'),
(24, '10', '5', 'BaraaOmerHijazy\r\n', 'sadd', 'upload/world.png', '1651926556'),
(25, '11', '5', 'BaraaOmerHijazy\r\n', 'ss', 'upload/world.png', '1651926574'),
(26, '10', '1', 'HaneenEhabHijazy', 'sadd', 'upload/raba2.jpeg', '1651926984'),
(27, '9', '5', 'BaraaOmerHijazy\r\n', 'hiiii', 'upload/world.png', '1651928027'),
(28, '13', '5', 'BaraaOmerHijazy\r\n', 'ss', 'upload/world.png', '1651928069'),
(29, '1', '4', 'AmalAdel Gindel', 'wooww', 'upload/img5.jpeg', '1651945421'),
(30, '15', '2', 'RubaHassan Alhorinay', 'woww', 'upload/haneen2.jpeg', '1651945560'),
(31, '15', '2', 'RubaHassan Alhorinay', 'love this', 'upload/haneen2.jpeg', '1652701171'),
(32, '1', '2', 'RubaHassan Alhorinay', 'wooww', 'upload/haneen2.jpeg', '1652701367'),
(39, '18', '1', 'HaneenEhab Hijazy', 'me too thanks ', 'upload/raba2.jpeg', '1652701629'),
(40, '17', '1', 'HaneenEhab Hijazy', 'love this', 'upload/raba2.jpeg', '1652701714'),
(41, '16', '1', 'HaneenEhab Hijazy', 'great', 'upload/raba2.jpeg', '1652701741'),
(42, '15', '1', 'HaneenEhab Hijazy', 'love this', 'upload/raba2.jpeg', '1652701759'),
(49, '19', '3', 'BessoBasam AboNamer', 'and me', 'upload/haneen.jpeg', '1652702185'),
(50, '18', '3', 'BessoBasam AboNamer', 'beautiful', 'upload/haneen.jpeg', '1652702205'),
(51, '15', '3', 'BessoBasam AboNamer', 'beautiful', 'upload/haneen.jpeg', '1652702222'),
(58, '21', '4', 'AmalAdel Gindel', 'wooww', 'upload/img5.jpeg', '1652702381'),
(59, '20', '4', 'AmalAdel Gindel', 'beautiful', 'upload/img5.jpeg', '1652702434'),
(60, '19', '4', 'AmalAdel Gindel', '+++1', 'upload/img5.jpeg', '1652702448'),
(61, '18', '4', 'AmalAdel Gindel', 'beautiful', 'upload/img5.jpeg', '1652702463'),
(62, '22', '4', 'AmalAdel Gindel', 'love this', 'upload/img5.jpeg', '1652702531'),
(63, '22', '5', 'BaraaOmer Hijazy', 'i love this', 'upload/img9.jpeg', '1652702874'),
(64, '21', '5', 'BaraaOmer Hijazy', 'beautiful', 'upload/img9.jpeg', '1652702891'),
(65, '20', '5', 'BaraaOmer Hijazy', 'wooww', 'upload/img9.jpeg', '1652702901'),
(74, '22', '5', 'BaraaOmer Hijazy', 'wooww', 'upload/img9.jpeg', '1652703088'),
(75, '22', '3', 'BessoBasam AboNamer', 'wooww', 'upload/haneen.jpeg', '1652706465'),
(76, '23', '3', 'BessoBasam AboNamer', 'love this', 'upload/haneen.jpeg', '1652706549'),
(77, '20', '3', 'BessoBasam AboNamer', 'beautiful', 'upload/haneen.jpeg', '1652707431');

-- --------------------------------------------------------

--
-- بنية الجدول `photos`
--

CREATE TABLE `photos` (
  `photo_id` int(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `photos`
--

INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`) VALUES
(3, 'upload/img11.jpeg', '3', '2014-10-13 01:22:41'),
(4, 'upload/img12.jpeg', '3', '2014-10-13 01:28:18'),
(5, 'upload/img13.jpeg', '3', '2014-10-13 01:28:23'),
(7, 'upload/img16.jpeg', '1', '2014-10-13 06:00:08'),
(8, 'upload/img10.jpeg', '2', '2014-10-14 07:34:19'),
(9, 'upload/img17.jpeg', '1', '2014-10-14 18:51:36'),
(10, 'upload/img18.jpeg', '2', '2014-10-14 18:53:51'),
(11, 'upload/img6.jpeg', '1', '2022-05-07 18:04:49'),
(12, 'upload/img18.jpeg', '4', '2022-05-07 20:44:13');

-- --------------------------------------------------------

--
-- بنية الجدول `post`
--

CREATE TABLE `post` (
  `post_id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `post_image` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`) VALUES
(15, '4', 'upload/haneen.jpeg', 'hhiii', '1651945343'),
(16, '5', 'upload/img15.jpeg', 'hiii', '1651945684'),
(17, '2', 'upload/img3.jpeg', 'I Love Roses', '1652701035'),
(18, '2', 'upload/img2.jpeg', 'i miss you my friend', '1652701500'),
(19, '1', 'upload/img5.jpeg', 'I need some Comforts', '1652701830'),
(20, '1', 'upload/img7.jpeg', 'greate', '1652701939'),
(21, '3', 'upload/img8.jpeg', '***love***', '1652702282'),
(22, '4', 'upload/img14.jpeg', 'so beautiful', '1652702519'),
(23, '3', 'upload/img6.jpeg', 'hello', '1652706540');

-- --------------------------------------------------------

--
-- بنية الجدول `user`
--

CREATE TABLE `user` (
  `user_id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `username2` varchar(100) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `password2` varchar(100) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `cover_picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `username2`, `birthday`, `gender`, `number`, `email`, `email2`, `password`, `password2`, `profile_picture`, `cover_picture`) VALUES
(1, 'HaneenEhab', 'Hijazy', 'HaneenEhabHijazy', 'HaneenEhabHijazy', '2001-12-28', 'Female', '05989781348', 'Haneen02@gmail.com', 'Haneen02@gmail.com', '12345', '12345', 'upload/raba2.jpeg', 'upload/img4.jpeg'),
(2, 'RubaHassan', 'Alhorinay', 'RubaAlhorinay', 'RubaHassanAlhorinay', '1995-11-13', 'male', '05989781346', 'RubaAlhorinay@gmail.com', 'RubaAlhorinay@gmail.com', '123456', '123456', 'upload/haneen2.jpeg', 'upload/188683733.jpg'),
(3, 'BessoBasam', 'AboNamer', 'BessoAboNamer', 'BessoAboNamer', '2022-05-18', 'Select', '05985444196', 'BessoBasam@gmail.com', 'BessoBasam@gmail.com', 'BessoBasam', 'BessoBasam', 'upload/haneen.jpeg', 'upload/img20.jpg'),
(4, 'AmalAdel', 'Gindel', 'AmalAdelGindel', 'AmalAdelGindel', '1/January/1901', 'Female', '05989781356', 'AmalAdelGindel@gmail.com', 'AmalAdelGindel@gmail.com', '1234567', '1234567', 'upload/img5.jpeg', 'upload/img6.jpeg'),
(5, 'BaraaOmer', 'Hijazy', 'BaraaOmerHijazy', 'BaraaOmerHijazy', '1/January/1901', 'male', '05905235022', 'BaraaOmerHijazy@gmail.com', 'BaraaOmerHijazy@gmail.com', 'admin', 'admin', 'upload/img9.jpeg', 'upload/img10.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `photo_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
