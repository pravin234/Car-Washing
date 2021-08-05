-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2020 at 04:56 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15331032_washing_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `AdminWallet`
--

CREATE TABLE `AdminWallet` (
  `ORDERID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TXNID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TXNAMOUNT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAYMENTMODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CURRENCY` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TXNDATE` datetime DEFAULT current_timestamp(),
  `STATUS` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPCODE` int(100) DEFAULT NULL,
  `RESPMSG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GATEWAYNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANKTXNID` int(100) DEFAULT NULL,
  `BANKNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKSUMHASH` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Booking_master`
--

CREATE TABLE `Booking_master` (
  `Book_ID` int(11) NOT NULL,
  `BookDate` datetime(6) DEFAULT NULL,
  `BookNo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VendorID` int(100) DEFAULT NULL,
  `CustomerID` int(100) DEFAULT NULL,
  `VehicleNo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehiclePickUpDate` datetime DEFAULT NULL,
  `VehiclePickUpBy` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleReadingatPickup` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleReadingatDropAtCenter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BookStatus` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'Booked',
  `PickupFromLocation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `package_picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PaymentBy` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PaymentDetails` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PaymentAmount` int(100) DEFAULT NULL,
  `AdminPaymentComPer` int(100) DEFAULT NULL,
  `TotalBookingAmount` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Category_master`
--

CREATE TABLE `Category_master` (
  `Category_id` int(10) NOT NULL,
  `Category_name` varchar(100) DEFAULT NULL,
  `Category_picture` varchar(200) DEFAULT NULL,
  `path` varchar(100) NOT NULL DEFAULT 'http://yfo.000webhostapp.com/Category_picture/',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Customer_master`
--

CREATE TABLE `Customer_master` (
  `USERID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Area` varchar(100) DEFAULT NULL,
  `Pincode` int(100) DEFAULT NULL,
  `MobileNo` varchar(100) DEFAULT NULL,
  `MobileNOWA` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `roll` varchar(100) DEFAULT 'user',
  `status` int(100) DEFAULT 1,
  `Workstatus` varchar(20) DEFAULT NULL,
  `Created_date` timestamp(6) NULL DEFAULT current_timestamp(6),
  `Updated_date` datetime(6) DEFAULT NULL ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Payment_master`
--

CREATE TABLE `Payment_master` (
  `pay_id` int(10) NOT NULL,
  `pay_username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_vehicleno` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_transaction` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_amount` int(100) DEFAULT NULL,
  `pay_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Product_master`
--

CREATE TABLE `Product_master` (
  `Product_id` int(100) NOT NULL,
  `Product_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Product_rate` int(100) DEFAULT NULL,
  `Product_description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(10) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `ORDERID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TXNID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TXNAMOUNT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAYMENTMODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CURRENCY` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TXNDATE` datetime DEFAULT current_timestamp(),
  `STATUS` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPCODE` int(100) DEFAULT NULL,
  `RESPMSG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GATEWAYNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANKTXNID` int(100) DEFAULT NULL,
  `BANKNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKSUMHASH` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Rider`
--


-- --------------------------------------------------------

--
-- Table structure for table `Rider_master`
--

CREATE TABLE `Rider_master` (
  `RIDERID` int(11) NOT NULL,
  `VENDORID` int(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Area` varchar(100) DEFAULT NULL,
  `Pincode` int(100) DEFAULT NULL,
  `MobileNo` varchar(100) DEFAULT NULL,
  `MobileNoWA` varchar(100) DEFAULT NULL,
  `PhotoRider` varchar(200) DEFAULT NULL,
  `LicenceNoImage` varchar(200) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `status` int(10) DEFAULT 1,
  `Created_date` timestamp(6) NULL DEFAULT current_timestamp(6),
  `Updated_date` datetime(6) DEFAULT NULL ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Service_master`
--

CREATE TABLE `Service_master` (
  `Service_id` int(11) NOT NULL,
  `Service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Service_rate` int(11) DEFAULT NULL,
  `Service_unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Service_picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Category_id` int(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users1`
--

CREATE TABLE `Users1` (
  `id` int(9) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `role` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `picture` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(10) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Vehicle_master`
--

CREATE TABLE `Vehicle_master` (
  `VehicleID` int(50) NOT NULL,
  `Vehiclename` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Color` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Model` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Noplate` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USERID` int(50) DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `VendorWallet`
--

CREATE TABLE `VendorWallet` (
  `VWalletID` int(10) NOT NULL,
  `ORDERID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TXNID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TXNAMOUNT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAYMENTMODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CURRENCY` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TXNDATE` datetime DEFAULT current_timestamp(),
  `STATUS` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPCODE` int(100) DEFAULT NULL,
  `RESPMSG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GATEWAYNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANKTXNID` int(100) DEFAULT NULL,
  `BANKNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKSUMHASH` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Vendor_master`
--

CREATE TABLE `Vendor_master` (
  `VENDORID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Area` varchar(100) DEFAULT NULL,
  `Pincode` int(100) DEFAULT NULL,
  `MobileNo` varchar(100) DEFAULT NULL,
  `MobileNoWA` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Registerdate` timestamp NULL DEFAULT current_timestamp(),
  `ComPerSetting` int(100) DEFAULT NULL,
  `WalletAmount` int(100) DEFAULT NULL,
  `MinWalletAmount` int(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Booking_master`
--
ALTER TABLE `Booking_master`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `Category_master`
--
ALTER TABLE `Category_master`
  ADD PRIMARY KEY (`Category_id`);

--
-- Indexes for table `Customer_master`
--
ALTER TABLE `Customer_master`
  ADD PRIMARY KEY (`USERID`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `MobileNo` (`MobileNo`);

--
-- Indexes for table `Payment_master`
--
ALTER TABLE `Payment_master`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `Product_master`
--
ALTER TABLE `Product_master`
  ADD PRIMARY KEY (`Product_id`),
  ADD UNIQUE KEY `Product_name` (`Product_name`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`ORDERID`),
  ADD UNIQUE KEY `TXNID` (`TXNID`);

--
-- Indexes for table `Rider`
--
ALTER TABLE `Rider`
  ADD PRIMARY KEY (`RIDERID`);

--
-- Indexes for table `Rider_master`
--
ALTER TABLE `Rider_master`
  ADD PRIMARY KEY (`RIDERID`),
  ADD KEY `VENDORID` (`VENDORID`) USING BTREE;

--
-- Indexes for table `Service_master`
--
ALTER TABLE `Service_master`
  ADD PRIMARY KEY (`Service_id`),
  ADD UNIQUE KEY `Service_name` (`Service_name`),
  ADD KEY `Category_id` (`Category_id`);

--
-- Indexes for table `Users1`
--
ALTER TABLE `Users1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `Vehicle_master`
--
ALTER TABLE `Vehicle_master`
  ADD PRIMARY KEY (`VehicleID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `VendorWallet`
--
ALTER TABLE `VendorWallet`
  ADD PRIMARY KEY (`VWalletID`);

--
-- Indexes for table `Vendor_master`
--
ALTER TABLE `Vendor_master`
  ADD UNIQUE KEY `VENDORID` (`VENDORID`) USING BTREE,
  ADD UNIQUE KEY `Name` (`Name`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `MobileNo` (`MobileNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Booking_master`
--
ALTER TABLE `Booking_master`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Category_master`
--
ALTER TABLE `Category_master`
  MODIFY `Category_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Customer_master`
--
ALTER TABLE `Customer_master`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Payment_master`
--
ALTER TABLE `Payment_master`
  MODIFY `pay_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Product_master`
--
ALTER TABLE `Product_master`
  MODIFY `Product_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Rider_master`
--
ALTER TABLE `Rider_master`
  MODIFY `RIDERID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Service_master`
--
ALTER TABLE `Service_master`
  MODIFY `Service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users1`
--
ALTER TABLE `Users1`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `VendorWallet`
--
ALTER TABLE `VendorWallet`
  MODIFY `VWalletID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Vendor_master`
--
ALTER TABLE `Vendor_master`
  MODIFY `VENDORID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Rider_master`
--
ALTER TABLE `Rider_master`
  ADD CONSTRAINT `Rider_master_ibfk_1` FOREIGN KEY (`VendorID`) REFERENCES `Vendor_master` (`VENDORID`);

--
-- Constraints for table `Service_master`
--
ALTER TABLE `Service_master`
  ADD CONSTRAINT `Service_master_ibfk_1` FOREIGN KEY (`Category_id`) REFERENCES `Category_master` (`Category_id`);

--
-- Constraints for table `Vehicle_master`
--
ALTER TABLE `Vehicle_master`
  ADD CONSTRAINT `Vehicle_master_ibfk_1` FOREIGN KEY (`USERID`) REFERENCES `Customer_master` (`USERID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
