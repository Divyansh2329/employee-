
-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: Employee
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `emp_id` varchar(20) DEFAULT NULL,
  `house_no` decimal(5,0) NOT NULL,
  `street` char(20) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `permanentaddress` varchar(100) DEFAULT NULL,
  `currentaddress` varchar(100) DEFAULT NULL,
 
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departmental_information`
--

DROP TABLE IF EXISTS `departmental_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departmental_information` (
  `dept_id` varchar(20) NOT NULL,
  `dept_code` char(4) DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  `description` char(10) DEFAULT NULL,
  `parent_dept_id` varchar(20) DEFAULT NULL,
  `total_emp_count` int DEFAULT NULL,
  `current_emp_count` int DEFAULT NULL,
  PRIMARY KEY (`dept_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departmental_information`
--

LOCK TABLES `departmental_information` WRITE;
/*!40000 ALTER TABLE `departmental_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `departmental_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `edu_id` varchar(20) NOT NULL,
  `emp_id` varchar(20) DEFAULT NULL,
  `university` char(20) DEFAULT NULL,
  `course` char(30) DEFAULT NULL,
  `decipline` varchar(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` char(30) DEFAULT NULL,
  PRIMARY KEY (`edu_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `education_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `emp_id` varchar(20) NOT NULL,
  `name` char(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `pan_no` varchar(12) DEFAULT NULL,
  `aadhar_no` int DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `dept_id` varchar(15) DEFAULT NULL,
  `designation` char(3) DEFAULT NULL,
  `skype_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professional_background`
--

DROP TABLE IF EXISTS `professional_background`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professional_background` (
  `com_id` varchar(20) NOT NULL,
  `emp_id` varchar(20) DEFAULT NULL,
  `com_name` char(20) DEFAULT NULL,
  `designation` char(10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` char(30) DEFAULT NULL,
  PRIMARY KEY (`com_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `professional_background_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional_background`
--

LOCK TABLES `professional_background` WRITE;
/*!40000 ALTER TABLE `professional_background` DISABLE KEYS */;
/*!40000 ALTER TABLE `professional_background` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_information`
--

DROP TABLE IF EXISTS `salary_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_information` (
  `sal_id` varchar(20) NOT NULL,
  `emp_id` varchar(20) DEFAULT NULL,
  `basic` varchar(20) DEFAULT NULL,
  `rent` decimal(9,0) DEFAULT NULL,
  `edu_allow` decimal(10,0) DEFAULT NULL,
  `tele_allow` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`sal_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `salary_information_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_information`
--

LOCK TABLES `salary_information` WRITE;
/*!40000 ALTER TABLE `salary_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
