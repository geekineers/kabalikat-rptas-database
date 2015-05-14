-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 14, 2015 at 09:17 PM
-- Server version: 10.0.16-MariaDB-log
-- PHP Version: 5.6.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rptas_govapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_collection`
--

CREATE TABLE IF NOT EXISTS `users_collection` (
  `uuid` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` int(2) NOT NULL,
  `db_name` varchar(100) NOT NULL,
  `db_user` varchar(100) NOT NULL,
  `db_salt` text NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `datetime_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_collection`
--

INSERT INTO `users_collection` (`uuid`, `email`, `type`, `db_name`, `db_user`, `db_salt`, `status`, `datetime_updated`, `deleted`) VALUES
('3ca60e59-3ac7-3dd1-7f96-70c3c0bc9909 ', 'webadmin@8layertech.com', 1, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('d7882a1a-7c60-b03b-8413-4d9b8df446b2', 'taxmapper@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('f377f315-61c8-ffb9-1786-aff8af376a73', 'appraisal@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('b7812fc8-dac9-39ee-5857-b9542e4ef0f3', 'landtax@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('c979212e-cd08-4622-477e-3f4a90938c07', 'recordsmanager@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('5ffa3074-4b9a-1be8-617e-abc43d886aa4', 'assessor@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('cbb46841-d949-c49e-09eb-7ee0cdee7e8d', 'recommendingapproval@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('9914193b-87fe-db73-e24c-5a8eadf9761e', 'assessorheads@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('d1ce9498-c6e3-7130-2f8c-1bb0ef5e9f11', 'taxmapperhead@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('d142ca90-09e4-27b0-8ba7-287cf0c0e83a', 'headcashier@8layertech.com', 1, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('6fcd5b53-cc6b-d8bf-739b-6902dafa07f0', 'cashier1@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('aa540bb7-473b-30aa-d9d5-8eba0b852668', 'cashier2@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('e940f6b6-8687-d241-c046-0ce331b7ac7e', 'assessorhead@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('6c9f7109-17a5-4ef6-473d-09f0456c4033', 'edaj.bautista@gmail.com', 1, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('a1249a0a-a894-88ab-015c-8fcbe80408ca', 'law@mail.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('4f314a44-fa1a-dcac-d681-751ccc4f9eb4', 'sample@mail.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('444067e4-1a83-dac0-fa23-e510aa463a37', 'two@mail.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('49acef87-0ec4-8503-da99-c5cc8b7f64c3', 'luffy@mail.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('b1e77bf7-2b6d-8480-3e86-74dc2c9b957d', 'annotate@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('43b47e22-71c8-74b6-db5a-39c923c7644d', 'taxtwo@mail.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('62c28a24-c657-1e36-79a5-7ef8c62149be', 'taxthree@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('f20b74c2-b2ee-3c3d-db26-c952c30b1145', 'sampleuser@mail.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('5c08af4d-d932-1761-4780-9fdd619e2c7e', 'landtax@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0),
('f11b48a0-3dca-6100-bd26-ba69c7fcd9ad', 'treasury@8layertech.com', 2, 'rptas_v01', 'root', 'root', 'active', '2015-04-14 09:09:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_govapp`
--

CREATE TABLE IF NOT EXISTS `users_govapp` (
  `uuid` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(32) NOT NULL,
  `role` varchar(32) NOT NULL DEFAULT 'user',
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_govapp`
--

INSERT INTO `users_govapp` (`uuid`, `email`, `password`, `status`, `role`, `firstname`, `middlename`, `lastname`, `address`) VALUES
('12324-32434-342', 'admin@8layertech.com', 'b99c5ea3c90f8fd1f63527137bb7b0caf9560bf68de5ff2d0ac9ef431f0cbf75', 'active', 'admin', 'System', '', 'Administrator', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `uuid` varchar(80) NOT NULL,
  `id` int(4) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`uuid`, `id`, `type`) VALUES
('4b532627-c3e0-7ee9-cdf0-329a290f17d8', 1, 'Administator'),
('6e205cae-b8ab-89f6-e2ba-259e08e4f3ae', 2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_collection`
--
ALTER TABLE `users_collection`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `users_govapp`
--
ALTER TABLE `users_govapp`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uuid` (`uuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
