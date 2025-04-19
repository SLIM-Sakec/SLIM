-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2025 at 08:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slim`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `sno` int(50) NOT NULL,
  `pcno` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `msno` varchar(50) NOT NULL,
  `ksno` varchar(50) NOT NULL,
  `muno` varchar(50) NOT NULL,
  `mono` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `submsk` varchar(50) NOT NULL,
  `pcname` varchar(50) NOT NULL,
  `processor` varchar(50) NOT NULL,
  `CPUspeed` varchar(50) NOT NULL,
  `memory` varchar(50) NOT NULL,
  `harddisk` varchar(50) NOT NULL,
  `dvd` varchar(50) NOT NULL,
  `display` varchar(50) NOT NULL,
  `sound` varchar(50) NOT NULL,
  `lancard` varchar(50) NOT NULL,
  `monitor` varchar(50) NOT NULL,
  `keyboard` varchar(50) NOT NULL,
  `mouse` varchar(50) NOT NULL,
  `softwares` varchar(500) NOT NULL,
  `dept` varchar(250) NOT NULL,
  `labno` int(10) NOT NULL,
  `isworking` tinyint(1) NOT NULL DEFAULT 1,
  `istransfered` tinyint(1) NOT NULL DEFAULT 0,
  `isscrapped` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`sno`, `pcno`, `mname`, `msno`, `ksno`, `muno`, `mono`, `ip`, `submsk`, `pcname`, `processor`, `CPUspeed`, `memory`, `harddisk`, `dvd`, `display`, `sound`, `lancard`, `monitor`, `keyboard`, `mouse`, `softwares`, `dept`, `labno`, `isworking`, `istransfered`, `isscrapped`) VALUES
(1, '701-01', 'HP PRO SLIMLINE', 'INA139VT53', 'BBUVLOMGA1F4UT', 'FATSKOMN30TLBN', 'CNT136B63R', 'Assigned by Dhcp', '255.255.248.0', '701-001', 'intel Core  i3-2100', '3.10 GHz', '4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', 'HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 'comps', 701, 1, 0, 0),
(2, '701-02', 'HP PRO SLIMLINE ', 'INA139VT0B', 'BBUVLOMGA1F6QJ', 'FATSKOMN30TLCP', 'CNT136B7ZX', 'Assigned by Dhcp', '?255.255.248.0', '?701-002', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(3, '701-03', 'HP PRO SLIMLINE ', 'INA139VT50', 'BBUVLOMGA1F5M5', 'FATSKOMN30TLW6', 'CNT136B81B', 'Assigned by Dhcp', '?255.255.248.0', '?701-003', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(4, '701-04', 'HP PRO SLIMLINE ', 'INA139VT6D', 'BBUVLOMGA1F717', 'FATSKOMN30TLVM', 'CNT136B80Q', 'Assigned by Dhcp', '?255.255.248.0', '701-004', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(5, '701-05', 'HP PRO SLIMLINE ', 'INA139VT5P', 'BBUVLOMGA1F769', 'FATSKOMN30TLW9', 'CNT136B81V', 'Assigned by Dhcp', '?255.255.248.0', '?701-005', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(6, '701-06', 'HP PRO SLIMLINE ', 'INA139VT1Z', 'BBUVLOMGA1F6C8', 'FATSKOMN30TLC3', 'CNT136B7ZV', 'Assigned by Dhcp', '?255.255.248.0', '?701-006', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(7, '701-07', 'HP PRO SLIMLINE ', 'INA139VT0P', 'BBUVLOMGA1F71A', 'FATSKOMN30TLVF', 'CNT136B80N', 'Assigned by Dhcp', '?255.255.248.0', '701-007', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(8, '701-08', 'HP PRO SLIMLINE ', 'INA139VT59', 'BBUVLOMGA1F61F', 'FATSKOMN30TLI3', 'CNT136B86P', 'Assigned by Dhcp', '?255.255.248.0', '?701-008', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(9, '700-09', 'HP PRO SLIMLINE ', 'INA139VT5R', 'BBUVLOMGA1F75B', 'FATSKOMN30TLGA', 'CNT136B6TQ', 'Assigned by Dhcp', '?255.255.248.0', '?701-009', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(10, '700-10', 'HP PRO SLIMLINE ', 'INA139VT54', 'BBUVLOMGA1F711', 'FATSKOMN30TOHV', 'CNT136B4Z9', 'Assigned by Dhcp', '?255.255.248.0', '?701-010', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(11, '700-11', 'HP PRO SLIMLINE ', 'INA139VTIP', 'BBUVLOMGA1F6EV', 'FATSKOMN30TLUB', 'CNT136B63B', 'Assigned by Dhcp', '?255.255.248.0', '701-011', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(12, '700-12', 'HP PRO SLIMLINE ', 'INA139VT3K', 'BBUVLOMGA1F6EZ', 'FATSKOMN30TLWL', 'CNT136B4XJ', 'Assigned by Dhcp', '?255.255.248.0', '?701-012', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(13, '700-13', 'HP PRO SLIMLINE ', 'INA139VT0H', 'BBUVLOMGA1F5RP', 'FATSKOMN30TLV3', 'CNT136B7ZZ', 'Assigned by Dhcp', '?255.255.248.0', '701-013', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(14, '700-14', 'HP PRO SLIMLINE ', 'INA139VT5N', 'BBUVLOMGA1F6C4', 'FATSKOMN30TLBX', 'CNT136B648', 'Assigned by Dhcp', '?255.255.248.0', '?701-014', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(15, '701-15', 'HP PRO SLIMLINE ', 'INA139VT27', 'BBUVLOMGA1F6EE', 'FATSKOMN30TLB4', 'CNT136B56Q', 'Assigned by Dhcp', '?255.255.248.0', '?701-015', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', '', 701, 1, 0, 0),
(16, '701-016', 'HP PRO SLIMLINE ', 'INA139VT2G', 'BBUVLOMGA1F6IQ', 'FATSKOMN30TLCE', 'CNT136B88Q', 'Assigned by Dhcp', '?255.255.248.0', '?701-016', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(17, '701-017', 'HP PRO SLIMLINE ', 'INA139VTOM', 'BBUVLOMGA1F7I8', 'FATSKOMN30TLV0', 'CNT136B86G', 'Assigned by Dhcp', '?255.255.248.0', '?701-017', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(18, '701-018', 'HP PRO SLIMLINE ', 'INA139VT61', 'BBUVLOMGA1F5M1', 'FATSKOMN30TLW7', 'CNT136B63H', 'Assigned by Dhcp', '?255.255.248.0', '?701-018', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(19, '701-019', 'HP PRO SLIMLINE ', 'INA139VT6X', 'BBUVLOMGA1F6EN', 'FATSKOMN30UJTI', 'CNT136B63O', 'Assigned by Dhcp', '?255.255.248.0', '?701-019', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(20, '701-020', 'HP PRO SLIMLINE ', 'INA139VT0V', 'BBUVLOMGA1F4TX', 'FATSKOMN30TLCS', 'CNT136B8JY', 'Assigned by Dhcp', '?255.255.248.0', '?701-020', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(21, '701-021', 'HP PRO SLIMLINE ', 'INA139VT3G', 'BBUVLOMGA1F5M6', 'FATSKOMN30TLUD', 'CNT136B86V', 'Assigned by Dhcp', '?255.255.248.0', '?701-021', '', '', '', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(22, '701-022', 'HP PRO SLIMLINE ', 'INA139VT1N', 'BBUVLOMGA1F4TW', 'FATSKOMN30TDGS', 'CNT136B86H', 'Assigned by Dhcp', '?255.255.248.0', '?701-022', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(23, '701-023', 'HP PRO SLIMLINE ', 'INA139VT39', 'BBUVLOMGA1F5RX', 'FATSKOMN30TLBM', 'CNT136B808', 'Assigned by Dhcp', '?255.255.248.0', '?701-023', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 'comps', 702, 1, 0, 0),
(24, '701-024', 'HP PRO SLIMLINE ', 'INA139VT2J', 'BBUVLOMGA1F50F', 'FATSKOMN30TLVB', 'CNT136B56S', 'Assigned by Dhcp', '?255.255.248.0', '701-024', '? Intel? Core ? i3-2100', '?3.10 GHz', '4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(25, '701-025', 'HP PRO SLIMLINE ', 'INA139VT21', 'BBUVLOMGA1F74G', 'FATSKOMN30TLWJ', 'CNT136B64B', 'Assigned by Dhcp', '?255.255.248.0', '?701-025', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(26, '701-026', 'HP PRO SLIMLINE ', 'INA139VT48', 'BBUVLOMGA1F6QN', 'FATSKOMN30TLV5', 'CNT136B642', 'Assigned by Dhcp', '?255.255.248.0', '?701-026', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(27, '701-027', '?HP Pro Slimline', 'INA139VTOL', 'BBUVLOMGA1F6XG', 'FATSKOMN30TLAZ', 'CNT136B62D', 'Assigned by Dhcp', '?255.255.248.0', '?701-027', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS \r\n', 'comps', 702, 1, 0, 0),
(28, '701-028', 'HP PRO SLIMLINE ', 'INA139VT0T', 'BBUVLOMGA1F7AF', 'FATSKOMN30TLC7', 'CNT136B803', 'Assigned by Dhcp', '?255.255.248.0', '701-028', '', '', '', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(29, '701-029', 'HP PRO SLIMLINE ', 'INA139VT06', 'BBUVLOMGA1F4TP', 'FATSKOMN30TLVV', 'CNT136B801', 'Assigned by Dhcp', '?255.255.248.0', '701-029', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', '', 702, 1, 0, 0),
(90767, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Comps', 601, 1, 0, 0),
(90768, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Comps', 602, 1, 0, 0),
(90772, 'lablist', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Comps', 701, 1, 0, 0),
(90773, 'lablist', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Comps', 702, 1, 0, 0),
(90868, '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', '701-16', 'comps', 701, 1, 0, 0),
(90872, 'lablist', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Computer Engineering', 703, 1, 0, 0),
(90873, '1', '700-01', '?HP Pro Slimline', 'INA139VT53', 'BBUVLOMGA1F4UT', 'FATSKOMN30TLBN', 'CNT136B63R', 'Assigned by Dhcp', '?255.255.248.0', '?701-001', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '?500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90874, '2', '700-02', '?HP Pro Slimline', 'INA139VT0B', 'BBUVLOMGA1F6QJ', 'FATSKOMN30TLCP', 'CNT136B7ZX', 'Assigned by Dhcp', '?255.255.248.0', '?701-002', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90875, '3', '700-03', '?HP Pro Slimline', 'INA139VT50', 'BBUVLOMGA1F5M5', 'FATSKOMN30TLW6', 'CNT136B81B', 'Assigned by Dhcp', '?255.255.248.0', '?701-003', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90876, '4', '700-04', '?HP Pro Slimline', 'INA139VT6D', 'BBUVLOMGA1F717', 'FATSKOMN30TLVM', 'CNT136B80Q', 'Assigned by Dhcp', '?255.255.248.0', '701-004', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90877, '5', '700-05', '?HP Pro Slimline', 'INA139VT5P', 'BBUVLOMGA1F769', 'FATSKOMN30TLW9', 'CNT136B81V', 'Assigned by Dhcp', '?255.255.248.0', '?701-005', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90878, '6', '700-06', '?HP Pro Slimline', 'INA139VT1Z', 'BBUVLOMGA1F6C8', 'FATSKOMN30TLC3', 'CNT136B7ZV', 'Assigned by Dhcp', '?255.255.248.0', '?701-006', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90879, '7', '700-07', '?HP Pro Slimline', 'INA139VT0P', 'BBUVLOMGA1F71A', 'FATSKOMN30TLVF', 'CNT136B80N', 'Assigned by Dhcp', '?255.255.248.0', '701-007', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90880, '8', '700-08', '?HP Pro Slimline', 'INA139VT59', 'BBUVLOMGA1F61F', 'FATSKOMN30TLI3', 'CNT136B86P', 'Assigned by Dhcp', '?255.255.248.0', '?701-008', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90881, '9', '700-09', '?HP Pro Slimline', 'INA139VT5R', 'BBUVLOMGA1F75B', 'FATSKOMN30TLGA', 'CNT136B6TQ', 'Assigned by Dhcp', '?255.255.248.0', '?701-009', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90882, '10', '700-10', '?HP Pro Slimline', 'INA139VT54', 'BBUVLOMGA1F711', 'FATSKOMN30TOHV', 'CNT136B4Z9', 'Assigned by Dhcp', '?255.255.248.0', '?701-010', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90883, '11', '700-11', '?HP Pro Slimline', 'INA139VTIP', 'BBUVLOMGA1F6EV', 'FATSKOMN30TLUB', 'CNT136B63B', 'Assigned by Dhcp', '?255.255.248.0', '701-011', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90884, '12', '700-12', '?HP Pro Slimline', 'INA139VT3K', 'BBUVLOMGA1F6EZ', 'FATSKOMN30TLWL', 'CNT136B4XJ', 'Assigned by Dhcp', '?255.255.248.0', '?701-012', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90885, '13', '700-13', '?HP Pro Slimline', 'INA139VT0H', 'BBUVLOMGA1F5RP', 'FATSKOMN30TLV3', 'CNT136B7ZZ', 'Assigned by Dhcp', '?255.255.248.0', '701-013', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90886, '14', '700-14', '?HP Pro Slimline', 'INA139VT5N', 'BBUVLOMGA1F6C4', 'FATSKOMN30TLBX', 'CNT136B648', 'Assigned by Dhcp', '?255.255.248.0', '?701-014', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90887, '15', '700-15', '?HP Pro Slimline', 'INA139VT27', 'BBUVLOMGA1F6EE', 'FATSKOMN30TLB4', 'CNT136B56Q', 'Assigned by Dhcp', '?255.255.248.0', '?701-015', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n', 0, 1, 0, 0),
(90888, '16', '701-016', '?HP Pro Slimline', 'INA139VT2G', 'BBUVLOMGA1F6IQ', 'FATSKOMN30TLCE', 'CNT136B88Q', 'Assigned by Dhcp', '?255.255.248.0', '?701-016', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90889, '17', '701-017', '?HP Pro Slimline', 'INA139VTOM', 'BBUVLOMGA1F7I8', 'FATSKOMN30TLV0', 'CNT136B86G', 'Assigned by Dhcp', '?255.255.248.0', '?701-017', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90890, '18', '701-018', '?HP Pro Slimline', 'INA139VT61', 'BBUVLOMGA1F5M1', 'FATSKOMN30TLW7', 'CNT136B63H', 'Assigned by Dhcp', '?255.255.248.0', '?701-018', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90891, '19', '701-019', '?HP Pro Slimline', 'INA139VT6X', 'BBUVLOMGA1F6EN', 'FATSKOMN30UJTI', 'CNT136B63O', 'Assigned by Dhcp', '?255.255.248.0', '?701-019', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90892, '20', '701-020', '?HP Pro Slimline', 'INA139VT0V', 'BBUVLOMGA1F4TX', 'FATSKOMN30TLCS', 'CNT136B8JY', 'Assigned by Dhcp', '?255.255.248.0', '?701-020', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90893, '21', '701-021', '?HP Pro Slimline', 'INA139VT3G', 'BBUVLOMGA1F5M6', 'FATSKOMN30TLUD', 'CNT136B86V', 'Assigned by Dhcp', '?255.255.248.0', '?701-021', '', '', '', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90894, '22', '701-022', '?HP Pro Slimline', 'INA139VT1N', 'BBUVLOMGA1F4TW', 'FATSKOMN30TDGS', 'CNT136B86H', 'Assigned by Dhcp', '?255.255.248.0', '?701-022', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90895, '23', '701-023', '?HP Pro Slimline', 'INA139VT39', 'BBUVLOMGA1F5RX', 'FATSKOMN30TLBM', 'CNT136B808', 'Assigned by Dhcp', '?255.255.248.0', '?701-023', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90896, '24', '701-024', '?HP Pro Slimline', 'INA139VT2J', 'BBUVLOMGA1F50F', 'FATSKOMN30TLVB', 'CNT136B56S', 'Assigned by Dhcp', '?255.255.248.0', '701-024', '? Intel? Core ? i3-2100', '?3.10 GHz', '4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90897, '25', '701-025', '?HP Pro Slimline', 'INA139VT21', 'BBUVLOMGA1F74G', 'FATSKOMN30TLWJ', 'CNT136B64B', 'Assigned by Dhcp', '?255.255.248.0', '?701-025', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90898, '26', '701-026', '?HP Pro Slimline', 'INA139VT48', 'BBUVLOMGA1F6QN', 'FATSKOMN30TLV5', 'CNT136B642', 'Assigned by Dhcp', '?255.255.248.0', '?701-026', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90899, '27', ' 701-027', '?HP Pro Slimline', 'INA139VTOL', 'BBUVLOMGA1F6XG', 'FATSKOMN30TLAZ', 'CNT136B62D', 'Assigned by Dhcp', '?255.255.248.0', '?701-027', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90900, '28', '701-028', '?HP Pro Slimline', 'INA139VT0T', 'BBUVLOMGA1F7AF', 'FATSKOMN30TLC7', 'CNT136B803', 'Assigned by Dhcp', '?255.255.248.0', '701-028', '', '', '', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90901, '29', '701-029', '?HP Pro Slimline', 'INA139VT06', 'BBUVLOMGA1F4TP', 'FATSKOMN30TLVV', 'CNT136B801', 'Assigned by Dhcp', '?255.255.248.0', '701-029', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0),
(90902, '30', '701-030', '?HP Pro Slimline', 'INA139VT41', 'BBUVLOMGA1F76A', 'FATSKOMN30TLVS', 'CNT136B56J', 'Assigned by Dhcp', '?255.255.248.0', '?701-030', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `extra_devices`
--

CREATE TABLE `extra_devices` (
  `dsno` varchar(255) NOT NULL,
  `labno` varchar(255) NOT NULL,
  `dname` varchar(255) NOT NULL,
  `dtype` varchar(255) NOT NULL,
  `isworking` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `extra_devices`
--

INSERT INTO `extra_devices` (`dsno`, `labno`, `dname`, `dtype`, `isworking`) VALUES
('123', '701', 'Hp laserjet', 'printer', 1),
('456', '701', 'Hp laserjet', 'printer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `labno` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `category` varchar(30) NOT NULL,
  `lab` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`labno`, `file_name`, `type`, `size`, `category`, `lab`, `timestamp`) VALUES
(709, '18214-screenshot-2023-04-10-221340.png', 'image/png', '224.58203125', 'layout', '701', '2023-08-13 14:10:43'),
(710, '43212-screenshot-2023-04-20-230212.png', 'image/png', '7.4931640625', 'timetable', '702', '2023-08-13 14:10:43'),
(719, '9432-screenshot-2023-04-10-221340.png', 'image/png', '224.58203125', 'layout', '702', '2023-08-13 14:10:43'),
(720, '27269-screenshot-2023-06-05-010006.png', 'image/png', '32.69921875', 'timetable', '701', '2023-08-13 14:10:43'),
(721, '65270-whatsapp-image-2023-05-13-at-16.31.00.jpg', 'image/jpeg', '109.6806640625', 'layout', '701', '2023-08-13 14:10:43'),
(722, '97218-whatsapp-image-2023-05-04-at-23.49.43.jpg', 'image/jpeg', '85.865234375', 'layout', '701', '2023-08-13 14:10:43'),
(723, '46425-photo.pdf', 'application/pdf', '8.576171875', 'layout', '701', '2023-08-13 14:10:43'),
(724, '76886-20230311_180244.jpg', 'image/jpeg', '3237.7783203125', 'layout', '701', '2023-08-13 14:13:46'),
(726, '14359-channels4_profile.jpg', 'image/jpeg', '13.55078125', 'timetable', '702', '2024-08-03 18:22:32'),
(727, '3846-labtt.png', 'image/png', '125.6640625', 'timetable', '701', '2024-08-05 14:27:44'),
(728, '49446-lablayout.png', 'image/png', '26.8818359375', 'layout', '701', '2024-08-05 14:28:04'),
(729, '71725-labtt.png', 'image/png', '125.6640625', 'timetable', '702', '2024-08-05 14:28:29'),
(730, '84434-lablayout.png', 'image/png', '26.8818359375', 'layout', '702', '2024-08-05 14:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `lab-703`
--

CREATE TABLE `lab-703` (
  `sno` int(50) NOT NULL,
  `pcno` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `msno` varchar(50) NOT NULL,
  `ksno` varchar(50) NOT NULL,
  `muno` varchar(50) NOT NULL,
  `mono` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `submsk` varchar(50) NOT NULL,
  `pcname` varchar(50) NOT NULL,
  `processor` varchar(50) NOT NULL,
  `CPU speed` varchar(50) NOT NULL,
  `memory` varchar(50) NOT NULL,
  `hard disk` varchar(50) NOT NULL,
  `dvd` varchar(50) NOT NULL,
  `display` varchar(50) NOT NULL,
  `sound` varchar(50) NOT NULL,
  `lan card` varchar(50) NOT NULL,
  `monitor` varchar(50) NOT NULL,
  `keyboard` varchar(50) NOT NULL,
  `mouse` varchar(50) NOT NULL,
  `softwares` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab-703`
--

INSERT INTO `lab-703` (`sno`, `pcno`, `mname`, `msno`, `ksno`, `muno`, `mono`, `ip`, `submsk`, `pcname`, `processor`, `CPU speed`, `memory`, `hard disk`, `dvd`, `display`, `sound`, `lan card`, `monitor`, `keyboard`, `mouse`, `softwares`) VALUES
(1, '700-01', '?HP Pro Slimline', 'INA139VT53', 'BBUVLOMGA1F4UT', 'FATSKOMN30TLBN', 'CNT136B63R', 'Assigned by Dhcp', '?255.255.248.0', '?701-001', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '?500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(2, '700-02', '?HP Pro Slimline', 'INA139VT0B', 'BBUVLOMGA1F6QJ', 'FATSKOMN30TLCP', 'CNT136B7ZX', 'Assigned by Dhcp', '?255.255.248.0', '?701-002', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(3, '700-03', '?HP Pro Slimline', 'INA139VT50', 'BBUVLOMGA1F5M5', 'FATSKOMN30TLW6', 'CNT136B81B', 'Assigned by Dhcp', '?255.255.248.0', '?701-003', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(4, '700-04', '?HP Pro Slimline', 'INA139VT6D', 'BBUVLOMGA1F717', 'FATSKOMN30TLVM', 'CNT136B80Q', 'Assigned by Dhcp', '?255.255.248.0', '701-004', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(5, '700-05', '?HP Pro Slimline', 'INA139VT5P', 'BBUVLOMGA1F769', 'FATSKOMN30TLW9', 'CNT136B81V', 'Assigned by Dhcp', '?255.255.248.0', '?701-005', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(6, '700-06', '?HP Pro Slimline', 'INA139VT1Z', 'BBUVLOMGA1F6C8', 'FATSKOMN30TLC3', 'CNT136B7ZV', 'Assigned by Dhcp', '?255.255.248.0', '?701-006', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(7, '700-07', '?HP Pro Slimline', 'INA139VT0P', 'BBUVLOMGA1F71A', 'FATSKOMN30TLVF', 'CNT136B80N', 'Assigned by Dhcp', '?255.255.248.0', '701-007', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(8, '700-08', '?HP Pro Slimline', 'INA139VT59', 'BBUVLOMGA1F61F', 'FATSKOMN30TLI3', 'CNT136B86P', 'Assigned by Dhcp', '?255.255.248.0', '?701-008', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(9, '700-09', '?HP Pro Slimline', 'INA139VT5R', 'BBUVLOMGA1F75B', 'FATSKOMN30TLGA', 'CNT136B6TQ', 'Assigned by Dhcp', '?255.255.248.0', '?701-009', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(10, '700-10', '?HP Pro Slimline', 'INA139VT54', 'BBUVLOMGA1F711', 'FATSKOMN30TOHV', 'CNT136B4Z9', 'Assigned by Dhcp', '?255.255.248.0', '?701-010', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(11, '700-11', '?HP Pro Slimline', 'INA139VTIP', 'BBUVLOMGA1F6EV', 'FATSKOMN30TLUB', 'CNT136B63B', 'Assigned by Dhcp', '?255.255.248.0', '701-011', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(12, '700-12', '?HP Pro Slimline', 'INA139VT3K', 'BBUVLOMGA1F6EZ', 'FATSKOMN30TLWL', 'CNT136B4XJ', 'Assigned by Dhcp', '?255.255.248.0', '?701-012', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(13, '700-13', '?HP Pro Slimline', 'INA139VT0H', 'BBUVLOMGA1F5RP', 'FATSKOMN30TLV3', 'CNT136B7ZZ', 'Assigned by Dhcp', '?255.255.248.0', '701-013', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(14, '700-14', '?HP Pro Slimline', 'INA139VT5N', 'BBUVLOMGA1F6C4', 'FATSKOMN30TLBX', 'CNT136B648', 'Assigned by Dhcp', '?255.255.248.0', '?701-014', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(15, '700-15', '?HP Pro Slimline', 'INA139VT27', 'BBUVLOMGA1F6EE', 'FATSKOMN30TLB4', 'CNT136B56Q', 'Assigned by Dhcp', '?255.255.248.0', '?701-015', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'WINDOWS 7 PRO UBUNTU 14.04 LTS\n'),
(16, '701-016', '?HP Pro Slimline', 'INA139VT2G', 'BBUVLOMGA1F6IQ', 'FATSKOMN30TLCE', 'CNT136B88Q', 'Assigned by Dhcp', '?255.255.248.0', '?701-016', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(17, '701-017', '?HP Pro Slimline', 'INA139VTOM', 'BBUVLOMGA1F7I8', 'FATSKOMN30TLV0', 'CNT136B86G', 'Assigned by Dhcp', '?255.255.248.0', '?701-017', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(18, '701-018', '?HP Pro Slimline', 'INA139VT61', 'BBUVLOMGA1F5M1', 'FATSKOMN30TLW7', 'CNT136B63H', 'Assigned by Dhcp', '?255.255.248.0', '?701-018', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(19, '701-019', '?HP Pro Slimline', 'INA139VT6X', 'BBUVLOMGA1F6EN', 'FATSKOMN30UJTI', 'CNT136B63O', 'Assigned by Dhcp', '?255.255.248.0', '?701-019', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(20, '701-020', '?HP Pro Slimline', 'INA139VT0V', 'BBUVLOMGA1F4TX', 'FATSKOMN30TLCS', 'CNT136B8JY', 'Assigned by Dhcp', '?255.255.248.0', '?701-020', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(21, '701-021', '?HP Pro Slimline', 'INA139VT3G', 'BBUVLOMGA1F5M6', 'FATSKOMN30TLUD', 'CNT136B86V', 'Assigned by Dhcp', '?255.255.248.0', '?701-021', '', '', '', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(22, '701-022', '?HP Pro Slimline', 'INA139VT1N', 'BBUVLOMGA1F4TW', 'FATSKOMN30TDGS', 'CNT136B86H', 'Assigned by Dhcp', '?255.255.248.0', '?701-022', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(23, '701-023', '?HP Pro Slimline', 'INA139VT39', 'BBUVLOMGA1F5RX', 'FATSKOMN30TLBM', 'CNT136B808', 'Assigned by Dhcp', '?255.255.248.0', '?701-023', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(24, '701-024', '?HP Pro Slimline', 'INA139VT2J', 'BBUVLOMGA1F50F', 'FATSKOMN30TLVB', 'CNT136B56S', 'Assigned by Dhcp', '?255.255.248.0', '701-024', '? Intel? Core ? i3-2100', '?3.10 GHz', '4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(25, '701-025', '?HP Pro Slimline', 'INA139VT21', 'BBUVLOMGA1F74G', 'FATSKOMN30TLWJ', 'CNT136B64B', 'Assigned by Dhcp', '?255.255.248.0', '?701-025', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(26, '701-026', '?HP Pro Slimline', 'INA139VT48', 'BBUVLOMGA1F6QN', 'FATSKOMN30TLV5', 'CNT136B642', 'Assigned by Dhcp', '?255.255.248.0', '?701-026', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(27, ' 701-027', '?HP Pro Slimline', 'INA139VTOL', 'BBUVLOMGA1F6XG', 'FATSKOMN30TLAZ', 'CNT136B62D', 'Assigned by Dhcp', '?255.255.248.0', '?701-027', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(28, '701-028', '?HP Pro Slimline', 'INA139VT0T', 'BBUVLOMGA1F7AF', 'FATSKOMN30TLC7', 'CNT136B803', 'Assigned by Dhcp', '?255.255.248.0', '701-028', '', '', '', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(29, '701-029', '?HP Pro Slimline', 'INA139VT06', 'BBUVLOMGA1F4TP', 'FATSKOMN30TLVV', 'CNT136B801', 'Assigned by Dhcp', '?255.255.248.0', '701-029', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS '),
(30, '701-030', '?HP Pro Slimline', 'INA139VT41', 'BBUVLOMGA1F76A', 'FATSKOMN30TLVS', 'CNT136B56J', 'Assigned by Dhcp', '?255.255.248.0', '?701-030', '? Intel? Core ? i3-2100', '?3.10 GHz', '?4 GB', '500 GB ', 'HP DVDA DH16ABSH', 'Intel? HD Graphics Family ', 'Realtek High Definition Audio', 'Realtek PCIs GBE Family Controller', 'HP LE1902X 19\" TFT', 'HP 101/102 - Key (USB)', '?HP HID Compliant Mouse', 'UBUNTU 14.04 LTS ');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `changes` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`changes`, `email`, `date`) VALUES
('New Device - 701-031 added in lab 702', 'admin@sakec.ac.in', '0000-00-00 00:00:00'),
('New Device - 701-031 added in lab 702', 'admin@sakec.ac.in', '2024-08-08 00:00:00'),
('New Device - 701-031 added in lab 702', 'admin@sakec.ac.in', '0000-00-00 00:00:00'),
('Device - 701-030 removed from lab 702', 'admin@sakec.ac.in', '2024-08-08 17:36:20'),
('Device - 701-16 Reported malfunction in lab 701 - entry  added in Repair Log', 'admin@sakec.ac.in', '2024-08-08 17:46:00'),
('Details updated Device - 701-01 in lab ', 'admin@sakec.ac.in', '2025-01-28 19:44:28'),
('Details updated Device - 701-01 in lab ', 'admin@sakec.ac.in', '2025-01-28 19:45:12'),
('Details updated Device - 701-01 in lab ', 'admin@sakec.ac.in', '2025-01-28 19:45:30'),
('Details updated Device - 701-01 in lab ', 'admin@sakec.ac.in', '2025-01-28 19:46:02'),
('Device - 701-01 Reported malfunction in lab 701 - entry  added in Repair Log', 'admin@sakec.ac.in', '2025-01-28 19:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `repair_log`
--

CREATE TABLE `repair_log` (
  `labno` varchar(200) NOT NULL,
  `device_no` varchar(100) NOT NULL,
  `kharab_date` datetime NOT NULL DEFAULT current_timestamp(),
  `repair_date` varchar(100) NOT NULL DEFAULT 'To Be Repaired',
  `issue` text NOT NULL,
  `remarks` text NOT NULL,
  `ticketno` varchar(50) NOT NULL,
  `dtype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repair_log`
--

INSERT INTO `repair_log` (`labno`, `device_no`, `kharab_date`, `repair_date`, `issue`, `remarks`, `ticketno`, `dtype`) VALUES
('701', '701-07', '2024-08-05 19:04:11', '2024-08-06 08:42:27', 'aryan', 'fixed', '20240805153411', 'pc'),
('701', '456', '2024-08-05 19:04:21', 'To Be Repaired', 'aryan', '', '20240805153421', 'printer'),
('701', '701-16', '2024-08-08 21:16:00', '2025-01-28 19:55:08', 'Aryan', 'done', '20240808174600', 'pc'),
('701', '701-01', '2025-01-29 00:16:55', '2025-01-28 19:47:36', 'black screen', 'done', '20250128194655', 'pc');

-- --------------------------------------------------------

--
-- Table structure for table `slim_labdetails`
--

CREATE TABLE `slim_labdetails` (
  `labno` int(100) NOT NULL,
  `labname` varchar(250) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `area` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slim_labdetails`
--

INSERT INTO `slim_labdetails` (`labno`, `labname`, `dept`, `cost`, `area`) VALUES
(601, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(602, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(603, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(604, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(605, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(606, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(607, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(608, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(609, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(610, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(611, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(701, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(702, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(703, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67'),
(704, 'Computer Organization/ Microprocessor', 'Computer Engineering', '1000000', '67');

-- --------------------------------------------------------

--
-- Table structure for table `slim_users`
--

CREATE TABLE `slim_users` (
  `uid` int(3) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `labno` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slim_users`
--

INSERT INTO `slim_users` (`uid`, `email`, `password`, `fname`, `lname`, `role`, `labno`) VALUES
(100, 'admin@sakec.ac.in', 'admin@123', 'admin', 'admin', 'admin', 0),
(101, 'ashutoshmehta@sakec.ac.in', 'sakec@123', 'Ashutosh ', 'Mehta', 'Lab Incharge', 601),
(102, 'virajmishra@sakec.ac.in', 'sakec@123', 'Viraj ', 'Mishra', 'Lab Assistant', 601),
(103, 'aryansuri@sakec.ac.in', 'sakec@123', 'Aryan ', 'Suri', 'Lab Incharge', 602),
(104, 'anikathakur@sakec.ac.in', 'sakec@123', 'Anika ', 'Thakur', 'Lab Assistant', 602),
(105, 'anitakumar@sakec.ac.in', 'sakec@123', 'Anita ', 'Kumar', 'Lab Incharge', 603),
(106, 'riyajaiswal@sakec.ac.in', 'sakec@123', 'Riya ', 'Jaiswal', 'Lab Assistant', 603),
(107, 'nidhiyajoshi@sakec.ac.in', 'sakec@123', 'Nidhiya', 'Joshi', 'Lab Incharge', 604),
(108, 'vikramkothari@sakec.ac.in', 'sakec@123', 'Vikram ', 'Kothari', 'Lab Assistant', 604),
(109, 'leelaiyer@sakec.ac.in', 'sakec@123', 'Leela ', 'Iyer', 'Lab Incharge', 605),
(110, 'sumanvithjoshi@sakec.ac.in', 'sakec@123', 'Sumanvith ', 'Joshi', 'Lab Assistant', 605),
(111, 'kavitaliadas@sakec.ac.in', 'sakec@123', 'Kavitalia ', 'Das', 'Lab Incharge', 606),
(112, 'anushkachoudhury@sakec.ac.in', 'sakec@123', 'Anushka ', 'Choudhury', 'Lab Assistant', 606),
(113, 'sureshchoudhury@sakec.ac.in', 'sakec@123', 'Suresh ', 'Choudhary', 'Lab Incharge', 607),
(114, 'rajendrasingh@sakec.ac.in', 'sakec@123', 'Rajendra', 'Singh', 'Lab Assistant', 607),
(115, 'shalinimishra@sakec.ac.in', 'sakec@123', 'Shalini ', 'Mishra', 'Lab Incharge', 608),
(116, 'vikramyadav@sakec.ac.in', 'sakec@123', 'Vikram ', 'Yadav', 'Lab Assistant', 608),
(117, 'janhavikapoor@sakec.ac.in', 'sakec@123', 'Janhavi', 'Kapoor', 'Lab Incharge', 609),
(118, 'adityachowdhury@sakec.ac.in', 'sakec@123', 'Aditya ', 'Chowdhury', 'Lab Assistant', 609),
(119, 'tanishsethi@sakec.ac.in', 'sakec@123', 'Tanish ', 'Sethi', 'Lab Incharge', 610),
(120, 'anayakapoor@sakec.ac.in', 'sakec@123', 'Anaya ', 'Kapoor', 'Lab Assistant', 610),
(121, 'sanjaypillai@sakec.ac.in', 'sakec@123', 'Sanjay ', 'Pillai', 'Lab Incharge', 611),
(122, 'taruneshpatel@sakec.ac.in', 'sakec@123', 'Tarunesh ', 'Patel', 'Lab Assistant', 611),
(123, 'sumeetthakur@sakec.ac.in', 'sakec@123', 'Sumeet ', 'Thakur', 'Lab Incharge', 701),
(124, 'nikhilmalhotra@sakec.ac.in', 'sakec@123', 'Nikhil ', 'Malhotra', 'Lab Assistant', 701),
(125, 'vivekgupta@sakec.ac.in', 'sakec@123', 'Vivek ', 'Gupta', 'Lab Incharge', 702),
(126, 'amritakhurana@sakec.ac.in', 'sakec@123', 'Amrita ', 'Khurana', 'Lab Assistant', 702),
(127, 'snehasharma@sakec.ac.in', 'sakec@123', 'Sneha ', 'Sharma', 'Lab Incharge', 703),
(128, 'jayantdoshi@sakec.ac.in', 'sakec@123', 'Jayant ', 'Doshi', 'Lab Assistant', 703),
(129, 'ishamahajan@sakec.ac.in', 'sakec@123', 'Isha ', 'Mahajan', 'Lab Incharge', 704),
(130, 'kavyasinha@sakec.ac.in', 'sakec@123', 'Kavya ', 'Sinha', 'Lab Assistant', 704),
(131, 'amanbhatia@sakec.ac.in', 'sakec@123', 'Aman ', 'Bhatia', 'Professor', 701),
(132, 'arvindvyas@sakec.ac.in', 'sakec@123', 'Arvind ', 'Vyas', 'Professor', 601),
(133, 'kavyaraghunath@sakec.ac.in', 'sakec@123', 'Kavya ', 'Raghunath', 'Professor', 603),
(134, 'student@sakec.ac.in', 'sakec@123', 'Sakec', 'Student', 'student', 0);

-- --------------------------------------------------------

--
-- Table structure for table `submanuals`
--

CREATE TABLE `submanuals` (
  `subjectCode` varchar(20) NOT NULL,
  `subjectName` varchar(200) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `year` int(10) NOT NULL,
  `semester` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `submanuals`
--

INSERT INTO `submanuals` (`subjectCode`, `subjectName`, `filename`, `year`, `semester`) VALUES
('FEC101', 'Engineering Mathematics', '1745-df_list.pdf', 1, '1'),
('FEC102', 'Engineering Physics', '73610-df_list.pdf', 1, '1'),
('FEC103', 'Engineering Chemistry-I', '28324-df_list.pdf', 1, '1'),
('FEC104', 'Engineering Mechanics', '2410-df_list.pdf', 1, '1'),
('FEC105', 'Basic Electrical Engineering', '16583-df_list.pdf', 1, '1'),
('FEC201', 'Engineering Mathematics-II', '', 1, '2'),
('FEC202', 'Engineering Physics-II', '', 1, '2'),
('FEC203', 'Engineering Chemistry-II', '', 1, '2'),
('FEC204', 'Engineering Graphics', '', 1, '2'),
('FEC205', 'C programming', '', 1, '2'),
('FEC206', 'Professional Communication and Ethics- I', '', 1, '2'),
('CSC301', 'Engineering Mathematics-III', '23633-tcs-assgn-4.pdf', 2, '3'),
('CSC302', 'Discrete Structures and Graph Theory', '', 2, '3'),
('CSC303', 'Data Structure ', '', 2, '3'),
('CSC304', 'Digital Logic & Computer Architecture', '', 2, '3'),
('CSC305', 'Computer Graphics', '', 2, '3'),
('CSC401', 'Engineering MathematicsIV', '', 2, '4'),
('CSC402', 'Analysis of Algorithm', '', 2, '4'),
('CSC403', 'Database Management System', '', 2, '4'),
('CSC404', 'Operating System ', '', 2, '4'),
('CSC405', 'Microprocessor', '', 2, '4'),
('CSC501', 'Theoretical Computer Science ', '', 3, '5'),
('CSC502', 'Software Engineering ', '', 3, '5'),
('CSC503', 'Computer Network ', '', 3, '5'),
('CSC504', 'Data Warehousing & Mining', '15510-resume-sumeet-nikum-.docx.pdf', 3, '5'),
('CSC601', 'System Programming & Compiler Construction ', '', 3, '6'),
('CSC602', 'Cryptography & System Security ', '', 3, '6'),
('CSC603', 'Mobile Computing ', '', 3, '6'),
('CSC604', 'Artificial Intelligence ', '', 3, '6'),
('CSC701', 'Machine Learning ', '', 4, '7'),
('CSC702', 'Big Data Analytics', '', 4, '7'),
('CSC801', 'Human Machine Interaction ', '', 4, '8'),
('CSC802', 'Distributed Computing', '', 4, '8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`labno`) USING BTREE;

--
-- Indexes for table `lab-703`
--
ALTER TABLE `lab-703`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `slim_users`
--
ALTER TABLE `slim_users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90903;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `labno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=731;

--
-- AUTO_INCREMENT for table `lab-703`
--
ALTER TABLE `lab-703`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90712;

--
-- AUTO_INCREMENT for table `slim_users`
--
ALTER TABLE `slim_users`
  MODIFY `uid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
