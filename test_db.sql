-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 09:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  `Ticket_ID` int(11) NOT NULL,
  `Date_Of_Booking` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `Bus_ID` int(11) NOT NULL,
  `Bus_Number` varchar(50) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Bus_Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `busconductor`
--

CREATE TABLE `busconductor` (
  `BusConductor_ID` int(11) NOT NULL,
  `Bus_ID` int(11) NOT NULL,
  `Conductor_ID` int(11) NOT NULL,
  `Assignment_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `busdriver`
--

CREATE TABLE `busdriver` (
  `Bus_ID` int(11) NOT NULL,
  `Driver_ID` int(11) NOT NULL,
  `Assignment_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `busroute_stop`
--

CREATE TABLE `busroute_stop` (
  `BusRouteStop_ID` int(11) NOT NULL,
  `Route_ID` int(11) NOT NULL,
  `BusStop_ID` int(11) NOT NULL,
  `Stop_Number` int(11) NOT NULL,
  `Arrival_Time` time NOT NULL,
  `Departure_Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bus_stop`
--

CREATE TABLE `bus_stop` (
  `BusStop_ID` int(11) NOT NULL,
  `Stop_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bus_stop_location`
--

CREATE TABLE `bus_stop_location` (
  `BusStop_ID` int(11) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Area` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conductor`
--

CREATE TABLE `conductor` (
  `Conductor_ID` int(11) NOT NULL,
  `Experience_Years` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conductor_contact`
--

CREATE TABLE `conductor_contact` (
  `Conductor_ID` int(11) NOT NULL,
  `Email_Address` varchar(50) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conductor_name`
--

CREATE TABLE `conductor_name` (
  `Conductor_ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `Driver_ID` int(11) NOT NULL,
  `Driver_Name` varchar(50) NOT NULL,
  `License_Number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedBack_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Comments` varchar(350) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `Maintenance_ID` int(11) NOT NULL,
  `Bus_ID` int(11) NOT NULL,
  `Maintenance_Date` date NOT NULL,
  `Details` varchar(350) NOT NULL,
  `Cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `Manager_ID` int(11) NOT NULL,
  `Driver_ID` int(11) NOT NULL,
  `Bus_ID` int(11) NOT NULL,
  `Assignment_Date` date NOT NULL,
  `Shift` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Passenger_ID` int(11) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Date_Of_Birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passenger_address`
--

CREATE TABLE `passenger_address` (
  `Passenger_ID` int(11) NOT NULL,
  `House_No` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `Thana` varchar(50) NOT NULL,
  `Postal_Code` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passenger_contact`
--

CREATE TABLE `passenger_contact` (
  `Passenger_ID` int(11) NOT NULL,
  `Email_Address` varchar(50) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passenger_name`
--

CREATE TABLE `passenger_name` (
  `Passenger_ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(11) NOT NULL,
  `Booking_ID` int(11) NOT NULL,
  `Payment_Method` varchar(50) NOT NULL,
  `Payment_Date` date NOT NULL,
  `Amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `Route_ID` int(11) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Distance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `Schedule_ID` int(11) NOT NULL,
  `Bus_ID` int(11) NOT NULL,
  `Route_ID` int(11) NOT NULL,
  `Departure_Time` datetime NOT NULL,
  `Arrival_Time` datetime NOT NULL,
  `Frequency` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `Ticket_ID` int(11) NOT NULL,
  `Booking_Date` date NOT NULL,
  `Fare` float NOT NULL,
  `Passenger_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `Username`, `Password`, `Role`) VALUES
(1, 'admin', 'hashed_password', 'admin'),
(2, 'user1', 'hashed_password', 'user'),
(3, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `vip_passenger`
--

CREATE TABLE `vip_passenger` (
  `VIPPassenger_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD UNIQUE KEY `Booking_ID` (`Booking_ID`),
  ADD KEY `Booking_fk1` (`Passenger_ID`),
  ADD KEY `Booking_fk2` (`Ticket_ID`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`Bus_ID`),
  ADD UNIQUE KEY `Bus_ID` (`Bus_ID`);

--
-- Indexes for table `busconductor`
--
ALTER TABLE `busconductor`
  ADD PRIMARY KEY (`BusConductor_ID`,`Bus_ID`,`Conductor_ID`),
  ADD UNIQUE KEY `BusConductor_ID` (`BusConductor_ID`),
  ADD KEY `BusConductor_fk1` (`Bus_ID`),
  ADD KEY `BusConductor_fk2` (`Conductor_ID`);

--
-- Indexes for table `busdriver`
--
ALTER TABLE `busdriver`
  ADD PRIMARY KEY (`Bus_ID`,`Driver_ID`),
  ADD KEY `BusDriver_fk1` (`Driver_ID`);

--
-- Indexes for table `busroute_stop`
--
ALTER TABLE `busroute_stop`
  ADD PRIMARY KEY (`BusRouteStop_ID`,`Route_ID`,`BusStop_ID`),
  ADD UNIQUE KEY `BusRouteStop_ID` (`BusRouteStop_ID`),
  ADD KEY `BusRoute_Stop_fk1` (`Route_ID`),
  ADD KEY `BusRoute_Stop_fk2` (`BusStop_ID`);

--
-- Indexes for table `bus_stop`
--
ALTER TABLE `bus_stop`
  ADD PRIMARY KEY (`BusStop_ID`),
  ADD UNIQUE KEY `BusStop_ID` (`BusStop_ID`);

--
-- Indexes for table `bus_stop_location`
--
ALTER TABLE `bus_stop_location`
  ADD PRIMARY KEY (`BusStop_ID`,`City`,`Area`);

--
-- Indexes for table `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`Conductor_ID`),
  ADD UNIQUE KEY `Conductor_ID` (`Conductor_ID`);

--
-- Indexes for table `conductor_contact`
--
ALTER TABLE `conductor_contact`
  ADD PRIMARY KEY (`Conductor_ID`,`Email_Address`,`Mobile_Number`);

--
-- Indexes for table `conductor_name`
--
ALTER TABLE `conductor_name`
  ADD PRIMARY KEY (`Conductor_ID`,`First_Name`,`Middle_Name`,`Last_Name`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`Driver_ID`),
  ADD UNIQUE KEY `Driver_ID` (`Driver_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedBack_ID`,`Passenger_ID`),
  ADD UNIQUE KEY `FeedBack_ID` (`FeedBack_ID`),
  ADD KEY `Feedback_fk1` (`Passenger_ID`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`Maintenance_ID`),
  ADD UNIQUE KEY `Maintenance_ID` (`Maintenance_ID`),
  ADD KEY `Maintenance_fk1` (`Bus_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`Manager_ID`),
  ADD UNIQUE KEY `Manager_ID` (`Manager_ID`),
  ADD KEY `Manager_fk1` (`Driver_ID`),
  ADD KEY `Manager_fk2` (`Bus_ID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Passenger_ID`),
  ADD UNIQUE KEY `Passenger_ID` (`Passenger_ID`);

--
-- Indexes for table `passenger_address`
--
ALTER TABLE `passenger_address`
  ADD PRIMARY KEY (`Passenger_ID`,`House_No`,`Street`,`Thana`,`Postal_Code`,`City`,`District`);

--
-- Indexes for table `passenger_contact`
--
ALTER TABLE `passenger_contact`
  ADD PRIMARY KEY (`Passenger_ID`,`Email_Address`,`Mobile_Number`);

--
-- Indexes for table `passenger_name`
--
ALTER TABLE `passenger_name`
  ADD PRIMARY KEY (`Passenger_ID`,`First_Name`,`Middle_Name`,`Last_Name`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`,`Booking_ID`),
  ADD KEY `Payment_fk1` (`Booking_ID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`Route_ID`),
  ADD UNIQUE KEY `Route_ID` (`Route_ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`Schedule_ID`),
  ADD UNIQUE KEY `Schedule_ID` (`Schedule_ID`),
  ADD KEY `Schedule_fk1` (`Bus_ID`),
  ADD KEY `Schedule_fk2` (`Route_ID`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`Ticket_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `vip_passenger`
--
ALTER TABLE `vip_passenger`
  ADD PRIMARY KEY (`VIPPassenger_ID`),
  ADD UNIQUE KEY `VIPPassenger_ID` (`VIPPassenger_ID`),
  ADD KEY `VIP_Passenger_fk1` (`Passenger_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Booking_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `Bus_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `busconductor`
--
ALTER TABLE `busconductor`
  MODIFY `BusConductor_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `busroute_stop`
--
ALTER TABLE `busroute_stop`
  MODIFY `BusRouteStop_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus_stop`
--
ALTER TABLE `bus_stop`
  MODIFY `BusStop_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conductor`
--
ALTER TABLE `conductor`
  MODIFY `Conductor_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `Driver_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedBack_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `Maintenance_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `Manager_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `Passenger_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passenger_address`
--
ALTER TABLE `passenger_address`
  MODIFY `Passenger_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `Route_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `Schedule_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vip_passenger`
--
ALTER TABLE `vip_passenger`
  MODIFY `VIPPassenger_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `Booking_fk1` FOREIGN KEY (`Passenger_ID`) REFERENCES `passenger` (`Passenger_ID`),
  ADD CONSTRAINT `Booking_fk2` FOREIGN KEY (`Ticket_ID`) REFERENCES `ticket` (`Ticket_ID`);

--
-- Constraints for table `busconductor`
--
ALTER TABLE `busconductor`
  ADD CONSTRAINT `BusConductor_fk1` FOREIGN KEY (`Bus_ID`) REFERENCES `bus` (`Bus_ID`),
  ADD CONSTRAINT `BusConductor_fk2` FOREIGN KEY (`Conductor_ID`) REFERENCES `conductor` (`Conductor_ID`);

--
-- Constraints for table `busdriver`
--
ALTER TABLE `busdriver`
  ADD CONSTRAINT `BusDriver_fk0` FOREIGN KEY (`Bus_ID`) REFERENCES `bus` (`Bus_ID`),
  ADD CONSTRAINT `BusDriver_fk1` FOREIGN KEY (`Driver_ID`) REFERENCES `driver` (`Driver_ID`);

--
-- Constraints for table `busroute_stop`
--
ALTER TABLE `busroute_stop`
  ADD CONSTRAINT `BusRoute_Stop_fk1` FOREIGN KEY (`Route_ID`) REFERENCES `route` (`Route_ID`),
  ADD CONSTRAINT `BusRoute_Stop_fk2` FOREIGN KEY (`BusStop_ID`) REFERENCES `bus_stop` (`BusStop_ID`);

--
-- Constraints for table `bus_stop_location`
--
ALTER TABLE `bus_stop_location`
  ADD CONSTRAINT `Bus_Stop_Location_fk0` FOREIGN KEY (`BusStop_ID`) REFERENCES `bus_stop` (`BusStop_ID`);

--
-- Constraints for table `conductor_contact`
--
ALTER TABLE `conductor_contact`
  ADD CONSTRAINT `Conductor_Contact_fk0` FOREIGN KEY (`Conductor_ID`) REFERENCES `conductor` (`Conductor_ID`);

--
-- Constraints for table `conductor_name`
--
ALTER TABLE `conductor_name`
  ADD CONSTRAINT `Conductor_Name_fk0` FOREIGN KEY (`Conductor_ID`) REFERENCES `conductor` (`Conductor_ID`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `Feedback_fk1` FOREIGN KEY (`Passenger_ID`) REFERENCES `passenger` (`Passenger_ID`);

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `Maintenance_fk1` FOREIGN KEY (`Bus_ID`) REFERENCES `bus` (`Bus_ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `Manager_fk1` FOREIGN KEY (`Driver_ID`) REFERENCES `busdriver` (`Driver_ID`),
  ADD CONSTRAINT `Manager_fk2` FOREIGN KEY (`Bus_ID`) REFERENCES `bus` (`Bus_ID`);

--
-- Constraints for table `passenger_address`
--
ALTER TABLE `passenger_address`
  ADD CONSTRAINT `Passenger_Address_fk0` FOREIGN KEY (`Passenger_ID`) REFERENCES `passenger` (`Passenger_ID`);

--
-- Constraints for table `passenger_contact`
--
ALTER TABLE `passenger_contact`
  ADD CONSTRAINT `Passenger_Contact_fk0` FOREIGN KEY (`Passenger_ID`) REFERENCES `passenger` (`Passenger_ID`);

--
-- Constraints for table `passenger_name`
--
ALTER TABLE `passenger_name`
  ADD CONSTRAINT `Passenger_Name_fk0` FOREIGN KEY (`Passenger_ID`) REFERENCES `passenger` (`Passenger_ID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `Payment_fk1` FOREIGN KEY (`Booking_ID`) REFERENCES `booking` (`Booking_ID`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `Schedule_fk1` FOREIGN KEY (`Bus_ID`) REFERENCES `bus` (`Bus_ID`),
  ADD CONSTRAINT `Schedule_fk2` FOREIGN KEY (`Route_ID`) REFERENCES `route` (`Route_ID`);

--
-- Constraints for table `vip_passenger`
--
ALTER TABLE `vip_passenger`
  ADD CONSTRAINT `VIP_Passenger_fk1` FOREIGN KEY (`Passenger_ID`) REFERENCES `passenger` (`Passenger_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
