-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 02:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE `cate` (
  `cat_id` int(255) NOT NULL,
  `cat_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `cat_date` date NOT NULL,
  `cat_image` text COLLATE utf8_bin NOT NULL,
  `cat_content` text COLLATE utf8_bin NOT NULL,
  `cat_tags` varchar(255) COLLATE utf8_bin NOT NULL,
  `cat_status` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`cat_id`, `cat_title`, `cat_date`, `cat_image`, `cat_content`, `cat_tags`, `cat_status`) VALUES
(36, 'HI', '2021-04-25', '28.jpg', '', '', 'published'),
(37, 'HI', '2021-04-25', '32.jpg', 'aaaaaa', '', 'published'),
(38, 'HI', '2021-04-25', '4.jpg', '', '', 'published');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(255) NOT NULL,
  `comment_user` varchar(255) COLLATE utf8_bin NOT NULL,
  `comment_date` date NOT NULL,
  `comment_image` text COLLATE utf8_bin NOT NULL,
  `comment_content` text COLLATE utf8_bin NOT NULL,
  `comment_post_id` int(255) NOT NULL,
  `comment_status` varchar(255) COLLATE utf8_bin NOT NULL,
  `comment_email` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_user`, `comment_date`, `comment_image`, `comment_content`, `comment_post_id`, `comment_status`, `comment_email`) VALUES
(34, 'ali', '2021-04-19', '', 'hello', 33, 'approve', 'ali.fahd.rashd1995@gmail.com'),
(37, 'ali.fahd.rashd1995@gmail.com', '2021-04-19', '', 'ddddd', 33, 'approve', 'ali.fahd.rashd1995@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(255) NOT NULL,
  `post_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text COLLATE utf8_bin NOT NULL,
  `post_content` text COLLATE utf8_bin NOT NULL,
  `post_tags` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_status` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_status`) VALUES
(26, 'HI', '2021-04-19', '4.jpg', '', '', 'published'),
(30, 'مرحبا', '2021-04-19', '32.jpg', 'السلام عليكم', '', 'published'),
(32, 'HI', '2021-04-19', '50.jpg', 'ddd', '', 'draft'),
(33, 'HI', '2021-04-19', '50.jpg', 'fff', '', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_email`, `user_role`) VALUES
(5, 'ali', '221', 'ali.fahd.rashd1995@gmail.com', 'admin'),
(14, 'ahmed', '123', 'ali.fasdfgshd.rashd1995@gmail.com', 'user'),
(15, 'omer', '123', 'ali.fahdvgdsd.rashd1995@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cate`
--
ALTER TABLE `cate`
  MODIFY `cat_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
