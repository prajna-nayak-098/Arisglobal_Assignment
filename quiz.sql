-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 12:09 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `description`, `title`) VALUES
(10, 'GENERAL KNOWLEDGE LATEST QUIZZES', 'GENERAL KNOWLEDGE'),
(11, 'programing language quizzes', 'PROGRAMING LANGUAGE'),
(43, 'ttgi', 'fgk'),
(48, 'All maths quizes', 'Maths');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(56),
(56),
(56),
(56),
(56);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `ques_id` bigint(20) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `quiz_q_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`ques_id`, `answer`, `content`, `image`, `option1`, `option2`, `option3`, `option4`, `quiz_q_id`) VALUES
(15, 'Bytecode is executed by JVM', '<p>Which of the following option leads to the portability and security of Java?</p>', NULL, 'Bytecode is executed by JVM', 'The applet makes the Java code secure and portable', 'Use of exception handling', 'Dynamic binding between objects.', 12),
(16, 'Use of pointers', '<p>Which of the following is not a Java features?</p>', NULL, 'Dynamic', 'Architecture Neutral', 'Use of pointers', 'Object-oriented', 12),
(17, 'JDB', '<p>_____ is used to find and fix bugs in the Java programs.</p>', NULL, 'JVM', 'JRE', 'JDK', 'JDB', 12),
(18, 'int', '<p>What is the return type of the hashCode() method in the Object class?</p>', NULL, 'Object', 'int', 'long', 'void', 12),
(19, 'Infinity', '<p>What does the expression float a = 35 / 0 return?</p>', NULL, '0', 'Not a Number', 'Infinity', 'Run time exception', 12),
(20, 'getName()', '<p>Which method of the Class.class is used to determine the name of a class represented by the class object as a String?</p>', NULL, 'getClass()', 'intern()', 'getName()', 'toString()', 12),
(21, 'Variable Shadowing', '<p>In which process, a local variable has the same name as one of the instance variables?</p>', NULL, 'Serialization', 'Variable Shadowing', 'Abstraction', 'Multi-threading', 12),
(22, 'It has no class name', '<p>Which of the following is true about the anonymous inner class?</p>', NULL, 'It has only methods', 'Objects can\'t be created', 'It has a fixed class name', 'It has no class name', 12),
(23, 'java.util package', '<p>Which package contains the Random class?</p>', NULL, 'java.util package', 'java.lang package', 'java.awt package', 'java.io package', 12),
(25, 'AngularJS is a JavaScript framework', '<p>Which of the following statement is correct for AngularJS?</p>', NULL, 'AngularJS is an HTML framework', 'AngularJS is a Java framework', 'AngularJS is a JavaScript framework', 'AngularJS is a SQL framework', 14),
(26, 'MVVM Architectural pattern', '<p>On which of the Architectural pattern AngularJS is based?</p>', NULL, 'Observer Pattern', 'Decorator pattern', 'MVC Architecture pattern', 'MVVM Architectural pattern', 14),
(27, 'SPAs', '<p>AngularJS is perfect for?</p>', NULL, 'SPAs', 'MPAs', 'PAs', 'CPAs', 14),
(28, '{{expression}}', '<p>Which of the following is the correct syntax for writing AngularJS expressions?</p>', NULL, '(expression)', '{{expression}}', '{{{expression}}}', '[expression]', 14),
(29, 'ng-bind directive', '<p>Which of the following directive is used to bind the application data to the HTML view in AngularJS?</p>', NULL, 'ng-app directive', 'ng-model directive', 'ng-bind directive', 'ng-init directive', 14);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `q_id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `max_marks` varchar(255) DEFAULT NULL,
  `number_of_questions` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_cid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`q_id`, `active`, `description`, `max_marks`, `number_of_questions`, `title`, `category_cid`) VALUES
(12, b'1', 'java programing language mcq  quiz', '10', '10', 'Java', 11),
(13, b'1', 'Html/Css  programing language mcq quiz', '10', '10', 'HTML/CSS', 11),
(14, b'1', 'Angular programing language mcq quiz', '10', '10', 'ANGULAR', 11),
(40, b'1', 'sports mcq quiz.', '10', '10', 'Sports quiz', 10),
(49, b'1', 'dfadf', '10', '10', 'Algebra', 48);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(44, 'ADMIN'),
(45, 'NORMAL');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `enabled`, `first_name`, `last_name`, `password`, `phone`, `username`) VALUES
(1, 'smitha@gmail.com', b'1', 'Smitha', 'K S', '$2a$10$JQUXUf/FZHFhUfB1l.CglumlTKehDMyUHWQbpdsGK3Kd0SzzBo6li', '8678943', 'smitha3'),
(6, 'smitha123@gmail.com', b'1', 'smitha', 'ss', '$2a$10$ry9j9qkhf.iwPL9llEHrfuA7bdQEQmJnkMssfyulH4sD5hPGUNnuy', '8754678', 'smithaks'),
(38, 'pooja@gmail.com', b'1', 'pooja', '1', '$2a$10$s5GweTEpPOC7w0mBoLJICOVzsIvQlW/5xEeJT7yunMoe5gID.YlD2', '987654', 'pooja1'),
(41, 'smitha123@gmail.com', b'1', 'Sanku', 'M', '$2a$10$JI8SXlCOk6QyZGBcVcosEePJusQ782wD9IaMF/1hy2ICcZDAKLIp6', '8754678', 'ss'),
(46, 's@gmail.com', b'1', 'smi', 'kks', '$2a$10$92FyoY8Y0VPw93O7ZWd1/OAk5eTAds9Z.GqRG0WUsj52aiGmA9Oki', '8765', 'ssss');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_role_id` bigint(20) NOT NULL,
  `role_role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_role_id`, `role_role_id`, `user_id`) VALUES
(2, 44, 1),
(7, 45, 6),
(39, 45, 38),
(42, 45, 41),
(47, 45, 46);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ques_id`),
  ADD KEY `FKq1xd7v9iuws36j2pb22my632e` (`quiz_q_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `FKesqyvgxnab2ul8osr3a1dtulc` (`category_cid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_role_id`),
  ADD KEY `FK7u21823ktfhu9bmx2350x6n8s` (`role_role_id`),
  ADD KEY `FKj345gk1bovqvfame88rcx7yyx` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FKq1xd7v9iuws36j2pb22my632e` FOREIGN KEY (`quiz_q_id`) REFERENCES `quiz` (`q_id`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `FKesqyvgxnab2ul8osr3a1dtulc` FOREIGN KEY (`category_cid`) REFERENCES `category` (`cid`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK7u21823ktfhu9bmx2350x6n8s` FOREIGN KEY (`role_role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
