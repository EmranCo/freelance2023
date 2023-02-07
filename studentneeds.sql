-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 12:24 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentneeds`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `ads_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `photo_path` text DEFAULT NULL,
  `create_user` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `priority_level` int(11) NOT NULL DEFAULT 0,
  `confirmed` int(11) NOT NULL DEFAULT 0,
  `confirme_date` datetime NOT NULL DEFAULT current_timestamp(),
  `cancel` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ads_id`, `description`, `photo_path`, `create_user`, `create_date`, `priority_level`, `confirmed`, `confirme_date`, `cancel`) VALUES
(1, 'Some representative placeholder content for the first slide', 'assets/ads/1.jpg', 1, '2023-01-29 01:35:04', 0, 1, '2023-01-29 01:35:04', 0),
(2, 'Some Representation for ads', 'assets/ads/2.jpg', 1, '2023-02-02 02:46:34', 0, 1, '2023-02-02 02:46:34', 0),
(3, 'Description', 'assets/ads/3.jpg', 1, '2023-02-04 20:31:39', 0, 1, '2023-02-04 20:31:39', 0),
(4, '', 'assets/ads/4.jpg', 1, '2023-02-04 20:35:05', 0, 1, '2023-02-04 20:35:05', 0),
(5, '', 'assets/ads/5.jpg', 1, '2023-02-05 00:19:52', 0, 1, '2023-02-05 00:19:52', 0);

--
-- Triggers `ads`
--
DELIMITER $$
CREATE TRIGGER `add_ads_alert` AFTER INSERT ON `ads` FOR EACH ROW BEGIN
DECLARE u_type integer;
DECLARE alrt_id INTEGER;
set u_type := (SELECT user_type
From users
WHERE user_id = new.create_user);
IF !(u_type = 1) THEN
set alrt_id := (select max(alert_id)+1
from alerts);
    INSERT INTO alerts(alert_id, user_id, level, message, watched)
    VALUES(alrt_id,new.create_user,2,"Your Ads request is under proccessing.",0);
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `confrim_ads_alert` AFTER UPDATE ON `ads` FOR EACH ROW BEGIN
DECLARE alrt_id INTEGER;
IF !(new.confirmed <=> old.confirmed) THEN
set alrt_id := (select max(alert_id)+1
from alerts);
    INSERT INTO alerts(alert_id, user_id, level, message, watched)
    VALUES(alrt_id,old.create_user,1,"Your ads has been added successfully.",0);
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reject_ads_alert` BEFORE DELETE ON `ads` FOR EACH ROW BEGIN
DECLARE alrt_id INTEGER;
IF(old.confirmed=0) THEN
set alrt_id := (select max(alert_id)+1
from alerts);
    INSERT INTO alerts(alert_id, user_id, level, message, watched)
    VALUES(alrt_id,old.create_user,3,"Sorry! Your ads has been rejected.\r\nFor more details, please contact with the system adminstrator.",0);

INSERT INTO `rejects`(`reject_type`, `description`, `create_user`, `request_date`) VALUES(2,old.description, old.create_user, old.create_date);
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `alert_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level` int(1) NOT NULL DEFAULT 1,
  `message` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `watched` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`alert_id`, `user_id`, `level`, `message`, `create_date`, `watched`) VALUES
(1, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(2, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(3, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(4, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(5, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(6, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(7, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(8, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(9, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(10, 1, 1, 'Your file has been uploaded successfully.', '2023-01-30 21:29:11', 1),
(11, 1, 1, 'Your file has been uploaded successfully.', '2023-01-30 21:29:11', 1),
(12, 1, 1, 'Your file has been uploaded successfully.', '2023-01-30 21:29:11', 1),
(13, 1, 1, 'Your file has been uploaded successfully.', '2023-01-30 21:29:11', 1),
(14, 1, 1, 'Your file has been uploaded successfully.', '2023-01-30 21:29:11', 1),
(15, 1, 1, 'Your file has been uploaded successfully.', '2023-01-30 21:29:11', 1),
(16, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(17, 1, 1, 'Your file has been uploaded successfully.', '2023-01-30 21:29:11', 1),
(18, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(19, 1, 1, 'Your file has been uploaded successfully.', '2023-01-30 21:29:11', 1),
(20, 1, 1, 'Your ads has been added successfully.', '2023-01-30 21:29:11', 1),
(21, 1, 1, 'Your ads has been added successfully.', '2023-01-30 21:29:11', 1),
(22, 1, 1, 'Your ads has been added successfully.', '2023-01-30 21:29:11', 1),
(23, 1, 1, 'Your ads has been added successfully.', '2023-01-30 21:29:11', 1),
(25, 1, 1, 'Your ads has been added successfully.', '2023-01-30 21:29:11', 1),
(26, 1, 1, 'Your ads has been added successfully.', '2023-01-30 21:29:11', 1),
(27, 1, 1, 'Your ads has been added successfully.', '2023-01-30 21:29:11', 1),
(28, 1, 1, 'Your file has been uploaded successfully.', '2023-01-30 21:29:11', 1),
(29, 1, 1, 'Your file has been uploaded successfully.', '2023-01-30 21:29:11', 1),
(30, 1, 3, 'Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.', '2023-01-30 21:29:11', 1),
(31, 2, 2, 'Your file upload request is under proccessing.', '2023-02-05 00:10:57', 0),
(32, 2, 1, 'Your file has been uploaded successfully.', '2023-02-05 00:11:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `cancel` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `create_date`, `cancel`) VALUES
(1, 'Science', '2023-01-15 22:01:10', 0),
(2, 'geographic', '2023-01-15 22:01:10', 0),
(3, 'Fiction', '2023-01-15 22:11:40', 0),
(4, 'Non-Fiction', '2023-01-15 22:11:40', 0),
(5, 'Autobiography', '2023-01-15 22:11:40', 0),
(6, 'Mystery', '2023-01-15 22:11:40', 0),
(7, 'Fantasy', '2023-01-15 22:11:40', 0),
(8, 'Romance', '2023-01-15 22:11:40', 0),
(9, 'Horror', '2023-01-15 22:11:40', 0),
(10, 'Thriller', '2023-01-15 22:11:40', 0),
(11, 'Historical Fiction', '2023-01-15 22:11:40', 0),
(12, 'Poetry', '2023-01-15 22:11:40', 0),
(13, 'Young Adult', '2023-01-15 22:11:40', 0),
(14, 'Graphic Novels', '2023-01-15 22:11:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `file_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `cancel` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `file_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `file_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `extension` varchar(10) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `icon_path` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file_size` float NOT NULL,
  `cat_id` int(2) NOT NULL,
  `create_user` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `views_no` int(11) NOT NULL DEFAULT 0,
  `likes_no` int(11) NOT NULL DEFAULT 0,
  `downloads_no` int(11) NOT NULL DEFAULT 0,
  `is_url` int(1) NOT NULL DEFAULT 0,
  `url` text DEFAULT NULL,
  `confirmed` int(1) NOT NULL DEFAULT 0,
  `confirme_date` datetime NOT NULL DEFAULT current_timestamp(),
  `cancel` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `file_name`, `path`, `extension`, `folder_id`, `icon_path`, `description`, `file_size`, `cat_id`, `create_user`, `create_date`, `views_no`, `likes_no`, `downloads_no`, `is_url`, `url`, `confirmed`, `confirme_date`, `cancel`) VALUES
(1, 'Student need ', 'Main Folder/Student need .pdf', 'pdf', 0, '', 'Our student need project report', 18005200, 1, 1, '2023-02-02 00:01:54', 5, 0, 0, 0, NULL, 1, '2023-02-02 00:01:54', 0),
(2, '12', 'Main Folder/12.jpg', 'jpg', 0, '', 'sfdsf', 112339, 6, 2, '2023-02-05 00:10:57', 3, 0, 0, 0, NULL, 1, '2023-02-05 00:10:57', 0);

--
-- Triggers `files`
--
DELIMITER $$
CREATE TRIGGER `confirm_file_trig` AFTER UPDATE ON `files` FOR EACH ROW BEGIN
DECLARE alrt_id INTEGER;
IF !(new.confirmed <=> old.confirmed) THEN
set alrt_id := (select max(alert_id)+1
from alerts);
    INSERT INTO alerts(alert_id, user_id, level, message, watched)
    VALUES(alrt_id, old.create_user,1,"Your file has been uploaded successfully.",0);
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `files_add_trig` AFTER INSERT ON `files` FOR EACH ROW BEGIN
DECLARE u_type integer;
DECLARE alrt_id integer;
set u_type := (SELECT user_type
From users
WHERE user_id = new.create_user);
IF !(u_type = 1) THEN
set alrt_id := (select max(alert_id)+1
from alerts);
    INSERT INTO alerts(alert_id, user_id, level, message, watched)
    VALUES(alrt_id, new.create_user,2,"Your file upload request is under proccessing.",0);
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reject_file_trig` AFTER DELETE ON `files` FOR EACH ROW BEGIN
DECLARE alrt_id INTEGER;
IF(old.confirmed=0) THEN
set alrt_id := (select max(alert_id)+1
from alerts);
INSERT INTO alerts(alert_id, user_id, level, message, watched)
VALUES(alrt_id ,old.create_user,3,"Sorry! Your upload file request has been rejected.\r\nFor more details, please contact with the system adminstrator.",0);

INSERT INTO `rejects`(`reject_type`,`file_name`, `extension`, `description`, `cat_id`, `create_user`, `is_url`, `url`, `request_date`) VALUES(1,old.file_name, old.extension, old.description, old.cat_id, old.create_user, old.is_url, old.url, old.create_date);
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `folder_id` int(11) NOT NULL,
  `folder_name` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL,
  `icon_path` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `create_user` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `ord` int(11) DEFAULT NULL,
  `cancel` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`folder_id`, `folder_name`, `path`, `icon_path`, `parent_id`, `create_user`, `create_date`, `ord`, `cancel`) VALUES
(0, 'Main Folder', 'Main Folder/', NULL, 0, 1, '2023-01-13 23:18:24', NULL, 0),
(1, 'Science Section', 'Main Folder/Science Section/', NULL, 0, 1, '2023-01-13 23:21:09', NULL, 0),
(2, 'Management Section', 'Main Folder/Management Section/', NULL, 0, 1, '2023-01-13 23:22:28', NULL, 0),
(3, 'Technology Section', 'Main Folder/Technology Section/', NULL, 0, 1, '2023-01-13 23:24:50', NULL, 0),
(4, 'new', 'Main Folder/Management Section/new/', NULL, 2, 1, '2023-01-31 21:07:42', NULL, 0),
(5, 'New Folder', 'Main Folder/New Folder/', NULL, 0, 1, '2023-02-04 20:22:36', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `file_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rejects`
--

CREATE TABLE `rejects` (
  `reject_type` int(1) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cat_id` int(2) DEFAULT NULL,
  `create_user` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_url` int(1) NOT NULL DEFAULT 0,
  `url` text DEFAULT NULL,
  `confirmed` int(1) NOT NULL DEFAULT 3,
  `request_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rejects`
--

INSERT INTO `rejects` (`reject_type`, `file_name`, `extension`, `description`, `cat_id`, `create_user`, `create_date`, `is_url`, `url`, `confirmed`, `request_date`) VALUES
(1, 'Student Ne', 'wmv', '', 8, 1, '2023-01-27 22:43:04', 0, NULL, 3, '2023-01-21 01:07:44'),
(1, '24', 'jpg', 'dfdf', 8, 1, '2023-01-27 23:13:12', 0, NULL, 3, '2023-01-17 19:27:14'),
(2, NULL, NULL, 'aaadsv', NULL, 1, '2023-01-29 11:46:13', 0, NULL, 3, '2023-01-29 11:44:34'),
(1, 'editing', 'txt', 'eeer', 12, 1, '2023-01-29 15:13:18', 0, NULL, 3, '2023-01-29 00:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `file_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `report` text NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `ads_path` text NOT NULL DEFAULT 'assets/ads/',
  `profiles_path` text NOT NULL DEFAULT 'assets/profiles/',
  `defaultProfile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`ads_path`, `profiles_path`, `defaultProfile`) VALUES
('assets/ads/', 'assets/profiles/', 'assets/profiles/default-avatar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL DEFAULT '1234567',
  `name` varchar(100) NOT NULL,
  `user_type` int(1) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNo` varchar(10) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `avatarPath` varchar(255) NOT NULL DEFAULT 'assets/profiles/default-avatar.jpg',
  `university` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `studyYear` varchar(100) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `twitterProfile` text NOT NULL DEFAULT '#',
  `facebookProfile` text NOT NULL DEFAULT '#',
  `instagramProfile` text NOT NULL DEFAULT '#',
  `linkedinProfile` text NOT NULL DEFAULT '#',
  `createdUser` int(11) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedUser` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `show_sidebar` int(1) NOT NULL DEFAULT 1,
  `uploadPrivilege` int(1) NOT NULL DEFAULT 1,
  `createAdsPrivilege` int(1) NOT NULL DEFAULT 1,
  `cancel` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `name`, `user_type`, `email`, `phoneNo`, `gender`, `avatarPath`, `university`, `college`, `specialization`, `studyYear`, `country`, `address`, `about`, `twitterProfile`, `facebookProfile`, `instagramProfile`, `linkedinProfile`, `createdUser`, `createdDate`, `updatedUser`, `updatedDate`, `show_sidebar`, `uploadPrivilege`, `createAdsPrivilege`, `cancel`) VALUES
(1, 'Admin', 'admin123', 'Admin', 1, '', '', NULL, 'assets/profiles/default-avatar.jpg', 'Jazan', 'Computer Science', 'Computer Science', '4th', '', '', 'Senior Web Developer specializing in front end development.\r\nExperienced with all stages of the development cycle for\r\ndynamic web projects. Well-versed in numerous programming\r\nlanguages including HTML5, PHP OOP, JavaScript, CSS, MySQL.\r\nStrong background in project management and customer\r\nrelations.', '#', '#', '#', '#', 0, '2023-01-13 20:03:44', NULL, NULL, 1, 1, 1, 0),
(2, 'Atyaf', '1234567', 'Atyaf', 2, NULL, NULL, NULL, 'assets/profiles/default-avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#', '#', '#', '#', 1, '2023-02-02 00:04:11', NULL, NULL, 1, 1, 1, 0),
(3, 'black', '1234567', 'mr_black', 1, NULL, NULL, NULL, 'assets/profiles/default-avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#', '#', '#', '#', 1, '2023-02-07 01:13:18', NULL, NULL, 1, 1, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ads_id`),
  ADD KEY `ads_user_id` (`create_user`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`alert_id`),
  ADD KEY `alert_user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD KEY `comm_file_id` (`file_id`),
  ADD KEY `comm_user_id` (`user_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD KEY `download_file_id` (`file_id`),
  ADD KEY `download_user_id` (`user_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`file_id`,`user_id`),
  ADD KEY `fav_user_id` (`user_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`),
  ADD UNIQUE KEY `file_full_path` (`path`) USING HASH,
  ADD KEY `file_folder_id_fk` (`folder_id`),
  ADD KEY `file_cat_id_fk` (`cat_id`),
  ADD KEY `file_user_id_fk` (`create_user`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`folder_id`),
  ADD UNIQUE KEY `folder_name` (`folder_name`,`path`),
  ADD KEY `folder_parent_id_fk` (`parent_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`file_id`,`user_id`),
  ADD KEY `like_user_id_fk` (`user_id`);

--
-- Indexes for table `rejects`
--
ALTER TABLE `rejects`
  ADD KEY `reject_cat_id_fk` (`cat_id`),
  ADD KEY `reject_user_id_fk` (`create_user`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD KEY `rep_file_id_fk` (`file_id`),
  ADD KEY `rep_user_id_fk` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_user_id` FOREIGN KEY (`create_user`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `alerts`
--
ALTER TABLE `alerts`
  ADD CONSTRAINT `alert_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comm_file_id` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comm_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloads`
--
ALTER TABLE `downloads`
  ADD CONSTRAINT `download_file_id` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `download_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `fav_file_id` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fav_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `file_cat_id_fk` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`),
  ADD CONSTRAINT `file_folder_id_fk` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`folder_id`),
  ADD CONSTRAINT `file_user_id_fk` FOREIGN KEY (`create_user`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `folders`
--
ALTER TABLE `folders`
  ADD CONSTRAINT `folder_parent_id_fk` FOREIGN KEY (`parent_id`) REFERENCES `folders` (`folder_id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `like_file_id_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `like_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `rejects`
--
ALTER TABLE `rejects`
  ADD CONSTRAINT `reject_cat_id_fk` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reject_user_id_fk` FOREIGN KEY (`create_user`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `rep_file_id_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rep_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
