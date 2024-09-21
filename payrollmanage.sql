-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 21 sep. 2024 à 12:56
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `payrollmanage`
--

-- --------------------------------------------------------

--
-- Structure de la table `branch`
--

CREATE TABLE `branch` (
  `Branch_id` int(5) NOT NULL,
  `Name` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Branch_Address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone_number` bigint(11) NOT NULL,
  `Email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Establishment_date` date NOT NULL,
  `Created_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_date` date NOT NULL,
  `Modified_date` date NOT NULL,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `branch`
--

INSERT INTO `branch` (`Branch_id`, `Name`, `Branch_Address`, `Phone_number`, `Email`, `Establishment_date`, `Created_by`, `Created_date`, `Modified_date`, `Status`) VALUES
(1, 'Hanoï Branch', '2. Rue Ly Quôc Su · 3. Rue Tông Duy Tân', 84824578965, 'HanoïBranch@gmail.com', '2023-08-30', 'Group1_GL', '2023-08-30', '2023-08-30', 1),
(2, 'Hô Chi Minh-Ville Branch', 'Saigon Square Shopping Mall', 84812546987, 'HôChiMinh-VilleBranch@gmail.com', '2023-08-30', 'Group1_GL', '2023-08-30', '2023-08-30', 1),
(3, 'Haïphong Branch', ' No. 1, Road 1, Waterfront City Vinh Niem, Le Chan', 84821546789, 'HaïphongBranch@gmail.com', '2023-08-30', 'Group1_GL', '2023-08-30', '2023-08-30', 1),
(4, 'Da Nang Branch', '24 Tran Phu, district de Hai Chau,', 84821345687, 'DaNangBranch@gmail.com', '2023-08-30', 'Group1_GL', '2023-08-30', '2023-08-30', 1),
(5, 'Biên Hòa Branch', '655 Phạm Văn Thuận, Tam Hiệp', 84821345478, 'BiênHòaBranch@gmail.com', '2023-08-30', 'Group1_GL', '2023-08-30', '2023-08-30', 1),
(6, 'Nha Trang Branch', '100 Quang Trung Street, Loc Tho Ward, Nha Trang City', 84824785963, 'NhaTrangBranch@gmail.com', '2023-08-30', 'Group1_GL', '2023-08-30', '2023-08-30', 1);

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(5) NOT NULL,
  `from_id` int(5) NOT NULL,
  `to_id` int(5) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chattime` time NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `chat`
--

INSERT INTO `chat` (`chat_id`, `from_id`, `to_id`, `message`, `chattime`, `status`) VALUES
(37, 1, 4, 'We have accepted your leave', '08:25:14', 2),
(38, 1, 2, 'Work Pressure', '08:22:25', 2);

-- --------------------------------------------------------

--
-- Structure de la table `chat_theme`
--

CREATE TABLE `chat_theme` (
  `Employee_id` int(5) NOT NULL,
  `chat_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `department`
--

CREATE TABLE `department` (
  `Department_id` int(5) NOT NULL,
  `Department_name` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_date` date NOT NULL,
  `Modified_date` date NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `department`
--

INSERT INTO `department` (`Department_id`, `Department_name`, `Created_date`, `Modified_date`, `Status`) VALUES
(1, 'Administration', '2023-08-30', '2023-08-30', 1),
(2, 'Human Resources', '2023-08-30', '2023-08-30', 1),
(3, 'Accounting/Finance', '2023-08-30', '2023-08-30', 1),
(4, 'IT/Technology', '2023-08-30', '2023-08-30', 1),
(5, 'Legal', '2023-08-30', '2023-08-30', 1),
(6, 'Operations', '2023-08-30', '2023-08-30', 1),
(7, 'Sales', '2023-08-30', '2023-08-30', 1),
(8, 'Marketing', '2023-08-30', '2023-08-30', 1),
(9, 'Customer Service', '2023-08-30', '2023-08-30', 1),
(10, 'Research & Development', '2023-08-30', '2023-08-30', 1);

-- --------------------------------------------------------

--
-- Structure de la table `designation`
--

CREATE TABLE `designation` (
  `Designation_id` int(5) NOT NULL,
  `Designation_name` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Department_name` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_date` date NOT NULL,
  `Modified_date` date NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `designation`
--

INSERT INTO `designation` (`Designation_id`, `Designation_name`, `Department_name`, `Created_date`, `Modified_date`, `Status`) VALUES
(1, 'Executive Assistant', 'Administration', '2023-08-30', '2023-08-30', 1),
(2, 'Office Administrator', 'Administration', '2023-08-30', '2023-08-30', 1),
(3, 'Administrative Assistant', 'Administration', '2023-08-30', '2023-08-30', 1),
(4, 'Human Resources Manager', 'Human Resources', '2023-08-30', '2023-08-30', 1),
(5, 'HR Generalist', 'Human Resources', '2023-08-30', '2023-08-30', 1),
(6, 'HR Coordinator', 'Human Resources', '2023-08-30', '2023-08-30', 1),
(7, 'Payroll Specialist', 'Accounting/Finance', '2023-08-30', '2023-08-30', 1),
(8, 'Accountant', 'Accounting/Finance', '2023-08-30', '2023-08-30', 1),
(9, 'Tax Specialist', 'Accounting/Finance', '2023-08-30', '2023-08-30', 1),
(10, 'Compliance Officer', 'Legal', '2023-08-30', '2023-08-30', 1),
(11, 'Payroll Clerk', 'Accounting/Finance', '2023-08-30', '2023-08-30', 1),
(12, 'HR Assistant', 'Human Resources', '2023-08-30', '2023-08-30', 1),
(13, 'IT Manager', 'IT/Technology', '2023-08-30', '2023-08-30', 1),
(14, 'Financial Controller', 'Accounting/Finance', '2023-08-30', '2023-08-30', 1),
(15, 'Financial Analyst', 'Accounting/Finance', '2023-08-30', '2023-08-30', 1),
(16, 'Operations Manager', 'Operations', '2023-08-30', '2023-08-30', 1),
(17, 'Benefits Administrator', 'Human Resources', '2023-08-30', '2023-08-30', 1),
(18, 'Network Administrator', 'IT/Technology', '2023-08-30', '2023-08-30', 1),
(19, 'Finance Manager', 'Accounting/Finance', '2023-08-30', '2023-08-30', 1),
(20, 'IT Specialist', 'IT/Technology', '2023-08-30', '2023-08-30', 1),
(21, 'Legal Assistant', 'Legal', '2023-08-30', '2023-08-30', 1),
(22, 'Legal Counsel', 'Legal', '2023-08-30', '2023-08-30', 1),
(23, 'Software Engineer', 'IT/Technology', '2023-08-30', '2023-08-30', 1),
(24, 'Executive Director/CEO', 'Operations', '2023-08-30', '2023-08-30', 1),
(25, 'Lawyer', 'Legal', '2023-08-30', '2023-08-30', 1),
(26, 'Sales Manager', 'Sales', '2023-08-30', '2023-08-30', 1),
(27, 'Account Executive', 'Sales', '2023-08-30', '2023-08-30', 1),
(28, 'Operations Coordinator', 'Operations', '2023-08-30', '2023-08-30', 1),
(29, 'Supply Chain Manager', 'Operations', '2023-08-30', '2023-08-30', 1),
(30, 'Marketing Manager', 'Marketing', '2023-08-30', '2023-08-30', 1),
(31, 'Marketing Coordinator', 'Marketing', '2023-08-30', '2023-08-30', 1),
(32, 'Digital Marketer', 'Marketing', '2023-08-30', '2023-08-30', 1),
(33, 'Customer Service Representative', 'Customer Service', '2023-08-30', '2023-08-30', 1),
(34, 'Customer Service Manager', 'Customer Service', '2023-08-30', '2023-08-30', 1),
(35, 'Help Desk Support', 'Customer Service', '2023-08-30', '2023-08-30', 1),
(36, 'Research Scientist', 'Research and Development', '2023-08-30', '2023-08-30', 1),
(37, 'R&D Engineer', 'Research and Development', '2023-08-30', '2023-08-30', 1),
(38, 'Product Development Manager', 'Research and Development', '2023-08-30', '2023-08-30', 1);

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

CREATE TABLE `employee` (
  `Employee_id` int(5) NOT NULL,
  `Employee_name` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Current_address` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Permanent_address` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mobile_number` bigint(11) NOT NULL,
  `Gender` enum('Male','Female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `Qualification` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Joining_date` date NOT NULL,
  `Registration_date` date NOT NULL,
  `Department_id` int(5) NOT NULL,
  `Branch_id` int(5) NOT NULL,
  `Designation_id` int(5) NOT NULL,
  `Shift_id` int(5) NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bank_account_number` bigint(16) DEFAULT NULL,
  `Created_date` date NOT NULL,
  `Modified_date` date NOT NULL,
  `Status` int(1) NOT NULL,
  `Confirm_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Roles` int(5) NOT NULL,
  `city` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Basic_salary` float(10,3) NOT NULL,
  `PT` float(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`Employee_id`, `Employee_name`, `Current_address`, `Permanent_address`, `Mobile_number`, `Gender`, `Email`, `DOB`, `Qualification`, `Joining_date`, `Registration_date`, `Department_id`, `Branch_id`, `Designation_id`, `Shift_id`, `Password`, `Bank_account_number`, `Created_date`, `Modified_date`, `Status`, `Confirm_password`, `Roles`, `city`, `Basic_salary`, `PT`) VALUES
(1, 'Administrator', 'Hanoi', 'Cau gaiy', 1603550521, 'Male', 'admin123@gmail.com', '1998-11-25', 'B.Sc. CSE', '2023-08-30', '2023-08-30', 1, 1, 1, 1, 'Admin@123', 123456789012, '2023-08-30', '2023-08-30', 1, 'Admin@123', 1, 'Hanoi', 100000.000, 200.000),
(2, 'Mr Ibrahima', 'dopidaer', 'mamoun', 1776360940, 'Male', 'ibrahima12@gmail.com', '1991-04-24', 'B.Sc.(CA & IT)', '2023-08-30', '2023-08-30', 1, 3, 3, 2, 'Ibrahima@123', 1237891452369854, '2023-08-30', '2023-08-30', 1, 'Ibrahima@123', 2, 'cau gaiy', 50000.000, 200.000),
(3, 'Mr David', 'bamboma', 'hanoi', 848212456789, 'Male', 'david@gmail.com', '2005-02-26', 'B.Sc.(CA & IT)', '2023-08-30', '2023-08-30', 1, 4, 2, 3, 'David@123', 4561978236547895, '2023-08-30', '2023-08-30', 1, 'David@123', 2, 'Kinshasa', 50000.000, 200.000),
(4, 'Ms Priscille', 'dalaba', 'Cau Gaiy', 1234567890, 'Female', 'priscille@gmail.com', '1994-04-22', 'B.Sc.(CA & IT)', '2023-08-30', '2023-08-30', 6, 3, 4, 2, 'Priscille@123', 301245589012345, '2023-08-30', '2023-08-30', 1, 'Priscille@123', 3, 'Kinshasa', 18000.000, 200.000),
(5, 'MD NASIM KHAN', 'Gazipur', 'Barishal', 1234567890, 'Male', 'def@gmail.com', '1994-01-15', 'MBA', '2023-08-30', '2023-08-30', 8, 3, 15, 3, 'Def@12345', 345678912345678, '2023-08-30', '2023-08-30', 1, 'Def@12345', 3, 'Khulna', 15000.000, 200.000),
(6, 'SAMIM ALAM', 'Noakhali', 'Dhaka', 4831758210, 'Male', 'xyz@mail.com', '2000-04-12', 'HSC', '2023-08-31', '2023-08-31', 6, 4, 20, 1, 'Xyz@12345', 56496469486, '2023-08-30', '2023-08-31', 1, 'Xyz@12345', 3, 'hbgfhsd', 20000.000, 200.000);

-- --------------------------------------------------------

--
-- Structure de la table `employee_attendance`
--

CREATE TABLE `employee_attendance` (
  `Employee_attendance_id` int(5) NOT NULL,
  `Employee_id` int(5) NOT NULL,
  `Checkin_time` time DEFAULT NULL,
  `Checkout_time` time DEFAULT NULL,
  `Bio_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employee_attendance`
--

INSERT INTO `employee_attendance` (`Employee_attendance_id`, `Employee_id`, `Checkin_time`, `Checkout_time`, `Bio_date`) VALUES
(1, 1, '10:00:00', '17:00:00', '2023-04-01'),
(2, 1, '10:00:00', '17:00:00', '2023-04-02'),
(3, 1, '10:00:00', '17:00:00', '2023-04-03'),
(4, 1, NULL, NULL, '2023-04-04'),
(5, 1, '10:00:00', '17:00:00', '2023-04-05'),
(6, 1, '10:00:00', '17:00:00', '2023-04-06'),
(7, 1, '10:00:00', '17:00:00', '2023-04-07'),
(8, 1, '10:00:00', '17:00:00', '2023-04-08'),
(9, 1, '10:00:00', '17:00:00', '2023-04-09'),
(10, 1, '10:00:00', '17:00:00', '2023-04-10'),
(11, 1, NULL, NULL, '2023-04-11'),
(12, 1, '10:00:00', '17:00:00', '2023-04-12'),
(13, 1, '10:00:00', '17:00:00', '2023-04-13'),
(14, 1, '10:00:00', '17:00:00', '2023-04-14'),
(15, 1, '10:00:00', '17:00:00', '2023-04-15'),
(16, 1, '10:00:00', '17:00:00', '2023-04-16'),
(17, 1, '10:00:00', '17:00:00', '2023-04-17'),
(18, 1, NULL, NULL, '2023-04-18'),
(19, 1, '10:00:00', '17:00:00', '2023-04-19'),
(20, 1, '10:00:00', '17:00:00', '2023-04-20'),
(21, 1, '10:00:00', '17:00:00', '2023-04-21'),
(22, 1, '10:00:00', '17:00:00', '2023-04-22'),
(23, 1, '10:00:00', '17:00:00', '2023-04-23'),
(24, 1, '10:00:00', '17:00:00', '2023-04-24'),
(25, 1, NULL, NULL, '2023-04-25'),
(26, 1, '10:00:00', '17:00:00', '2023-04-26'),
(27, 1, '10:00:00', '17:00:00', '2023-04-27'),
(28, 1, '10:00:00', '17:00:00', '2023-04-28'),
(29, 1, '10:00:00', '17:00:00', '2023-04-29'),
(30, 1, '10:00:00', '17:00:00', '2023-04-30'),
(31, 2, '14:00:00', '22:00:00', '2023-04-01'),
(32, 2, '14:00:00', '22:00:00', '2023-04-02'),
(33, 2, '14:00:00', '22:00:00', '2023-04-03'),
(34, 2, NULL, NULL, '2023-04-04'),
(35, 2, '14:00:00', '22:00:00', '2023-04-05'),
(36, 2, '14:00:00', '22:00:00', '2023-04-06'),
(37, 2, '14:00:00', '22:00:00', '2023-04-07'),
(38, 2, '14:00:00', '22:00:00', '2023-04-08'),
(39, 2, NULL, NULL, '2023-04-09'),
(40, 2, '14:00:00', '22:00:00', '2023-04-10'),
(41, 2, NULL, NULL, '2023-04-11'),
(42, 2, '14:00:00', '22:00:00', '2023-04-12'),
(43, 2, NULL, '22:00:00', '2023-04-13'),
(44, 2, '14:00:00', '22:00:00', '2023-04-14'),
(45, 2, '14:00:00', NULL, '2023-04-15'),
(46, 2, '14:00:00', '22:00:00', '2023-04-16'),
(47, 2, '14:00:00', '22:00:00', '2023-04-17'),
(48, 2, NULL, NULL, '2023-04-18'),
(49, 2, '14:00:00', '22:00:00', '2023-04-19'),
(50, 2, '14:00:00', '22:00:00', '2023-04-20'),
(51, 2, '14:00:00', '22:00:00', '2023-04-21'),
(52, 2, '14:00:00', '22:00:00', '2023-04-22'),
(53, 2, '14:00:00', '22:00:00', '2023-04-23'),
(54, 2, '14:00:00', '22:00:00', '2023-04-24'),
(55, 2, NULL, NULL, '2023-04-25'),
(56, 2, NULL, '22:00:00', '2023-04-26'),
(57, 2, '14:00:00', '22:00:00', '2023-04-27'),
(58, 2, '14:00:00', '22:00:00', '2023-04-28'),
(59, 2, '14:00:00', '22:00:00', '2023-04-29'),
(60, 2, '14:00:00', '22:00:00', '2023-04-30'),
(61, 3, '17:00:00', '23:00:00', '2023-04-01'),
(62, 3, '17:00:00', NULL, '2023-04-02'),
(63, 3, '17:00:00', '23:00:00', '2023-04-03'),
(64, 3, NULL, NULL, '2023-04-04'),
(65, 3, '17:00:00', '23:00:00', '2023-04-05'),
(66, 3, '17:00:00', '23:00:00', '2023-04-06'),
(67, 3, '17:00:00', '23:00:00', '2023-04-07'),
(68, 3, '17:00:00', '23:00:00', '2023-04-08'),
(69, 3, '17:00:00', '23:00:00', '2023-04-09'),
(70, 3, '17:00:00', '23:00:00', '2023-04-10'),
(71, 3, NULL, NULL, '2023-04-11'),
(72, 3, '17:00:00', '23:00:00', '2023-04-12'),
(73, 3, '17:00:00', '23:00:00', '2023-04-13'),
(74, 3, '17:00:00', '23:00:00', '2023-04-14'),
(75, 3, '17:00:00', '23:00:00', '2023-04-15'),
(76, 3, '17:00:00', '23:00:00', '2023-04-16'),
(77, 3, NULL, NULL, '2023-04-17'),
(78, 3, NULL, NULL, '2023-04-18'),
(79, 3, '17:00:00', '23:00:00', '2023-04-19'),
(80, 3, '17:00:00', '23:00:00', '2023-04-20'),
(81, 3, '17:00:00', '23:00:00', '2023-04-21'),
(82, 3, '17:00:00', '23:00:00', '2023-04-22'),
(83, 3, '17:00:00', '23:00:00', '2023-04-23'),
(84, 3, '17:00:00', '23:00:00', '2023-04-24'),
(85, 3, NULL, NULL, '2023-04-25'),
(86, 3, '17:00:00', '23:00:00', '2023-04-26'),
(87, 3, '17:00:00', '23:00:00', '2023-04-27'),
(88, 3, NULL, NULL, '2023-04-28'),
(89, 3, '17:00:00', '23:00:00', '2023-04-29'),
(90, 3, '17:00:00', '23:00:00', '2023-04-30'),
(91, 4, '08:00:10', '20:10:03', '2023-04-01'),
(92, 4, '08:00:10', '20:10:03', '2023-04-02'),
(93, 4, '08:00:10', '20:10:03', '2023-04-03'),
(94, 4, NULL, NULL, '2023-04-04'),
(95, 4, '08:00:10', '20:10:03', '2023-04-05'),
(96, 4, '08:00:10', '20:10:03', '2023-04-06'),
(97, 4, '08:00:10', '20:10:03', '2023-04-07'),
(98, 4, '08:00:10', '20:10:03', '2023-04-08'),
(99, 4, '08:00:10', '20:10:03', '2023-04-09'),
(100, 4, '08:00:10', '20:10:03', '2023-04-10'),
(101, 4, NULL, NULL, '2023-04-11'),
(102, 4, '08:00:10', '20:10:03', '2023-04-12'),
(103, 4, '08:00:10', '20:10:03', '2023-04-13'),
(104, 4, '08:00:10', '20:10:03', '2023-04-14'),
(105, 4, '08:00:10', '20:10:03', '2023-04-15'),
(106, 4, NULL, '20:10:03', '2023-04-16'),
(107, 4, '08:00:10', '20:10:03', '2023-04-17'),
(108, 4, NULL, NULL, '2023-04-18'),
(109, 4, '08:00:10', '20:10:03', '2023-04-19'),
(110, 4, '08:00:10', NULL, '2023-04-20'),
(111, 4, '08:00:10', '20:10:03', '2023-04-21'),
(112, 4, '08:00:10', '20:10:03', '2023-04-22'),
(113, 4, '08:00:10', '20:10:03', '2023-04-23'),
(114, 4, '08:00:10', '20:10:03', '2023-04-24'),
(115, 4, NULL, NULL, '2023-04-25'),
(116, 4, '08:00:10', '20:10:03', '2023-04-26'),
(117, 4, '08:00:10', '20:10:03', '2023-04-27'),
(118, 4, '08:00:10', '20:10:03', '2023-04-28'),
(119, 4, '08:00:10', '20:10:03', '2023-04-29'),
(120, 4, '08:00:10', '20:10:03', '2023-04-30'),
(121, 5, '09:15:10', '18:10:08', '2023-04-01'),
(122, 5, NULL, NULL, '2023-04-02'),
(123, 5, '09:15:10', '18:10:08', '2023-04-03'),
(124, 5, NULL, NULL, '2023-04-04'),
(125, 5, '09:15:10', '18:10:08', '2023-04-05'),
(126, 5, '09:15:10', '18:10:08', '2023-04-06'),
(127, 5, '09:15:10', '18:10:08', '2023-04-07'),
(128, 5, '09:15:10', '18:10:08', '2023-04-08'),
(129, 5, '09:15:10', '18:10:08', '2023-04-09'),
(130, 5, '09:15:10', '18:10:08', '2023-04-10'),
(131, 5, NULL, NULL, '2023-04-11'),
(132, 5, '09:15:10', '18:10:08', '2023-04-12'),
(133, 5, '09:15:10', '18:10:08', '2023-04-13'),
(134, 5, '09:15:10', '18:10:08', '2023-04-14'),
(135, 5, '09:15:10', '18:10:08', '2023-04-15'),
(136, 5, '09:15:10', '18:10:08', '2023-04-16'),
(137, 5, '09:15:10', '18:10:08', '2023-04-17'),
(138, 5, NULL, NULL, '2023-04-18'),
(139, 5, '09:15:10', '18:10:08', '2023-04-19'),
(140, 5, '09:15:10', '18:10:08', '2023-04-20'),
(141, 5, NULL, NULL, '2023-04-21'),
(142, 5, '09:15:10', '18:10:08', '2023-04-22'),
(143, 5, '09:15:10', '18:10:08', '2023-04-23'),
(144, 5, NULL, NULL, '2023-04-24'),
(145, 5, NULL, NULL, '2023-04-25'),
(146, 5, '09:15:10', '18:10:08', '2023-04-26'),
(147, 5, '09:15:10', '18:10:08', '2023-04-27'),
(148, 5, '09:15:10', '18:10:08', '2023-04-28'),
(149, 5, '09:15:10', '18:10:08', '2023-04-29'),
(150, 5, '09:15:10', '18:10:08', '2023-04-30'),
(151, 6, '11:15:19', '21:18:45', '2023-04-01'),
(152, 6, '11:15:19', '21:18:45', '2023-04-02'),
(153, 6, '11:15:19', '21:18:45', '2023-04-03'),
(154, 6, NULL, NULL, '2023-04-04'),
(155, 6, '11:15:19', '21:18:45', '2023-04-05'),
(156, 6, '11:15:19', '21:18:45', '2023-04-06'),
(157, 6, NULL, NULL, '2023-04-07'),
(158, 6, '11:15:19', '21:18:45', '2023-04-08'),
(159, 6, '11:15:19', '21:18:45', '2023-04-09'),
(160, 6, '11:15:19', '21:18:45', '2023-04-10'),
(161, 6, NULL, NULL, '2023-04-11'),
(162, 6, '11:15:19', '21:18:45', '2023-04-12'),
(163, 6, '11:15:19', '21:18:45', '2023-04-13'),
(164, 6, '11:15:19', '21:18:45', '2023-04-14'),
(165, 6, '11:15:19', '21:18:45', '2023-04-15'),
(166, 6, '11:15:19', '21:18:45', '2023-04-16'),
(167, 6, '11:15:19', '21:18:45', '2023-04-17'),
(168, 6, NULL, NULL, '2023-04-18'),
(169, 6, '11:15:19', '21:18:45', '2023-04-19'),
(170, 6, '11:15:19', '21:18:45', '2023-04-20'),
(171, 6, '11:15:19', '21:18:45', '2023-04-21'),
(172, 6, '11:15:19', '21:18:45', '2023-04-22'),
(173, 6, '11:15:19', '21:18:45', '2023-04-23'),
(174, 6, '11:15:19', '21:18:45', '2023-04-24'),
(175, 6, NULL, NULL, '2023-04-25'),
(176, 6, NULL, NULL, '2023-04-26'),
(177, 6, '11:15:19', '21:18:45', '2023-04-27'),
(178, 6, '11:15:19', '21:18:45', '2023-04-28'),
(179, 6, '11:15:19', '21:18:45', '2023-04-29'),
(180, 6, '11:15:19', '21:18:45', '2023-04-30');

-- --------------------------------------------------------

--
-- Structure de la table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `Employeeleaves_id` int(5) NOT NULL,
  `Leaveday_type` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Leave_type` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Leave_from_date` date NOT NULL,
  `Leave_to_date` date NOT NULL,
  `Employee_id` int(5) NOT NULL,
  `Employee_name` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Action_taken_by_id` int(5) NOT NULL,
  `Leave_reason_description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Leave_reject_reason_description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_date` date NOT NULL,
  `Modified_date` date NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `employee_leaves`
--

INSERT INTO `employee_leaves` (`Employeeleaves_id`, `Leaveday_type`, `Leave_type`, `Leave_from_date`, `Leave_to_date`, `Employee_id`, `Employee_name`, `Action_taken_by_id`, `Leave_reason_description`, `Leave_reject_reason_description`, `Created_date`, `Modified_date`, `Status`) VALUES
(10, 'Whole Day', '3', '2023-09-01', '2023-09-01', 2, 'MD MEHEDI HASAN', 1, 'Sick', 'Work Pressure', '2031-08-23', '2031-08-23', 2),
(11, 'Whole Day', '2', '2023-09-02', '2023-09-02', 4, 'SK MEHEDI', 1, 'Sick', '', '2031-08-23', '2031-08-23', 1);

-- --------------------------------------------------------

--
-- Structure de la table `holidays`
--

CREATE TABLE `holidays` (
  `Holiday_id` int(5) NOT NULL,
  `Holiday_name` char(30) NOT NULL,
  `Holiday_description` varchar(50) NOT NULL,
  `Holiday_date` date NOT NULL,
  `Created_date` date NOT NULL,
  `Modified_date` date NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `holidays`
--

INSERT INTO `holidays` (`Holiday_id`, `Holiday_name`, `Holiday_description`, `Holiday_date`, `Created_date`, `Modified_date`, `Status`) VALUES
(13, 'Nouvel An (Tet Duong Lich)', '', '2024-01-01', '2024-09-15', '2024-09-15', 1),
(14, 'Journée Internationale du Trav', '', '2024-05-01', '2024-09-15', '2024-09-15', 1),
(15, 'Fête Nationale (en 1945)', '', '2024-09-02', '2024-09-15', '2024-09-15', 1),
(17, 'Jour de la Libération (Le jour', '', '2024-04-30', '2024-09-15', '2024-09-15', 1),
(19, 'Le festival du roi Hung qui a', '', '2024-03-10', '2024-09-15', '2024-09-15', 1);

-- --------------------------------------------------------

--
-- Structure de la table `payroll`
--

CREATE TABLE `payroll` (
  `Payroll_id` int(5) NOT NULL,
  `Employee_id` int(5) NOT NULL,
  `Payroll_month` int(2) NOT NULL,
  `Payroll_year` int(4) NOT NULL,
  `Present_days` int(5) NOT NULL,
  `Working_days` int(5) NOT NULL,
  `Balance_leaves` int(1) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `payroll`
--

INSERT INTO `payroll` (`Payroll_id`, `Employee_id`, `Payroll_month`, `Payroll_year`, `Present_days`, `Working_days`, `Balance_leaves`) VALUES
(59, 1, 8, 2023, 22, 26, -1),
(60, 2, 8, 2023, 21, 26, -2),
(61, 3, 8, 2023, 20, 26, -3),
(62, 4, 8, 2023, 22, 26, -1),
(63, 5, 8, 2023, 19, 26, -4),
(64, 6, 8, 2023, 20, 26, -3),
(65, 5, 9, 2024, 19, 26, -4),
(66, 5, 9, 2024, 19, 26, -4);

-- --------------------------------------------------------

--
-- Structure de la table `payroll_details`
--

CREATE TABLE `payroll_details` (
  `Payroll_detail_id` int(5) NOT NULL,
  `Employee_id` int(5) NOT NULL,
  `Net_salary` float(10,3) NOT NULL,
  `Bonus` float(8,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `payroll_details`
--

INSERT INTO `payroll_details` (`Payroll_detail_id`, `Employee_id`, `Net_salary`, `Bonus`) VALUES
(59, 1, 86466.664, 0.000),
(60, 2, 41466.668, 0.000),
(61, 3, 39800.000, 0.000),
(62, 4, 15400.000, 0.000),
(63, 5, 11300.000, 0.000),
(64, 6, 15800.000, 0.000),
(65, 5, 11300.000, 0.000),
(66, 5, 11300.000, 0.000);

-- --------------------------------------------------------

--
-- Structure de la table `shift`
--

CREATE TABLE `shift` (
  `Shift_id` int(5) NOT NULL,
  `Shift_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `In_time` time NOT NULL,
  `Out_time` time NOT NULL,
  `Created_date` date NOT NULL,
  `Modified_date` date NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `shift`
--

INSERT INTO `shift` (`Shift_id`, `Shift_name`, `In_time`, `Out_time`, `Created_date`, `Modified_date`, `Status`) VALUES
(1, 'Morning Shift', '06:00:00', '14:00:00', '2023-08-30', '2023-08-30', 1),
(2, 'Afternoon Shift', '14:00:00', '22:00:00', '2023-08-30', '2023-08-30', 1),
(3, 'Night Shift', '22:00:00', '06:00:00', '2023-08-30', '2023-08-30', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`Branch_id`);

--
-- Index pour la table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Index pour la table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_id`);

--
-- Index pour la table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`Designation_id`);

--
-- Index pour la table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_id`),
  ADD UNIQUE KEY `Bank_account_number` (`Bank_account_number`);

--
-- Index pour la table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`Employeeleaves_id`);

--
-- Index pour la table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`Holiday_id`);

--
-- Index pour la table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`Payroll_id`);

--
-- Index pour la table `payroll_details`
--
ALTER TABLE `payroll_details`
  ADD PRIMARY KEY (`Payroll_detail_id`);

--
-- Index pour la table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`Shift_id`),
  ADD UNIQUE KEY `Shift_id` (`Shift_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `branch`
--
ALTER TABLE `branch`
  MODIFY `Branch_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `department`
--
ALTER TABLE `department`
  MODIFY `Department_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `designation`
--
ALTER TABLE `designation`
  MODIFY `Designation_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `Employeeleaves_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `Holiday_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `Payroll_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `payroll_details`
--
ALTER TABLE `payroll_details`
  MODIFY `Payroll_detail_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `shift`
--
ALTER TABLE `shift`
  MODIFY `Shift_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
