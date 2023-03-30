-- Database: `task`
--
CREATE DATABASE IF NOT EXISTS `taskrpg` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `taskrpg`;

-- --------------------------------------------------------

--
-- Table structure for table `avatars`
--

CREATE TABLE `avatars` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `avatars`
--

INSERT INTO `avatars` (`ID`, `name`, `price`, `image`) VALUES
(1, 'Female', 0, 'female.png'),
(2, 'Male', 0, 'male.png'),
(3, 'Other', 0, 'other.png'),
(4, 'Pearl', 12, 'pearl.png'),
(5, 'Val', 15, 'val.png'),
(6, 'Xairo', 30, 'xairo2.png'),
(7, 'Mishiba', 33, 'mishiba.png'),
(8, 'Rei', 36, 'rei.png'),
(9, 'Gilb', 39, 'gilb2.png'),
(10, 'Stella', 42, 'stella.png'),
(11, 'Drake', 45, 'drake2.png'),
(12, 'Jamal', 69, 'jamal.png'),
(13, 'Elfen', 100, 'elfen.png'),
(14, 'Scotty', 339, 'scotty.png'),
(15, 'Luna', 420, 'luna.png'),
(16, 'Capytara', 555, 'capytara.png'),
(17, 'Aleen', 666, 'aleen.png'),
(18, 'Ultra Pony', 999, 'ultrapony.png');

-- --------------------------------------------------------

--
-- Table structure for table `task_todo`
--

CREATE TABLE `task_todo` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 for complited\r\n1 for have to complete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_todo`
--

INSERT INTO `task_todo` (`ID`, `user_id`, `task`, `status`) VALUES
(34, 1, 'cycling', 1),
(42, 1, 'homework', 1),
(43, 2, 'essay for economics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_users`
--

CREATE TABLE `task_users` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `DOB` date DEFAULT NULL,
  `tasks` varchar(9000) NOT NULL,
  `avatar` int(11) NOT NULL DEFAULT 8,
  `coin` int(11) NOT NULL DEFAULT 3,
  `userrole` int(11) NOT NULL COMMENT '0 for user\r\n1 for admin',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 for inactive\r\n1 for active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_users`
--

INSERT INTO `task_users` (`ID`, `name`, `username`, `email`, `pass`, `photo`, `DOB`, `tasks`, `avatar`, `coin`, `userrole`, `status`) VALUES
(1, 'Admin', 'tsktsk', 'tsk@idk.com', '55d7faee86f4f6709df1d72d7ec4194eff41b81c', '', '1000-01-01', '', 11, 999999000, 1, 1),
(5, 'Nazifa', 'rigedddy', 'rigedddy@gmail.com', 'aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d', '', '2023-03-01', '', 6, 31, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `task_todo`
--
ALTER TABLE `task_todo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `task_users`
--
ALTER TABLE `task_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `avatar` (`avatar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avatars`
--
ALTER TABLE `avatars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `task_todo`
--
ALTER TABLE `task_todo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `task_users`
--
ALTER TABLE `task_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `task_todo`
--
ALTER TABLE `task_todo`
  ADD CONSTRAINT `task_todo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `task_users` (`ID`);

--
-- Constraints for table `task_users`
--
ALTER TABLE `task_users`
  ADD CONSTRAINT `task_users_ibfk_1` FOREIGN KEY (`avatar`) REFERENCES `avatars` (`ID`);

  