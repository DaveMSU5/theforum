
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2016 at 06:32 PM
-- Server version: 10.0.20-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u203995547_space`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Food', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris est, tincidunt consectetur tincidunt sed, convallis ut neque. Pellentesque facilisis sollicitudin diam non placerat.'),
(2, 'Sports', 'Consectetur adipiscing elit. Praesent mauris est, tincidunt consectetur tincidunt sed, convallis ut neque. Pellentesque facilisis sollicitudin diam non placerat.'),
(3, 'Computers', 'Windows or MAC?'),
(4, 'Cars', '');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `topic_id`, `user_id`, `body`, `create_date`) VALUES
(1, 1, 2, 'Suspendisse in magna ac magna tempor viverra vel eu erat. Vivamus erat est, sodales at enim eu, fermentum sodales augue. Ut nec placerat nisi, sit amet tincidunt quam. Aliquam ullamcorper urna et arcu vehicula, pharetra venenatis orci venenatis. Nunc rutrum, magna et venenatis iaculis, felis tortor tempor sapien, et cursus velit mauris eu quam. Aenean eleifend scelerisque diam, sed placerat elit mattis malesuada', '2014-07-02 16:41:55'),
(2, 2, 2, 'Suspendisse in magna ac magna tempor viverra vel eu erat. Vivamus erat est, sodales at enim eu, fermentum sodales augue. Ut nec placerat nisi, sit amet tincidunt quam. Aliquam ullamcorper urna et arcu vehicula, pharetra venenatis orci venenatis. Nunc rutrum, magna et venenatis iaculis, felis tortor tempor sapien, et cursus velit mauris eu quam. Aenean eleifend scelerisque diam, sed placerat elit mattis malesuada', '2014-07-02 16:41:55'),
(3, 2, 1, '<p>Great Post!</p>', '2014-07-03 18:37:41'),
(4, 2, 5, '<p>Test!</p>', '2016-10-28 19:31:28'),
(5, 4, 5, '<p>Windows</p>', '2016-10-28 20:14:33'),
(6, 4, 7, '<p>Mac</p>', '2016-10-28 20:18:21'),
(7, 5, 7, '<p>Hamburgers are the best.</p>', '2016-10-28 20:18:49'),
(8, 6, 8, '<p>Boxing of course!</p>', '2016-10-28 20:26:03'),
(9, 4, 8, '<p>Neither!</p>', '2016-10-28 20:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `last_activity` datetime NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `category_id`, `user_id`, `title`, `body`, `last_activity`, `create_date`) VALUES
(4, 3, 6, 'Windows or Mac?', '<p>Which do you prefer? Windows or Mac?</p>', '2016-10-28 20:12:13', '2016-10-28 20:20:51'),
(5, 1, 5, 'Favorite food?', '<p>I love pizza!</p>', '2016-10-28 20:15:14', '2016-10-28 20:15:14'),
(6, 2, 7, 'Favorite sport?', '<p>What&#39;s your favorite sport?</p>', '2016-10-28 20:17:32', '2016-10-28 20:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(64) NOT NULL,
  `about` text NOT NULL,
  `last_activity` datetime NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `username`, `password`, `about`, `last_activity`, `join_date`) VALUES
(8, 'Mike Tyson', 'mtyson@gmail.com', 'mtyson.jpg', 'mtyson', '81dc9bdb52d04dc20036dbd8313ed055', 'I''m the best!', '2016-10-28 20:25:26', '2016-10-28 20:25:26'),
(7, 'Sarah Smith', 'ssmith@aol.com', 'avatar4.jpg', 'ssmith', '81dc9bdb52d04dc20036dbd8313ed055', '', '2016-10-28 20:01:48', '2016-10-28 20:01:48'),
(6, 'jdoe', 'jdoe@yahoo.com', 'avatar3.jpg', 'JDoe', '81dc9bdb52d04dc20036dbd8313ed055', '', '2016-10-28 19:59:49', '2016-10-28 19:59:49'),
(5, 'George', 'george@aol.com', 'download2.jpg', 'george', '81dc9bdb52d04dc20036dbd8313ed055', '', '2016-10-27 18:36:46', '2016-10-27 18:36:46');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
