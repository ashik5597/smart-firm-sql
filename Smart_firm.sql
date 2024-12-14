-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 13, 2024 at 02:32 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cattle_farm project`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `AddCattle`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddCattle` (IN `tagNum` VARCHAR(50), IN `breedName` VARCHAR(100), IN `birthDate` DATE, IN `weightValue` DECIMAL(10,2), IN `healthStatus` VARCHAR(100), IN `vaccinationStatus` VARCHAR(100), IN `feedingSchedule` TEXT)   BEGIN
    INSERT INTO Cattle (tag_num, breed, birth_date, weight, health_status, vaccination_status, feeding_schedule)
    VALUES (tagNum, breedName, birthDate, weightValue, healthStatus, vaccinationStatus, feedingSchedule);
END$$

DROP PROCEDURE IF EXISTS `AddCattle1`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddCattle1` (IN `tagNum` VARCHAR(50), IN `breedName` VARCHAR(100), IN `birthDate` DATE, IN `weightValue` DECIMAL(10,2), IN `healthStatus` VARCHAR(100), IN `vaccinationStatus` VARCHAR(100), IN `feedingSchedule` TEXT)   BEGIN
    INSERT INTO Cattle (tag_num, breed, birth_date, weight, health_status, vaccination_status, feeding_schedule)
    VALUES (tagNum, breedName, birthDate, weightValue, healthStatus, vaccinationStatus, feedingSchedule);
END$$

DROP PROCEDURE IF EXISTS `AddCattle2`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddCattle2` (IN `tagNum` VARCHAR(50), IN `breedName` VARCHAR(100), IN `birthDate` DATE, IN `weightValue` DECIMAL(10,2), IN `healthStatus` VARCHAR(100), IN `vaccinationStatus` VARCHAR(100), IN `feedingSchedule` TEXT)   BEGIN
    INSERT INTO Cattle (tag_num, breed, birth_date, weight, health_status, vaccination_status, feeding_schedule)
    VALUES (tagNum, breedName, birthDate, weightValue, healthStatus, vaccinationStatus, feedingSchedule);
END$$

DROP PROCEDURE IF EXISTS `AddCattles`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddCattles` (IN `tagNum` VARCHAR(50), IN `breedName` VARCHAR(100), IN `birthDate` DATE, IN `weightValue` DECIMAL(10,2), IN `healthStatus` VARCHAR(100), IN `vaccinationStatus` VARCHAR(100), IN `feedingSchedule` TEXT)   BEGIN
    INSERT INTO Cattle (tag_num, breed, birth_date, weight, health_status, vaccination_status, feeding_schedule)
    VALUES (tagNum, breedName, birthDate, weightValue, healthStatus, vaccinationStatus, feedingSchedule);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
CREATE TABLE IF NOT EXISTS `billing` (
  `bill_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`bill_id`, `customer_name`, `amount`, `payment_status`, `created_at`) VALUES
(1, 'ABC Milk Distributors', 15000.00, 'Paid', '2024-11-25 04:49:04'),
(2, 'XYZ Cattle Feed Suppliers', 2000.00, 'Pending', '2024-11-25 04:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `cattle`
--

DROP TABLE IF EXISTS `cattle`;
CREATE TABLE IF NOT EXISTS `cattle` (
  `cattle_id` int NOT NULL AUTO_INCREMENT,
  `tag_num` varchar(50) NOT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `health_status` varchar(100) DEFAULT NULL,
  `vaccination_status` varchar(100) DEFAULT NULL,
  `last_health_check` date DEFAULT NULL,
  `milk_yield` decimal(10,2) DEFAULT NULL,
  `feeding_schedule` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cattle_id`),
  UNIQUE KEY `tag_num` (`tag_num`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cattle`
--

INSERT INTO `cattle` (`cattle_id`, `tag_num`, `breed`, `birth_date`, `weight`, `health_status`, `vaccination_status`, `last_health_check`, `milk_yield`, `feeding_schedule`, `created_at`) VALUES
(1, 'BD101', 'Sahiwal', '2020-01-15', 450.50, 'Sick', 'Up-to-date', '2024-11-24', 12.50, 'Morning: 3kg feed, Evening: 2kg feed', '2024-11-25 04:45:42'),
(2, 'BD102', 'Holstein Friesian', '2019-05-20', 520.75, 'Healthy', 'Up-to-date', '2024-12-08', 15.00, 'Morning: 4kg feed, Evening: 3kg feed', '2024-11-25 04:45:42'),
(3, 'BD100', 'Sahiwal', '2020-01-15', 450.50, 'Healthy', 'Up-to-date', '2024-10-01', 12.50, 'Morning: 3kg feed, Evening: 2kg feed', '2024-11-25 04:58:01'),
(4, 'BD120', 'Sahiwal', '2020-01-15', 450.50, 'Healthy', 'Up-to-date', '2024-10-01', 12.50, 'Morning: 3kg feed, Evening: 2kg feed', '2024-11-25 04:58:34'),
(5, 'BD1019', 'Holstein Friesian', '2019-05-20', 520.75, 'Healthy', 'Up-to-date', '2024-10-05', 15.00, 'Morning: 4kg feed, Evening: 3kg feed', '2024-11-25 04:58:34'),
(6, 'BD103', 'Red Chittagong', '2021-02-18', 400.30, 'Sick', 'Pending', '2024-10-08', NULL, 'Morning: 2kg feed, Evening: 2kg feed', '2024-11-25 04:58:34'),
(7, 'BD104', 'Jersey', '2022-07-10', 390.40, 'Healthy', 'Up-to-date', '2024-10-03', 10.00, 'Morning: 3kg feed, Evening: 2.5kg feed', '2024-11-25 04:58:34'),
(8, 'BD105', 'Sahiwal', '2020-03-25', 460.20, 'Healthy', 'Up-to-date', '2024-09-25', 13.50, 'Morning: 3.5kg feed, Evening: 2kg feed', '2024-11-25 04:58:34'),
(9, 'BD106', 'Crossbreed', '2019-09-15', 500.00, 'Healthy', 'Pending', '2024-10-07', 14.00, 'Morning: 4kg feed, Evening: 3kg feed', '2024-11-25 04:58:34'),
(10, 'BD107', 'Holstein Friesian', '2018-01-10', 550.10, 'Healthy', 'Up-to-date', '2024-10-10', 18.00, 'Morning: 5kg feed, Evening: 4kg feed', '2024-11-25 04:58:34'),
(11, 'BD108', 'Red Chittagong', '2021-11-05', 380.60, 'Sick', 'Pending', '2024-10-15', NULL, 'Morning: 2.5kg feed, Evening: 2kg feed', '2024-11-25 04:58:34'),
(12, 'BD109', 'Sahiwal', '2020-12-01', 480.90, 'Healthy', 'Up-to-date', '2024-10-02', 12.00, 'Morning: 3kg feed, Evening: 2kg feed', '2024-11-25 04:58:34'),
(13, 'BD110', 'Jersey', '2022-05-20', 400.00, 'Healthy', 'Up-to-date', '2024-09-30', 10.50, 'Morning: 3.5kg feed, Evening: 2.5kg feed', '2024-11-25 04:58:34'),
(14, 'BD111', 'Holstein Friesian', '2021-03-05', 510.00, 'Healthy', 'Up-to-date', '2024-10-05', 16.50, 'Morning: 4.5kg feed, Evening: 3.5kg feed', '2024-11-25 04:58:34'),
(15, 'BD112', 'Sahiwal', '2020-07-10', 455.00, 'Healthy', 'Up-to-date', '2024-09-28', 12.00, 'Morning: 3kg feed, Evening: 2kg feed', '2024-11-25 04:58:34'),
(16, 'BD113', 'Red Chittagong', '2021-09-12', 410.50, 'Healthy', 'Up-to-date', '2024-09-30', 11.00, 'Morning: 3kg feed, Evening: 2kg feed', '2024-11-25 04:58:34'),
(17, 'BD114', 'Jersey', '2020-05-18', 400.00, 'Healthy', 'Up-to-date', '2024-10-02', 10.00, 'Morning: 3kg feed, Evening: 2kg feed', '2024-11-25 04:58:34'),
(18, 'BD115', 'Crossbreed', '2021-08-22', 480.00, 'Sick', 'Pending', '2024-10-10', NULL, 'Morning: 3kg feed, Evening: 2.5kg feed', '2024-11-25 04:58:34'),
(19, 'BD116', 'Holstein Friesian', '2020-12-15', 530.75, 'Healthy', 'Up-to-date', '2024-10-06', 17.50, 'Morning: 4.5kg feed, Evening: 3.5kg feed', '2024-11-25 04:58:34'),
(20, 'BD117', 'Sahiwal', '2022-01-25', 460.30, 'Healthy', 'Up-to-date', '2024-10-01', 13.00, 'Morning: 3kg feed, Evening: 2.5kg feed', '2024-11-25 04:58:34'),
(21, 'BD118', 'Holstein Friesian', '2020-06-05', 540.60, 'Healthy', 'Up-to-date', '2024-09-27', 16.00, 'Morning: 4kg feed, Evening: 3kg feed', '2024-11-25 04:58:34'),
(22, 'BD141', 'Jersey', '2022-05-15', 400.00, 'Healthy', 'Up-to-date', NULL, NULL, 'Morning: 3kg feed, Evening: 2kg feed', '2024-12-08 17:20:49'),
(23, 'BD143', 'Jersey', '2022-05-15', 400.00, 'Healthy', 'Up-to-date', NULL, NULL, 'Morning: 3kg feed, Evening: 2kg feed', '2024-12-08 17:21:35');

--
-- Triggers `cattle`
--
DROP TRIGGER IF EXISTS `LogHealthUpdates`;
DELIMITER $$
CREATE TRIGGER `LogHealthUpdates` AFTER UPDATE ON `cattle` FOR EACH ROW BEGIN
    -- Check if the health status has changed
    IF NEW.health_status != OLD.health_status THEN
        INSERT INTO HealthRecords (cattle_id, treatment, diagnosis, created_at)
        VALUES (NEW.cattle_id, 'Health status updated', CONCAT('Changed to: ', NEW.health_status), NOW());
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `cattletaskview`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `cattletaskview`;
CREATE TABLE IF NOT EXISTS `cattletaskview` (
`cattle_id` int
,`CattleBreed` varchar(100)
,`CattleTag` varchar(50)
,`HealthStatus` varchar(100)
,`TaskDueDate` date
,`TaskName` varchar(255)
,`TaskStatus` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `communications`
--

DROP TABLE IF EXISTS `communications`;
CREATE TABLE IF NOT EXISTS `communications` (
  `communication_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `message` text,
  `communication_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `alert_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`communication_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `communications`
--

INSERT INTO `communications` (`communication_id`, `user_id`, `message`, `communication_date`, `alert_type`) VALUES
(1, 2, 'Reminder: Feed cattle by 6:00 AM.', '2024-11-25 04:49:46', 'Task Reminder'),
(2, 4, 'Cattle BD103 requires immediate health checkup.', '2024-11-25 04:49:46', 'Health Alert');

-- --------------------------------------------------------

--
-- Table structure for table `dairyproduction`
--

DROP TABLE IF EXISTS `dairyproduction`;
CREATE TABLE IF NOT EXISTS `dairyproduction` (
  `dairy_id` int NOT NULL AUTO_INCREMENT,
  `cattle_id` int DEFAULT NULL,
  `daily_milk_yield` decimal(10,2) DEFAULT NULL,
  `production_date` date DEFAULT NULL,
  `sale_status` varchar(50) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dairy_id`),
  KEY `cattle_id` (`cattle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dairyproduction`
--

INSERT INTO `dairyproduction` (`dairy_id`, `cattle_id`, `daily_milk_yield`, `production_date`, `sale_status`, `sale_price`, `created_at`) VALUES
(1, 1, 12.50, '2024-11-23', 'Sold', 500.00, '2024-11-25 04:53:07'),
(2, 2, 15.00, '2024-11-23', 'Sold', 600.00, '2024-11-25 04:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `databackup`
--

DROP TABLE IF EXISTS `databackup`;
CREATE TABLE IF NOT EXISTS `databackup` (
  `backup_id` int NOT NULL AUTO_INCREMENT,
  `backup_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_path` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `databackup`
--

INSERT INTO `databackup` (`backup_id`, `backup_date`, `file_path`, `status`) VALUES
(1, '2024-11-25 04:50:25', '/backups/farm_data_2024_11_23.sql', 'Success'),
(2, '2024-11-25 04:50:25', '/backups/farm_data_2024_11_22.sql', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `environmentalmonitoring`
--

DROP TABLE IF EXISTS `environmentalmonitoring`;
CREATE TABLE IF NOT EXISTS `environmentalmonitoring` (
  `env_id` int NOT NULL AUTO_INCREMENT,
  `temperature` decimal(5,2) DEFAULT NULL,
  `humidity` decimal(5,2) DEFAULT NULL,
  `air_quality` varchar(50) DEFAULT NULL,
  `monitoring_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`env_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `environmentalmonitoring`
--

INSERT INTO `environmentalmonitoring` (`env_id`, `temperature`, `humidity`, `air_quality`, `monitoring_date`) VALUES
(1, 30.50, 60.00, 'Good', '2024-11-25 04:49:12'),
(2, 35.00, 70.00, 'Moderate', '2024-11-25 04:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `financialmanagement`
--

DROP TABLE IF EXISTS `financialmanagement`;
CREATE TABLE IF NOT EXISTS `financialmanagement` (
  `finance_id` int NOT NULL AUTO_INCREMENT,
  `transaction_type` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text,
  `transaction_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`finance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `financialmanagement`
--

INSERT INTO `financialmanagement` (`finance_id`, `transaction_type`, `amount`, `description`, `transaction_date`, `created_at`) VALUES
(1, 'Revenue', 15000.00, 'Milk sale to ABC Distributors', '2024-11-23', '2024-11-25 04:51:21'),
(2, 'Expense', 5000.00, 'Purchased cattle feed and vaccines', '2024-11-22', '2024-11-25 04:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `healthrecords`
--

DROP TABLE IF EXISTS `healthrecords`;
CREATE TABLE IF NOT EXISTS `healthrecords` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `cattle_id` int DEFAULT NULL,
  `treatment` text,
  `diagnosis` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`record_id`),
  KEY `cattle_id` (`cattle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `healthrecords`
--

INSERT INTO `healthrecords` (`record_id`, `cattle_id`, `treatment`, `diagnosis`, `created_at`) VALUES
(1, 1, 'Antibiotic course for fever', 'Fever detected during health checkup', '2024-11-25 04:47:38'),
(2, 2, 'Deworming treatment', 'Routine checkup', '2024-11-25 04:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `helpsupport`
--

DROP TABLE IF EXISTS `helpsupport`;
CREATE TABLE IF NOT EXISTS `helpsupport` (
  `support_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `issue_description` text,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`support_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `helpsupport`
--

INSERT INTO `helpsupport` (`support_id`, `user_id`, `issue_description`, `status`, `created_at`) VALUES
(1, 2, 'Cannot update cattle health record.', 'Resolved', '2024-11-25 04:50:49'),
(2, 3, 'Inventory stock levels not updating.', 'Open', '2024-11-25 04:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `stock_level` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`inventory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `item_name`, `category`, `stock_level`, `quantity`, `created_at`) VALUES
(1, 'Cattle Feed', 'Feed', 50, 200, '2024-11-25 04:45:49'),
(2, 'Vaccine A', 'Medical Supplies', 30, 100, '2024-11-25 04:45:49'),
(3, 'Antibiotic B', 'Medical Supplies', 20, 50, '2024-11-25 04:45:49'),
(4, 'Water Trough', 'Equipment', 5, 10, '2024-11-25 04:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `meatproduction`
--

DROP TABLE IF EXISTS `meatproduction`;
CREATE TABLE IF NOT EXISTS `meatproduction` (
  `meat_id` int NOT NULL AUTO_INCREMENT,
  `cattle_id` int DEFAULT NULL,
  `processed_weight` decimal(10,2) DEFAULT NULL,
  `processing_date` date DEFAULT NULL,
  `sale_status` varchar(50) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`meat_id`),
  KEY `cattle_id` (`cattle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `meatproduction`
--

INSERT INTO `meatproduction` (`meat_id`, `cattle_id`, `processed_weight`, `processing_date`, `sale_status`, `sale_price`, `created_at`) VALUES
(1, 1, 200.50, '2024-11-20', 'Sold', 400000.00, '2024-11-25 04:52:59'),
(2, 2, 180.75, '2024-11-22', 'Pending', NULL, '2024-11-25 04:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `milkproduction`
--

DROP TABLE IF EXISTS `milkproduction`;
CREATE TABLE IF NOT EXISTS `milkproduction` (
  `production_id` int NOT NULL AUTO_INCREMENT,
  `cattle_id` int DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `production_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`production_id`),
  KEY `cattle_id` (`cattle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `milkproduction`
--

INSERT INTO `milkproduction` (`production_id`, `cattle_id`, `quantity`, `production_date`, `created_at`) VALUES
(1, 1, 12.50, '2024-11-23', '2024-11-25 04:48:57'),
(2, 2, 15.00, '2024-11-23', '2024-11-25 04:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `mobileappintegration`
--

DROP TABLE IF EXISTS `mobileappintegration`;
CREATE TABLE IF NOT EXISTS `mobileappintegration` (
  `app_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `feature_access` text,
  `notification_status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`app_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mobileappintegration`
--

INSERT INTO `mobileappintegration` (`app_id`, `user_id`, `feature_access`, `notification_status`, `created_at`) VALUES
(1, 1, 'Dashboard, Reports, Alerts', 'Active', '2024-11-25 04:49:57'),
(2, 3, 'Task Management, Inventory', 'Active', '2024-11-25 04:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `report_id` int NOT NULL AUTO_INCREMENT,
  `report_type` varchar(100) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `report_type`, `content`, `created_at`) VALUES
(1, 'Health Report', 'Cattle BD101 had a fever on 2024-11-23. Treatment provided.', '2024-11-25 04:49:36'),
(2, 'Financial Report', 'November revenue: 15000. Expenses: 2000.', '2024-11-25 04:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `surveillance`
--

DROP TABLE IF EXISTS `surveillance`;
CREATE TABLE IF NOT EXISTS `surveillance` (
  `surveillance_id` int NOT NULL AUTO_INCREMENT,
  `camera_location` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `detected_activity` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`surveillance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `surveillance`
--

INSERT INTO `surveillance` (`surveillance_id`, `camera_location`, `status`, `detected_activity`, `created_at`) VALUES
(1, 'Main Barn', 'Active', 'Cattle movement detected at 11:45 PM', '2024-11-25 04:50:13'),
(2, 'Storage Room', 'Active', 'No unusual activity', '2024-11-25 04:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `taskautomation`
--

DROP TABLE IF EXISTS `taskautomation`;
CREATE TABLE IF NOT EXISTS `taskautomation` (
  `automation_id` int NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) DEFAULT NULL,
  `schedule_time` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`automation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `taskautomation`
--

INSERT INTO `taskautomation` (`automation_id`, `task_name`, `schedule_time`, `status`, `created_at`) VALUES
(1, 'Automated Feeding', '06:00:00', 'Active', '2024-11-25 04:50:05'),
(2, 'Barn Cleaning', '18:00:00', 'Active', '2024-11-25 04:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `task_id` int NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) DEFAULT NULL,
  `assigned_to` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_id`),
  KEY `assigned_to` (`assigned_to`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `task_name`, `assigned_to`, `status`, `due_date`, `created_at`) VALUES
(1, 'Feed Cattle', 2, 'Pending', '2024-11-25', '2024-11-25 04:47:29'),
(2, 'Health Checkup', 4, 'Completed', '2024-11-23', '2024-11-25 04:47:29'),
(3, 'Clean Barn', 3, 'Pending', '2024-11-25', '2024-11-25 04:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `phone`, `role`, `password`, `created_at`) VALUES
(1, 'Hasib', 'hasib@example.com', '01710000001', 'Owner', 'password123', '2024-11-25 04:45:19'),
(2, 'Ashik', 'ashik@example.com', '01710000002', 'Employee', 'password123', '2024-11-25 04:45:19'),
(3, 'Ripa', 'ripa@example.com', '01710000003', 'Manager', 'password123', '2024-11-25 04:45:19'),
(4, 'Jubair', 'jubair@example.com', '01710000004', 'Vet', 'password123', '2024-11-25 04:45:19');

-- --------------------------------------------------------

--
-- Structure for view `cattletaskview`
--
DROP TABLE IF EXISTS `cattletaskview`;

DROP VIEW IF EXISTS `cattletaskview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cattletaskview`  AS SELECT `c`.`cattle_id` AS `cattle_id`, `c`.`tag_num` AS `CattleTag`, `c`.`breed` AS `CattleBreed`, `c`.`health_status` AS `HealthStatus`, `t`.`task_name` AS `TaskName`, `t`.`status` AS `TaskStatus`, `t`.`due_date` AS `TaskDueDate` FROM (`cattle` `c` join `tasks` `t` on((`c`.`cattle_id` = `t`.`assigned_to`))) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
