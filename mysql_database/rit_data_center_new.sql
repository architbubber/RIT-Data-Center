-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2018 at 02:54 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rit_data_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_council`
--

CREATE TABLE `academic_council` (
  `slNo` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_council`
--

INSERT INTO `academic_council` (`slNo`, `category`, `name`, `address`, `status`, `instituteName`) VALUES
(1, 'Principal of the College', 'Dr. N V R Naidu', 'null', 'Chairperson', 'Ramaiah Institute of Technology'),
(2, 'Head of Department in the college', 'Pushpa Devanathan', 'Architecture', 'Member', 'Ramaiah Institute of Technology'),
(3, 'Head of Department in the college', 'Dr. B K SUJATHA', 'Telecommunication', 'Member', 'Ramaiah Institute of Technology'),
(4, 'Head of Department in the college', 'Dr. M Jyothirmayi ', 'Instrumentation', 'Member', 'Ramaiah Institute of Technology'),
(5, 'Head of Department in the college', 'Dr. C G Puttappa ', 'Civil Engineering', 'Member', 'Ramaiah Institute of Technology'),
(6, 'Head of Department in the college', 'Dr. Raveendra', 'MBA', 'Member', 'Ramaiah Institute of Technology'),
(7, 'Head of Department in the college', 'Dr. T V Suresh Kumar ', 'MCA', 'Member', 'Ramaiah Institute of Technology'),
(8, 'Head of Department in the college', 'Dr. A Jaganatha Reddy ', 'Physics', 'Member', 'Ramaiah Institute of Technology'),
(9, 'Head of Department in the college', 'Dr. Raji George ', 'Mechanical', 'Member', 'Ramaiah Institute of Technology'),
(10, 'Head of Department in the college', 'Dr. Anitha Kanvali ', 'Computer Science Engineering', 'Member', 'Ramaiah Institute of Technology'),
(11, 'Head of Department in the college', 'Dr. B P Vijaya Kumar ', 'Information Science & Engineering', 'Member', 'Ramaiah Institute of Technology'),
(12, 'Head of Department in the college', 'Dr. N L Ramesh ', 'Mathematics', 'Member', 'Ramaiah Institute of Technology'),
(13, 'Head of Department in the college', 'Dr. Prameela Manohar ', 'Electrical and Electronics', 'Member', 'Ramaiah Institute of Technology'),
(14, 'Head of Department in the college', 'Dr. N Sriraam ', 'Medical Electronics', 'Member', 'Ramaiah Institute of Technology'),
(15, 'Head of Department in the college', 'Dr. S Sethu Selvi ', 'Electronics and Communication', 'Member', 'Ramaiah Institute of Technology'),
(16, 'Head of Department in the college', 'Dr Bindu S ', 'Biotechnology', 'Member', 'Ramaiah Institute of Technology'),
(17, 'Head of Department in the college', 'Dr B M Nagabhusham ', 'Chemistry', 'Member', 'Ramaiah Institute of Technology'),
(18, 'Head of Department in the college', 'Dr. Archana ', 'Chemical Engineering', 'Member', 'Ramaiah Institute of Technology'),
(19, 'Teachers of the college representing different lev', 'Prof. Raghu Krishnapura', 'Head, R&D', 'Member', 'Ramaiah Institute of Technology'),
(20, 'Teachers of the college representing different lev', 'Prof. Riji George', 'Mechanical Engineering', 'Member', 'Ramaiah Institute of Technology'),
(21, 'Teachers of the college representing different lev', 'Dr. Raghuram S', 'Electronics and Communications', 'Member', 'Ramaiah Institute of Technology'),
(22, 'Teachers of the college representing different lev', 'Dr C G Puttappa', 'COE', 'Member', 'Ramaiah Institute of Technology'),
(23, 'Experts from outside the college representing area', 'Prof. Y Narahari', 'Professor and Head, Dept. of CSA, IISc, Bangalore', 'Member', 'Ramaiah Institute of Technology'),
(24, 'Experts from outside the college representing area', 'Sri Babu Sathain V', 'Managing Director, Process Pumps-I Pvt. Ltd, Plot No 86, III Phase, Peenya Industrial Area, Bangalor', 'Member', 'Ramaiah Institute of Technology'),
(25, 'Experts from outside the college representing area', 'Sri A T Samuel', 'Director, STUP Consultants, A – 1 Tower, 5th and 6th Floor, “Golden Enclave”, Airport Road, Bangalor', 'Member', 'Ramaiah Institute of Technology'),
(26, 'Experts from outside the college representing area', 'Dr. Parasuram Balasubramanian', 'Theme Work Analytics (P) Ltd, Gurukrupa, 508, 47th Cross, Jayanagar 5th Block, Bangalore - 560041', 'Member', 'Ramaiah Institute of Technology'),
(27, 'Experts from outside the college representing area', 'Dr V Gopalakrishna', 'Director, Integra Micro Systems -p Ltd, G5, Swiss Complex, 33, Race Course Road, Bangalore – 560001', 'Member', 'Ramaiah Institute of Technology'),
(28, 'Experts from outside the college representing area', 'Dr. Vikram M Gadre', 'Professor, Department of Electrical Engineering, IIT, Bombay, Powai, Mumbai - 400076', 'Member', 'Ramaiah Institute of Technology'),
(29, 'Nominees of the University', 'Dr. H C Nagaraj ', 'Principal, Nitte Meenakshi Institute of Technology, P.B.No.6429. Yelahanka, Bangalore 560064. ', 'Member', 'Ramaiah Institute of Technology'),
(30, 'Nominees of the University', 'Dr T Srinivasan', 'Professor, Department of Mechanical Engineering, R N S Institute of Technology, Rajarajeshwarinagar ', 'Member', 'Ramaiah Institute of Technology'),
(31, 'Nominees of the University', 'Dr C Puttamadappa', 'Registrar, DSU, Bangalore', 'Member', 'Ramaiah Institute of Technology'),
(32, 'Faculty member, nominated by the Principal', 'Dr T V Suresh Kumar', 'Registrar -Academic', 'Member Secretary', 'Ramaiah Institute of Technology');

-- --------------------------------------------------------

--
-- Table structure for table `administrator_login`
--

CREATE TABLE `administrator_login` (
  `emailId` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `departmentId` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator_login`
--

INSERT INTO `administrator_login` (`emailId`, `password`, `departmentId`, `type`) VALUES
('admin@msrit.edu', 'rit', 'college', 'admin'),
('cse@msrit.edu', 'rit', 'cse', 'coordinator'),
('datacenterrit@gmail.com', 'dev2019', 'data', 'hod'),
('dept_te@msrit.edu', 'te1234', 'te', 'coordinator'),
('hod_bt@msrit.edu', 'somepa', 'bt', 'hod'),
('hod_ch@msrit.edu', 'passhc', 'ch', 'hod'),
('hod_chy@msrit.edu', 'passlp', 'chy', 'hod'),
('hod_cse@msrit.edu', 'passlk', 'cse', 'hod'),
('hod_cv@msrit.edu', 'passll', 'cv', 'hod'),
('hod_ece@msrit.edu', 'passoi', 'ece', 'hod'),
('hod_ee@msrit.edu', 'passui', 'ee', 'hod'),
('hod_im@msrit.edu', 'passim', 'im', 'hod'),
('hod_is@msrit.edu', 'passlk', 'is', 'hod'),
('hod_it@msrit.edu', 'afehsc', 'it', 'hod'),
('hod_mat@msrit.edu', 'passvb', 'mat', 'hod'),
('hod_mba@msrit.edu', 'passmb', 'mba', 'hod'),
('hod_mca@msrit.edu', 'passvb', 'mca', 'hod'),
('hod_me@msrit.edu', 'passhh', 'me', 'hod'),
('hod_ml@msrit.edu', 'passml', 'ml', 'hod'),
('hod_phy@msrit.edu', 'passwe', 'phy', 'hod'),
('hod_te@msrit.edu', 'passqw', 'te', 'hod'),
('principal@msrit.edu', 'rit', 'college', 'principal');

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `year` varchar(30) NOT NULL,
  `noOfUgStudents` int(11) NOT NULL,
  `noOfPgStudents` int(11) NOT NULL,
  `noOfPgStudentsWithGateScore` int(11) NOT NULL,
  `ugCet` int(11) NOT NULL,
  `ugComedK` int(11) NOT NULL,
  `pgCet` int(11) NOT NULL,
  `pgComedK` int(11) NOT NULL,
  `lateralEntry` int(11) NOT NULL,
  `fullTimePhd` int(11) NOT NULL,
  `partTimePhd` int(11) NOT NULL,
  `mscByResearch` int(11) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`year`, `noOfUgStudents`, `noOfPgStudents`, `noOfPgStudentsWithGateScore`, `ugCet`, `ugComedK`, `pgCet`, `pgComedK`, `lateralEntry`, `fullTimePhd`, `partTimePhd`, `mscByResearch`, `departmentId`) VALUES
('', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ml');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `slNo` int(11) NOT NULL,
  `bookTitle` varchar(100) NOT NULL,
  `bookAuthors` varchar(100) NOT NULL,
  `bookPublisher` varchar(100) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`slNo`, `bookTitle`, `bookAuthors`, `bookPublisher`, `isbn`, `year`, `facultyId`) VALUES
(1, 'Data Mining - Principles and Applications', 'Dr. Jagadish S Kallimani', 'Elsevier and Fillip Learning', '', '2012', 'cse04'),
(2, 'Stastical Programming', 'Chetan Shetty, Sowmya B J', 'null', '', '2017', 'cse13'),
(3, 'Stastical Programming', 'Sowmya B J, Chetan Shetty', 'null', '', '2017', 'cse22'),
(4, 'Fluency with Information Technology: Skills, Concepts, & capabilities, 6thedition', 'Lawrence Snyder ', 'Pearson', ' 9781292061245', '2015', 'mca02'),
(8, 'NA', 'NA', 'NA', 'NA`', 'NA`', 'me02'),
(9, 'Advances in Intelligent Systems and Computing', 'Rajaram Gowda, Lingaraju. G M', '', '', '2016', 'is04'),
(10, '', 'Mydhili', 'CRC Press(Taylor & Francis)', '', '2016', 'is01');

-- --------------------------------------------------------

--
-- Table structure for table `book_chapter`
--

CREATE TABLE `book_chapter` (
  `slNo` int(11) NOT NULL,
  `chapterName` varchar(100) NOT NULL,
  `bookName` varchar(100) NOT NULL,
  `chapterAuthors` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_chapter`
--

INSERT INTO `book_chapter` (`slNo`, `chapterName`, `bookName`, `chapterAuthors`, `publisher`, `isbn`, `year`, `facultyId`) VALUES
(1, '“Driving Big Data with Hadoop Technologies”,Cloud Infrastructures', 'null', 'Srinidhi H', 'null', '', '2012', 'cse27'),
(2, 'SABR: Secure Authentication-Based Routing in Large Scale Wireless Sensor Network', 'null', 'Dr. Anita Kanavalli', 'null', '', '2015', 'cse01'),
(3, 'Data Intensive Cloud Computing', 'null', 'Jayalakshmi D S', 'null', '', '2015', 'cse05'),
(4, '“Ubiquitous Computing for Cyber-Physical Systems', 'null', 'Srinidhi H', 'null', '', 'null', 'cse27'),
(5, 'A Viability Analysis of an Economical Private Cloud Storage Solution Powered by Raspberry Pi in the ', 'null', 'Srinidhi H', 'null', '', 'null', 'cse27'),
(6, 'GPU Implementation of Friend Recommendation System using CUDA for Social Networking Services', 'null', 'Srinidhi H', 'null', '', 'null', 'cse27'),
(7, 'Performance Analysis of Airplane Health Surveillance System', 'null', 'Dr. Seema S', 'Springer Nature Singapore  Ltd', '', '2017', 'cse03'),
(8, 'Computing and Network Sustainability', 'null', 'Sanjeetha. R', 'IoT-Enabled Integrated Intelligence System', '', '2017', 'cse07'),
(9, 'Kannada Handwritten Word Conversion to Electronic Textual Format Using HMM Model', 'null', 'Veena G S', 'null', '', '2016', 'cse09'),
(10, 'Lecture Notes in Networks and Systems', 'null', 'Veena G S', 'Springer Singapore', '', '2018', 'cse09'),
(11, 'Limitations of Conscious Machines', 'null', 'Dr. Jagadish S Kallimani', 'null', '', '2017', 'cse04'),
(24, 'Development of Path Loss Models for Localization and Creation of Wi-Fi Map in a Wireless Mesh Test B', 'Lecture Notes in Networks and Systems', 'Singh M.S., Jayaram P., Nikshitha R., Prerna P., Deepak M., Talasila ', 'Springer, Singapore', '', '2017', 'te02'),
(25, 'Triggering a Functional Electrical Stimulator Based on Gesture for Stroke-Induced Movement Disorder.', 'Lecture Notes in Networks and Systems', 'Raghavendra P., Talasila V., Sridhar V., Debur R', 'Vol 12. Springer, Singapore', '', '2017', 'te02'),
(26, 'Comparative Study on Cytotoxic and Bactericidal Effect of Nanoscale Zero Valent Iron Synthesized thr', 'Recent Trends in Nanomedicine and Tissue Engineering ', 'Sharath R., Harish B. G., Chandraprabha M. N., Samrat K., Nagaraju Kottam, Hari Krishna R. Rakesh G.', 'Sharath R., Harish B. G., Chandraprabha M. N., Sam', ' 9788793609167 ', '2017', 'bt03'),
(27, 'Assessment of Antibacterial and Antifungal Activity of Zero Valent Iron Nanoparticles', 'Nanomaterials ', 'Shraddha Shah, Chandraprabha M. N., and Samrat K.', 'apple academic press', '9781771884617', '2018', 'bt03'),
(28, 'Spinel Ferrites-A Future Boon to Nanotechnology Based Therapies', 'Nanomaterials ', 'Muktha H., Nagaraju Kottam, Sharath R., Samrat K., Chandraprabha M. N., Harikrishna R., and Bincy Ro', 'apple academic press', '9781771884617', '2018', 'bt03'),
(29, 'Ferroelectrics for photocatalysis', 'Multifunctional Photocatalytic Materials for Energy', 'N. R. Yogamalar, S. Kalpana, V. Senthil, A. Chithambararaj', 'Woodhead Publishing ', '9780081019788', '2018', 'phy01'),
(30, 'Big Data Predictive Modeling and Analytics', 'Bigdata Analytics: Tools, Technology for Effective Planning', 'Mydhili K. Nair, Arjun Rao, Mipsa Patel', 'Chapman and Hall/CRC', '9781138032392', '26-Oct-17', 'is01'),
(31, 'Application of Thomas Model for ion exchange of cesium on AMP-PAN', 'Chemical and bioprocess Engineering; Trends and Development', 'Ch.Mahendra, P.M. Satya Sai, C. Anand Babu, K.Revathy, K.K.Rajan', 'Apple Academic Press', '9781771880770 - CAT# N11202', '2015', 'ch01'),
(32, 'Data Migration Techniques from SQL to NoSQL', 'NoSQL: Database for Storage and Retrieval of Data in Cloud', 'Mydhili K. Nair, Nihal Nayak, and Arjun Rao', 'Chapman and Hall/CRC Book ', '9781498784368, CAT# K30140', '5/4/2017', 'is01'),
(33, 'NA', 'NA', 'NA', 'Na', 'NA', 'NA', 'me02'),
(34, '', '', '', 'springer-Verlag GmbH Berlin/Heidelberg', '', '2016', 'is04'),
(35, 'Comparative Study on Cytotoxic and Bactericidal Effect of Nanoscale Zero Valent Iron Synthesized thr', 'Recent Trends in Nanomedicine and Tissue Engineering ', 'Sharath R., Harish B. G., Chandraprabha M. N., Samrat K., Nagaraju Kottam, Hari Krishna R. Rakesh G.', 'river publisher', ' 9788793609167 ', '2018', 'bt02');

-- --------------------------------------------------------

--
-- Table structure for table `competative_exam_details`
--

CREATE TABLE `competative_exam_details` (
  `studentName` varchar(100) NOT NULL,
  `usn` varchar(50) NOT NULL,
  `yearOfPassing` int(11) NOT NULL,
  `qualifyingExam` varchar(100) NOT NULL,
  `examScore` varchar(100) NOT NULL,
  `yearOfExam` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conference_paper`
--

CREATE TABLE `conference_paper` (
  `slNo` int(11) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `conferenceName` varchar(100) NOT NULL,
  `conferenceType` varchar(100) NOT NULL,
  `organizedBy` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `year` int(10) NOT NULL,
  `date` date NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conference_paper`
--

INSERT INTO `conference_paper` (`slNo`, `authors`, `title`, `conferenceName`, `conferenceType`, `organizedBy`, `publisher`, `year`, `date`, `facultyId`) VALUES
(1, 'Dr. Anita Kanavalli', 'International Conference  on Image and Signal processing', 'null', 'International', 'Society of Information Processing and UVCE Bangalore', '', 2013, '0000-00-00', 'cse01'),
(2, 'Jayalakshmi D S', ' 2nd International Conference on Advances in Cloud Computing    (ACC -2013)', 'null', 'international', 'CSI, Bangalore', '', 2013, '0000-00-00', 'cse05'),
(3, 'J Geetha', '2nd International Conference on Advances in Cloud Computing –CSI Bangalore Chapter & CSI Division -5', 'null', 'international', 'NIMHANS convention Centre, Bangalore.', '', 2013, '0000-00-00', 'cse10'),
(4, 'Sini Anna Alex', 'IEEE CONNECT 2014', 'null', 'national', 'IISC,Bangalore', '', 2014, '0000-00-00', 'cse14'),
(5, 'Sini Anna Alex', 'SAP Faculty Day', 'null', 'national', 'SAP Labs Bangalore', '', 2014, '0000-00-00', 'cse14'),
(6, 'Sini Anna Alex', 'LDRA Academic Seminar - Providing Expertise for a Safer Tomorrow', 'null', 'national', 'null', '', 2014, '0000-00-00', 'cse14'),
(7, 'Vandana S Sardar', 'International Conference On Emerging Computation and Information Technologies ( ICECIT 2013)', 'null', 'international', 'SIT, Tumkur', '', 2013, '0000-00-00', 'cse15'),
(8, 'Divakar Harekal', 'Nokia Confluence February', 'null', 'national', 'National Institute of Design  ,Bangalore', '', 2013, '0000-00-00', 'cse18'),
(9, 'S.Rajarajeswari', 'International Conference ICHCI Aug2013', 'null', 'international', 'null', '', 2013, '0000-00-00', 'cse20'),
(10, 'S.Rajarajeswari', 'International conference on Emerging Computation and Information Technologies (ICECIT – 2013)', 'null', 'international', 'SIT Tumkur', '', 2013, '0000-00-00', 'cse20'),
(11, 'Ganeshayya Shidaganti', 'International Conference on Advances in Computing, Communications and Informatics (ICACCI-2013)', 'null', 'international', 'null', '', 2013, '0000-00-00', 'cse25'),
(12, 'Dr. Anita Kanavalli', 'International Multi Conference on Information Processing', 'null', 'international', 'UVCE Bangalore', '', 2014, '0000-00-00', 'cse01'),
(13, 'Dr. Anita Kanavalli', 'International Conference I4C', 'null', 'international', 'MSRIT', '', 2014, '0000-00-00', 'cse01'),
(14, 'Dr Annapurna P Patil', '5th IEEE International Advance Computing Conference.', 'null', 'international', 'BMSCE, Bangalore', '', 2015, '0000-00-00', 'cse02'),
(15, 'Dr Annapurna P Patil', 'International Conference on Circuits, Control, Communication and Computing.', 'null', 'international', 'MSRIT, Bangalore-54', '', 2014, '0000-00-00', 'cse02'),
(16, 'Jayalakshmi D S', '2014 IEEE Cloud Computing for Emerging Markets (CCEM) Conference', 'null', 'national', 'null', '', 2014, '0000-00-00', 'cse05'),
(17, 'Dr.Monica R Mundada', 'I4C2014- International Conference on Circuits, Communication, Control and Computing', 'null', 'international', 'MSRIT', '', 2014, '0000-00-00', 'cse06'),
(18, 'Parkavi.A', 'IEEE T4E conference', 'null', 'national', 'Amritha University, Kerala', '', 2014, '0000-00-00', 'cse08'),
(19, 'Mamatha V', ' 3 day IEEE International Conference on Smart Sensors and Systems', 'Evaluation of Modified PLS Regression Method to Fill the  Missing Values in Training Dataset', 'international', 'MSRIT, Bangalore', '', 2015, '0000-00-00', 'cse12'),
(20, 'Sini Anna Alex', 'T4E 2014- Technology for education, 6th IEEE Conference on Technology for Education 2014', 'null', 'national', 'Amrita University', '', 2014, '0000-00-00', 'cse14'),
(21, 'Divakar Harekal', '7th National Conference at SJB Institute of Technology Bangalore', 'Knowledge and Defect Management Approaches to Software Industries', 'national', 'SJBT Bangalore', '', 2015, '0000-00-00', 'cse18'),
(22, 'S.Rajarajeswari', 'International Conference on Circuits, Control, Communication and Computing,', 'null', 'international', 'MSRIT, Bangalore', '', 2014, '0000-00-00', 'cse20'),
(23, 'S.Rajarajeswari', '2nd International Conference on engineering Technology and Science. ICETS’15', 'null', 'international', 'Muthayammal College of Engineering, Rasipuram', '', 2015, '0000-00-00', 'cse20'),
(24, 'Pramod Sunagar', 'International conference on Circuits, Communication , Control and Computations - I4C2014', 'null', 'international', 'MSRIT', '', 2014, '0000-00-00', 'cse21'),
(25, 'Ganeshayya Shidaganti', 'International Conference on Circuits,Communication,Control and Computing(I4C 2014)', 'null', 'international', 'MSRIT', '', 2014, '0000-00-00', 'cse25'),
(26, 'Srinidhi H', '8th India Software Engineering Conference', 'null', 'national', 'null', '', 2015, '0000-00-00', 'cse27'),
(27, 'Ganeshayya Shidaganti', '10th Annual Conference of KSTA 2018', 'null', 'national', 'Reva University', '', 2018, '0000-00-00', 'cse25'),
(28, 'Ganeshayya Shidaganti', '5th IEEE International Conference', 'MOOCS,Innovations  and Technology in Education-MITE2017', 'international', 'BMS College of Engineering ', '', 2017, '0000-00-00', 'cse25'),
(29, 'Dr. Anita Kanavalli', 'Wireless and Optical Communications Networks (WOCN), 2015 Twelfth International Conference', 'Intelligent Transportation System based on the Principles of Service-Oriented Architecture ', 'international', 'null', '', 2015, '0000-00-00', 'cse01'),
(30, 'Dr. Anita Kanavalli', 'at ICICSE-2018: 6th- International Conference on Innovations in Computer Science & Engineering, 17-1', 'Assessment Framework Modeling Tool Using Location Aware Computing for Agriculture Pasteurization and', 'international', 'Computer Society of India (CSI)', '', 2018, '0000-00-00', 'cse01'),
(31, 'Dr. Anita Kanavalli', 'International Journal of Innovations & Advancement in Computer Science', 'A Vehicular Apprehension Scheme in Wireless Networks', 'international', 'null', '', 2017, '0000-00-00', 'cse01'),
(32, 'Dr. Anita Kanavalli', 'International Conference On New Trends In Engineering &amp; Technology\r\n', 'Detection of DDoS attacks on Controller and its Mitigation at Switch and Host Level in Software Defi', 'national', 'GRT college, Chennai', '', 2018, '0000-00-00', 'cse01'),
(65, 'Ramya H R , Dr.B K Sujatha', 'Fuzzy Logic', 'I4C 2016', 'IEEE', 'M S R I T', '', 2016, '0000-00-00', 'te09'),
(66, 'ARVIND KUMAR G', 'Evaluation of image denoising techniques a performance perspective', 'SCOPES-2016', 'INTERNATIONAL', 'Centurion University of Technology and Management', '', 2016, '0000-00-00', 'te14'),
(67, 'Parimala.P, Raol.J.R', '”Image centroid tracking using Square root Information Filter”', 'International Conference on Information Technology, Computer science & Engineering', 'International Conference', 'www.iraj.in', '', 2015, '0000-00-00', 'te07'),
(68, 'Umesharaddy, B.K.Sujatha', 'Optimization of QPSK MODEM with AWGN Implemented in FPGA', 'International Conference on Inventive Systems and Control (ICISC-2017)', 'International Conference', 'JCTCET, COIMBATORE', '', 2017, '0000-00-00', 'te10'),
(69, 'Umesharaddy, B.K.Sujatha', 'Performance Improvement of QPSK MODEM Implemented in FPGA.', 'International Conference on Smart Sensors and Systems (IC-SSS) 2015 ', 'International Conference', 'MSRIT, BANGALORE-560054', '', 2015, '0000-00-00', 'te10'),
(70, 'Rajesh R,Ramya H R', 'Assessment of Automative RADAR SIL data by correlation methods ', 'International Conference on Signal, Image Processing Communication and Automation - ICSIPCA- 2017', 'IEEE,ISBN: 978-1-5108-5670-7', 'JSS', '', 0, '0000-00-00', 'te09'),
(71, 'Ankit Jain, Sualeha Rahman, Krishna Prasad ', '“IP Camera Interface for Ship Surveillance System” ', 'National Conference on Emerging Mobile Technologies &Policies, ', 'National ', 'Department of Telecommunication RIT', '', 0, '0000-00-00', 'te05'),
(72, 'Raswithej Vailaya.S, S J Krishnaprasad, P S Sura ', 'Design of Quasi-Cyclic Low Density    Parity Check Codes”', 'National Conference on Emerging Mobile Technologies &Policies,', 'National', 'Department of Telecommunication RIT', '', 0, '0000-00-00', 'te05'),
(73, 'Sharatchandra P.S ,S J Krishna Prasad', 'Implementation of Greedy Permutation Algorithm for LDPC Encoding Of CMMB', 'National Conference on Emerging Mobile Technologies &Policies,', 'National', 'Department of Telecommunication RIT', '', 0, '0000-00-00', 'te05'),
(74, 'Swetha D.S, S.J Krishna Prasad', 'A Mobile Application for Intrusion Detection And Avoidance', 'National Conference on Emerging Mobile Technologies &Policies,', 'National', 'Department of Telecommunication RIT', '', 0, '0000-00-00', 'te05'),
(75, 'Krishna Prasad S J, Priyanka D C, Viswanath Talasila   ', 'A Framework for classifying  Physiological tremor variants Employing Principal Component Analysis', 'International conference on Circuits, Communication, control and Computing I4C', 'International', 'Cicuit Branches RIT', '', 0, '0000-00-00', 'te05'),
(76, 'Sheela C.Loni ,Krishna Prasad ', '“ Development of Vehicle liecense plate recognition system using Morphological approach and Template', 'International conference    on advanced trends in engineering', 'International', 'Datta Meghe College of Engineering ,Airoli ,Navi Mumbai', '', 0, '0000-00-00', 'te05'),
(77, 'Viswanath Talasila, Ramkrishna Pasumarthy', 'A port-Hamiltonian Formulation of a Wireless Communication System', 'Mathematical Control Theory ', 'Springer International Publishing', '', '', 2015, '0000-00-00', 'te02'),
(78, 'Aditya B, Santosh K, Udith M, Sandeep KE, Viswanath T ', 'Significant social factors of Real Estate Investment', 'International Conference on Communication and Signal Processing', '', 'Melmaruvathur, Tamil Nadu', '', 0, '0000-00-00', 'te02'),
(79, 'Bhavana C, Jishnu Gopal, Raghavendra P, K M Vanitha, Viswanath Talasila', 'Techniques of measurement for Parkinson’s tremor highlighting advantages of embedded IMU over EMG', 'ICRTIT2016', 'Anna university, MIT campus, Chennai', '', '', 0, '0000-00-00', 'te02'),
(80, 'Viswanath Talasila', 'Topological Stability Analysis of Communication Systems', 'Indian Control Conference', '', 'IIT-Madras', '', 5, '0000-00-00', 'te02'),
(81, 'Eswaran, Rajatha,Viswanath Talasila', 'Design of a smart pressure signal based biometric system for aircraft cockpit security', 'IEEE International Advance Computing Conference 2015', '', '', '', 2015, '0000-00-00', 'te02'),
(82, 'Raghavendra P, Sachin M, Srinivasa PS, Viswanath Talasila', 'Road Quality Measurement and Analysis', 'International Conference on Circuits, Control, Communication and Computing', '', '', '', 22, '0000-00-00', 'te02'),
(83, 'SJ Krishna Prasad, Priyanka DC, Ramesh Debur, Viswanath Talasila', '21.    A Frame Work for Classifying Physiological Tremor Variants Employing Principal Component Anal', 'International Conference on Circuits, Control, Communication and Computing', '', 'Bangalore', '', 22, '0000-00-00', 'te02'),
(84, 'KavyaShree E, Ravishankar D, Mahesh G, Viswanath Talasila', 'Lung segmentation from CT scanned images', '3rd National Conference, RATE 2014', '', 'T John Institute of Technology', '', 0, '0000-00-00', 'te02'),
(85, 'Ravishankar D, KavyaShree E, Mahesh G, Viswanath Talasila ', '19.    An image processing approach for automated detection of lower respiratory system infections', '3rd National Conference, RATE 2014', '', 'T John Institute of Technology', '', 0, '0000-00-00', 'te02'),
(86, 'Sandeep Kumar E, Viswanath Talasila', 'Leaf Features based approach for Automated Identification of Medicinal Plants', 'International Conference on Communication and Signal Processing (ICCSP) 2014', '', 'Melmaruvathur, Tamilnadu', '', 3, '0000-00-00', 'te02'),
(87, 'Harshitha R, Manasa ManoharB, Dhanya PC, Manoj PD, Swathi S, Amogh M, Viswanath Talasila, HS Jamadag', 'Wearable Cardiac Detector', ', 37th National Systems Conference', '', 'IIT-Jodhpur', '', 5, '0000-00-00', 'te02'),
(88, 'Sriragh Karat, Sayantani Goswami, Aparna Sridhar, Aakash Pathak, Sachin D S,Sahana K S, Viswanath Ta', 'CLOSENET - Mesh Wi-Fi in areas of remote connectivity', '37th National Systems Conference', '', 'IIT-Jodhpur', '', 5, '0000-00-00', 'te02'),
(89, 'Viswanath Talasila, Ramkrishna Pasumarthy, Sindhu S Babu, Sudharshan Adiga ', 'A Systems View of Pathological Tremors', '37th National Systems Conference', '', 'IIT-Jodhpur', '', 5, '0000-00-00', 'te02'),
(90, 'Akshay K M, Swetha Amit ', 'Analysis and Design of a Phased Array Antenna using Circular Microstrip Patch Elements with BST Tech', '11th International Conference- Antenna Test & Measurement Society ( A T M S), ', '', 'ATMS ', '', 2018, '0000-00-00', 'te13'),
(91, 'Divyashree J, Ashlesha Bhalare Shivananda, Swetha Amit', 'Design and Development of Metamaterial Antennas on different Substrates for its Performance Evaluati', '11th International Conference- Antenna Test & Measurement Society ( A T M S)', '', 'ATMS', '', 2018, '0000-00-00', 'te13'),
(92, 'Pallavi  T N, Mala  J, Swetha Amit ', 'Analysis and design of Hexagonal Shape Fractal Wideband Antenna', '11th International Conference- Antenna Test & Measurement Society ( A T M S)', '', '', '', 2018, '0000-00-00', 'te13'),
(93, 'Swetha Amit, Oshin S P', 'Design, Implementation and Performance analysis of a high gain UWB Slot Wearable Antenna with Human ', '2017 IEEE International Conference on Antenna Innovations & Modern Technologies for Ground, Aircraft', '', '', '', 2017, '0000-00-00', 'te13'),
(94, 'Oshin S P, Swetha Amit', 'Design and analysis high gain UWB textile Antenna for wearable applications', 'IEEE International Conference on Recent Trends in Electronics Information Communication Technology (', '', '', '', 2017, '0000-00-00', 'te13'),
(95, 'Swetha Amit, Nisha S L', 'Design and Development of Printed Dipole Antenna with Array Configuration for GPS application', 'IEEE 2016 International Conference on Circuits, Controls, Communications and Computing (I4C) held du', '', '', '', 2016, '0000-00-00', 'te13'),
(96, 'Thalath Farheen Khanum, Swetha Amit', 'A compact Wideband Sierpinski Antenna loaded with Metamaterial', 'IEEE 2016 International Conference on Electrical, Electronics, and Optimization Techniques (ICEEOT),', '', 'IEEE 2016 International Conference on Electrical, Electronics, and Optimization Techniques (ICEEOT),', '', 2016, '0000-00-00', 'te13'),
(97, 'Thalath Farheen Khanum, Swetha Amit', 'Design and Analysis of Multiband Symmetrical MLA with Fractal Metamaterial', 'IEEE 2016 International Conference on Electrical, Electronics, and Optimization Techniques (ICEEOT)', '', 'DMJ College of Engineering, Chennai, Tamil Nadu, India during 3rd to 5th March 2016', '', 2016, '0000-00-00', 'te13'),
(98, 'Thalath Farheen Khanum, Swetha Amit', 'Design and Simulation of Symmetrical MLA-PIFA with Metamaterial', '2016 IEEE International Conference on Recent Trends in Electronics, Information & Communication Tech', '', 'Sri Venkateshwara college of Engineering, Bangalore, Karnataka ,India during 20-21 May-2016', '', 2016, '0000-00-00', 'te13'),
(99, 'Swetha Amit', 'Design of compact bent dipole antenna and its array with high gain performance for GPS application', '2016 8th International Conference on Communication Systems and Networks (COMSNETS), 5th to 10th Janu', '', '', '', 2016, '0000-00-00', 'te13'),
(100, 'Rakhi.S , Dr. Shobha.K .R', 'Performance Analysis of an Efficient Data-Centric Misbehavior Detection Technique for Vehicular Netw', 'International conference on Computer Networks and Inventive Communication Technologies (ICCNCT - 201', 'International', 'RVS Technical Campus, Coimbatore, India ', '', 26, '0000-00-00', 'te03'),
(101, ' Sampada H K, Dr. Shobha.K .R ', 'Performance Analysis of Energy Efficient MANETs- using MODIFIED AODV (M-AODV)', 'International conference on Computer Networks and Inventive Communication Technologies (ICCNCT - 201', 'International', 'RVS Technical Campus, Coimbatore, India', '', 26, '0000-00-00', 'te03'),
(102, ' Kshama S B, Dr. Shobha.K .R  ', 'A Novel Load Balancing Algorithm Based On the Capacity of the Virtual Machines', 'International Conference on Advances in Computing and Data Sciences', 'International', ' Uttaranchal University, Dehradun, Uttarakhand, India', '', 0, '0000-00-00', 'te03'),
(103, ' PrathibhaR , Swetha  L , Dr Shobha K R     ', 'Brain Computer Interface: Design and Development of a Smart Robotic Gripper for a Prosthesis Environ', 'IEEE International Conference on Network & Advances in Computational Technologies ( NetACT 17)', 'International', 'Mar Baselios College of Engineering in association with Bowie State University USA, Gannon Universit', '', 20, '0000-00-00', 'te03'),
(104, ' Sindhura B, Dr.Shobha K R', 'Implementation and Itesting of open slow switch Using   FPGA', 'The eight International Conference on Computing, Communication and Networking Technologies', 'International', 'IIT, Delhi', '', 3, '0000-00-00', 'te03'),
(105, ' Athmiya N S, Dr. Shobha K R, ValluriSarimela in , ', 'Feasibility Study and Implementation of OpenFlow based SDN Controller for Tactical Scenario', 'IEEE International Conference On Recent Trends In Electronics Information Communication Technology', 'International', '', '', 0, '0000-00-00', 'te03'),
(106, ' Anjana S, Sahana M N , Ankit S , K Natarajan, K R shobha   ', 'An IoT based 6 LOWPAN enabled Experiment for Water managaement', 'IEEE International Conference on Advanced Networks and Telecommunication Systems(ANTS)', 'International', 'Kolkata , INDIA', '', 0, '0000-00-00', 'te03'),
(107, ' Sahana M N ,AnjanaS,Ankith S ,K Natarajan , K R Shobha and A Paventhan ', 'Home energy Management Leveraging Open IoT Protocol Stack', 'IEEE Recent Advances in Computational Systems ', 'International', ' IEEE Kerala Section in Trivandrum, India', '', 0, '0000-00-00', 'te03'),
(108, 'Ankith S, Anjana S, Sahana M N, Praneeta Mallela, K Natarajan, K R Shobha,APaventhan, NeenaPahuja', 'Design of IPv6 Network enabled SmartWater Flow Meter System for India ', 'Proceedings of the12th APAN – Network Research Workshop2015', 'International', 'University of Malaya,Kuala Lumpur, Malaysia', '', 10, '0000-00-00', 'te03'),
(109, ' Sampada H K, Dr.Shobha K R, Rakhi S  ', 'Review on Prevention and Detection of Black hole Attack in MANETs', 'International conference on Emerging Trends in Engineering Sciences 2015', 'National', 'Jain college of Engineering, Belgaum', '', 2015, '0000-00-00', 'te03'),
(110, ' Rakhi S, Dr.Shobha K R, Sampada H K ', 'A Comprehensive Survey on Security Issues in VANETs for Safe Communication', 'International conference on Emerging Trends in Engineering Sciences 2015', 'International', 'Jain college of Engineering, Belgaum', '', 2015, '0000-00-00', 'te03'),
(111, ' Adarsh. B. U ,DivyaDarshini. B  , Shobha K. R, K. Natarajan,  A. Paventhan, Sai Krishna Allu, Neena', 'Design of 6LoWPAN enabled Real Time Water Quality Monitoring System using CoAP', 'Network Research Workshop Proceedings of the Asia-Pacific Advanced Network 2014', 'International', '', '', 2014, '0000-00-00', 'te03'),
(112, ' Adarsh.B.U, Shobha K R, Dr. K. Natarajan', 'CoAP Based Wireless Sensor Network Design for Effluent Treatment of Water in Textile Industries', 'International Journal of  Engineering Research &Technology (IJERT)', 'International', '', '', 0, '0000-00-00', 'te03'),
(113, ' DivyaDarshini.B, Shobha K R,, Dr. K. Natarajan ', 'Design of Real Time Water Quality Monitoring System for Domestic and Drinking Water Using WSN', 'National Conference on Emerging Trends in Communication and Biomedical Engineering, NCECB-2014', 'National', '', '', 2014, '0000-00-00', 'te03'),
(114, ' Raghu R and Shobha K R  ', 'JavaScript Application Framework for Mobile Devices', 'International Conference on Computing and Communication Systems', 'National', 'Vellore , TN', '', 0, '0000-00-00', 'te03'),
(115, ' Shobha.K.R., Karthik Shetty and Dr.K.Rajanikanth ', 'Efficient Flooding using Prefetching in On-Demand Routing Protocols for Mobile Ad-hoc Networks', '17th IEEE International conference on Networks, ICON 2011', 'International', 'Singapore', '', 0, '0000-00-00', 'te03'),
(116, ' Shobha.K.R. and Dr.K.Rajanikanth', 'Enhanced AODV Routing Protocol for Mobile Ad hoc Networks', 'First International Conference on Computer Science and Information Technology, CCSIT 2011', 'International', 'Bangalore, INDIA', '', 0, '0000-00-00', 'te03'),
(117, ' Shobha.K.R. and Dr.K.Rajanikanth ', ' Efficient flooding using relay routing in on-demand routing protocol for Mobile Ad hoc Networks', 'IEEE 9th Malaysia International Conference on Communication, MICC 2009', 'International', 'Malaysia', '', 0, '0000-00-00', 'te03'),
(118, ' Shobha.K.R. and Dr.K.Rajanikanth  ', 'Intelligent Caching in On-Demand Routing Protocol Mobile Ad hoc Networks', ' International Conference on Computer Networks and Mobile Computing, ICCNMC 2009', 'International', ' Singapore', '', 0, '0000-00-00', 'te03'),
(119, ' Shobha.K.R. and Dr.K.Rajanikanth ', 'Powerful DSR using on demand Clustering', 'National Conference on Information Technology Trends in Engineering Applications, NEC 2009', 'National', 'DSCE, Bangalore, INDIA', '', 0, '0000-00-00', 'te03'),
(120, ' Shobha.K.R. and Dr.K.Rajanikanth ', 'Clustering techniques in Wireless Ad hoc Networks- A study', 'National Conference on current trends in Wired and Wireless Communication, CTWWC-09', 'National', 'CSI Institute of Technology, Kanyakumari, Tamilnadu, INDIA', '', 0, '0000-00-00', 'te03'),
(121, 'Nandeesh M S, Arjun Reddy, R Prabhakara', 'Investigations On Effect of CFRP Strips Retrofitted Using NSM Method On Two-Way NSC and HSC Slabs Su', 'ICRAES', 'International', 'MSRIT, Bangalore', 'IJRET', 2016, '0000-00-00', 'cv01'),
(122, 'Arjun Reddy, Nandeesh M S, R Prabhakara', 'Studies on Strength and Deformation Behaviour of Two-way NSC and HSC Slabs under Single Point Loadin', 'ICRAES', 'International', 'MSRIT, Bangalore', 'IJRET', 2016, '0000-00-00', 'cv01'),
(125, 'Venkatarao N R, Mohandas K N, Vikram Kumar S Jain, S.Muthukumaran,', 'Sliding wear behavior of plasma sprayed NiCrAlY-WC based composite coatings on AA5083 alloy', 'National Conference on Processing of Materials', 'National', 'NIT-Karnataka', '', 2018, '2018-09-19', 'me01'),
(126, 'Venkatarao N R, Mohandas K N, Vikram Kumar S Jain', 'Study of Wear and Corrosion behavior of Plasma Sprayed NiCrAlY-WC coating on AA5083 Alloy', 'National Conference on Emerging Cutting Edge Technologies in Mechanical Engineering (ANVESHAN 18)', 'National', 'New Horizon College of Engineering', '', 2018, '2018-07-13', 'me01'),
(127, 'Chethan Venkatesh, Shivamurthy G', 'Comparative Study of Load Balancing Algorithms for Best-effort Applications in Cloud', ' International conference on Recent Innovative Trends in Computer Science and Applications - ICRITCS', 'International', 'RIT, Bangalore', 'International Journal of Advanced Research in Comp', 2016, '0000-00-00', 'mca02'),
(128, 'Mohandas K.N., Ramesh C.S., Eshwara Prasad K., Balashanmugam N.', 'Influence of the Tool Wearduring Hard Turning of Hard Chrome Plated Surfaces', 'International Conference of Material Processing and Characterization', 'International', 'Hyderabad', '', 2012, '2012-03-08', 'me01'),
(129, 'Mohandas K.N., Ramesh C.S., Balashanmugam N., Shashikumar P.V.', 'Investigation on Hard Turning of Hard Chrome Plated Surfaces', '3rd International and 24th AIMTDR Conference 2010', 'International', 'AIMTDR', '', 2010, '2010-12-14', 'me01'),
(130, 'B.S. Sridhar ', 'Characterization and Analysis of Silicon Carbide & Carbon Nanotube Blended Composite Materials for A', 'ICCOMIM - 2012', 'International ', 'MSRIT', ' BONFRING', 2012, '0000-00-00', 'me03'),
(131, 'B.S. Sridhar', 'Asbestos Friction Material Used For Clutches- Review ', 'international  conference on Advanced Materials 2011 ', 'International', 'BTLIT', '', 2011, '0000-00-00', 'me03'),
(132, 'B.S. Sridhar', 'Optimization of Process Parameters during Friction Stir  Welding of Aluminium-Magnesium', 'International Conference on Innovations and Emerging Trends in Mechanical Engineering ', 'International', '', '', 2016, '0000-00-00', 'me03'),
(133, '•	Samrat K, Nikhil N S, S Karthick Raja Namasivamyam, Sharath R, Chandraprabha M N, Harish B G, Mukt', 'Evaluation of improved antifungal activity of fluconazole – silver nanoconjugate against pathogenic ', 'Recent Advances In Nano-Science And Technology (RAINSAT-2015)', 'International', 'Sathyabama University, Chennai', 'Elsevier - Materials Today: Proceedings', 2016, '0000-00-00', 'bt03'),
(134, 'Dr. Santhosh Kumar S', 'A study on Customer Relationship Management practices in the banking sector with special reference t', 'International conference on Challenges and Opportunities in Mechanical Engineering, Industrial Engin', 'International', 'MSRIT', 'Bonfiring', 2012, '0000-00-00', 'mba03'),
(135, 'Dr. Vijaya Kumar', 'Renewable Energy A Way forward to Make in India In National conference on Transforming the Quality P', 'International conference on Challenges and Opportunities in Mechanical Engineering, Industrial Engin', 'National', 'MSRIT', 'Bonfiring', 2012, '0000-00-00', 'mba02'),
(136, 'Prajwal Rao ; Nishal Ancelette Pereira ; Raghuram Srinivasan', 'Convolutional neural networks for lung cancer screening in computed tomography (CT) scans', '2016 2nd International Conference on Contemporary Computing and Informatics (IC3I)', 'International', 'Manipal Inst. Tech.', 'IEEE', 2016, '0000-00-00', 'ece03'),
(138, 'R M Melavanki , V T Muttannavar , S Vaijayanthimala , N R Patilc , L R Naik  & J S Kadadevarmath', 'Solvent effects on the dipole moments and photo physical properties of laser dye ', '', '', '', 'Indian Journal of Pure & Applied Physics ', 2018, '0000-00-00', 'phy02'),
(139, 'H.S.Niranjana Murthy, M.Meenakshi', 'Comparison of Feature Extraction Techniques: A Case Study', '8th International conference Recent Engineering & Technology', 'International', 'New Horizon college of engineering', 'Proceeding of ICRET,', 2018, '0000-00-00', 'it02'),
(140, 'H.S.Niranjana Murthy, M.Meenakshi', 'Comparison of Classifier Techniques: A Case Study on Myocardial Ischemic Beat Detection', 'International conference on Control, Power, Communication and Computing', 'International', 'Vimal Jyothi Engineering College, Kannur, Kerala', 'IEEE', 2018, '0000-00-00', 'it02'),
(141, 'H.S.Niranjana Murthy, M.Meenakshi', 'Efficient Myocardial Ischemia Classifier based on statistical features with random weight settings', 'International conference on Signal processing & Communications', 'International', 'Karunya University, Coimbatore', 'IEEE', 2017, '0000-00-00', 'it02'),
(142, 'H.S.Niranjana Murthy, M.Meenakshi', 'Optimal Choice of Wavelet function & thresholding rule for ECG signal denoising', 'International conference on Smart sensors & Systems', 'International', 'MSRIT', 'IEEE Sensor council', 2015, '0000-00-00', 'it02'),
(143, 'H.S.Niranjana Murthy, M.Meenakshi', 'Dimensionality reduction using Neuro-genetic approach for early prediction of coronary heart disease', 'International conference on Circuits, Communication, Control and Computing', 'International', 'MSRIT', 'IEEE', 2014, '0000-00-00', 'it02'),
(144, 'H.S.Niranjana Murthy, M.Meenakshi', 'Multivariate prediction of coronary heart disease based on ANN technique', 'International Conference on Recent Advances in Engineering Sciences', 'International', 'MSRIT', 'Proceedings of International Review of Applied Bio', 2014, '0000-00-00', 'it02'),
(145, 'H.S.Niranjana Murthy & Dr. M.Meenakshi', 'Comparison of ANN based Heart Stroke Classifiers using Varied Folds Data Set Cross Validation', 'Intelligent Computing, Communication & Devices', 'International', 'Shiksha O\' Anusandhan university, Bhubaneswar, Odissa', 'IEEE', 2014, '0000-00-00', 'it02'),
(146, 'H.S.Niranjana Murthy, Naresh.E, Anitha Muttu A.M, Shashidhara H.S', 'Tool for Reverse Engineering the Electronic Program Guide Resources', 'Innovative Computing, Information & Communication technology', 'International', 'Sri Sai Ram College of Engineering, Tambaram, Chennai', 'Proceedings of ICICT', 2009, '0000-00-00', 'it02'),
(147, 'H.S.Niranjana Murthy, M.Meenakshi', 'A Novel and Efficient Myocardial Ischemia Classifier Based on Statistical Features with Random Weigh', '40th National Symposium on Instrumentation (NSI-40) ', 'National', 'Kumaraguru College of Technology, Coimbatore', 'Proceedings of NSI, IISc', 2015, '0000-00-00', 'it02'),
(148, 'H.S.Niranjana Murthy, M.Meenakshi', 'Coronary Heart Disease Prognosis using Levenberg-Marquardt Backpropagation ANN', 'Computational Control Systems & Optimization (CCSO-2013)', 'National', 'Dr.AIT, Bangalore', 'Bonfring publisher', 2013, '0000-00-00', 'it02'),
(149, 'H.S.Niranjana Murthy, M.Meenakshi', 'Myocardial Ischemia Classification based on morphological features using MLP neural network', 'Computational Control Systems & Optimization (CCSO-2015)', 'National', 'Dr.AIT, Bangalore', 'Bonfring publisher', 2015, '0000-00-00', 'it02'),
(150, 'H.S.Niranjana Murthy, M.Meenakshi', 'Automatic ECG Classification, A Survey', '‘Computational Control Systems & Optimization (CCSO-2011)', 'National', 'Dr.AIT, Bangalore', 'Bonfring publisher', 2011, '0000-00-00', 'it02'),
(151, 'H.S.Niranjana Murthy, Naresh.E, Geeta. B. Gadmi, Shashidhara H.S', 'Wireless Technologies in Building Management System', 'Recent Trends in Computers, Communication & Information Technology', 'National', 'Dr.T.Thimmaiah Institute of Technology, K.G.F', 'Proceedings of RTCCI', 2009, '0000-00-00', 'it02'),
(153, 'Sunith Babu, HK Shivanand', 'A Review on Damage Tolerance and Residual Strength Estimation of Sandwich Composites', 'National Conference on Emerging Trends in Mechanical Engineering – NCETME', 'National', 'MSRIT', 'MSRIT', 2011, '0000-00-00', 'me02'),
(154, 'Sunith Babu, HK Shivanand', 'SEM Based Studies on Damage Analysis of GFRP & CFRP Sandwich Composite', ' eTime, SJCE Mangaluru ', 'National', 'SJCE Mangaluru ', ' eTime, SJCE Mangaluru ', 2015, '0000-00-00', 'me02'),
(155, 'Pradipkumar Dixit and Gopal H.G', 'Experimental Determination of Inception and Breakdown gradients of contaminated ceramic insulator', 'XII International Symposium on High Voltage Engineering, ISH 2001', 'International', '', '', 2001, '0000-00-00', 'ee02'),
(156, 'Pradipkumar Dixit and Gopal H.G.', 'ANN based three stage classification of arc gradient of contaminated porcelain insulators', '8th IEEE Int. Conf on Solid Dielectrics ICSD 2004', 'International', '', '', 2004, '0000-00-00', 'ee02'),
(157, 'Pradipkumar Dixit and Gopal H.G.', 'Getting Leakage Current Wave-shapes along the equivalent circuit of Polluted Porcelain Insulator usi', 'International Conference PEITSICON – 2005 (IEE – UK)', 'International', '', '', 2005, '0000-00-00', 'ee02'),
(158, 'Pradipkumar Dixit and Gopal H.G.', 'Temperature Variation along the Surface of a Contaminated Porcelain Pin Insulator', 'International Conference PEITSICON – 2005 ', 'International', '', '', 2005, '0000-00-00', 'ee02'),
(159, 'Pradipkumar Dixit, A.H.Thejaswi and Gopal H.G.', 'Impact of high intensity discharge lamps on De-rating of the distribution transformer-an experimenta', 'International Conference on Energy, Information, Technology and Power sector PEITSICON-2005 ', 'International', '', '', 2005, '0000-00-00', 'ee02'),
(160, 'Vidya H. A, Gopal H.G. and Pradipkumar Dixit', 'ANN Based FNNN model to diagnose the state and quality of solid insulation', 'Proc. Of PICA-2006', 'International', '', '', 2006, '0000-00-00', 'ee02'),
(161, 'Pradipkumar Dixit, Krishnan V and Gopal H. G.', 'Neuro-Fuzzy approach to diagnose Porcelain Insulators under contaminated conditions', 'International Conference on Adaptive Science & Technology (ICAST’07)', 'International', '', '', 2007, '0000-00-00', 'ee02'),
(162, 'Pradipkumar Dixit, Krishnan V and Gopal H. G', 'Identifying arc growth status in polluted porcelain insulators with support vector machines', 'International Conference on Power Systems (ICPS-2007)', 'International', '', '', 2007, '0000-00-00', 'ee02'),
(163, 'Sathyanarayana. D, Krishnan V and Pradipkumar Dixit', 'Performance of SR Insulator Under Polluted Conditions-an experimental study', 'International Conference on Adaptive Science & Technology (ICAST’07)', 'International', '', '', 2007, '0000-00-00', 'ee02'),
(164, 'Pradipkumar Dixit, Krishnan. V and Nagabhushana. G. R.', 'Studies on Pollution Performance of Ceramic Insulators under AC excitation', '16th International Symposium on High Voltage Engineering (ISH 2009)', 'International', '', '', 2009, '0000-00-00', 'ee02'),
(165, 'Chandrashekhar A Badachi, Madhu Palati and Pradipkumar Dixit', 'Electric Field distribution along the polluted porcelain string insulator using PSPICE', 'International Conference on Convergence of  Science and Engineering in Education and Research- a glo', 'International', '', '', 2010, '0000-00-00', 'ee02'),
(166, 'Pradipkumar Dixit, Krishnan. V and Nagabhushana. G. R.', 'A New Mathematical Model for flashover voltages of polluted porcelain insulators', 'International Conference on High Voltage Engineering and Applications (ICHVE 2010)', 'International', '', '', 2010, '0000-00-00', 'ee02'),
(167, 'Pradipkumar Dixit, Krishnan. V and Nagabhushana. G. R.', 'Mathematical Model to predict flashover voltages of polluted polymeric insulators intended for UHV D', 'International Conference on High Voltage Engineering and Applications (ICHVE 2010)', 'International', '', '', 2010, '0000-00-00', 'ee02'),
(168, 'Ramesh Kumar V and Pradipkumar Dixit', 'One-Day-Ahead Electrical Load Forecasting Using Artificial Neural Network', '2nd International Conference on Information & Communication Engineering (ICICE-2013)', 'International', 'Institute for Research and Development India (IRD India)', '', 2013, '0000-00-00', 'ee02'),
(169, 'Rashmi D S and Pradipkumar Dixit', 'Studies on PWM Inverter Employing Series – Connected capacitors Paralleled to a Single DC Voltage So', 'International Conference on Applied Science Engineering and Technology', 'International', 'Sri Sairam College of Engineering, Bangalore and Institute for Engineering Research & Publication (I', '', 2016, '0000-00-00', 'ee02'),
(170, 'Vinayaka V Rao, Ramakrishna Murhty K, Chandrashekhar Badachi & Pradipkumar Dixit', 'Effect of corona disc on the performance of polymeric insulator under polluted conditions', 'International Conference on Circuits, Control, Communication, and Computting (I4C)', 'International', 'MSRIT, Bangalore.', '', 2016, '0000-00-00', 'ee02'),
(171, 'Ramakrishna Murhty K,  Vinayaka V Rao, Chandrashekhar Badachi & Pradipkumar Dixit', 'Leakage Current Analysis of Porcelain Disc Insulator subjected to Unusual Pollutants', 'International Conference on Circuits,  Control, Communication and Computting (I4C)', 'International', 'MSRIT, Bangalore', '', 2016, '0000-00-00', 'ee02'),
(172, 'Anguraja. R and Pradipkumar Dixit', 'Electric Field Analysis of High Voltage Condenser Bushing', 'International Conference on Current Trends in Engineering, Science & Technology (ICCTEST-2017)', 'International', 'DBIT, Bangalore & KASETSART University, Bangkok', '', 2017, '0000-00-00', 'ee02'),
(173, 'Pradipkumar Dixit and R. Joseph Xavier', 'Dynamic Arc Modelling for Estimation of Pollution Flashover Voltages of Long rod & String insulators', 'NPSC – 2000', 'National', 'IISc, Bangalore', '', 2000, '0000-00-00', 'ee02'),
(174, 'Pradipkumar Dixit and Gopal H.G.', 'Monte Carlo Technique to obtain arc current of polluted porcelain insulators energized with DC Volta', 'National Power System Conference- NPSC 2002', 'National', 'IIT- Kharagpur', '', 2002, '0000-00-00', 'ee02'),
(175, 'Pradipkumar Dixit and Gopal H.G.', 'Some Investigations on fixing the value of scintillation current on polluted porcelain insulator', 'Pgfest-2003', 'National', 'NMAMIT, Nitte', '', 2003, '0000-00-00', 'ee02'),
(176, 'Pradipkumar Dixit and Gopal H.G.', 'ANN Classifier of Contamination Levels in Porcelain Insulators Based on SDD and Leakage Current', 'CISCON 2004', 'National', 'MAHE', '', 2004, '0000-00-00', 'ee02'),
(177, 'Pradipkumar Dixit and Gopal, H.G', 'Stabilization of constant of arc gradient equation to find flashover voltage of contaminated ceramic', ' National Seminar on Emerging Trends in power system operation and control', 'National', 'Gayatri Vidya Parishad College of Engg., Visakhapatnam', '', 2003, '0000-00-00', 'ee02'),
(178, 'Pradipkumar Dixit and Gopal H.G.', 'ANN based diagnostic techniques for accessing flashover of artificially polluted ceramic insulators', 'NPSC 04', 'National', 'IIT Chennai', '', 2004, '0000-00-00', 'ee02'),
(179, 'Pradipkumar Dixit and Gopal H.G.', 'Algorithms for Protective Relaying – A Review', 'National conference', 'National', '', '', 2004, '0000-00-00', 'ee02'),
(180, 'Pradipkumar Dixit and Gopal H.G.', 'Leakage Current Variation with SDD on a Polluted Porcelain pin Insulator – an experimental study', 'National conference', 'National', 'JNTU College of Engg., Anantapur', '', 2004, '0000-00-00', 'ee02'),
(181, 'H. C. Mouneswarachar, Gopal H.G and Pradipkumar Dixit', 'Demand side management for performance evaluation of milk diary-a case study', 'National conference on Electrical engineering developments (NCEED)', 'National', 'GITAM, Rushikonda, Visakhapatnam', '', 2005, '0000-00-00', 'ee02'),
(182, 'Vidya H. A, Gopal H.G. and Pradipkumar Dixit', 'ANN Based Life Estimation of Class-F(Nomax) Solid Insulating Material Subjected to Multiple Stress', 'CISCON-2005', 'National', 'MIT Manipal', '', 2005, '0000-00-00', 'ee02'),
(183, 'H. C. Mouneswarachar and Pradipkumar Dixit', 'Energy Conservation in a Typical Dairy Industry using DSM Strategy', 'CISCON-2007', 'National', 'MIT Manipal', '', 2007, '0000-00-00', 'ee02'),
(184, 'H. C. Mouneswarachar and Pradipkumar Dixit', 'Effect of test time duration on ESDD measurement of polluted porcelain insulator – an experimental s', 'National Conference on Advanced Electrical Engineering ', 'National', 'NMAMIT, Nitte', '', 2008, '0000-00-00', 'ee02'),
(185, 'Chandrashekhar A Badachi, Madhu Palati and Pradipkumar Dixit', 'Performance of Polymeric insulator subjected to Ultraviolet radiations', ' Knowledge Utsav, National level conference', 'National', 'Jain University and Tumkur University', '', 2010, '0000-00-00', 'ee02'),
(186, 'Raghavendra L, A.D.Srinivasan, Pradipkumar Dixit', 'Performance analysis of three phase induction using PSCAD', 'National Conference on Control System Engineering', 'National', 'MSRIT, Bangalore', '', 2011, '0000-00-00', 'ee02'),
(187, 'Ramya. N and Pradipkumar Dixit', 'Effect of Adjustable Speed Drives (ASD’s) on AC motor winding insulation', 'National Conference on Recent Advances in Electrical & Electronics Engineering (NCREE – 2013)', 'National', '', '', 2013, '0000-00-00', 'ee02'),
(188, 'Manasa G. P and Pradipkumar Dixit', 'Thermal stress on AC motor winding insulation due to harmonics', 'National Conference on Recent Advances in Electrical & Electronics Engineering (NCREE – 2013)', 'National', '', '', 2013, '0000-00-00', 'ee02'),
(189, 'Ramya. N and Pradipkumar Dixit', 'Analysis and Simulation of Electric Field Distribution in Air-Filled Cavities in the Insulation of I', 'National Conference on Zen and Tao of Electrical & Electronics Engineering, (NCZTEE14)', 'National', 'MSRIT, Bangalore', '', 2014, '0000-00-00', 'ee02'),
(190, 'Anguraja R and Pradipkumar Dixit', 'Field Analysis of High Voltage Transformer Bushing using Quickfield', 'National Conference on Zen and Tao of Electrical & Electronics Engineering, (NCZTEE14)', 'National', 'MSRIT, Bangalore', '', 2014, '0000-00-00', 'ee02'),
(191, 'R. V. Srinivasamurthy and Pradipkumar Dixit', 'Studies on Surge Performance of Transformers', 'National Conference on Zen and Tao of Electrical & Electronics Engineering, (NCZTEE14)', 'National', 'MSRIT, Bangalore.', '', 2014, '0000-00-00', 'ee02'),
(192, 'Suresh A. G and Pradipkumar Dixit', 'Minimum Leakage Current for Dry Band Formation under Polluted Environment', 'National Conference on Zen and Tao of Electrical & Electronics Engineering, (NCZTEE14)', 'National', 'MSRIT, Bangalore.', '', 2014, '0000-00-00', 'ee02'),
(193, 'Mouneswarachar H. C and Pradipkumar Dixit', 'Role of Critical Arc Length in Pollution Flashover of Porcelain Disc Insulators', 'National Conference on Zen and Tao of Electrical & Electronics Engineering, (NCZTEE14)', 'National', 'MIT Manipal', '', 2014, '0000-00-00', 'ee02'),
(194, 'Chandrashekhar A Badachi and Pradipkumar Dixit', 'MATLAB based Optimization of Ayrton’s Arc Constants', 'National Conference on Zen and Tao of Electrical & Electronics Engineering, (NCZTEE14)', 'National', 'MSRIT, Bangalore.', '', 2014, '0000-00-00', 'ee02'),
(195, 'Manasa G P and Pradipkumar Dixit', 'Effect of Harmonics on the Life of Induction Motor Winding Insulation', 'National Conference on Zen and Tao of Electrical & Electronics Engineering, (NCZTEE14)', 'National', 'MSRIT, Bangalore.', '', 2014, '0000-00-00', 'ee02'),
(196, 'Ramesh Kumar V and Pradipkumar Dixit', 'Artificial Neural Network based Short-term Load Forecasting of Karnataka State', 'National Conference on Zen and Tao of Electrical & Electronics Engineering, (NCZTEE14)', 'National', 'MSRIT, Bangalore', '', 2014, '0000-00-00', 'ee02'),
(197, 'Ashwin N, J Sreedevi and Pradipkumar Dixit', 'Network Reduction of Power System for Transient Stability Studies', 'National Conference on Challenges and Issues in Operation of Competitive Electricity Markets (CIOCEM', 'National', 'CPRI, Bengaluru', '', 2016, '0000-00-00', 'ee02'),
(198, '', '', '', 'International', '', '', 0, '0000-00-00', 'data02'),
(199, 'Dr. Santhosh Kumar S', 'A Study on Demonetization and its impact on Tourism and Hospitality Industry', 'AICTE sponsored National seminar on Empowering Indian Society towards Cashless Economy', 'National', 'MSRIT', 'Bonfiring', 2016, '0000-00-00', 'mba03'),
(200, 'Dr. Santhosh Kumar S', '•	Make in India: An opportunity for Hospitality and Tourism Industry ', 'National conference on Transforming the Quality Paradigm to Achieve Make in India A Practical Realit', 'National', 'MSRIT', 'Bonfiring', 2015, '0000-00-00', 'mba03'),
(201, 'Dr. Santhosh Kumar S', 'A Study on Role of Women in Rural tourism with respect to Shivamogga District ', 'National conference Rural Women Entrepreneurship in India: Way for Social and Economic Empowerment s', 'National', 'MSRIT', 'Bonfiring', 2016, '0000-00-00', 'mba03'),
(202, 'Dr. Santhosh Kumar S', 'Renewable Energy A Way forward to Make in India', 'National conference on Transforming the Quality Paradigm to Achieve Make in India A Practical Realit', 'National', 'MSRIT', 'Bonfiring', 2015, '0000-00-00', 'mba03'),
(203, 'Dr. Santhosh Kumar S', 'Make in India- Waste management Through Innovative Ideas. ', 'In National conference on Transforming the Quality Paradigm to Achieve Make in India A Practical Rea', 'National', 'MSRIT', '', 0, '0000-00-00', 'mba03'),
(204, 'Dr. Santhosh Kumar S', '•	“Role of Digital Marketing with special reference to tourism industry in Karnataka” ', 'National Conference on Research in Commerce, Management and Information Technology NCRCMIT', 'National', 'PESITM Shivamogga', '', 2017, '2017-05-20', 'mba03'),
(205, 'A study on problems and prospects of solar energy with reference to Karnataka ', '', 'National Seminar on “Sustainable Development in Power Sector through Renewable Energy Resources spon', 'National', 'MSRIT', '', 2016, '2016-02-25', 'mba03'),
(206, 'Dr. Santhosh Kumar S', '•	A study on “Financials of solar water heating system”', 'National Seminar on “Sustainable Development in Power Sector through Renewable Energy Resources spon', 'National', 'MSRIT', 'ISBN: 978-93-86176-22-6', 2016, '2016-02-25', 'mba03'),
(207, 'Dr. Santhosh Kumar S', 'Addressing the problems of Renewable Energy Sector ', 'National Seminar on “Sustainable Development in Power Sector through Renewable Energy Resources spon', 'National', 'MSRIT', 'Excel', 2016, '2016-02-25', 'mba03'),
(208, 'Dr. Santhosh Kumar S', '•	A study on the Need for Learning Management System and to implement it at ITC Foods Division', 'National Conference on  ‘Business Excellence for Inclusive and Sustainable Growth’', 'National', 'MSRIT', 'Bonfiring', 2015, '2015-05-07', 'mba03'),
(209, 'Dr. Santhosh Kumar S', '•	A study on Growth and Evolving Issues of Tourism Industry with special reference to Infrastructura', 'National Conference on  ‘Business Excellence for Inclusive and Sustainable Growth', 'National', 'MSRIT', 'Bonfiring', 2015, '2015-05-07', 'mba03'),
(210, 'Dr. Santhosh Kumar S', 'A    study on   Work    life    Balance    at Net      connect Pvt.  Ltd. At ', 'National Conference    on ‘Business   Excellence for    Inclusive    and    Sustainable     Growth’ ', 'National', 'MSRIT', 'Bonfiring', 2015, '2015-05-07', 'mba03'),
(211, 'Dr. Santhosh Kumar S', '•	A study on the Proactive approach on Safety and Health Practices with special reference to Apollo ', 'at National Conference on ‘Business Excellence for Inclusive and Sustainable Growth’,', 'National', 'MSRIT', '', 0, '0000-00-00', 'mba03'),
(212, 'Dr. Santhosh Kumar S', '•	Trends, Issues and Challenges in the services sector with special reference to Indian Hospitality ', 'National Conference on Challenges and opportunities in services sector,', 'National', 'MSRIT', 'Bonfiring', 2011, '2011-02-20', 'mba03'),
(213, 'Dr. Santhosh Kumar S', 'Linkages And Partnership Required between Academics and Industry to Bring the Reforms in Management ', '“New perspectives in Indian Management”. April 2014. ISBN: 978-93-5142-664-6.', 'National', 'MSRIT', 'Bonfiring', 2014, '2014-04-20', 'mba03'),
(214, 'Dr. Santhosh Kumar S', '•	A study on Emerging trends of Tourism and its Problems with reference to Infrastructure facilities', 'conference on Business Excellence for Inclusive and Sustainable Growth', 'National', 'MSRIT', 'Bonfiring', 0, '0000-00-00', 'mba03'),
(215, 'Dr. Santhosh Kumar S', '•	Presented a Conference paper on “Personality Traits and Attributes required for Marketing, HR and ', 'National conference Management and Technology. ', 'National', 'PESITM Shivamogga', 'Bonfiring', 0, '0000-00-00', 'mba03'),
(216, 'Arun Kumar D C', 'India”s gold Policies and its impact on International Trade', 'National Seminar on Strategic Approach Towards Indian Foreign Policy: Issues and Challenges’', 'National', 'RIT Bangalore', 'Enas Publication', 2017, '2017-10-12', 'mba01'),
(217, 'Arun Kumar D C', 'Cash Less Economy –Oppurtunities and challenges fo Indian business', 'National Seminar on Empowering Indian Society Towards Cashless Economy', 'National', 'RIT Bangalore', 'Enas Publication', 2017, '2017-11-24', 'mba01'),
(218, 'Kavya P S and Premila Manohar', 'Comparison of controllers of hybrid HVDC link in multi-infeed application', '4th International Conference on Power, Signals, Control and Computations', 'International', 'Thrissur, Tamilandu, India', '', 2018, '2018-01-06', 'ee03'),
(219, 'Akshatha Ganesh and Premila Manohar', 'Fuse Distribution System for PV Power Converter System with Current Monitoring Option', 'IEEE International Conference on Technological Advancements in Power and Energy, (TAP Energy 2017)', 'International', 'Amrita Vishwa Vidyapeetham, Kollam, Kerala, India.', '', 2017, '2017-12-01', 'ee03'),
(220, 'Jampana VVN Bapiraju and Premila Manohar', 'Fault Estimation with Analytical Cable Model for MMC-HVDC in Offshore Applications', '9th  IEEE–PES Asia-Pacific Power and Energy Engineering Conference 2017 (APPEEC 2017)', 'International', 'Bangalore', '', 2017, '2017-11-08', 'ee03'),
(221, 'Lakshmi S, Premila Manohar and P Naga Shayanu', 'A novel approach to reduce pull-in for RF MEMS Capacitive Shunt switch ', 'International conference on Smart sensors and  Systems (IC-SSS-2015)', 'International', 'MSRIT, Bangalore', '', 2015, '2015-12-21', 'ee03'),
(222, 'C S Suresh Babu and Premila Manohar', 'Design of a Switching unit for Fringe Capacitance based Smart Sensor for Multi Threshold Liquid Leve', 'International conference on Smart sensors and  Systems (IC-SSS-2015)', 'International', 'MSRIT, Bangalore', '', 2015, '2015-12-21', 'ee03'),
(223, 'Wajid Ahmed, Balachandra M. Hegde, Pavan R. Manvi, Avinash S. S. and Premila Manohar', 'Modeling and Simulation of 800 kV Multi-terminal UHVDC system in India', 'IEEE-International Conference on Trends in Automation, Communication and Computing Technologies', 'International', 'Bangalore', '', 2015, '2015-12-21', 'ee03'),
(224, 'Premila Manohar and Wajid Ahmed', 'Application of superconducting fault current limiter in multi terminal HVDC systems', 'CIGRE SC B4 Meeting and International Tutorials and Colloquium on HVDC and Power Electronics', 'National', 'Agra, India', '', 2015, '2015-09-21', 'ee03'),
(225, 'Sreedevi J, Premila Manohar and R S Shivakumara Aradhya', 'Study on Steady state and Transient over voltages in  Hybrid Multi-infeed  HVDC system on RTDS', 'CIGRE SC B4 Meeting and International Tutorials and Colloquium on HVDC and Power Electronics', 'National', 'Agra, India', '', 2015, '2015-09-21', 'ee03'),
(226, 'C S Suresh Babu and Premila Manohar', 'Design of Self Compensated Non Contact Type Capacitive Sensor for Liquid Level Control with enhanced', '23rd IEEE International  conference on Processing and fabrication of Advanced Materials(PFAM-2014)', 'International', 'Indian Institute of Technology Roorkee', '', 2014, '2014-12-05', 'ee03'),
(227, 'C S Suresh Babu and Premila Manohar', 'Design of a low cost signal conditioning circuit for self-compensated non-contact capacitive type mu', 'International conference on circuits, communication, control and computing (I4C-2014)', 'International', 'MSRIT, Bangalore', '', 2014, '2014-11-20', 'ee03'),
(228, 'Lakshmi S, Sudha Rao, Premila Manohar and P Naga Shayanu', 'Design and simulation of multi-beam RF MEMS varactor ', 'International conference on circuits, communication, control and computing (I4C-2014)', 'International', 'MSRIT, Bangalore', '', 2014, '2014-11-20', 'ee03'),
(229, 'J.Sreedevi, Premila Manohar and R.S. Shivakumara Aradhya', 'Dynamic performance of Hybrid Multi infeed  HVDC system on RTDS', 'National Power System Conference ', 'National', 'IIT Guwahati', '', 2014, '2014-12-18', 'ee03'),
(230, 'C.S. Suresh Babu, Dr. Premila Manohar', 'Design of fringe capacitance based low cost dual mode sensor for  pick and place robot hand - A Nove', 'National conference of Zen and Tao of Electrical Engineering', 'National', 'MSRIT, Bangalore', '', 2014, '2014-01-07', 'ee03');
INSERT INTO `conference_paper` (`slNo`, `authors`, `title`, `conferenceName`, `conferenceType`, `organizedBy`, `publisher`, `year`, `date`, `facultyId`) VALUES
(231, 'Wajid Ahmed Vijetha K R, Darshan H D and Premila Manohar ', 'Improved controls for LCC-VSC hybrid HVDC system', 'IEEE -  International Conference on Circuits, Control and Communications', 'International', 'Bangalore', '', 2013, '2013-12-01', 'ee03'),
(232, 'Shilpa G and Premila Manohar', 'Hybrid HVDC system for multi infeed applications', 'IEEE - International conference on “Emerging Trends in Communication, Control, Signal Processing and', 'International', 'Bangalore', '', 2013, '2013-10-01', 'ee03'),
(233, 'Wajid Ahmed and Premila Manohar', 'DC line protection for VSC HVDC system', 'IEEE International conference on Power Electronics, Drives and Energy Systems (PEDES2012)', 'International', 'Bangalore', '', 2012, '2012-12-01', 'ee03'),
(234, 'Nayana, Premila Manohar and Supriya Babu', 'Design and simulation of valve less piezoelectric micro pump', 'COMSOL Conference', 'National', 'COMSOL Conference', '', 2012, '2012-11-01', 'ee03'),
(235, 'Parul Parag Patel  and Premila Manohar', 'Design and Simulation of Piezoelectric Ultrasonic Micro Motor', 'COMSOL Conference', 'National', 'COMSOL Conference', '', 2012, '2012-11-02', 'ee03'),
(236, 'Rashmi, Premila manohar and Wajid ahmed', 'VSC-HVDC System for feeding passive industrial loads', '55th Annual Technical Convention,- 2012 & IETE Expo on AMPERE–Paradigm Shifts and Impact of ICT', 'National', 'NIMHANS Convention Centre, Bangalore', '', 2012, '2012-09-08', 'ee03'),
(237, 'Premila Manohar ', 'Application of Superconducting Fault Current limiter in HVDC systems', 'PSCAD and RTDS Asia conference', 'International', 'PSCAD and RTDS Asia conference', '', 2012, '2012-01-11', 'ee03'),
(238, 'Premila Manohar and Wajid Ahmed', 'Superconducting Fault Current Limiter to Mitigate the Effect of DC Line Fault in VSC-HVDC System', 'International Conference on Power, Signals, Control and Computations', 'International', 'Trissor, Tamilandu, India', '', 2012, '2012-01-03', 'ee03'),
(239, 'Usha and Premila Manohar ', 'Dynamic Performance of HVDC systems with Fuzzy controlled SMES ', 'International Conference on Power, Signals , Control and Computations', 'International', 'Trissor, Tamilandu, India', '', 2012, '2012-01-03', 'ee03'),
(240, 'Usha P, Premila Manohar, Wajid Ahmed ', 'Dynamic Performance of HVDC System with Detailed SMES coil - A Comparison', 'IET Chennai 2nd International Conference SEISCON 2011 (Sustainable Energy and Intelligent System Con', 'International', 'Dr.MGR University , CHENNAI', '', 2011, '2011-07-20', 'ee03'),
(241, 'Premila Manohar and Kusumika K D ', 'Effect of SCFCL on the performance of BTB-HVDC system', 'International Conference on Electrical Energy Systems,  ICEES- 2011', 'International', 'SSN College of Engineering, Chennai', '', 2011, '2011-05-03', 'ee03'),
(242, 'Premila Manohar and Kusumika K D ', 'Performance analysis of HVDC  system including SCFCL', 'National Power Engineering Conference, NPEC-2010', 'National', 'Thiagarajar College of Engineering, Madurai', '', 2010, '2010-12-01', 'ee03'),
(243, 'Archana Diwakar and Premila Manohar ', 'Simulation of Piezoelectric MicroPower Generator for MEMS applications', 'International conference on system dynamics and control', 'International', 'MIT Manipal', '', 2010, '2010-08-19', 'ee03'),
(244, 'Manju Bhashini V  and  Premila Manohar', 'Sensorless vector control of induction motor drives', 'International conference on system dynamics and control,  ICSDC', 'International', 'MIT Manipal', '', 2010, '2010-08-19', 'ee03'),
(245, 'Premila Manohar and Usha P', 'Dynamic Performance of HVDC system  with SMES', 'National Conference on Modeling, Simulation, Design and experimental Study of Electrical Systems  – ', 'National', 'B.S. Abdur Rahman Crescent Engineering College, Chennai', '', 2009, '2009-02-12', 'ee03'),
(246, 'Premila Manohar and Usha P', 'Dynamic performance of HVDC light system with SMES', '3rd National Conference on Advances in Energy Conversion Technologies  - AECT 2009', 'National', 'MIT Manipal', '', 2009, '2009-04-02', 'ee03'),
(247, 'Premila Manohar, Wajid Ahmed and Mihir Naik', 'Dynamic Modeling and Simulation of Superconducting Fault Current Limiter for HVDC applications', 'National Power Electronics Conference', 'National', 'IISc, Bangalore', '', 2007, '2007-12-17', 'ee03'),
(248, 'Premila Manohar and Wajid Ahmed', 'Modeling and simulation of SMES coil for HVDC applications – a comparison', '15th IEEE Bangalore section annual symposium on Technical advances and IT applications for Indian po', 'National', 'CPRI, Bengaluru', '', 2006, '2006-11-02', 'ee03'),
(249, 'Premila Manohar and H S Chandrasekharaiah', 'A critical appraisal of the location of back to back HVDC station in ac system', 'Emerging trends in power systems, Volume I, Proceedings of the Eighth National Power System Conferen', 'National', 'Delhi', 'Allied Publishers, N. Delhi', 1994, '1994-12-14', 'ee03'),
(250, 'Premila Manohar and H S Chandrasekharaiah', 'Performance evaluation of MTDC systems,  New concepts in EHV/UHV AC/DC transmission system', 'Ninth National Convention of Electrical Engineers', 'National', 'Bangalore', '', 1993, '1993-11-26', 'ee03'),
(251, 'Premila Manohar and H S Chandrasekharaiah', 'Forced commutated inverter for HVDC transmission inverting into weak ac systems', '2nd Workshop and Conference on EHV technology', 'National', 'Bangalore', '', 1989, '0000-00-00', 'ee03'),
(252, 'K. Indira , Dr. S. SethuSelvi', 'Robust Invariant Fourier Wavelet Features for Character Recognition', ' National Conference  on  Communication & Signal Processing', 'National', 'Thadomal Shahani Engineering College,Mumbai', 'IEEE', 2007, '2007-12-13', 'ece02'),
(253, 'R. Jayakrishna, Premila Manohar and H S Chandrasekharaiah', 'Performance evaluation of adaptive controllers for HVDC systems', '2nd Workshop and Conference on EHV technology', 'National', 'Bangalore', '', 1989, '0000-00-00', 'ee03'),
(254, 'K. Indira, Dr.S. SethuSelvi', 'Invariant Fourier Wavelet Descriptor for Printed  Kannada  Character Recognition', 'National Conference on VLSI Design, Signal Processing and Communication', 'National', 'Siddaganga Institute of Technology, Tumkur', '', 2007, '2007-02-17', 'ece02'),
(255, 'S. Jagannatha,  N S Sharavan S Kavya,  K. Rajanikanth  ', ' “Cost Performance Analysis: Usage of  Resources in  Cloud Using Markov-Chain Model a', 'International conference on Advanced Computing and Communication Systems - ICACCS 2017 ', 'International', ' Sri Eshwar College of Engineering, Kondampatti [P.O], Vadasithur [via] Kinathukadavu, Coimbatore - ', 'published in IEEExplorer', 2017, '2017-01-06', 'mca03'),
(256, ' K. Indira, Dr. S. SethuSelvi ', 'A Novel Character Segmentation Algorithm for Offline Handwritten Character Recognition', 'International  Conference on Cognition and Recognition ', 'International', 'PES College of Engineering', '', 2005, '2005-12-22', 'ece02'),
(257, 'Dr.G.Vijaya Kumar', ' A CONCEPTUAL STUDY ON CYBER SECURITY ISSUES IN CASHLESS ECONOMY    ISBN: 978-93-86891-01-3, Septemb', 'National Seminar on Empowering Indian Society Towards Cashless Economy. ISBN: 978-93-86891-01-3,', 'National', '', '', 2017, '2017-09-10', 'mba02'),
(258, 'Dr.G.Vijaya Kumar', '“A Conceptual Study on Benefits and Challenges involved in various modes of Digital Financial Transa', ' National Seminar on Empowering Indian Society Towards Cashless Economy', 'National', 'RIT', 'Excel Books', 2017, '2017-09-10', 'mba02'),
(259, 'K. Indira, Dr. S. SethuSelvi', 'Invariant Printed Character Recognition using Neural Networks', 'National Conference on Signal Processing and Automation', 'National', 'Padmashree Dr. D. Y. Patil Institute of Engineering and Technology, Pune', '', 2007, '2007-09-10', 'ece02'),
(260, 'S Jagannatha, Pallvi Tinkale ', 'Openstack Architecture Design and Scalability Principles', 'International Conference on Recent Innovative Trends in Computer Science and Applications (ICRITCSA-', 'International', '“ ISSN: 2278-1021 (IJARCCE)”', 'International Journal of Advanced Research in Computer and Communication Engineering (IJARCCE).', 2016, '2016-10-21', 'mca03'),
(261, 'S Jagannatha,  Pallvi Tinkale', 'Increasing the quality of broadband, voice calls and TV using Smartpipes ', 'International Conference on Recent Innovative Trends in Computer Science and Applications (ICRITCSA-', 'International', 'Dept of Computer Applications, RIT', ' “International Journal of Advanced Research in Computer and Communication Engineering (IJARCCE). IS', 2016, '2016-10-21', 'mca03'),
(262, 'S. Jagannatha   Alvina Monteiro', ' “ Performance Analysis: An Algorithm for Computer Performance Evaluation using QN Model ', 'International Conference on Circuits, Control, Communication and Computing ', 'International', 'Computer Applications, CSE, ISE, EEE, ME, ECE , RIT ', 'IEEExplorer', 2016, '2016-10-03', 'mca03'),
(263, '	S. Jagannatha,  T. V. Suresh Kumar,  K. Rajanikanth', ' “Comparative Study of Back-End Vs Front-End System by Performance Analysis during Preliminary Desig', '  National Conference on Software Engineering', 'National', '  Dept of Computer Applications, MSRIT, B’lore-54 ', 'published in International Journal of Engineering Research and Technology, ISSN 2278 – 0181,  Impact', 2014, '2014-02-21', 'mca03'),
(264, 'S. Jagannatha, Dr. T. V. Suresh Kumar, Dr Rajanikanth', '“Performance Analysis of Distributed database during Preliminary Design stages using ER model', ' An International Conference on Advances in Computer Engineering and Applications (ICACEA 2014)', 'National', '  IMSEC, GZB. , ', 'Published at  International Journal of Computer Applications® (IJCA) (0975 – 8887) Impact factor 0.8', 2014, '2014-02-15', 'mca03'),
(265, '	S. Jagannatha, S.Vijaya Prakash Reddy, T. V Suresh Kumar, K Rajani Kanth  ', 'Simulation and Analysis of Performance Prediction in Distributed Database Design using OO Approach', '  3rd IEEE International Advance Computing Conference (IACC-2013), ', 'International', ' Ajay Kumar Garg Engineering College, Ghaziabad, India', '', 2013, '2013-02-22', 'mca03'),
(266, 'Pushpaltha M N, Mrunalini M', 'Predicting the Severity of Closed Source Bug Reports using Ensemble methods', '2nd International Conference on Smart Computing and Informatics(SCI-2018)-Springer', 'International', 'PVPSIT, Vijaywada', 'Springer', 2018, '2018-01-27', 'is02'),
(267, 'Samrat K, Nikhil N S, S Karthick Raja Namasivamyam, Sharath R, Chandraprabha M N, Harish B G, Muktha', 'Evaluation of Improved Antifungal Activity of Fluconazole – Silver  nanoconjugate against Pathogenic', 'Recent Advances In Nano-Science And Technology (RAINSAT-2015)', 'International', 'Sathyabama University, Chennai', 'Elsevier - Materials Today: Proceedings', 2016, '2015-07-08', 'bt02'),
(268, 'Pushpalatha M N, M Mrunalini,', 'Predicting the Severity of Bug Reports using Classification Algorithms', ' International Conferences on Circuits, Control, Communation and Computing (I4C)-2016 (IEEE) ', 'International', 'RIT , Benguluru, India', 'IEEE', 4, '2018-10-03', 'is02'),
(269, 'Pushpalatha M N M.Mrunalini', 'Predicting the Severity of Bug Reports using Classification Algorithms', 'International Conferences on Circuits, Control, Communation and Computing (I4C)-2016', 'International', 'MSRIT Bangalore', 'IEEE Explorer', 2016, '2016-10-04', 'is02'),
(270, 'K.Indira,Dr. S.SethuSelvi', 'An offline cursive script recognition systemusing Fourier-Wavelet features', 'International  Conference on Computational Intelligence and Multimedia Applications (ICCIMA-2007)', 'International', 'MepcoSchlenk College of Engineering, Sivakasi, December 2007.', '', 2007, '0000-00-00', 'ece02'),
(271, 'K.Indira,Dr. S.SethuSelvi,Maya V. Karki', 'Offline signature recognition and verification using neural network', 'International  Conference on Computational Intelligence and Multimedia Applications (ICCIMA-2007)', 'National', 'MepcoSchlenk College of Engineering, Sivakasi, December 2007.', '', 2007, '0000-00-00', 'ece02'),
(272, 'K Indira , Dr. S SethuSelvi ,Soumya R , Sowmya C ', 'Skew Detection and Correction of Kannada Document  using Wavelet Decomposition and Hough Transform', 'National Conference on Communication and Signal Processing (NCCP 2009)', 'National', 'SSM College of Engineering, Komarapalayam, Tamil Nadu', '', 2009, '2009-03-21', 'ece02'),
(273, 'K.Indira,Dr. S.SethuSelvi,Soumya R ', 'Machine Recognition of Handwritten Kannada Character Recognition System', 'National Conference on Recent Trends on Computers, Communication & Information Technology (Rccit-200', 'National', 'M S Engineering College, Bangalore', '', 2009, '2009-04-17', 'ece02'),
(274, 'K.Indira,Dr. S.SethuSelvi', 'Handwritten Kannada Character Recognition based 	 on  wavelet  & curvelet transform', 'National conference on Image Processing, Computer vision & Pattern Recognition, (NCIPV’09)', 'National', 'PESCE,  Mandya', '', 2009, '2009-08-24', 'ece02'),
(275, 'K Indira , Dr. S SethuSelvi ,Sowmya C', 'ID Wavelet Transform based feature extraction method for handwritten Kannada character recognition s', 'Second International Conference on Signal and Image processing (ICSIP’09)', 'International', 'VidyaVikas Institute of Engineering and Technology, Mysore', '', 2009, '2009-08-12', 'ece02'),
(277, 'K. Indira , Dr. S. Sethu Selvi , Anjali Kulkarni', 'Line Segmentation of Handwritten Kannada text', 'International Conference on Frontiers of Computer Science ', 'National', '', '', 2011, '0000-00-00', 'ece02'),
(278, 'K.Indira,Dr. S.SethuSelvi', 'Recognition of Handwritten Kannada Characters using Texture features', 'National Womens Science Congress', 'National', '', '', 2011, '0000-00-00', 'ece02'),
(279, 'K. Indira , Dr. S. Sethu Selvi , Anjali Kulkarni', 'Line Segmentation of Handwritten Kannada text', '', 'National', 'Coimbatore Institute of Information Technology', '', 2012, '0000-00-00', 'ece02'),
(280, 'Dr.K.Indira, Suma K V, Nitishi M', 'Classification of Nail Fold  Capillary Images for diabetic detection in Indian Population', 'International Conference on Communication and Computing', 'International', '', '', 2014, '0000-00-00', 'ece02'),
(281, 'Dr.K.Indira, Suma K V, Nitishi M', 'Segmentation of Nail Fold  Capillary Images for study of Microcirculation in Diabetic Mellitus', '', 'National', ' International  Conference on Emerging Research in Computing, Information, Communication and Applica', '', 2014, '0000-00-00', 'ece02'),
(282, 'Priyanka P, Nisarga GK and Raghuram S', 'CMOS Implementations of the Rectified Linear Activation Function', 'VLSI Design and Test Conference (VDAT)', 'National', '', '', 2018, '0000-00-00', 'ece03'),
(283, 'SR Ganiga, RN Nikitha, S Raghuram', 'Averaging circuit using graphene FETs: A novel approach for analog and digital signal averaging', 'Advances in Computing, Communications and Informatics (ICACCI)', 'National', 'Manipal, India', '', 2017, '0000-00-00', 'ece03'),
(284, 'Naresh Reddy, Nishank Satish, Raghuram S', 'Effect of Injected Noise in Deep Neural Networks', 'IEEE International Conference on Computational Intelligence and Computing Research', 'International', 'Chennai, India', 'IEEE', 2016, '0000-00-00', 'ece03'),
(285, 'Prajwal Rao, Nishal Pereira, and Raghuram S', 'Convolutional neural networks for lung cancer screening in computed tomography (CT) scans', '2nd IEEE International Conference on Contemporary Computing and Informatics', 'International', 'Noida, India', 'IEEE', 2016, '0000-00-00', 'ece03'),
(286, 'N Chhabria, A Jaiprakash, KR Motwani, R Srinivasan', 'RLC circuit simulation and Monte Carlo Analysis in MATLAB', 'Communication and Electronics Systems (ICCES), International Conference', 'International', 'Coimbatore, India', '', 2016, '0000-00-00', 'ece03'),
(287, 'S Raghuram, M Chennakrishna, ASV Karthik', 'Logic optimization of AES S-Box', 'Automatic Control and Dynamic Optimization Techniques (ICACDOT)', 'National', 'Pune, India', '', 2016, '0000-00-00', 'ece03'),
(288, 'Raghuram S and Megha Hallikeri', 'Improving Synthesis Results with the Cadence RTL Compiler', '59th IEEE International Symposium on Circuits and Systems', 'International', 'Dubai, UAE', 'IEEE', 2016, '0000-00-00', 'ece03'),
(289, 'Megha Hallikeri and Raghuram S', 'Investigation of Logic Level Techniques to improve AES Throughput', 'ICSPCCR', 'National', 'Mysore', '', 2016, '0000-00-00', 'ece03'),
(290, 'Sharath K Rangan, Shazia Afreen, and Raghuram ', 'Effect of Split Manufacturing on Power Supply Requirements ', 'S IEEE VLSI SATA ', 'National', 'Bangalore', 'IEEE', 2015, '0000-00-00', 'ece03'),
(291, 'Sabarish Sridhar and Raghuram S', 'A Comparative Study of Design of Analog CMOS Circuits Using Numerical Optimization Strategies', 'IEEE ITACT', 'National', 'Bangalore', 'IEEE', 2015, '0000-00-00', 'ece03'),
(292, 'Priyanka Patil and Raghuram S', 'Design of SRAM Cells using TFETs', 'NCCVS', 'National', 'Bangalore', '', 2015, '0000-00-00', 'ece03'),
(293, 'Ramanath Nayak and Raghuram S', 'Design and Implementation of High Speed Bus Architecture for SoC Communication', 'NCCVS', 'National', 'Bangalore', '', 2015, '0000-00-00', 'ece03'),
(294, 'Raghuram S, S. Raha, A. Verma', 'Intelligent Vehicle Routing Scheme using DSRC', '47th Annual National Convention of the Computer Society of India', 'National', 'Kolkata', '', 2013, '0000-00-00', 'ece03'),
(295, 'Raghuram S and Harold W. Carter', 'A Taylor Series Methodology for Analyzing the Effects of Process Variation on Circuit Operation', '19th ACM Great Lakes Symposium on VLSI', 'International', 'Boston, USA', '', 2009, '0000-00-00', 'ece03'),
(296, 'Raghuram S and H. W. Carter', 'Occurrence and Simulation of Index-3 DAEs in VLSI Circuits', 'IEEE International Behavioral Modeling and Simulation Workshop', 'International', 'San Jose, USA', 'IEEE', 0, '0000-00-00', 'ece03'),
(297, 'Raghuram S and H. W. Carter', 'Verification of linear equation sets with dynamic programming techniques', '48th IEEE Midwest Symposium on Circuits and Systems', 'International', 'Cincinnati, USA', 'IEEE', 2005, '0000-00-00', 'ece03'),
(298, 'P. Naraimhan and Raghuram S', 'An Approach to Mixed Time/Frequency Simulation and VHDL-AMS Extensions', 'Forum on Design Languages(FDL)', 'International', 'Marseilles, France', '', 2002, '0000-00-00', 'ece03');

-- --------------------------------------------------------

--
-- Table structure for table `consultancy`
--

CREATE TABLE `consultancy` (
  `slNo` int(11) NOT NULL,
  `role` varchar(100) NOT NULL,
  `projectTitle` varchar(100) NOT NULL,
  `typeOfConsultancy` varchar(100) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `sanctionedDate` date NOT NULL,
  `amountReceived` int(11) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consultancy`
--

INSERT INTO `consultancy` (`slNo`, `role`, `projectTitle`, `typeOfConsultancy`, `organization`, `duration`, `sanctionedDate`, `amountReceived`, `facultyId`) VALUES
(1, 'NA', 'Na', 'Na', 'NA', 'NA', '0000-00-00', 0, 'me02'),
(2, 'Principal Investigator', 'Test support, evaluation of LCA LRUs and Augmentation of Lightning Test Facility', 'Testing', 'Aeronautical Development Agency ', '3 years', '2013-05-01', 4200000, 'ee02'),
(3, 'Principal Investigator', 'Analysis and reduction of RoW of 66kV line with covered conductor', 'Research', 'KPTCL', '1 year', '2015-09-01', 30000, 'ee02'),
(4, 'Principal Investigator', 'Design and Installation of roof top solar PV system', 'Others', 'Nucleus, New Delhi', '3 years', '2017-03-01', 500000, 'ee02'),
(5, 'Principal Investigator', 'Design of 800kV High Voltage Laboratory for Corona and RIV Test', 'Testing', 'TAG Corporation India Ltd., Chennai ', '1 year', '2017-06-01', 30000, 'ee02'),
(6, 'Others', 'Office tools for the nursing staff', 'Training', 'RIT', '6 Days', '2017-02-07', 0, 'is02'),
(7, 'Others', ' workshop on Office tools for the nursing staff', 'Training', 'RIT', '6 DAYS', '2017-02-07', 0, 'is01'),
(8, 'Co - Investigator', 'Hospital Staff Training Tracker', 'Others', 'RIT', '1.5 MONTHS', '2017-05-07', 0, 'is01'),
(9, 'Co - Investigator', 'b.	Exam Questionnaire Tool for the prospective nursing staff  ', 'Others', 'RIT', '1 Month', '2017-05-07', 0, 'is01'),
(10, 'Others', 'Leave Encashment Tool', 'Others', 'RIT', '1 MONTH', '2017-05-07', 0, 'is01'),
(11, 'Others', 'Exit Interview Data Analytics Tool ', 'Others', 'RIT', '1 Month', '2017-05-07', 0, 'is01'),
(12, 'Organiser', 'Mentoring Startups', 'Training', '(CATCE/EDC) MSRIT', '', '2016-04-06', 0, 'is04'),
(13, 'Co - Investigator', 'Design and Installation of roof top solar PV system at SUNIYE, New Delhi', 'Others', 'Nucleus, New Delhi', '3 years', '2017-03-01', 500000, 'eee01');

-- --------------------------------------------------------

--
-- Table structure for table `courses_handled`
--

CREATE TABLE `courses_handled` (
  `slNo` int(11) NOT NULL,
  `subjectName` varchar(100) NOT NULL,
  `ugOrPg` varchar(5) NOT NULL,
  `typeOfSubject` varchar(50) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses_handled`
--

INSERT INTO `courses_handled` (`slNo`, `subjectName`, `ugOrPg`, `typeOfSubject`, `facultyId`) VALUES
(1, 'DSP Architecture,Linear Algebra,Basic Electronics,', 'UG,PG', '', 'te09'),
(2, 'Error Control coding (TC604), digital switching sy', 'UG ', '', 'te07'),
(3, 'Error Control coding (TC604), digital switching sy', 'UGPG ', '', 'te07'),
(4, 'Wireless sensor Networks(MDCE21), WSN Lab (MDCEL24', 'UG & ', '', 'te07'),
(5, 'Basic electronics', 'ug', '', 'te12'),
(6, 'Real time embedded system design(even sem)', 'pg', '', 'te12'),
(7, 'Basic electronics', 'ug', '', 'te12'),
(8, 'Linear integrated  circuits', 'ug', '', 'te12'),
(9, '', 'ug', '', 'te12'),
(10, 'Basic electronics', 'ug', '', 'te12'),
(11, 'Linear integrated  circuits', 'ug', '', 'te12'),
(12, 'Linear integrated  circuits    , basic electronics', 'ug', '', 'te12'),
(13, 'Basic electronics, 3g/4g wireless mobile communica', 'ug  a', '', 'te12'),
(14, 'Basic electronics, 3g/4g wireless mobile communica', 'ug  a', '', 'te12'),
(15, 'SOFTWARE DEFINED WIRELESS SYSTEM DESIGN', 'PG', '', 'te10'),
(16, 'DIGITAL CIRCUIT DESIGN', 'UG', '', 'te10'),
(17, 'DIGITAL SIGNAL PROCESSING', 'UG', '', 'te10'),
(19, 'System simulation and Modeling', 'UG', '', 'te02'),
(20, 'Network Analysis', 'UG', '', 'te02'),
(21, 'Intellectual Property Rights', 'UG', '', 'te02'),
(22, 'System simulation and Modeling', 'UG', '', 'te02'),
(23, 'Network Analysis', 'UG', '', 'te02'),
(24, 'Microwave and RF Circuits', 'UG', '', 'te13'),
(25, 'Antenna and Wave Propagation', 'UG', '', 'te13'),
(26, 'Intellectual Property Rights', 'ug', '', 'te13'),
(27, 'Basic Electronics', 'UG', '', 'te13'),
(28, 'Management & Entrepreneurship', 'UG', '', 'te13'),
(29, 'Data Structures Using C', 'Ug', 'Theory', 'ece02'),
(32, 'Computer Aided Engineering Drawing', 'UG', 'Theory + Lab', 'me01'),
(33, 'Non destructive testing', 'UG', 'Theory', 'me01'),
(34, 'Hydraulics & Pneumatics', 'UG', 'Theory', 'me01'),
(35, 'Non Taditional Machining', 'PG', 'Theory', 'me01'),
(36, 'Non Taditional Machining', 'UG', 'Theory', 'me01'),
(37, 'Manufacturing Process - II', 'UG', 'Theory', 'me01'),
(38, 'Manufacturing Process - III', 'UG', 'Theory', 'me01'),
(39, 'Workshop Practices', 'UG', 'Lab', 'me01'),
(40, 'Metrology and Measurement Lab', 'UG', 'lab', 'me01'),
(41, 'Material Testing Lab', 'UG', 'Lab', 'me01'),
(42, 'Theory of Surface Treatment', 'UG', 'Theory', 'me01'),
(43, 'OPERATIONS RESEARCH', 'UG', 'CORE', 'me03'),
(44, 'PRODUCT DESIGN AND MANUFACTURING', 'UG', 'ELECTIVE', 'me03'),
(45, 'UNIX Systems Programming', 'Pg', 'Theory + Lab', 'mca02'),
(46, 'Operations Research', 'Pg', 'Theory', 'mca02'),
(47, 'Digital Forensics', 'Pg', 'Theory + Lab', 'mca02'),
(48, 'Information Security', 'Pg', 'Theory + Lab', 'mca02'),
(49, 'Mobile Application Development', 'Pg', 'Lab', 'mca02'),
(51, 'COMPUTER AIDED ENGINEERING DRAWING', 'UG', 'Theory + Lab', 'me03'),
(52, 'FLEXIBLE MANUFACTURING SYSTEMS', 'PG', 'Theory', 'me03'),
(53, 'INDUSTRIAL DESIGN AND ERGONOMICS', 'PG', 'Theory', 'me03'),
(54, 'Strength of Materials', 'Ug', 'Theory', 'cv01'),
(55, 'Estimation & Costing', 'Ug', 'Theory', 'cv01'),
(56, 'Basics of Civil Engineering & Mechanics', 'Ug', 'Theory', 'cv01'),
(57, 'Concrete Technology', 'Ug', 'Theory', 'cv01'),
(58, 'Engineering Materials and Construction', 'Ug', 'Theory', 'cv01'),
(59, 'Strength of Materials Lab', 'Ug', 'Lab', 'cv01'),
(60, 'Concrete Technology Lab', 'Ug', 'Lab', 'cv01'),
(61, 'Computer Aided Design Lab', 'Ug', 'Lab', 'cv01'),
(62, 'Detailing of RC and Steel Structures', 'Ug', 'Lab', 'cv01'),
(63, 'Basic Civil Engineering and Mechanics', 'Ug', 'Theory', 'cv03'),
(64, 'Environmental Engineering', 'Ug', 'Theory', 'cv03'),
(65, 'Fluid Mechanics', 'Ug', 'Theory', 'cv03'),
(66, 'Hydraulics and Hydraulic Machines', 'Ug', 'Theory', 'cv03'),
(67, 'Fluid Mechanics Laboratory', 'Ug', 'Lab', 'cv03'),
(68, 'Strength of Materials Laboratory', 'Ug', 'Lab', 'cv03'),
(69, 'Highway Engineering Laboratory', 'Ug', 'Lab', 'cv03'),
(70, 'Building Graphics Laboratory', 'Ug', 'Lab', 'cv03'),
(71, 'Water Resources Engineering I', 'Ug', 'Theory', 'cv03'),
(72, 'Water Resources Engineering II', 'Ug', 'Theory', 'cv03'),
(73, 'Landscape Engineering', 'Pg', 'Theory', 'cv03'),
(74, 'Bioprocess Equipment design', 'UG', 'Theory', 'bt03'),
(75, 'Downstream Process Technology and Bioseparation Te', 'UG', 'Theory', 'bt03'),
(76, 'Heat and Mass Transfer ', 'UG', 'Theory + Lab', 'bt03'),
(77, 'Unit Operations ', 'UG', 'Lab', 'bt03'),
(78, 'Agricultural Biotechnology', 'UG', 'Theory', 'bt03'),
(79, 'Forensic Science ', 'UG', 'Theory', 'bt03'),
(80, 'Practicals - II', 'PG', 'Lab', 'bt03'),
(81, 'Biotechnology of alternative fuels', 'PG', 'Theory', 'bt03'),
(82, 'Bioprocess Modelling and Equipment Design', 'UG', 'Theory', 'bt03'),
(83, 'Business Research Methods', 'Pg', 'Theory', 'mba03'),
(84, 'Business Law', 'Pg', 'Theory', 'mba02'),
(85, 'Engineering Physics', 'Ug', 'Theory + Lab', 'phy01'),
(86, 'Engineering Physics', 'Ug', 'Theory + Lab', 'phy02'),
(87, 'CAD/CAM', 'Ug', 'Theory', 'me02'),
(88, 'Additive Manufacturing', 'Ug', 'Theory', 'me02'),
(89, 'Computer Aided Machine Drawing', 'Ug', 'Lab', 'me02'),
(90, 'Artificial Intelligence', 'ug', 'Theory', 'me02'),
(91, 'Composite Materials', 'Ug', 'Theory', 'me02'),
(92, 'Control  Systems	', 'Ug', 'Theory', 'it02'),
(93, 'Advanced Control Systems', 'Ug', 'Theory', 'it02'),
(94, 'Process Control', 'Ug', 'Theory', 'it02'),
(95, 'Operation Research', 'Ug', 'Theory', 'it02'),
(96, 'Industrial Instrumentation-1', 'Ug', 'Theory', 'it02'),
(97, 'Industrial Instrumentation-2', 'Ug', 'Theory', 'it02'),
(98, 'Optical Instrumentation', 'Ug', 'Theory', 'it02'),
(99, 'Network Analysis', 'Ug', 'Theory', 'it02'),
(100, 'Business management & communication', 'Ug', 'Theory', 'it02'),
(101, 'Constitution of India & Professional Ethics', 'Ug', 'Theory', 'it02'),
(102, 'Engineering & Technology Management', 'Ug', 'Theory', 'it02'),
(103, 'Management & Entrepreneurship', 'Ug', 'Theory', 'it02'),
(104, 'Engineering Design', 'Ug', 'Theory', 'it02'),
(105, 'Intellectual Property Rights', 'Ug', 'Theory', 'it02'),
(106, 'Automobile Instrumentation', 'Ug', 'Theory', 'it02'),
(107, 'Control systems lab', 'Ug', 'Lab', 'it02'),
(108, 'Industrial Instrumentation-1 lab', 'Ug', 'Lab', 'it02'),
(109, 'Power electronics lab', 'Ug', 'Lab', 'it02'),
(110, 'Advanced Control Systems lab', 'Ug', 'Lab', 'it02'),
(111, 'Data converter & controls lab', 'Ug', 'Lab', 'it02'),
(112, 'Analog circuits lab', 'Ug', 'Lab', 'it02'),
(113, 'Process control & Instrumentation lab', 'Ug', 'Lab', 'it02'),
(114, 'Logic design lab', 'Ug', 'Lab', 'it02'),
(115, 'Transportation Engineering-I', 'Ug', 'Theory', 'cv02'),
(116, 'Transportation Engineering-II', 'Ug', 'Theory', 'cv02'),
(117, 'Highway Geometric Design', 'Ug', 'Theory', 'cv02'),
(118, 'Urban Transport Planning', 'Ug', 'Theory', 'cv02'),
(119, 'Basic Civil Engineering', 'Ug', 'Theory', 'cv02'),
(120, 'Highway Engineering Laboraotory', 'Ug', 'Lab', 'cv02'),
(121, 'Concrete Technology Laboratory', 'Ug', 'Lab', 'cv02'),
(122, 'Geotechnical Engineering Laboratory', 'Ug', 'Lab', 'cv02'),
(123, 'Extensive Survey Project', 'Ug', 'Lab', 'cv02'),
(124, 'Pavement Design', 'Ug', 'Theory', 'cv02'),
(125, 'Process Control', 'Ug', 'Theory + Lab', 'ch01'),
(126, 'Introduction to Transport Phenomena', 'Ug', 'Theory', 'ch01'),
(127, 'Electrochemical Technology', 'Ug', 'Theory', 'ch01'),
(128, 'Chemical Engineering Thermodynamics', 'Ug', 'Theory', 'ch01'),
(129, 'Mass Transfer-I', 'Ug', 'Theory', 'ch01'),
(130, 'Momentum Transfer', 'Ug', 'Lab', 'ch01'),
(131, 'Process Equipment Design and Drawing', 'Ug', 'Lab', 'ch01'),
(132, 'Non-Conventional Energy Sources & Technology', 'Ug', 'Theory', 'ch01'),
(133, 'Facilities Planning and Design', 'UG', 'Theory + Lab', 'im02'),
(134, 'Software Quality Assurance', 'PG', 'Theory', 'im02'),
(135, 'Computer Integrated Manufacturing', 'UG', 'Theory + Lab', 'im02'),
(136, 'Engineering Design', 'UG', 'Theory', 'im02'),
(137, 'Digital signal processing', 'Ug', 'Theory + Lab', 'it01'),
(138, 'ANALYTICAL INSTRUMENTATION', 'Ug', 'Theory', 'it01'),
(139, 'PROCESS CONTROL', 'Ug', 'Theory', 'it01'),
(140, 'ARTIIFICIAL NEURAL NETWORKS AND FUZZY LOGIC', 'Ug', 'Theory', 'it01'),
(141, 'STATISTICAL PROCESS CONTROL', 'Ug', 'Theory', 'it01'),
(142, 'INSTRUMENTATION AND CONTROL IN PETROCHEMICAL INDUSTRIES', 'Ug', 'Theory', 'it01'),
(143, 'Engineering Mathematics I', 'Ug', 'Theory', 'mat03'),
(144, 'Engineering Mathematics II', 'Ug', 'Theory', 'mat03'),
(145, 'Engineering Mathematics III', 'Ug', 'Theory', 'mat03'),
(146, 'Engineering Mathematics IV', 'Ug', 'Theory', 'mat03'),
(147, 'Computational Numerical Methods', 'Pg', 'Theory', 'mat03'),
(148, 'Field Theory', 'Ug', 'Theory', 'ee02'),
(149, 'High Voltage Engineering', 'Ug', 'Theory', 'ee02'),
(150, 'Switch Gear & Protection', 'Ug', 'Theory + Lab', 'ee02'),
(151, 'Power Quality', 'Pg', 'Theory', 'ee02'),
(152, 'Applied Computer Science with Android', 'Ug', 'Lab', 'is01'),
(153, 'Problem Solving Using \'C\'', 'Pg', 'Theory + Lab', 'mca01'),
(154, 'Web Programming with PHP and AJAX', 'Pg', 'Theory + Lab', 'mca01'),
(155, 'Operating Systems', 'Ug', 'Theory', 'mca01'),
(156, 'Database Management Systems', 'Pg', 'Theory + Lab', 'mca01'),
(157, 'Software Testing', 'Pg', 'Theory + Lab', 'mca01'),
(158, 'Web Component using J2EE', 'Pg', 'Lab', 'mca01'),
(159, 'Interactive Web Programming', 'Pg', 'Lab', 'mca01'),
(160, 'Design and Analysis of Algorithms ', 'Pg', 'Lab', 'mca01'),
(161, 'Web Application Development with ASP.NET and Silverlight ', 'Pg', 'Lab', 'mca01'),
(162, 'Fundamentals of Computer Organization', 'Pg', 'Theory', 'mca01'),
(163, 'Scripting Languages ', 'Pg', 'Theory + Lab', 'mca01'),
(164, 'Introduction to UNIX ', 'Pg', 'Lab', 'mca01'),
(165, 'Computer Oriented Numerical Methods', 'Pg', 'Lab', 'mca01'),
(166, 'Introduction to Web Programming ', 'Pg', 'Lab', 'mca01'),
(167, 'Systems Software ', 'Pg', 'Theory + Lab', 'mca01'),
(168, 'Data Analysis Using Spreadsheets ', 'Pg', 'Lab', 'mca01'),
(169, 'Object Oriented Programming Using C++ ', 'Pg', 'Lab', 'mca01'),
(170, 'Software Engineering ', 'Pg', 'Theory', 'mca01'),
(171, 'Professional Communication and Ethics ', 'Pg', 'Theory', 'mca01'),
(172, 'Business Statistis', 'Pg', 'Theory', 'mba01'),
(173, 'International Financial Mangement', 'Pg', 'Theory', 'mba01'),
(174, 'Business Analytics', 'Pg', 'Theory + Lab', 'mba01'),
(175, 'Production and Operations Managements', 'Pg', 'Theory', 'mba01'),
(176, 'Security Analysis and portfolio Management', 'Pg', 'Theory', 'mba01'),
(177, 'Merchant Banking and Financial Services', 'Pg', 'Theory', 'mba01'),
(178, 'Management information System', 'Pg', 'Theory', 'mba01'),
(179, 'Marketing Management', 'Pg', 'Theory', 'mba03'),
(180, 'Consumer Behaviour', 'Pg', 'Theory', 'mba03'),
(181, 'Integrated Marketing Communications', 'Pg', 'Theory', 'mba03'),
(182, 'Services Marketing', 'Pg', 'Theory', 'mba03'),
(183, 'Supply chain Management', 'Pg', 'Theory', 'mba03'),
(184, 'Personal Growth interpersonal Effectiveness', 'Pg', 'Theory', 'mba03'),
(185, 'Training and Development', 'Pg', 'Theory', 'mba03'),
(186, 'Change and Knowledge Mnagement', 'Pg', 'Theory', 'mba03'),
(187, 'Business Marketing', 'Pg', 'Theory', 'mba03'),
(188, 'International Marketing Management', 'Pg', 'Theory', 'mba03'),
(189, 'Analog Electronic Circuit', 'Ug', 'Theory + Lab', 'ece01'),
(190, 'wireless and Data Communication ', 'Ug', 'Theory + Lab', 'ece01'),
(191, 'Microprocessor', 'Ug', 'Theory + Lab', 'ece01'),
(192, 'Automotive Electronics', 'Pg', 'Theory', 'ece01'),
(193, 'Accounting for managers', 'Pg', 'Theory', 'mba02'),
(194, 'Business Economics', 'Pg', 'Theory', 'mba02'),
(195, 'Linear Integrated Circuits and Applications', 'Ug', 'Theory + Lab', 'ece01'),
(196, 'Microcontrollers', 'Ug', 'Theory + Lab', 'ece01'),
(197, 'Communication Computer Networks', 'Ug', 'Theory', 'ece01'),
(198, 'Management and Behavioral Process', 'Pg', 'Theory', 'mba02'),
(199, 'Economic Environment', 'Pg', 'Theory', 'mba02'),
(200, 'Financial Management', 'Pg', 'Theory', 'mba02'),
(201, 'Human Resource management', 'Pg', 'Theory', 'mba02'),
(202, 'IR and Labour Laws', 'Pg', 'Theory', 'mba02'),
(203, 'Tax Management', 'Pg', 'Theory', 'mba02'),
(204, 'Mergers,Acquisitions and Corporate Restructuring', 'Pg', 'Theory', 'mba02'),
(205, 'Management Accounting and Control systems', 'Pg', 'Theory', 'mba02'),
(206, 'Recruitment and Compensation Management', 'Pg', 'Theory', 'mba02'),
(207, 'Personal Growth and Interpersonal Effectiveness', 'Pg', 'Theory', 'mba02'),
(208, 'Introduction to MEMS ', 'Ug', 'Theory', 'ee03'),
(209, 'HVDC Power transmission systems ', 'Ug', 'Theory', 'ee03'),
(210, 'Electrical power transmission and distribution ', 'Ug', 'Theory', 'ee03'),
(211, 'Basic electrical engineering ', 'Ug', 'Theory', 'ee03'),
(212, 'Electrical measurements and measuring instruments ', 'Ug', 'Theory', 'ee03'),
(213, 'Electronic circuits ', 'Ug', 'Theory', 'ee03'),
(214, 'Power systems simulation laboratory', 'Ug', 'Lab', 'ee03'),
(215, 'Control systems laboratory ', 'Ug', 'Lab', 'ee03'),
(216, 'Circuits and simulation laboratory', 'Ug', 'Lab', 'ee03'),
(217, 'Analog electronics circuits', 'Ug', 'Lab', 'ee03'),
(218, 'Dynamics of analog and discrete time control systems ', 'Pg', 'Theory', 'ee03'),
(219, 'Design of analog and discrete time control systems', 'Pg', 'Theory', 'ee03'),
(220, 'Data Structure\'s ', 'Ug', 'Theory', 'mca03'),
(221, 'Database Management System', 'Ug', 'Theory', 'mca03'),
(222, 'FORTRON', 'Ug', 'Theory', 'mca03'),
(223, 'DBASE III Plus', 'Ug', 'Theory', 'mca03'),
(224, 'FoxPro', 'Ug', 'Theory', 'mca03'),
(225, 'Digital Electronics', 'Pg', 'Theory', 'mca03'),
(226, 'Computer Organization and Architecture ', 'Pg', 'Theory', 'mca03'),
(227, 'Management Information System', 'Pg', 'Theory', 'mca03'),
(228, 'Operation Research', 'Pg', 'Theory', 'mca03'),
(229, 'Advanced Client Architecture ', 'Pg', 'Theory', 'mca03'),
(230, 'Software Engineering ', 'Pg', 'Theory', 'mca03'),
(231, 'Operating System', 'Pg', 'Theory', 'mca03'),
(232, 'Cloud computing with AWS', 'Pg', 'Lab', 'mca03'),
(233, 'Web Component Development with J2EE', 'Pg', 'Theory + Lab', 'mca03'),
(234, 'Programming in Java', 'Pg', 'Theory + Lab', 'mca03'),
(235, 'Distributed Database System', 'Pg', 'Theory', 'mca03'),
(236, 'Distributed Operating Systems', 'Pg', 'Theory', 'mca03'),
(237, 'C and Object Programming  using C++', 'Pg', 'Theory + Lab', 'mca03'),
(238, 'Graph Theory', 'Pg', 'Theory', 'mca03'),
(239, 'System Simulation and Modeling ', 'Pg', 'Theory + Lab', 'mca03'),
(240, 'Computer Networks', 'Pg', 'Theory', 'mca03'),
(241, 'E-Commerce', 'Pg', 'Theory', 'mca03'),
(242, 'COBOL, BASIC', 'Ug', 'Theory + Lab', 'mca03'),
(243, 'Programming in Java', 'Pg', 'Theory + Lab', 'mca03'),
(244, 'Basic electrical engineering ', 'Ug', 'Theory', 'eee01'),
(245, 'Electrical & Electronic Measurements', 'Ug', 'Theory', 'eee01'),
(246, 'Analog Electronic Circuits', 'Ug', 'Theory', 'eee01'),
(247, 'Power Electronics Lab', 'Ug', 'Lab', 'eee01'),
(248, 'Power Electronics', 'Pg', 'Theory + Lab', 'eee01'),
(249, 'Circuits & Measurements Lab', 'Ug', 'Lab', 'eee01'),
(250, 'Bioinformatics', 'Ug', 'Theory', 'bt01'),
(251, 'Bioinformatics Lab', 'Ug', 'Lab', 'bt01'),
(252, 'Metabolic Engineering', 'Ug', 'Theory', 'bt01'),
(253, 'Industrial and Environmental Biotechnology', 'Ug', 'Theory', 'bt01'),
(254, 'Transport Phenomena', 'Ug', 'Theory', 'bt01'),
(255, 'Microbial Biotechnology', 'Ug', 'Theory', 'bt01'),
(256, 'Drug Design and Development', 'Ug', 'Theory', 'bt01'),
(257, 'Practical-III', 'Pg', 'Lab', 'bt01'),
(258, 'Chemical Process Calculations', 'Ug', 'Theory', 'ch03'),
(259, 'Applied Mathematics in Chemical Engineering', 'Ug', 'Theory', 'ch03'),
(260, 'Process Simulations', 'Ug', 'Lab', 'ch03'),
(261, 'Engineering Physics', 'Ug', 'Theory', 'phy03'),
(262, 'Engineering Physics Lab.', 'Ug', 'Lab', 'phy03'),
(263, 'Agricultural Biotechnology', 'Ug', 'Theory', 'bt02'),
(264, 'structural Biotechnology', 'Ug', 'Theory', 'bt02'),
(265, 'plant Biotechnology', 'Pg', 'Theory', 'bt02'),
(266, 'Forensic Science ', 'Ug', 'Theory', 'bt02'),
(267, 'IPR', 'Ug', 'Theory', 'bt02'),
(268, 'Biochemistry Lab', 'Ug', 'Lab', 'bt02'),
(269, 'Molecular Biology Lab', 'Ug', 'Lab', 'bt02'),
(270, 'Downstream Process Lab', 'Ug', 'Lab', 'bt02'),
(271, 'Innovations and Entrepreneurship ', 'Ug', 'Theory', 'iem01'),
(272, 'Human Factors in Engineering ', 'Ug', 'Theory', 'iem01'),
(273, 'Work System Design', 'Pg', 'Theory', 'iem01'),
(274, 'V Sem BE ECE', 'Ug', 'Theory', 'ece03'),
(275, 'V Sem BE ECE', 'Ug', 'Theory', 'ece03'),
(276, 'I Sem MTech VLSI', 'Pg', 'Theory', 'ece03'),
(277, 'II Sem MTech VLSI', 'Pg', 'Theory', 'ece03');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentId` varchar(10) NOT NULL,
  `departmentName` varchar(100) NOT NULL,
  `yearOfEstablishment` varchar(30) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contactNumber` varchar(100) NOT NULL,
  `officialMailId` varchar(100) NOT NULL,
  `hodName` varchar(100) NOT NULL,
  `hodContactNumber` varchar(100) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentId`, `departmentName`, `yearOfEstablishment`, `address`, `contactNumber`, `officialMailId`, `hodName`, `hodContactNumber`, `instituteName`) VALUES
('bt', 'bio-technology', '1990', '', '', 'hod_bt@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('ch', '', '', '', '', '', '', '', 'Ramaiah Institute of Technology'),
('chy', '', '', '', '', 'hod_chy@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('cse', 'Computer Science & Engineering', '1984', 'division of electrical sciences block, 1st floor', '080-23600822/23606939', 'hod_cse@msrit.edu', 'Dr. Anita Kanavalli', '9845899681\r\n', 'Ramaiah Institute of Technology'),
('cv', 'Civil Engineering', '1971', 'engineering sciences block', '080-23600822/23606939', 'hod-cv@msrit.edu', 'Dr. C G Puttappa', '9844290938', 'Ramaiah Institute of Technology'),
('data', 'Developers', '', '', '', '', '', '', 'Ramaiah Institute of Technology'),
('ece', 'Electronics and Communication Engineering', '1975', 'division of electrical sciences block, 3rd floor', '080-23600822/23606939', 'hod_ece@msrit.edu', 'Dr. S Sethu Selvi', '9481183798', 'Ramaiah Institute of Technology'),
('ee', '', '', '', '', '', '', '', 'Ramaiah Institute of Technology'),
('im', 'Industrial Engineering & Management', '1979', 'engineering sciences block', '080-23600822/23606939', 'hod_im@msrit.edu', 'Dr. G. S. Prakash', '9448226933', 'Ramaiah Institute of Technology'),
('is', 'Information Science & Engineering', '1992', 'division of electrical sciences block, 2nd floor', '080-23600822/23606939', 'hod_is@msrit.edu', 'DR. VIJAYA KUMAR B. P.', '9980634134', 'Ramaiah Institute of Technology'),
('it', '', '', '', '', 'hod_it@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('mat', '', '', '', '', 'hod_mat@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('mba', '', '', '', '', '', '', '', 'Ramaiah Institute of Technology'),
('mca', '', '', '', '', 'hod_mca@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('me', 'Mechanical Engineering', '1962', 'engineering sciences block', '080-23600822/23606939', 'hod-me@msrit.edu', 'Dr. Raji George', '9845318047', 'Ramaiah Institute of Technology'),
('ml', '', '', '', '', 'hod_ml@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('phy', '', '', '', '', 'hod_phy@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('te', 'Telecommunication and engineering', '', '', '', '', '', '', 'Ramaiah Institute of Technology');

-- --------------------------------------------------------

--
-- Table structure for table `department_industrial__collaboration_mou`
--

CREATE TABLE `department_industrial__collaboration_mou` (
  `slNo` int(11) NOT NULL,
  `coordinators` varchar(100) NOT NULL,
  `mouTitle` varchar(100) NOT NULL,
  `mouSignedWith` varchar(100) NOT NULL,
  `typeOfMou` varchar(50) NOT NULL,
  `nationalOrInternational` varchar(30) NOT NULL,
  `mouSignedDate` date NOT NULL,
  `validTill` varchar(30) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events_organized`
--

CREATE TABLE `events_organized` (
  `slNo` int(11) NOT NULL,
  `event` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `noOfParticipants` int(11) NOT NULL,
  `sponsors` varchar(300) NOT NULL,
  `coordinators` varchar(300) NOT NULL,
  `collaborators` varchar(300) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyId` varchar(10) NOT NULL,
  `facultyName` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `caste` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `natureOfAppointment` varchar(50) NOT NULL,
  `contactNumber` varchar(30) NOT NULL,
  `emailId` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `panNumber` varchar(30) NOT NULL,
  `accountNumber` varchar(30) NOT NULL,
  `pfNumber` varchar(30) NOT NULL,
  `hIndex` varchar(50) NOT NULL,
  `iIndex` varchar(50) NOT NULL,
  `about` varchar(500) DEFAULT NULL,
  `designation` varchar(20) NOT NULL,
  `industryExperience` varchar(20) NOT NULL,
  `researchExperience` varchar(20) NOT NULL,
  `teachingExperience` varchar(20) NOT NULL,
  -- `payScale` varchar(50) NOT NULL,
  `payScaleBasic` varchar(50) NOT NULL,
  `payScaleAgp` varchar(50) NOT NULL,
  -- `payScaleBand` varchar(50) NOT NULL,
  `grossSalary` varchar(50) NOT NULL,
  `highestQualification` varchar(20) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyId`, `facultyName`, `gender`, `address`, `religion`, `caste`, `category`, `dob`, `natureOfAppointment`, `contactNumber`, `emailId`, `password`, `panNumber`, `accountNumber`, `pfNumber`, `about`, `designation`, `industryExperience`, `researchExperience`, `teachingExperience`, `payScale`, `payScaleBasic`, `payScaleAgp`, `payScaleBand`, `highestQualification`, `departmentId`) VALUES
('bt01', 'krishnamurthytp@msrit.edu', 'Male', '#184, 4th Cross, 4th main, Mathikere Extension, Bangalore-560054', 'Hindu', 'Vokkaliga', 'General', '1986-10-22', 'Regular', '09538541385', 'krishnamurthytp@msrit.edu', 'bt01', 'BEXPK2232L', '141201011017388', 'KN/BN/8146/1631', 'Working as an assistant professor in biotechnology department of MSRIT. Areas of interests includes Food & Bioprocess engineering and Bioinformatics.', 'Professor', '00', '04', '07', '6th Pay', '21600', '6000', '15600-39100', 'MTech', 'bt'),
('bt02', 'Sharath R', 'Male', 'Department of Biotechnology, M S Ramaiah Institute of Technology, Vidya Soudh, MSR Nagar, Bangalore-54', 'Hindu', 'Lingayat', 'General merit', '1980-01-12', 'Regular', '9845884959', 'sharathsarathi@gmail.com', 'equrly', 'null', 'null', 'null', 'null', 'Assistant Professor', '1', '5', '9', 'null', 'null', 'null', 'null', 'PhD', 'bt'),
('bt03', 'Samrat K', 'Male', '#17, 4th A main, Kalyan Nagar, Nagarbhavi main road, Bangalore -560073', 'Hindu', 'Vokkaliga', 'General merit', '1988-05-07', 'Regular', '9019025377', 'samrasamrat@gmail.com', 'fgdotu', 'BIQPS1649A', '141201011013465', 'KN/BN/8146/1536', 'null', 'Assistant Professor', 'NIL', 'null', '6', 'null', '19050', '6000', '15600-39100', 'M.Tech', 'bt'),
('ch01', 'Mahendra Chinthala', 'Male', '20#, Venkateswara Nilaya, 8th Main, 3 rd Cross, Matikere, Bangalore', 'Hindu', 'Sadhu Chetty', 'OBC', '1986-07-06', 'Regular', '9655575685', 'mahendrac@msrit.edu', 'passhc', 'AOPPC5003A', '141201141000576', 'KN/BN/8146/1685', 'null', 'Assistant Professor', 'NIL', 'NIL', '3 Years', '', '15600', '6000', '15600-39100', 'PhD', 'ch'),
('ch02', 'Archna', 'Female', 'null', 'null', 'null', 'null', '1971-05-30', 'Regular', '9880034976', 'hod_ch@msrit.edu', '59pru0', 'null', 'null', 'null', 'null', 'Professor & Head', 'null', 'null', '24', 'null', 'null', 'null', 'null', 'PhD', 'ch'),
('ch03', 'Neelesh Singhal', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9448237413', 'singhal@msrit.edu', 'cv5p4u', 'null', 'null', 'null', 'null', 'Assistant Professor', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'ch'),
('chy02', 'Dr. Nagaraju Kottam', 'Male', 'Department of Chemistry, Ramaiah Institute of Technology, MSRIT Post, MSR Nagar, Bangalore-560054.', 'Hindu', 'Golla', 'Cat-I', '1975-12-25', 'Regular', '9901690354', 'knrmsr@gmail.com', 'yose9t', 'AGOPN8480F', '141201010016507', 'KN/BN/8146/1191', 'null', 'Associate Professor', '0', '15', '18', '6th Pay', '50720', '9000', '37400-67000', 'Ph.D', 'chy'),
('chy03', 'Dr. P. Murali Krishna ', 'Male', 'null', 'Hindu', 'Brahmin', 'GM', '1974-02-16', 'Regular', '9741418788', 'muralikp@msrit.edu', 'jtsd31', 'BEFPK6301C', '141201011006461', 'null', 'null', 'Assistant Professor', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'PhD', 'chy'),
('chy04', 'Dr. Sharanabasappa Patil ', 'Male', 'Department of Chemistry, Ramaiah Institute of Technology, MSRIT Post, MSR Nagar Bengalore-54', 'Hindu', 'Lingayath', 'IIIB', '1984-06-01', 'Regular', '9986109962', 'sbp7910@gmail.com', 't167p1', 'null', 'null', 'null', 'null', 'Assistant Professor ', 'null', '11', '11', 'null', 'null', 'null', 'null', 'Ph.D', 'chy'),
('cse01', 'Anita Kanavalli', 'Male', 'NO 25 ANASWARA 1ST MAIN, 2nd cross MSR Ngar', 'Christian', 'Protestant', 'GM', '1967-03-31', 'Regular', '9845899681', 'anithak@msrit.edu', 'rit', 'AKOPK7232J', '141201010012262', 'KN/BN/8146/0754', 'Dr. Anita Kanavalli is a working as the Head of Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include Adhoc networks, high performance computing and microprocessors.', 'Professor', '', '', '', '', '', '', '', '', 'cse'),
('cse02', 'Annapurna P. Patil', 'Female', '#308, C Block Gowri Apartment, NEW BEL Road', 'Hindu', 'Veershaiva Jang', 'GM 371J', '1972-10-10', 'Regular', '9945409177', 'annapurnap2@msrit.edu', 'rit', 'AIMPP9079L', '141201010013904', 'KN/BN/8146/0852', 'Dr. Annapurna P. Patil is working as a Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include Wireless Networks, Artificial Intelligence, Protocol Engineering, Cloud Computing and IOT, Data Structures and Analysis of Algorithms.', 'PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse03', 'Seema S', 'Female', '#327, 7TH CROSS,  3RD BLOCK, HMT layout, Vidyarany', 'Hindu', 'Marathi', 'GM', '1970-06-29', 'Regular', '9901688004', 'seemas@msrit.edu', 'rit', 'ARJPS9571N', '141201010010588', 'KN/BN/8146/0779', 'Dr. S. Seema is working as a Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include databases, data mining and big data, computer graphics, bioinformatics and data analytics.', 'PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse04', 'Jagadish S.K', 'Male', 'NO.79, 9TH MAIN, 6TH CROSS, J C Nagar, Kurubara ha', 'Hindu', 'Lingayath', 'GM', '1977-07-17', 'Regular', '9844413643', 'jagadish.k@msrit.edu', 'rit', 'AHRPK8437B', '141201010015421', 'KN/BN/8146/0942', 'Dr. Jagadish S. Kallimani is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include artificial intelligence, natural language processing, information retrieval, information extraction, and statistical machine learning.', 'ASSOCIATE PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse05', 'Jayalakshmi D.S', 'Female', '#325/6, \"SRINIDHI\", F BLOCK, Sahakara nagar', 'Hindu', 'Bramhin', 'GM', '1967-04-21', 'Regular', '8197820657', 'jayalakshmids@msrit.edu', 'rit', 'AHGPD5509A', '141201010018116', 'KN/BN/8146/0984', 'Jayalakshmi D. S. is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include cloud computing, big data, computer graphics.', 'ASSOCIATE PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse06', 'Monica R Mundada', 'Female', '137/A1, 13th cross ASCS layout, Near RMV Hosptial,', 'Hindu', 'Marwadi', 'GM', '1974-09-15', 'Regular', '9008365087', 'monica@msrit.edu', 'rit', 'AIWPM8762H', '141201010015521', 'KN/BN/8146/0924', 'Dr. Monica R. Mundada is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include theory of computation, wireless sensor networks, computer networks, data communications, and IOT.', 'ASSOCIATE PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse07', 'Sanjeetha R', 'Female', 'Sri Manjunatha Swamy Nilaya, #78, 2nd cross, Vinay', 'Hindu', 'vokkaliga', 'vokkaliga', '1980-10-16', 'Regular', '9986406819', 'sanjeetha.r@msrit.edu', 'rit', 'BTYPS2093H', '141201011000968', 'KN/BN/8146/1102', 'Sanjeetha R. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include software defined networks, computer networks, data communications, operating systems, and database systems.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse08', 'A Parkavi', 'Female', 'C/O, C.SINGARAM, NO.124, 6TH MAIN, 3RD CROSS, IST ', 'Christian', 'Pallan', 'SC', '1979-05-05', 'Regular', '9902524685', 'parkavi.a@msrit.edu', 'rit', 'APHPP4199M', '141201011000983', 'KN/BN/8146/1097', 'Parkavi A. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include data mining, educational data mining, social network analysis, compiler design and educational technology.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse09', 'Veena GS ', 'Female', '#48, 2nd Main, 2nd Stage, Near Aveksha Hospital, S', 'Hindu', 'Bramhin', 'Other', '1972-06-15', 'Regular', '9886030842', 'veenags@msrit.edu', 'rit', 'AKGPG5600C', '141201011000958', 'KN/BN/8146/1099', 'Veena G.S. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, image processing, embedded systems, mathematical modeling, cognition, IOT.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse10', 'J Geetha', 'Female', 'NO-106 SLV Durga Apartments Vidyaranipura,  BANGAL', 'Hindu', 'reddy', 'GM', '1979-07-16', 'Regular', '9916912573', 'geetha@msrit.edu', 'rit', 'ALDPG4963E', '141201011001787', 'KN/BN/8146/1161', 'Geetha J. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include cloud computing, big data, semantic web, graph theory and web designing.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse11', 'T.N R. Kumar', 'Male', '#1/3(212) 3RD CROSS CHIKKANNA, Gardenns Shankarpur', 'Hindu', 'Bramhin', 'Other', '1967-06-19', 'Regular', '9844636865', 'tnrkumar@msrit.edu', 'rit', 'AHWPR2220G', '141201011002750', 'KN/BN/8146/1174', 'Dr. T.N.R.Kumar is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include image processing, software engineering and computer networks.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse12', 'Mamatha  Jadhav V', 'Female', '#2709 11TH MAIN D BLOCK, II stage Rajajinagar Blor', 'Hindu', 'Marathi', 'Other', '1973-10-22', 'Regular', '9844094962', 'mamsdalvi@msrit.edu', 'rit', 'AKDPJ5187A', '141201011011032', 'KN/BN/8146/1263', 'Mamatha Jadhav V. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include computer networks, database management systems and data mining.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse13', 'Chethan C T', 'Male', '#208 PATEL CHANNAPA\'S, 1ST Main Dwaraka nagar BSK ', 'Hindu', 'Gowda', '3A', '1985-10-28', 'Regular', '9449035534', 'ctchethan@msrit.edu', 'rit', 'AIDPC7398G', '141201011004919', 'KN/BN/8146/1299', 'Mr. Chethan is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include analytics, entrepreneurship, incubation, consultancy, and industry association.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse14', 'Sini Anna Alex', 'Female', '#171, BETHEL, 1st main, AYR Layout, Shettyhalli, J', 'Christian', 'Orthodox', 'GM', '1983-02-24', 'Regular', '9845437091', 'sinialex@msrit.edu', 'rit', 'CDKPS5458K', '141201011005688', 'KN/BN/8146/1322', 'Mrs. Sini Anna Alex is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, ubiquitous computing, compiler design, mobile and wireless sensor networks, distributed, database systems and algorithm analysis.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse15', 'Sardar Vandana Sudhakar', 'Female', '#14, Venkateshwara Layout, MSR Nagar', 'Hindu', 'Mahar', 'SC', '1979-05-19', 'Regular', '9886878953', 'vandana.s@msrit.edu', 'rit', 'BCBPS9768K', '141201011007877', 'KN/BN/8146/1398', 'Vandana Sudhakar Sardar is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include information retrieval and machine learning.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse16', 'Meera Devi A Kawalgi', 'Female', '#307, Garuda Royal Apt, Sharadamba Nagar, Jalahall', 'Hindu', 'Lingayath', 'GM', '1984-09-13', 'Regular', '8792068734', 'meera_ak@msrit.edu', 'rit', 'AWCPP1652M', '141201011007888', 'KN/BN/8146/1400', 'Meeradevi A. K. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include Computer Networks, Information Security, Data Communications, WSN & IoT.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse17', 'Malle Gowda M', 'Male', '#243/2 , II CROSS , mathikere(near univercell)', 'Hindu', 'Gowda', 'OBC', '1983-09-12', 'Regular', '9535834471', 'mallegowdam@msrit.edu', 'rit', 'AQXPM5349P', '141201011007996', 'KN/BN/8146/1418', 'Mr. Mallegowda M. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include WSN, SOA, middleware solution, IOT, and embedded system.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse18', 'Dr.H.V. Divakar', 'Male', '#105, TELECOM COLONY, behind new timberyard', 'Hindu', 'Bramhin', 'Other', '1965-07-03', 'Regular', '9980315974', 'divakar.h@msrit.edu', 'rit', 'AAYPD4812D', '141201011009452', 'KN/BN/8146/1453', 'Dr. Divakar Harekal is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include software engineering, embedded system design and cloud computing.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse19', 'Chandrika Prasad', 'Female', '#143, I STAGE, II CROSS, B.E.M.L., Basaveshwara Na', 'Hindu', 'Bramhin', 'Other', '1980-05-28', 'Regular', '9845053122', 'chandrika@msrit.edu', 'rit', 'AHZPC9945N', '141201011009473', 'KN/BN/8146/1454', 'Chandrika Prasad is working as an assistant professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include operating system and are teaching computer organization and UNIX system programming.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse20', 'Rajarajeswari S', 'Female', '#501, SIRI RESIDENCY, I CROSS, PAPPANA LAYOUT, V.N', 'Hindu', 'Vanniya Kula Ks', 'OBC', '1975-08-02', 'Regular', '9886958079', 'raji@msrit.edu', 'rit', 'ANFPR9711D', '141201011009606', 'KN/BN/8146/1467', 'S. Rajarajeswari is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include cloud computing, big data and data sciences, artificial intelligence, data mining and image processing.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse21', 'Pramod C Sunagar', 'Male', '#18, \"GURUKRUPA NILAYA\" 17TH A CROSS, BNS LAYOUT, ', 'Hindu', 'Ambiger', 'CAT - I', '1984-12-16', 'Regular', '9886358659', 'pramods@msrit.edu', 'rit', 'BPVPS0308L', '141201011013869', 'KN/BN/8146/1552', 'Mr. Pramod Sunagar is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include data analytics algorithms, android development, java & j2ee and data structures.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse22', 'Sowmya B J', 'Female', '829, 1ST CROSS, 4 BLOCK, HMT LAYOUT', 'Hindu', 'Lingayath', '3BG', '1986-11-30', 'Regular', '9886733368', 'sowmyabj@msrit.edu', 'rit', 'CJRPS4964D', '141201011015419', 'KN/BN/8146/4801', 'Sowmya B. J. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include software engineering, computer organization, computer security and data analytics.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse23', 'Pradeep kumar D ', 'Male', 'NO 740, 9MAIN 9 BLOCK, NAGARBAVI', 'Hindu', 'Gowda', 'OBC', '1985-09-27', 'Regular', '9886715235', 'pradeepkumard@msrit.edu', 'rit', 'BCOPD2999E', '141201011017395', 'KN/BN/8146/5011', 'Mr. Pradeep Kumar D. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include data mining, data sciences, big data, machine learning and internet of things.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse24', 'Chetan  Shetty ', 'Male', 'NO 13, B 306, 3RD FLOOR, RENAISSANCE BRINDAVAN, UT', 'Hindu', 'Bunts', 'GM', '1986-02-24', 'Regular', '9686575665', 'chetanshetty@msrit.edu', 'rit', 'CPFPS0001H', '141201011008572', 'KN/BN/8146/5014', 'Chetan Shetty is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include data analytics and teach design and analysis of algorithms, software engineering and computer security.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse25', 'Ganeshayya I Shidaganti', 'Male', '106, MANASA BULDING, SIDDESWARA PARK, HUBLI', 'Hindu', 'Lingayath', 'GM', '1987-11-29', 'Regular', '9880251131', 'ganeshayyashidaganti@msrit.edu', 'rit', 'ETQPS2411N', '141201011017391', 'KN/BN/8146/1629', 'Ganeshayya Shidaganti is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include cloud computing, big data, and computational intelligence.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse26', 'Darshana A Naik', 'Female', '1592, 6 MAIN E BLOCK, 2ND STAGE , SHIVA KRUPA, RAJ', 'Hindu', 'Konkan Maratha', 'GM', '1987-04-25', 'Regular', '9900821964', 'darshananaik@msrit.edu', 'rit', 'APHPN3564N', '141201011017362', 'KN/BN/8146/1626', 'Darshana A. Naik is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, data mining, big data networks, social network and image processing.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse27', 'Srinidhi H', 'Male', 'NO 62, 3RD CROSS, 4TH MAIN, KIRLOSKAR COLONY, 1ST ', 'Hindu', 'Bramhin', 'GM\r\n', '1989-11-07', 'Regular', '9591690191', 'srinidhih@msrit.edu', 'rit', 'CVJPS2592H', '141201011017392', 'KN/BN/8146/1630', 'Srinidhi Hiriyannaiah is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include big data and analytics, internet of things, algorithms and data structures, software engineering and information management.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse28', 'Hanumantha Raju R', 'Male', 'Sri Maruti Nilaya, 4th ward, vinayak nagar, Dodbal', 'Hindu', 'Gowda', 'OBC', '1988-12-20', 'Regular', '9901287316', 'hmrcs@msrit.edu', 'rit', 'AGRPH6781L', '141201011019438', 'KN/BN/8146/1650', 'Mr. Hanumantha Raju R. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include internet of things and wireless sensor networks.', 'Assistant Professor', '', '', '', '', '', '', '', '', 'cse'),
('cse29', 'Aparna R', 'Female', 'No. 13, Sastry Apartments, Gannappa Gardens, 8th C', 'Hindu', 'Brahmin', 'GM', '1979-09-17', 'Regular', '9886867568', 'aparna@msrit.edu', 'rit', 'AJXPA7953J', '141201011019432', 'KN/BN/8146/1651', 'Aparna R. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, cloud computing, high performance computing, data mining, data structures and database systems.', 'Assistant Professor', '', '', '', '', '', '', '', '', 'cse'),
('cse30', 'Shilpa S Chaudhari', 'Female', 'J-21, Shriram Sadhana Apt, Gokula Mathiker, Bangal', 'Hindu', 'Leva Patidhar', 'GM', '1976-10-29', 'Regular', '9886054151', 'shilpasc29@msrit.edu', 'rit', 'AEJPC6125R', '141201010018835', 'KN/BN/8146/D010', 'Dr. Shilpa Chaudhari is working as Associate Professor at department of CSE, MSRIT, Bangalore at present. She has been a technology educator and corporate trainer since 1999. Her   areas of  research and teaching include network security, RTOS, computational intelligence, wireless networks, embedded', 'Associate Professor', '', '', '', '', '', '', '', '', 'cse'),
('cse31', 'Raghuram Krishnapuram', 'Male', 'null', 'null', 'null', 'null', '1956-02-13', 'null', 'null', 'raghuk@msrit.edu', 'rit', 'AGIPK4840L', 'null', 'null', 'null', 'PROFESSOR, R&D Head', '', '', '', '', '', '', '', '', 'cse'),
('cse32', 'Ramani S', 'Male', 'Malleshwaram, Bangalore, 560003', 'Hindu', 'Bramhin', 'GM', '1954-04-17', 'Regular', '9343457890', 'ramanis@msrit.edu', 'rit', 'ABVPS3193C', 'null', 'null', 'Dr. S. Ramani is working as a professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include software architecture, e-governance, networking, and information security.', 'PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse33', 'Nagabhushan A M', 'Male', '12_seetharamaiah lay out, Yeswanthpur, 560022', 'Hindu', 'Lingayath', 'GM', '1963-07-13', 'Visiting', '9844864526', 'bhushan@msrit.edu', 'rit', 'AAIPN8611J', 'null', 'null', 'Bhushan A. Matad is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include future work skills, and start-up software engineering.', 'Associate Professor', '', '', '', '', '', '', '', '', 'cse'),
('cv01', 'Nandeesh M S', 'Male', '977/A 4th Main D Block, 2nd Stage Rajajinagar, Ban', 'Hindu', '', 'General', '1990-07-04', 'Regular', '9482421729', 'nandeeshms@msrit.edu', 'cv06', 'DFCPS6026E', '141201141001504', 'KN/BN/8146/106', 'Mr. Nandeesh M S has completed B.E in Civil Engineering from UVCE, Bangalore and M.Tech in Structural Engineering from MSRIT, Bangalore. He has previously worked as Assistant Professor in Acharya Institute of Technology. His fields of interest are Earthquake Resistant Structural Design, Rehabilitati', 'Assistant Professor', '0', '1', '2', '6th Pay', '15600', '6000', '15600-39100', 'M.Tech', 'cv'),
('cv02', 'Charan Prasad M', 'Male', '# 72, NHCS Layout, 3rd Stage , 4th Block , Basaweswarnagar , Bangalore-560079', 'Hindu', 'Kamma Naidu', 'GM', '1985-09-06', 'Regular', '9945045236', 'charanprasad_civil@msrit.edu', 'qmdezj', 'AQZPC2306G', '141201011017961', 'PYPNY0008146000000', 'null', 'Assistant Professor', '0', '1', '6', 'AICTE Pay Scale', 'null', 'null', '', 'Master of Engineerin', 'cv'),
('cv03', 'Shilpa D N', 'Female', '#1854, 2nd cross, Devarajnagar, Doddaballapur, Bangalore (R), 561203.', 'Hindu', 'Devanga', '2A', '1990-10-13', 'Regular', '9742049966', 'shilpa@msrit.edu', 'tzvbxm', 'FZBPS8000K', '138001141000414', 'KN/BN/8146/1647', 'null', 'Assistant Professor', '0', '1 year as Intern', '4 years', 'null', '22920', '6000', '15600-39100', 'M Tech', 'cv'),
('data01', 'Sanath', '', '', '', '', '', '0000-00-00', '', '', 'sanathbhargav26@gmail.com', 'dev01', '', '', '', NULL, '', '', '', '', '', '', '', '', '', 'data'),
('data02', 'Sammed', 'Male', '#545klhlklf.jskljl, 6598', 'null', 'null', 'null', '0000-00-00', 'Regular', '', 'sammedravanavar@gmail.com', 'dev02', 'null', 'null', 'null', 'Hi, I am a developer', '', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'data'),
('ece01', 'flory.f@msrit.edu', 'Female', 'Department o of Electronics and Communication Engineering', 'Christain', 'null', 'null', '1967-05-23', 'Regular', '9739087890', 'flory.f@msrit.edu', 'ece05', 'AASPF7891Q', '141201011008550', 'KN/BN/8146/1430', 'associate professor', 'Assistant Professor', 'NILL', 'NILL', '20', '', '27,570.00', '', '', 'M.Tech', 'ece'),
('ece02', 'Dr. K. Indira', 'Female', 'No 19 10th block 1 stage Nagarbhavi Bangalore 72', 'Hindu', 'Vokalliga', 'General', '1966-02-20', 'Regular', '9449446302', 'indira@msrit.edu', 'rit', 'AACPI7219P', '141201010010586', 'KN/BN/8146/0669', 'Dr. K. Indira is working as a Professor in the Electronics and Communication Department of MSRIT. Her subjects of interests are signal processing, image processing, neural networks, speech processing, and fuzzy logic.', 'Professor', 'nil', '14', '26', '', '37400-67000', '10000', '37400-67000-10000', 'Ph.D', 'ece'),
('ece03', 'Raguram S', 'Male', '89 I Floor, II Main, MLA Layout, RT Nagar', 'Hindu', 'Brahmin', 'GM', '1979-08-28', 'Regular', '9663772904', 'raghuram@msrit.edu', 'r6fqtb', 'DARPS3337A', '141201011017361', 'KN/BN/8146/1623', 'null', 'Associate Professor', '-', '10', '8', 'null', '37,600 ', '9,000', '37,600 - 67,400', 'PhD', 'ece'),
('ee02', 'Dr. Pradip kumar dixit', 'Male', 'Flat No. G3, Ground Floor, “HARIPRIYA”, Swagath Sanketh, # 1801/4, 5th Main, 10th Cross, R. P. C. Layout, Hampinagar, Bangalore - 560040', 'Hindu', 'Brahmin', 'General', '1964-08-15', 'Regular', '8095841325', 'dix.hve@msrit.edu', '9jrt3v', 'null', 'null', 'null', 'null', 'Professor', 'null', '10', '28', 'null', 'null', 'null', 'null', 'PhD', 'ee'),
('ee03', 'Dr. Premila Manohar', 'Female', 'NE  215 , Block 8 Indian Institute of Science Campus Bangalore 560 012 ', 'null', 'null', 'General', '1958-05-18', 'Regular', '09880339326', 'premilamanohar@msrit.edu', 'autx92', 'null', 'null', 'null', 'null', 'Professor & Head', '7 years', '1 year', '17 years', 'null', 'null', 'null', 'null', 'PhD', 'ee'),
('eee01', 'tushar@msrit.edu', 'Male', 'A-301, Sruthika Springfields, Singapura layout, Ba', 'Hindu', 'Brahmin', '', '1984-12-19', 'Regular', '9916942948', 'tushar@msrit.edu', 'passyu', 'AIDPN2028E', '', '', 'null', 'Assistant Professor', '', '', '', '', '', '', '', '', 'ee'),
('iem01', 'Deepak Kumar', 'Male', 'G2 SR PETALS APT DOLLARS COLNY', 'HINDU', 'CHOUDHARY ', 'GM', '1984-08-07', 'Regular', '9886026812', 'deepak_kr246@msrit.edu', 'passtp', 'ARDPD3330Q', '141201011018191', 'KN/BN/8146/1586', 'null', 'Associate Professor', '0', '06 yrs', '09 yrs', '15600-39000', '28000', '6000', '', 'M.Tech (P.hD)', 'im'),
('im02', 'Dr. M Rajesh', 'Male', '20, 4th Main, A E C S Layout, R M V II Stage, Bengaluru 560094', 'Hindu', 'Vokkaliga', 'General Merit', '1975-01-21', 'Regular', '9844057175', 'write.to.mrajesh@gmail.com ', 'tkle94', 'ALAPR8523Q', '141201011008506', 'KN/BN/8146/1428', 'null', 'Associate Professor ', '2.5', '13', '18', 'VI', '46,400.00', '9000', '36400', 'Ph.D', 'im'),
('im03', 'Dr. M Shilpa ', 'Female', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9620210230', 'mallikashilpa@gmail.com ', 'luai34', 'null', 'null', 'null', 'null', 'Associate Professor', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'im'),
('is01', 'Dr. Mydhili K. Nair', 'Female', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9880092392', 'mydhili.nair@msrit.edu', 'oz2lq5', 'null', 'null', 'null', 'null', 'Professor', '9 years', 'null', '12 years', 'null', 'null', 'null', 'null', 'Ph.D', 'is'),
('is02', 'Pushpalatha MN', 'Female', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9739012668', 'pushpalathamn1@gmail.com', 'n763iw', 'null', 'null', 'null', 'null', 'Assistant Professor', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'is'),
('is04', 'Dr. Lingaraju GM', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9448127558', 'gmlraju@gmail.com', '8zdmdm', 'null', 'null', 'null', 'null', 'Professor', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'is'),
('it01', 'Dr.A.Saravanan', 'Male', 'null', 'null', 'null', 'null', '1981-12-07', 'Regular', '9035244865', 'bagatsaran@msrit.edu', 'it01', 'null', 'null', 'null', 'null', 'Assistant Professor', '0', '5', '13', '', '', '', '', 'PhD', 'it'),
('it02', 'Dr.H.S.NIRANJANA MURTHY', 'Male', 'null', 'null', 'null', 'null', '1974-07-29', 'Regular', '9738336549', 'hasnimurthy@msrit.edu', 'dez6kb', 'null', 'null', 'null', 'null', 'Associate Professor', 'null', '1 year', '19 years', 'null', 'null', 'null', 'null', 'Ph.D', 'it'),
('it03', 'M D Nandeesh', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9886525725', 'mdnandeesh@msrit.edu', 'lg8fx3', 'null', 'null', 'null', 'null', 'Assistant Professor', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'it'),
('mat01', 'amonica@msrit.edu', 'Female', 'dept of Mathematics', 'hindu', 'kshatriya', 'nil', '1968-07-23', 'Regular', '9980004923', 'amonica@msrit.edu', 'mat01', 'AHKPA4953B', '141201011004646', 'KN/BN/8146/1282							', 'null', 'Associate Professor', 'nil', '25 years', '15 years', '37400-67000', '57,080', '9000', '', 'Ph. D.', 'mat'),
('mat02', 'B. Azghar Pasha', 'Male', 'No. 125, 6th A Main, J.C. Nagar', 'Muslim', 'Muslim', '2-B', '0000-00-00', 'Regular', '9986159870', 'azgharpasha@msrit.edu', 'gbqrpd', 'null', 'null', 'null', 'null', '', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'mat'),
('mat03', 'Nancy Samuel', 'Female', 'F1, 1st foor, Deccan Elite, No. 13 Devi Nagar main road, Lottegolahalli, Bangalore 94', ' Christian', 'Indian Christia', 'OC', '1984-10-20', 'Regular', '7829375417', 'nancysamuel@msrit.edu', '0bd5en', 'AMEPN7042H', '141201011017374', 'KN/BN/8146/1638', 'null', 'Assistant Professor', '0', '8 years', '8 years', 'null', '24320', '6000', '15600 - 39100', 'Ph. D', 'mat'),
('mba01', 'Arun Kumar D C', 'Male', 'shriniket Apartment, Mathikere , Bangalore-54', 'hindu', 'Daivagna Brahmi', 'II-A', '1986-02-26', 'Regular', '9886445300', 'way2arun@gmail.com', 'qsdert', 'BCIPA1147B', '141201011017378', '', 'null', 'Assistant Professor', '1 Years', '4 Years', '9 years', '6th Pay', '24310', '6000', '15600-37400', 'MBA', 'mba'),
('mba02', 'Dr.G.Vijaya Kumar', 'Male', 'N0. 1082, II Main road, Patalamma Layout, Kadugudi, Bangalore-560067', 'Hindu', 'Vokkaliga', 'III A', '1978-07-20', 'Regular', '9986011404', 'vijaykushad@gmail.com', '1hdmui', 'AETPV6248L', '14120101113410', 'KN/BN/8146/1527', 'Dr.G.Vijaya Kumar', 'Assistant Professor', 'Nill', '6.5', '12 years', '15600 -6000 -21600', '25,050.00', '6000', '15600-39100(AGP)', 'Ph.D.', 'mba'),
('mba03', 'Dr.Santhosh Kumar', 'Male', '15th E Cross,  Bandappa Garden, Muthyala Nagar Bangalore 560054', 'Hindu', 'Lingayath', 'III B', '1980-10-22', 'Regular', '+91-9538081106', 'santhosh_mba@msrit.edu', 'plkaef', 'BKGPS3097G', '141201011012338', 'KN/BN/8146/1513', 'null', 'Assistant Professor', '2.5 years', '5.5 years', '13 years', 'null', '25,810.00', '6000', 'Rs 15,600-39,100 (AG', 'Ph.D.', 'mba'),
('mca01', 'nithyabn@msrit.edu', 'Female', 'Flat No. 44/1, Site No. 22, Vasanth, 1 E Cross, Mathikere Extension Bengaluru 560054', 'Hindu', 'Balijja', 'OC', '1981-03-27', 'Regular', '9900087291', 'nithyabn@msrit.edu', 'mca01', 'ALYPB7231R', '141201011001362', 'KN/BN/8146/1524', 'Assistant Professor ', 'Assistant Professor', '6 yrs', '2 yrs', '6 yrs', '', '', '', '', 'Master of Computer A', 'mca'),
('mca02', 'Chethan Venkatesh ', 'Male', '#2557, 22 Main 30 Cross BSK 2 Stage Bangalore 560070', 'Hindu', 'Brahmin', 'General Merit', '1979-05-04', 'Regular', '9945178821', 'chethanv@msrit.edu', 'ccrekn', 'AERPV8613B', '141201011002755', 'KN/BN/8146/1187', 'null', 'Assistant Professor', 'Nil', '4 Years', '16 Years', 'null', '30,360', '6000', '15,600-39,100 ', 'M.Phil', 'mca'),
('mca03', 'Dr. S. Jagannatha', 'Male', 'No 21, 2nd Cross, CIL Layout, R T Nagar  Post,  Bangalore 560032', 'Hindu', 'Balaja', 'GM', '1965-06-04', 'Regular', '9341344173', 'jagannatha@msrit.edu', 'gxmdab', 'ACYPJ0195K', '141201010014558', 'KN/BN/8146/0869', 'null', 'Associate Professor ', 'null', '14', '25', 'null', '50,720.00', '9000', '37400-67000 with an ', 'MCA, M.Phil,  Ph. D', 'mca'),
('me01', 'MOHANDAS K N', 'MALE', 'Department of Mechanical Engineering, Ramaiah Institute of Technology, MSR Nagar, Bangalore - 560054', 'Hindu', 'Namadhari', 'General', '1977-10-02', 'Regular', '09900158367', 'mohandaskn@msrit.edu', 'passmd', 'ANOPM8923B', '141201011009480', 'KN/BN/8146/1443', 'null', 'Associate Professor', 'NIL', '8 YEARS', '16 YEARS', '', '38800', '9000', '37400 - 67000 ', 'Ph.D.', 'me'),
('me02', 'Dr. Sunith Babu', 'Male', 'Department of Mechanical Engineering, Ramaiah Institute of Technology, MSR Nagar, MSRIT Post Bangalore 560 054', 'Hindu', 'Reddy', 'NA', '1978-04-08', 'Regular', '9008001824', 'sunithbabu@msrit.edu', 't5pbbd', 'ACHPL3087H', '141201011004591', 'KN/BN/8146/1285', 'null', 'Associate Professor', '0.5 Years', '6', '15', 'null', '46,400.00', '9000', '37400 - 67000', 'Ph.D ', 'me'),
('me03', 'Dr. Sridhar B S', 'Male', 'DEPARTMENT OF MECHANICAL ENGINEERING', 'HINDU', 'BALAJIGA', 'GENERAL', '1976-02-05', 'Regular', '9845466362', 'sridharbs@msrit.edu', 'b1de45', 'BCEPS6787D', '141201011004588', 'KN/BN/8146/1254', 'null', 'Assistant Professor', '0', '8', '21', 'null', '35790', '8000', 'null', 'PhD', 'me'),
('ml01', 'Dr.C K Narayanappa', 'Male', 'Dept. Of Medical Electronics, MSRIT, MSR Nagar, Bengaluru-560054', 'Hindu', 'Vokkaliga', '3A', '1970-06-01', 'Regular', '9845355829', 'c_k_narayanappa@msrit.edu', 'gc3ymp', 'ACDPN4743J', '141201010015576', '', 'null', 'Associate Professor', '00', '14 years', '23 years', 'null', 'null', 'null', 'null', 'Ph.D', 'ml'),
('ml02', 'Mrs.Prabharavi', 'Female', 'Dept of Medical Electronics', 'Hindu', 'Brahmin', 'GM', '1968-02-04', 'Regular', '9845696372', 'prabharavi@msrit.edu', 'uyhcp3', 'ABWPR3968H', '141201010016460', 'null', 'null', 'Assistant Professor', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'ml'),
('ml03', 'Dr.Sanjay H S', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9591376736', 'sanjay@msrit.edu', '3cnnca', 'null', 'null', 'null', 'null', 'Assistant Professor', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'ml'),
('phy01', 'kalpana@msrit.edu', 'Female', '842, 1st  main, 1st cross, HAL 3rd stage, Bangalore 560075.', 'Hindu', 'Balija naidu', 'General', '1985-07-17', 'Regular', '9620025345', 'kalpana@msrit.edu', 'phy01', 'FTAPS2654J', '141201011017365', 'KN/BN/8146/1636', 'null', 'Assistant Professor', 'nil', '10 years', '5 years', '', 'Rs. 23610/-', 'Rs. 6000', 'Rs. 15600-39100', 'Ph.D', 'phy'),
('phy02', 'Vaijayanthi Rao', 'Female', '842, 1st  main, 1st cross, HAL 3rd stage, Bangalore 560075.', 'hindu', 'Balija naidu', 'general', '1979-03-15', 'Regular', '9731031561', 'vaijayanthi@msrit.edu', 'sgzk86', 'FTAPS2654J', '141201011017365', 'KN/BN/8146/1636', 'null', 'Assistant Professor', 'null', '10', '5', 'null', 'Rs 23610/-', 'Rs 6000/-', 'Rs 15600-39100', 'Ph.D', 'phy'),
('phy03', 'Dr Seema Aggarwal', 'Female', 'B-7, IWST Colony, 18th Cross, Malleswaram, Bangalore-3', 'Hindu', 'Vaish', 'General', '1968-07-04', 'Regular', '9844763736', 'seema.a@msrit.edu', 'jjr32j', 'AEOPA0730K', '141201011004645', 'KN/BN/8146/1278', 'null', 'Associate Professor', 'Nil', '', '19 years', 'Rs. 37400-67000', '41720', '9000', 'null', 'Ph.D.', 'phy'),
('te01', 'Dr. B. K. Sujatha', 'female', 'Flat no. 308, Rohitha Gardens, Opp.Tatanagar water', 'Hindu', 'Balija', 'null', '1964-05-04', 'Permanent', '+91 9448963245', 'bksujatha@msrit.edu', 'qytred', 'AOOPS7241B', '141201010021132', 'KN/BN/8146/1064', '', 'Professor & Head', '', '', '', '', '', '', '', '', 'te'),
('te02', 'Dr. ViswanathTalasila', 'male', 'Dept of Telecommunication Engineering, RIT, Bangal', 'HINDU', 'GM', 'GM', '1975-03-07', 'Permanent', '9900597164', 'viswanath.talasila@msrit.edu', 'jdegsv', 'AGHPT7850N', '141201011013657', 'KN/BN/8146/1538', 'Professor', 'Professor', '', '', '', '', '', '', '', '', 'te'),
('te03', 'Dr. Shobha K. R.', 'female', '77/2, \" Deepodaya\", 1st main Road, Malleswaram, Ba', 'HINDU', 'BRAHMIN', 'null', '2018-10-13', 'Full time', '9886493763', 'shobha_shankar@msrit.edu', 'dycsjf', 'AACPU4102H', '141201010015400', ' KN/BN/8146/0914', 'Associate professor', 'Associate professor', '', '', '', '', '', '', '', '', 'te'),
('te04', 'Dr. SatishTunga', 'male', '347/H, 9th J Main Road, 2nd Cross, near pipeline,V', 'Hindu', 'Brahmin', 'General', '1962-06-22', 'permanent', '08023204202(R) 9448384202(M)', 'satish.tunga@msrit.edu', 'oeyvsm', 'AKPPS9283A', '141201010016616', 'KN/BN/8146/0956', 'null', 'Associate Professor', '', '', '', '', '', '', '', '', 'te'),
('te05', 'S.J. Krishna Prasad', 'male', '#453, Lakshmi Narasimha Krupa,Srinagar Pipeline,Br', 'Hindu', 'Brahmin', 'null', '1964-11-19', 'Permanent ', '9448734179', 'krishnaprasad@msrit.edu', 'chridk', 'ALRPK0444L', '141201011002788', 'KN/BN/8146/1184', 'Associate Professor', 'Associate Professor', '', '', '', '', '', '', '', '', 'te'),
('te06', 'Dr. S. G. ShivaprasadYadav', 'male', 'Department of TCE, RIT, MSR Nagar, MSRIT Post, Ban', 'Hindu', 'Golla', 'null', '1980-12-02', 'Full time', '9880500861', 'shivaprasad@msrit.edu', 'shvris', 'BRYPS2217P', '141201011004178', 'KN/BN/8146/1495', 'Dr. Shivaprasad has around 18 years of Industry, Research and Teaching experience in the field of Embedded Systems, DSP and Wireless Networks. During this tenure most of the time is dedicated in Research and developing & delivering lectures/Training for students and corporate engineers at all levels', 'Associate Professor', '', '', '', '', '', '', '', '', 'te'),
('te07', 'Dr. ParimalaPrabhakar', 'Female', 'Sugandha, D146, Ds max signature,RMV 2nd stage, De', 'Hindu', 'Veerashiva Ling', 'null', '1974-04-18', 'Permanent', '9845119418', 'parimalap@msrit.edu', 'shcshd', 'AJMPP0809P', '141201010015399', 'KN/BN/8146/0920', 'Assistant Professor', 'Assistant Professor', '', '', '', '', '', '', '', '', 'te'),
('te08', 'Venu K.N', 'male', 'null', 'null', 'null', 'null', '0007-00-00', 'null', 'null', 'venu1.kn@msrit.edu', 'idfbwf', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', 'te'),
('te09', 'Ramya H. R.', 'Female', 'Dept of TCE.RIT,M S Ramaiah Nagar,Bengaluru-560054', 'Hindu', 'Iyengar', 'null', '1979-05-15', 'Permanent', '9845809853', 'ramya_hr@msrit.edu', 'ssrhnu', 'AJSPR2834E', '141201011000988', 'KN/BN/8146/1119', 'Assistant Professor', 'ASSISTANT PROFESSOR', '', '', '', '', '', '', '', '', 'te'),
('te10', 'Umesharaddy', 'male', 'Ramaiah Institute of Technolgy, Bangalore-560054', 'Hindu', 'Raddy', 'null', '1982-06-01', 'Full Time', '9901073574', 'umesh.reddy@msrit.edu', 'awgkgb', 'ALTPR1511P', '141201011004563', 'KN/BN/8146/1268', 'Asst Professor', 'Asst. Professor', '', '', '', '', '', '', '', '', 'te'),
('te11', 'Nisha S.L.', 'female', 'Department Of Telecommunication Engineering', 'Hindu', 'Nadar', 'null', '1978-11-17', 'Permanent', '9341959586', 'nisha_sln@msrit.edu', 'dxfhjd', 'AFAPN5855R', '141201011009557', 'KN/BN/8146/1461', 'Assistant professor', 'Assistant Professor', '', '', '', '', '', '', '', '', 'te'),
('te12', 'Kusuma S. M.', 'female', 'TCE Department, RIT', 'HINDU', 'Lingayat', 'null', '1970-05-20', 'Full time', '9900949383', 'kusumasm@msrit.edu', 'fzxhgd', 'BDFPK5802H', '141201011013482', 'KN/BN/8146/1548', 'Assistant Professor', 'Assistant Professor', '', '', '', '', '', '', '', '', 'te'),
('te13', 'Swetha Amit', 'female', 'Dept of Telecommunication Engineering, RIT, Bangal', 'Hindu', 'Maratha', 'null', '1983-10-28', 'permanent', '9901998724', 'swetha.amit@msrit.edu', 'tfuygj', 'AVHPA2551J', '141201011013472', 'KN/BN/8146/1547', 'null', 'Assistant Professor', '', '', '', '', '', '', '', '', 'te'),
('te14', 'Arvind Kumar G.', 'arvind kum', 'DEPT OF TCE., RIT, BANGALORE', 'HINDU', 'BALGIJA', 'null', '0000-00-00', 'PERMAMENT', '8095139694', 'arvind@msrit.edu', 'xdjjsb', 'null', 'null', 'null', 'asst.prof', 'Assistant Professor', '', '', '', '', '', '', '', '', 'te');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_conference_symposia`
--

CREATE TABLE `faculty_conference_symposia` (
  `slNo` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `role` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_conference_symposia`
--

INSERT INTO `faculty_conference_symposia` (`slNo`, `title`, `place`, `date`, `role`, `type`, `facultyId`) VALUES
(1, 'Driving Big Data with Hadoop Technologies', 'Dept of MCA, MSRIT', '2014-08-21', 'null', '', 'cse27'),
(2, 'IEEE Event on Software Engineering in Industry', 'RVCE, Bengaluru', '2016-01-23', 'null', '', 'cse27'),
(3, 'Staff development program on Desktop and cloud based office utilities', 'Dept of CSE, MSRIT', '2017-01-19', 'null', '', 'cse27'),
(4, 'Advances and Research challenges in the Applications of Artificial Intelligence in Gaming, Medical I', 'Dept of CSE, MSRIT', '2016-07-18', 'null', '', 'cse27'),
(5, 'One of the resource person in “Advances and Research Challenges in the Applications of Artificial In', 'MSRIT, Bangalore.', '2016-07-18', 'null', '', 'cse07'),
(6, 'The 1st International Workshop on Recommendation systems supported Teaching and Learning Environment', 'IIT Bombay, India', '2016-11-28', 'null', '', 'cse08'),
(7, '“Educational data mining using R and Python” , The 8th IEEE International Conference on Technology f', 'Indian Institute of Technology, Bombay, Mumbai', '2016-12-02', 'null', '', 'cse08'),
(8, 'Delivered Expert talk and shown demo to MTech students  “Data lake and Data Analytics “', 'RV college of Engineering, Bangalore', '2016-12-19', 'null', '', 'cse08'),
(9, 'IoT& Cyber Security using Watson &Bluemix“', 'MSRIT, Bangalore.', '2017-01-09', 'null', '', 'cse08'),
(10, 'Best practices in Outcome Based Education- case study based approach', 'RYMCE, Ballari College of engineering', '2017-08-11', 'null', '', 'cse02'),
(11, 'Tutorial conduction on Recommendation systems using Data mining techniques for Educational Domain in', 'Reva University,Bangalore', '2017-08-17', 'null', '', 'cse08'),
(12, 'Driving Big Data with Hadoop Technologies', 'Dept of MCA, MSRIT', '2014-08-22', 'null', '', 'cse27'),
(13, 'Staff development program on Desktop and cloud based office utilities', 'Dept of CSE, MSRIT', '2017-01-20', 'null', '', 'cse27'),
(14, 'Advances and Research challenges in the Applications of Artificial Intelligence in Gaming, Medical I', 'Dept of CSE, MSRIT', '2016-07-19', 'null', '', 'cse27'),
(15, 'The 1st International Workshop on Recommendation systems supported Teaching and Learning Environment', 'IIT Bombay, India', '2016-11-29', 'null', '', 'cse08'),
(16, '“Educational data mining using R and Python” , The 8th IEEE International Conference on Technology f', 'Indian Institute of Technology, Bombay, Mumbai', '2016-12-03', 'null', '', 'cse08'),
(17, 'IoT& Cyber Security using Watson &Bluemix“', 'MSRIT, Bangalore.', '2017-01-10', 'null', '', 'cse08'),
(18, 'Tutorial conduction on Recommendation systems using Data mining techniques for Educational Domain in', 'Reva University,Bangalore', '2017-08-18', 'null', '', 'cse08'),
(25, 'National Conference on Signal Processing and Automation', 'Padmashree Dr. D. Y. Patil Institute of Engineering and Technology, Pune', '2007-09-06', 'Presented', 'National', 'ece02'),
(37, '2nd Cyber-Physical Systems Symposium', 'IISC ,Bangalore', '2018-07-11', 'Deputed', '', 'te07'),
(38, 'I4C-2016', 'MSRIT, BANGALORE', '2016-10-04', 'DEPUTED', '', 'te10'),
(41, 'International conference on Optical Engineering Two day conference from 07/26/2012 to 07/28/2012', 'VTU campus Belgaum', '2012-07-28', 'Deputed from RIT', '', 'te05'),
(42, 'Three day International  I4C hosted by Circuit branches RIT from 12/20/2014 to 12/23/2014', 'RIT', '2014-11-23', 'Deputed from RIT', '', 'te05'),
(43, ' IEEE International conference on Smart Sensors and Systems IC-SSS-2015from 12/21/2015 to12 /23/ 20', 'RIT', '2015-12-23', 'Deputed from RIT', '', 'te05'),
(44, 'Three day International  I4C hosted by Circuit branches RIT from 10/04/2016 to 10/06/2016', 'RIT', '2016-10-06', 'Deputed from RIT', '', 'te05'),
(45, 'International conference    on advanced trends in engineering  ICATE-2018 from 04/06/2018 to 04/07/2', 'Datta Meghe college of engineering,Airoli ,Navi Mu', '2018-04-07', 'Deputed from RIT', '', 'te05'),
(46, 'National Conference on Emerging Mobile Technologies &Policies, 05/28/2012 to 05/30/2012', 'RIT,Bangalore ', '2012-05-30', 'Deputed from RIT', '', 'te05'),
(47, '1.    Two day Symposium 2018 IEEE- “Women in Engineering: Technology Development and Community Outre', 'Bangalore', '2018-04-08', 'Invited', '', 'te03'),
(48, '2.    Two day Symposium on “Women in Engineering Empowering Innovation and Leadership Qualities” hel', 'RIT, Bangalore', '2017-03-08', 'Deputed', '', 'te03'),
(49, '3.    One day ARM Technology Symposia 2013, 12th Nov 2013, leMeridian ,Bangalore', 'Bangalore', '2013-11-12', 'Invited', '', 'te03'),
(50, 'ICRAES 2016', 'MSRIT Bangalore', '2018-09-07', 'Presented', 'International', 'cv01'),
(52, ' International conference on Recent Innovative Trends in Computer Science and Applications - ICRITCS', 'RIT, Bangalore', '2016-10-21', 'Presented', 'International', 'mca02'),
(53, 'International Conference on CIRCUITS, CONTROLS, COMMUNICATIONS AND COMPUTING(I4C-2016)', 'RIT, Bangalore', '2016-10-04', 'Participant', 'International', 'mca02'),
(54, 'Zinc Oxide Nanoparticles Reinforced Chitosan Membrane as a Potential Wound Dressing Material', 'SRM University, Chennai', '2017-08-09', 'Presented', 'International', 'bt03'),
(55, 'Efficacy of Copper Nanoparticles Synthesized using Homeopathic Mother Tincture Calendula officinalis', 'Mahatma Gandhi University, Kottayam, Kerala.', '2016-08-12', 'Presented', 'International', 'bt03'),
(56, 'Evaluation of Improved Antifungal Activity of Fluconazole – Silver  nanoconjugate against Pathogenic', 'Sathyabama University, Chennai', '2015-07-08', 'Participant', 'International', 'bt03'),
(57, 'Nanoformulation of Commercially available Antifungal drug and Their Evaluation for  Improved Antifun', 'Mahatma Gandhi University, Kottayam, Kerala.', '2014-12-19', 'Participant', 'International', 'bt03'),
(58, 'Growth promoting effect of microbial consortia on major oil seed crop Arachis hypogea (L.) ', 'St. Xavier’s college, Palayamkottai', '2013-11-28', 'Participant', 'International', 'bt03'),
(59, 'Synthesis, Characterization and Improved Anti Bacterial Activity of Chitosan Nanoparticles Incorpora', 'Sathyabama University, Chennai', '2013-07-24', 'Participant', 'International', 'bt03'),
(60, 'SESTEC12', 'Mumbai', '2012-02-27', 'Presented', 'National', 'ch01'),
(61, 'International Conference on Chemical and Bioprocess Engineering', 'NIT Waragal', '2013-11-23', 'Presented', 'International', 'ch01'),
(62, 'CHEMCON13', 'ICT Mumbai', '2013-12-27', 'Presented', 'National', 'ch01'),
(63, 'Interenational Conference on Innovative Technologies and Management for Water Security', 'NIOT Chennai', '2014-02-12', 'Presented', 'International', 'ch01'),
(64, 'SESTEC 14', 'BARC Mumbai', '2015-02-24', 'Others', 'National', 'ch01'),
(65, 'ICREAS 16', 'RIT Bangalore', '2016-09-07', 'Presented', 'International', 'ch01'),
(66, 'Recent Advances in   Condensed Matter Physics (RACMP-09)', 'National Institute of Technology, Hamirpur,H.P', '2009-05-22', 'Presented', 'National', 'phy01'),
(67, '16th National Symposium on SSNTD and Their Applications', 'G.N.D.U. Amritsar', '2009-11-09', 'Presented', 'National', 'phy01'),
(70, 'Science Conference to celebrate Dr. Homi J. Bhabha Birth Century', 'KU, Kurukshetra, Haryana', '2010-01-23', 'Participant', 'National', 'phy01'),
(71, '17th National Symposium on Thermal analysis ', 'KU, Kurukshetra, Haryana', '2010-03-09', 'Participant', 'National', 'phy01'),
(72, 'Recent Advances in Material Science', 'Dyal Singh College, Karnal, Haryana ', '2010-02-25', 'Presented', 'National', 'phy01'),
(73, 'Swift Heavy ions in Materials Engineering and Characterization ', 'Inter-University Accelerator Centr, New Delhi', '2010-10-06', 'Participant', 'International', 'phy01'),
(74, 'International Conference on Material Science and Technology ', 'St. Thomas College, Pala, Kerala', '2012-06-10', 'Presented', 'International', 'phy01'),
(75, 'Conference on Swift Heavy ions in Materials Engineering and Characterization', 'Inter-University Accelerator Centr, New Delhi', '2012-10-09', 'Presented', 'International', 'phy01'),
(76, 'International Conference on Green Methods for separation,Purification and Nanomaterial Synthesis', 'Jain University, Bengaluru', '2018-04-24', 'Presented', 'International', 'phy01'),
(77, 'International Symposium on Recent Trends in Macromolecular Structure and function', 'chennai', '2008-01-11', 'Participant', 'International', 'phy02'),
(78, 'International conference Recent Engineering & Technology', 'New Horizon College of Engineering', '2018-05-05', 'Presented ', 'International', 'it02'),
(79, 'International conference on Control, Power, Communication and Computing, IEEE', 'Vimal Jyothi College of Engineering, Kannur, Keral', '2018-03-23', 'Presented ', 'International', 'it02'),
(80, 'International conference on Signal processing & Communications,  IEEE', 'Karunya University, Coimbatore', '2017-07-29', 'Presented ', 'International', 'it02'),
(81, 'International conference on Smart sensors & Systems, IEEE', 'M.S.R.I.T, Bangalore', '2015-12-18', 'Presented ', 'International', 'it02'),
(82, 'International conference on Circuits, Communication, Control and Computing, IEEE', 'M.S.R.I.T, Bangalore', '2014-11-21', 'Presented ', 'International', 'it02'),
(83, 'International Conference on Recent Advances in Engineering sciences', 'M.S.R.I.T, Bangalore', '2014-09-04', 'Presented ', 'International', 'it02'),
(84, 'Innovative computing, information & Communication Technology', 'Sai Ram College of engineering, Tambaram, Chennai', '2009-12-16', 'Presented', 'International', 'it02'),
(85, '40th National Symposium on Instrumentation (NSI-40) ', 'Kumaraguru college of Technology, Coimbatore', '2015-10-30', 'Presented ', 'national', 'it02'),
(86, 'Computational Control Systems & Optimization (CCSO-2013)', 'Dr. Ambedkar Institute of Technology, Bangalore', '2013-05-10', 'Presented ', 'national', 'it02'),
(87, 'Computational Control Systems & Optimization (CCSO-2015)', 'Dr. Ambedkar Institute of Technology, Bangalore', '2015-04-23', 'Presented ', 'national', 'it02'),
(88, 'Computational Control Systems & Optimization (CCSO-2011)', 'Dr. Ambedkar Institute of Technology, Bangalore', '2011-05-12', 'Presented ', 'national', 'it02'),
(89, 'Survey on energy issues and quality of service in Wireless multimedia Sensor network', 'Bangalore', '2016-02-27', 'Presented', 'National', 'is01'),
(90, 'Smart Materials & its Applications', 'Ramaiah Institute of Technology', '2015-12-21', 'Participant', 'SDP', 'cv03'),
(91, 'Second International Conference on Recent Advances in Engineering Sciences', 'Ramaiah Institute of Technology', '2016-09-08', 'Participant', 'International', 'cv03'),
(92, 'Second International Conference on Recent Advances in Engineering Sciences', 'MSRIT, Bangalore', '2016-09-08', 'Participant', 'International', 'cv02'),
(93, 'ICRAES 2016', 'MSRIT', '2016-06-12', 'Participant', 'International', 'me02'),
(94, 'ICRAES 2018', 'MSRIT', '2018-09-23', 'Participant', 'International', 'me02'),
(95, 'Autodesk University', 'Mumbai', '2013-11-12', 'Presented', 'National', 'me02'),
(96, 'One day National seminar on High Voltage Engg', 'BIET, Davangere', '1999-11-12', 'Co-Ordinator', 'National', 'ee02'),
(97, 'National Conference on Zen and Tao of Electrical and Electronics Engineering', 'MSRIT, Bangalore', '2014-01-07', 'Others', 'International', 'ee02'),
(98, 'Recent trends and applications in electrical and electronics systems', 'Don Bosco Institute of Technology, Bangalore.', '2012-10-12', 'Session Chair', 'National', 'ee02'),
(99, 'National conference on Power Systems (NCPS-2012) ', 'Acharya Institute of Technology, Bangalore', '2012-10-13', 'Session Chair', 'National', 'ee02'),
(100, 'Recent Advances in Electrical and Electronics Engineering (NCRAEE)', 'UBDTCE, Davangere', '2013-06-17', 'Session Chair', 'National', 'ee02'),
(101, 'International conference on Science, Technology & Managemt (ICSTM- 2017)', 'IETE, Bangalore', '2017-09-24', 'Session Chair', 'International', 'ee02'),
(102, 'International conference on Science, Technology & Managemt (ICSTM- 2017)', 'IETE, Bangalore', '2017-11-26', 'Session Chair', 'International', 'ee02'),
(103, 'Neotec in Electrical and Electronics Engineering', 'RRCE, Bangalore', '2012-05-09', 'Resource Person', 'National', 'ee02'),
(104, 'Circuits, Controls, Communication and Computing (I4C – 2016)', 'RIT, Bangalore', '2015-10-04', 'Participant', 'International', 'mca01'),
(105, 'Smarter Cities (SOSC – 2017) ', 'RIT, Bangalore', '2017-03-10', 'Participant', 'National', 'mca01'),
(106, 'International conference on Science, Technology & Management (ICSTM- 2017)', 'IETE, Bangalore', '2017-09-24', 'Keynote Speaker', 'International', 'ee02'),
(107, '3rd International conference on Recent Advances in Engineering Sciences 2018', 'RIT, Bengalur', '2018-09-26', 'Joint Secretary ', 'International', 'im02'),
(108, 'International conference on smart sensor and systems', 'MSRIT', '2015-12-21', 'secretary', 'International', 'it01'),
(109, 'INTERNATIONAL CONFERENCE ON CIRCUITS, COMMUNICATION, CONTROL AND COMPUTING ', 'MSRIT', '2014-08-03', 'organizing member', 'International', 'it01'),
(110, 'INTERNATIONAL CONFERENCE ON CIRCUITS, COMMUNICATION, CONTROL AND COMPUTING (I4C 2016)', 'MSRIT', '2016-08-03', 'secretary', 'International', 'it01'),
(111, 'INTERNATIONAL CONFERENCE ON CIRCUITS, COMMUNICATION, CONTROL AND COMPUTING (I4C 2018)', 'MSRIT', '2018-08-03', 'Joint secretary', 'International', 'it01'),
(112, '1.		Innovativeness in Teaching Internal Combustion Engine Using Alternate Assessment Tool 	IC	Intern', 'Bangalore', '2015-01-15', 'Presented', 'International', 'ece01'),
(113, 'Pedestrian Detection using Single Box Convergence with Iterative DCT based Haar Cascade Detector and', 'Bangalore', '2015-11-02', 'Presented', 'International', 'ece01'),
(114, 'Characterization and Analysis of Silicon Carbide & Carbon Nanotube Blended Composite Materials for A', 'BANGALORE', '2012-07-11', 'CO SECRETARY', 'International', 'me03'),
(115, 'Fluid Dynamics and its applications', 'BNM Institute of Technology, Bangalore', '2017-07-12', 'Presented', 'International', 'mat03'),
(116, 'Women In engineering,IEEE ANTS 2016 International Conference', ' IISC   Bangalore', '0000-00-00', 'Session Chair', 'International', 'is01'),
(117, 'women in Engineering IEEE ANTS 2017', 'Bhubaneshwar,orissa', '2017-12-16', 'Session Chair', 'International', 'is01'),
(118, 'women in Engineering', 'MSRIT, Bangalore', '2017-03-08', 'Presented', 'National', 'is01'),
(119, 'Implementing and analysing different Feature Extraction Techniques using EEG based BCI', 'NIT,Goa', '2017-04-25', 'Presented', 'International', 'is04'),
(120, 'Real-time EEG based Object Recognition System Using Brain Computer Interface” by International Confe', 'Bangalore', '2017-02-05', 'Presented', 'International', 'is04'),
(121, 'Symposium on Next Generation Sequencing and Microarray Data Analysis', ' BT and Computer Applications.  M S Ramaiah Institute of Technology, Bangalore-54', '2016-01-19', 'Participant', 'National', 'mca03'),
(122, ' “Smart Cities”   ', 'M S Ramaiah Institute of Technology, Bangalore-54. ', '2017-03-10', 'Participant', 'National', 'mca03'),
(123, 'National level conference on Software Engineering', 'Dept of Computer Applications, RIT', '2014-02-19', 'Participant', 'National', 'mca03'),
(124, 'International  Conference on Recent Trends in Computer Science and Applications', 'RIT, Bangalore 54 ', '2017-08-22', 'Coordinator', 'International', 'mca03'),
(125, 'IEEE ANTS Women in Engineering', '(IISC )Bangalore', '2016-11-08', 'Session Chair', 'International', 'is01'),
(126, 'Next Generation Sequencing and Microarray Data Analysis', 'RIT, Bangalore', '2016-01-19', 'Co-Ordinator', 'National', 'mca01'),
(127, 'Software Engineering – NCSE’14 ', 'RIT, Bangalore', '2014-02-20', 'Co-Ordinator', 'National', 'mca01'),
(128, 'IEEE ANTS Women in Engineering', 'MSRIT Bangalore', '2016-03-08', 'Organiser', 'National', 'is01'),
(129, ' CCICI-NIST', 'TAJ vivantabangalore', '2016-06-04', 'Organiser', 'International', 'is01'),
(130, 'International conference on Challenges and Opportunities in Mechanical Engineering, Industrial Engin', 'Bangalore', '2012-07-11', 'Organising committee', 'International', 'mba03'),
(131, 'National seminar on Empowering Indian Society towards Cashless Economy.ISBN978-93-86891-01-3.', 'Bangalore', '0000-00-00', 'Organising committee', 'National', 'mba03'),
(132, ' Google Applied CS Program ', 'MSRIT Bangalore', '2016-07-05', 'Organiser', 'National', 'is01'),
(133, 'National conference on Transforming the Quality Paradigm to Achieve Make in India A Practical Realit', 'Bangalore', '0000-00-00', 'Organising committee', 'National', 'mba03'),
(134, 'National conference Rural Women Entrepreneurship in India: Way for Social and Economic Empowerment s', 'Bangalore', '0000-00-00', 'Organising committee', 'National', 'mba03'),
(135, 'National Conference on Research in Commerce, Management and Information Technology NCRCMIT -2017 20t', 'Bangalore', '0000-00-00', 'Presented', 'National', 'mba03'),
(136, 'National Seminar on “Sustainable Development in Power Sector through Renewable Energy Resources spon', 'Bangalore', '2016-02-25', 'Presented', 'National', 'mba03'),
(137, 'National Conference on  ‘Business Excellence for Inclusive and Sustainable Growth’, Department of Ma', 'Bangalore', '2015-05-07', 'Presented', 'National', 'mba03'),
(138, 'National Conference on Challenges and opportunities in services sector, Bangalore, Karnataka, India,', 'Bangalore', '2011-04-12', 'Presented', 'National', 'mba03'),
(139, 'New perspectives in Indian Management”. April 2014. ISBN: 978-93-5142-664-6.', 'Bangalore', '2014-04-20', 'Presented', 'National', 'mba03'),
(140, 'National conference on Management and Technology. ', 'Bangalore', '0000-00-00', 'Presented', 'National', 'mba03'),
(141, 'National Conference  on  communication & Signal Processing', ' Thadomal Shahani Engineering College,Mumbai', '2007-04-12', 'Presented', 'National', 'ece02'),
(142, 'National Conference on VLSI Design, Signal Processing & communication', ' S I T, Tumkur', '2007-02-17', 'Presented', 'National', 'ece02'),
(143, 'International Conference on Computational Intelligence and Multimedia Applications', 'MepcoSchlenk College of Engineering, Sivakasi', '2007-12-13', 'Presented', 'International', 'ece02'),
(144, 'Strategic Approach Towards Indian Foreign Policy: Issues and Challenges', 'RIT, Bangalore', '2017-10-12', 'Co-Ordinator', 'National', 'mba01'),
(145, 'National conference on Image Processing, Computer vision & Pattern Recognition', 'P E S College of Engineering, Mandya', '2009-08-24', 'Presented', 'National', 'ece02'),
(146, 'Spatial IT for Power System Applications', 'IEE Bangalore Chapter', '2003-10-01', 'Participant', 'National', 'ee03'),
(147, 'Signal Processing,  Intelligent Systems and Networking', 'MSRIT, Bangalore', '2003-12-04', 'Participant', 'National', 'ee03'),
(148, 'Second International Conference on Signal and Image processing', 'VidyaVikas Institute of Engineering and Technology, Mysore', '2009-08-12', 'Presented', 'International', 'ece02'),
(149, 'Women in Science and Engineering', 'J F Walch Technolgy center, GE Whitefield, Bangalore ', '2005-11-24', 'Participant', 'National', 'ee03'),
(150, 'National seminar on Empowering Indian Society towards Cashless Economy.ISBN978-93-86891-01-3', 'Bangalore', '0000-00-00', 'Organising committee', 'National', 'mba02'),
(151, 'National seminar on Empowering Indian Society towards Cashless Economy.ISBN978-93-86891-01-3', 'Bangalore', '0000-00-00', 'Organising committee', 'National', 'mba02'),
(152, 'National seminar on Empowering Indian Society towards Cashless Economy.ISBN978-93-86891-01-3', 'Bangalore', '0000-00-00', 'Organising committee', 'National', 'mba02'),
(153, 'National conference on Transforming the Quality Paradigm to Achieve Make in India A Practical Realit', 'Bangalore', '0000-00-00', 'Organising committee', 'National', 'mba02'),
(154, 'national conference Rural Women Entrepreneurship in India: Way for Social and Economic Empowerment ', 'Bangalore', '0000-00-00', 'Organising committee', 'National', 'mba02'),
(155, 'National Seminar on “Sustainable Development in Power Sector through Renewable Energy Resources spon', 'Bangalore', '0000-00-00', 'Organising committee', 'National', 'mba02'),
(156, 'National Conference on  ‘Business Excellence for Inclusive and Sustainable Growth’, ', 'Bangalore', '0000-00-00', 'Organising committee', 'National', 'mba02'),
(157, ' National conference on “New perspectives in Indian Management”', 'Bangalore', '0000-00-00', 'Organising committee', 'National', 'mba02'),
(158, 'Nano Technology Integrated manufacturing and mictrosystems for automotive and m/c tool sector', 'CMTI Bangalore', '2008-02-11', 'Participant', 'International', 'ee03'),
(159, 'All India NGO summit for environment ', 'Art of living international center, Bangalore', '2008-01-31', 'Participant', 'National', 'ee03'),
(160, 'IISc centenary conference', 'IISc, Bangalore', '2008-12-12', 'Participant', 'International', 'ee03'),
(161, 'Nanotechnology', 'VIT, Vellore', '2010-08-24', 'Participant', 'National', 'ee03'),
(162, 'Smart materials, Structures and Systems', 'IISc, Bangalore', '2012-01-04', 'Participant', 'International', 'ee03'),
(163, 'World Summit on Accreditation - WOSA2012', 'New Delhi, India', '2012-03-25', 'Participant', 'International', 'ee03'),
(164, 'PSCAD and RTDS Asia conference', 'Bangalore', '2012-01-11', 'Participant', 'International', 'ee03'),
(165, 'Smart materials, Structures and Systems', 'R&DE(Engg), Pune', '2013-09-06', 'Participant', 'National', 'ee03'),
(166, 'Smart materials, Structures and Systems', 'ISSS,  IISc, MSRIT and CMTI  Bangalore', '2014-07-08', 'Participant', 'International', 'ee03'),
(167, 'Transformations in Engineering Education', 'BMSCE - IUCEE, Bangalore', '2015-01-05', 'Participant', 'International', 'ee03'),
(168, 'CIGRE SC B4 Meeting and International Tutorials and Colloquium on HVDC and Power Electronics', 'Agra, India', '2015-09-21', 'Presented', 'National', 'ee03'),
(169, 'Smart sensors and Systems ', 'MSRIT, Bangalore', '2015-12-21', 'Participant', 'International', 'ee03'),
(170, 'International conference on Circuits, Control, Communication and Computing (I4C-2016)', 'MSRIT, Bangalore', '2016-10-04', 'Participant', 'International', 'ee03'),
(171, 'Recent Trends in Electrical and Electronics Engineering', 'Shridevi Institute of Engg and Technology, Tumkur', '2013-03-16', 'Keynote Speaker', 'National', 'ee03'),
(172, 'National Womens Science Congress', 'M S Ramiah Institute of Technology, Bangalore', '2011-09-09', 'Presented', 'National', 'ece02'),
(173, 'HVDC Transmission in India ', 'Power grid corporation of India Ltd', '2014-05-02', 'Presented', 'National', 'ee03'),
(174, '3 days NBA Sponsored fourth World Summit on Accreditation (WOSA – 2018) with Theme: Challenges and', 'New Delhi', '2018-09-07', 'Participant', 'International', 'me01'),
(175, 'One day TEQIP-1.3 sponsored workshop on “New Model Curriculum for PG Course (M.Tech/MBA/MCA) CBCS ', 'BNMIT, Bangalore', '2018-08-06', 'Participant', 'National', 'me01'),
(176, '3 days National Conference on “Sharing of Innovative Ideas and achievements of Centers of Excellen', 'SIT, Yumkur', '2016-04-21', 'Participant', 'National', 'me01'),
(177, '3 days National Level Seminar on “Non Destructive Evaluation” ', 'Hyderabad', '2015-11-26', 'Participant', 'National', 'me01'),
(178, 'Comparative Study on Cytotoxic and bactericidal effect of Nanoscale Zero Valent Iron Synthesized thr', 'Mahatma Gandhi University, Kottayam, Kerala.', '2016-08-12', 'Participant', 'International', 'bt02'),
(179, 'Making of a Digital India-Renewed Challenges Opportunities and Effective Deliverables', 'RIT', '2017-11-16', 'Organizing Committee member', 'National', 'iem01');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_guest_lecture`
--

CREATE TABLE `faculty_guest_lecture` (
  `slNo` int(11) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_guest_lecture`
--

INSERT INTO `faculty_guest_lecture` (`slNo`, `organization`, `title`, `date`, `facultyId`) VALUES
(1, 'RIT, Bangalore', 'Vocational Course on “Advanced Java Programming”', '2013-01-07', 'cse21'),
(2, 'MSRIT Bangalore', 'Python Programming  for 5 weeks', '2013-01-07', 'cse10'),
(3, 'MSRIT', 'Takeaways of T4E IEEE conference, OBE national seminar to CSE Department Teaching Faculties', '2015-01-01', 'cse08'),
(4, 'PMU, Thanjavur', 'TCP/IP in for MCA students', '2015-01-05', 'cse08'),
(5, 'RIT, Bangalore', 'Vocational Course on “Java Programming”', '2014-01-07', 'cse21'),
(6, 'MSRIT Bangalore', 'Python Programming  for 5 weeks', '2014-01-07', 'cse10'),
(7, 'IEEE RVCE Software Engineering Chapter', 'Talk  on “Agile Methodology”,  ', '2016-01-01', 'cse02'),
(8, 'First National   Conference/Workshop on Enhancing Information Technology Education (EITE), NIT Goa.', 'Talk on “Artificial Intelligence and Cognitive Computing: The next Big Revolution in Information Tec', '2016-01-01', 'cse02'),
(9, 'RIT, Bangalore', 'Vocational Course on “Android Application Development”', '2015-01-07', 'cse21'),
(10, 'Dept of CSE, MSRIT', 'Python Programming (Vocational course)', '2015-01-06', 'cse27'),
(11, 'Dept of CSE, MSRIT', 'Web Application development (Vocational course)', '2015-01-06', 'cse27'),
(12, 'BMSIT, Bengaluru', 'Setting up CUDA', '2016-01-01', 'cse27'),
(13, 'MSRIT Bangalore', 'Python Programming  and Advanced Java Programming', '2015-01-07', 'cse10'),
(14, 'MSRIT Bangalore', 'Advanced Java Programming', '2015-01-07', 'cse20'),
(15, 'Conference on recent trends in 4G/5G wireless mobile communication: Dept. of EC, MSRIT', 'Talk on\" Protocol Engineering: From Specification, to Design to Implementation \".', '2016-01-07', 'cse02'),
(16, 'RIT, Bangalore', 'Internet of Things', '2016-01-10', 'cse28'),
(17, 'RIT, Bangalore', 'Python Programming', '2017-01-07', 'cse28'),
(18, 'AIET, Moodbidri', 'Python Programming', '2016-01-08', 'cse28'),
(19, 'RIT, Bangalore', 'Desktop and cloud based utilities', '2017-01-01', 'cse28'),
(20, 'RIT, Bangalore', 'Internet of Things', '2017-01-05', 'cse28'),
(21, 'RIT, Bangalore', 'Vocational Course on “Android Application Development”', '2017-01-07', 'cse21'),
(22, 'RIT, Bangalore', 'Desktop and cloud based utilities', '2017-01-01', 'cse21'),
(23, 'RIT, Bangalore', 'Advances and Research Challenges in the Applications of Artificial Intelligence in Gaming, Medical I', '2017-01-07', 'cse21'),
(24, 'Alva’s Institute of of Engineering and Technology, Moodbidri', 'Python Programming', '2016-01-08', 'cse27'),
(25, 'MSRIT,  Bangalore', 'Advanced Java Programming for 5 weeks', '2016-01-07', 'cse10'),
(26, 'MSRIT', 'Three Days SDP on “Desktop and Cloud Based Office Utilities”', '2017-01-01', 'cse25'),
(27, 'R V College of Engineering, Bangalore', ' IEEE CS Chapter expert talk on Data Lake', '2016-01-12', 'cse03'),
(28, 'RIT, Bangalore', 'Advances and Research Challenges in the Applications of Artificial Intelligence in Gaming, Medical I', '2016-01-07', 'cse14'),
(29, 'MSRIT,Bangalore', 'Web application', '2016-01-07', 'cse29'),
(30, 'Dept of CSE, MSRIT', 'Python Programming (Vocational course)', '2017-01-07', 'cse27'),
(31, 'MSRIT,  Bangalore', 'Advanced Java Programming for 5 weeks', '2017-01-07', 'cse10'),
(32, 'Conference on “Challenges and Opportunities in Industry 4.0: Manufacturing and operations in smart f', 'Fundamentals of Internet of Things (IoT)', '2017-01-07', 'cse02'),
(33, 'ACM Women in Research (ISDB-ACM-WIR 2018) SAIT, Indore, MP, India.', 'Applying Machine Learning techniques for Big Data Analytics', '2018-01-01', 'cse02'),
(34, 'MSRIT,Bangalore', 'Data Science course , Vocational Course', '2017-01-07', 'cse08'),
(35, 'MSRIT,Bangalore', 'Web application', '2017-01-07', 'cse29'),
(36, 'MSRIT,Bangalore', 'Data Science course , Vocational Course', '2017-01-07', 'cse24'),
(37, 'RIT, Bangalore', 'Vocational Course on “Android Application Development”', '2017-01-07', 'cse23'),
(38, 'RIT, Bangalore', 'Web application', '2017-01-07', 'cse25'),
(39, 'null', 'Python Programming', '2017-01-11', 'cse28'),
(40, 'CMRIT, Bangalore', 'FDP on “Wireless Networks and IoT”', '2018-01-01', 'cse30'),
(41, 'MSRIT, Bangalore', 'Web application', '2016-01-07', 'cse29'),
(57, 'workshop on “Sensor Data Fusion: Trends, Solutions and applications, Department of E&I, MSRIT', 'Image Fusion Algorithms and its implementation ', '2016-07-26', 'ece02'),
(71, 'workshop on “Advances in Signal Processing and Pattern Recognition”, Dept of EC,MSRIT', 'Laboratory session on Signal Processing and Pattern Recognition ', '2013-07-29', 'ece02'),
(83, 'Invited talk delivered at IETE Bengaluru centre ', '“ Rectifiers, Transistors and Regulators  Theorotical  ideas and Design aspects”. ', '2018-05-04', 'te05'),
(84, 'Inauguration of the Department of Students Association Annual Activity, Faculty of Engineering, Chri', 'An Uncertain Talk - Is anything certain at all?', '2017-08-24', 'te02'),
(85, 'IIT-Madras ', 'NPTEL lectures recording (on Control Engineering)', '2017-06-08', 'te02'),
(86, 'VJTI-Mumbai and IIT-Madras', 'Workshop on Complex Networks', '2017-03-21', 'te02'),
(87, 'Stanford University', 'State Controllability', '2015-06-08', 'te02'),
(88, 'University of Groningen, Netherlands', 'Workshop on Mathematical Control Theory', '2015-07-12', 'te02'),
(89, 'NITK – Surtakal', 'INTEL Youth Enterprise Workshop', '2014-04-15', 'te02'),
(90, 'IETE Bangalore centre for the Summer School programme in Electronics and   Computers (SUSIEC) for', 'Fundamentals of Electronic Devices Part II Linear ICs 741 OPAMP & characteristics’, Oscillator, 555 ', '2018-05-06', 'te13'),
(91, 'Dept of Telecommunication Engineering, BMSIT,Bangalore', 'Introduction to MATLAB Antenna Toolbox', '2018-08-03', 'te13'),
(93, 'CMR Institute of Technology, Bangalore', 'Advanced Industrial Automation', '2018-01-04', 'me01'),
(94, 'M.S.Ramaiah Polytechnic, Bangalore', 'Introduction to Non-Destructive Testing', '2017-08-11', 'me01'),
(95, 'M.S.RAMAIAH INSTITUTE OF TECHNOLOGY, BANGALORE', 'Processing of Materials, Materials Characterization and Testing', '2017-01-18', 'me01'),
(96, 'M.S.RAMAIAH INSTITUTE OF TECHNOLOGY, BANGALORE', 'Hard Turning & its Applications', '2016-01-05', 'me01'),
(97, 'M.S.RAMAIAH INSTITUTE OF TECHNOLOGY, BANGALORE', 'Recent Trends in Advanced Materials and Manufacturing Processes', '2015-01-01', 'me01'),
(98, 'HKBK College of Engineering', 'Cyber Forensic', '2018-01-10', 'mca02'),
(99, 'MSRIT', '“How to teach effectively in the classroom for faculty members at MSRIT Bangalore.', '2016-07-24', 'mba03'),
(100, 'Dr.AIT', 'Chair person for national conference CCSO 2013', '2013-05-10', 'it02'),
(101, 'Dr.AIT', 'Chair person for national conference NCTI 2018', '2018-06-06', 'it02'),
(102, 'Autodesk', 'Autodesk University', '2014-11-16', 'me02'),
(103, 'Autodesk', 'Autodesk University Speaker', '2013-12-03', 'me02'),
(104, 'Autodesk', 'Autodesk University', '2012-11-12', 'me02'),
(105, 'Autodesk', 'Autodesk University', '2011-11-11', 'me02'),
(106, 'Autodesk', 'Autodesk University', '2010-11-11', 'me02'),
(107, 'KREC, Surathkal ', 'Mathematical Models for Estimation of Pollution Flashover voltages', '1994-12-26', 'ee02'),
(108, 'Grasim Industries, Kumarapattanam, Harihar', 'Cables', '1997-04-26', 'ee02'),
(109, 'DRR Govt. Polytechnic, Davangere', 'Energy Management', '2000-03-01', 'ee02'),
(110, 'BIET, Davangere ', 'Analytical Models for estimation of pollution flashover voltages', '2003-01-13', 'ee02'),
(111, 'BIET, Davangere ', 'Inception & Breakdown Gradients of Contaminated Ceramic Insulators', '2004-01-13', 'ee02'),
(112, 'BIET Davangere ', 'MEMS testing technology', '2003-07-21', 'ee02'),
(113, 'SJM Institute of Technology, Chitradurga', 'Biological Effects of Electromagnetic fields', '2004-06-04', 'ee02'),
(114, 'UBDTCE, Davangere', 'Biological Effects of Electromagnetic fields', '2004-10-27', 'ee02'),
(115, 'Bapuji Polytechnic, Davangere ', 'Protective Relays – an introduction', '2006-06-30', 'ee02'),
(116, 'UBDTCE, Davangere.', 'Performance of Porcelain Insulators under Polluted Environment-a review', '2007-03-10', 'ee02'),
(117, 'UBDTCE, Davangere', 'Energy Audit and Demand Side Management – a review', '2007-04-19', 'ee02'),
(118, 'AIT, Chikamagalur', 'Power Outages in Power Systems', '2009-10-27', 'ee02'),
(120, 'Don Bosco Institute of Technology, Bangalore.', 'General Aspects in Outdoor Insulation', '2011-03-10', 'ee02'),
(121, 'New Horizon College of Engineering, Bangalore.', 'High Voltage Engineering', '2011-09-30', 'ee02'),
(122, 'M S Ramaiah Polytechnic, Bangalore', 'Introduction to Electric Motor Control', '2012-02-22', 'ee02'),
(123, 'Dr. Ambedkar Institute of Technology, Bangalore', 'Prospectus and Challenges in Non-conventional Energy Sources', '2012-02-25', 'ee02'),
(124, 'Dr. Ambedkar Institute of Technology, Bangalore,', 'Lightning Interaction in Avionics', '2016-02-19', 'ee02'),
(125, 'Ramaiah Polytechnic, Bangalore.', 'Introduction to Protective Relays', '2017-08-23', 'ee02'),
(126, 'Dr. AIT, Bangalore', 'Power Quality Issues and its impact', '2018-02-03', 'ee02'),
(127, 'RIT, Bengaluru', 'IT Tools used for establishing Smart Factory-The NextGen Industry', '2018-06-17', 'im02'),
(128, 'Indian Institute of Fashion Technology', 'Role of Industrial Engineering in a garment industry', '2011-06-06', 'im02'),
(129, 'Dept of MBA, RIT', 'Empowering women for entrepreneurship', '2015-05-20', 'im02'),
(130, 'WiE Ramaiah Institute of Technology', 'Technical Report Writing', '2018-02-02', 'ece03'),
(131, 'INFOSYS', 'Faculty Excellence Award ', '2016-06-04', 'is02'),
(132, 'MSRIT', 'How to sell your self in an interview', '0208-04-22', 'mba03'),
(133, '(CATCE/EDC) MSRIT', ' Business plan compitation in association with VTU', '2016-04-26', 'is04'),
(134, 'Honeywell Technology Solutions Lab  Bangalore', 'Aircraft Display Systems  PG course from VTU', '2008-01-05', 'is04'),
(135, 'Ramiah Polythechnic', 'self motivation, Innovation and Invention through Students projects ', '2013-05-04', 'is04'),
(136, 'Sapthagiri College of Engineering, Bangalore', 'Computer Graphics & Applications', '2014-02-28', 'is04'),
(137, '', '', '0000-00-00', 'mba02'),
(138, 'IISc, bangalore', 'Digital Simulation of HVDC Systems', '1994-01-01', 'ee03'),
(139, 'BVB College of Engineering and Technology, Hubli, Karnataka', 'Artificial Commutation and its Application in HVDC Transmission', '1997-12-01', 'ee03'),
(140, 'Power System Training Institute, Bangalore', 'Dynamic Simulation of HVDC systems', '1983-11-01', 'ee03'),
(141, 'NITTE, Bangalore', 'MEMS', '2010-03-01', 'ee03'),
(142, 'SJBIT, Bangalore', 'MEMS', '2010-05-02', 'ee03'),
(143, 'Dept of MCA, MSRIT', ' Project Documentation ', '2017-05-13', 'mca03'),
(144, 'Power System Training Institute, Bangalore', 'Introduction to HVDC Transmission systems', '2013-04-23', 'ee03'),
(145, 'Dept of Computer Applications', 'Certification course : Software Testing', '2016-03-03', 'mca03'),
(146, 'HKBK College, Bangalore', 'HVDC Transmission systems – an overview', '2015-03-11', 'ee03'),
(147, 'Power System Training Institute, Bangalore', 'Introduction to HVDC Transmission systems', '2014-08-23', 'ee03'),
(148, 'Power System Training Institute, Bangalore', 'HVDC  System Operation and Control', '2014-10-30', 'ee03'),
(149, 'Central Power Research Institute, Bangalore', 'Introduction to Driver Circuits for LEDs', '2016-10-06', 'ee03'),
(150, 'Power System Training Institute, Bangalore', 'HVDC  System -- Operation and Control', '2017-06-23', 'ee03'),
(151, 'Power System Training Institute, Bangalore', 'Introduction to HVDC Transmission systems', '2018-07-02', 'ee03'),
(152, 'workshop on “ Current Trends in Image, Video and Audio Processing,  Dept of Electronics & Communicat', 'Video Processing applications', '2017-07-26', 'ece02'),
(153, 'Punjab University', 'Avenues in Chemical Engineering', '2016-11-26', 'ch03'),
(154, 'IIT Kanpur', 'Greywater treatment and reuse', '2014-04-25', 'ch03'),
(155, 'Sapthagiri College of Engineering, Benguluru', 'APPLYING TECHNOLOGY FOR SOCIETAL BENEFITS', '2018-08-30', 'is02'),
(156, 'MSRIT, Bangalore', 'Advances on VLSI Research During 1-week workshop on VLSI Design', '0000-00-00', 'ece03'),
(157, 'CDAC, Bangalore', 'One day lecture and lab session on Parallel Scientific Computing During Think Parallel', '0000-00-00', 'ece03'),
(158, 'ITS, Bangalore', 'Intelligent Vehicle Routing System Symposium on New Horizons IN Vehicle Telematics', '0000-00-00', 'ece03'),
(159, 'CDAC, Bangalore', 'One day lecture and lab session on Parallel Scientific Computing During Think Parallel', '0000-00-00', 'ece03'),
(160, 'CDAC, Bangalore', 'One day lecture and lab session on Parallel Scientific Computing During Think Parallel', '0000-00-00', 'ece03'),
(161, 'DY Patil Engineering College, Kolhapur', 'Deployment of Wireless Sensor Networks', '0000-00-00', 'ece03'),
(162, 'Sobolev Institute, Novisibirsk State University, Russia', 'Optimal Deployment of Wireless Sensor Networks', '0000-00-00', 'ece03'),
(163, 'IEEE MWSCAS Cincinnati, USA', 'Introduction to the Design and Development of Mixed-Signal ICs', '0000-00-00', 'ece03');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_patent`
--

CREATE TABLE `faculty_patent` (
  `slNo` int(11) NOT NULL,
  `patentTitle` varchar(100) NOT NULL,
  `inventors` varchar(100) NOT NULL,
  `dateOfFilingApplication` date NOT NULL,
  `publicationDate` date NOT NULL,
  `dateGranted` date NOT NULL,
  `typeOfPatent` varchar(50) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_patent`
--

INSERT INTO `faculty_patent` (`slNo`, `patentTitle`, `inventors`, `dateOfFilingApplication`, `publicationDate`, `dateGranted`, `typeOfPatent`, `facultyId`) VALUES
(1, 'Sensor integrated cloud based internet of things (IOT) ', '2271/CHE/2014', '2014-05-00', '0000-00-00', '0000-00-00', '', 'cse33'),
(2, 'Anonymity for privacy preserving data ', '2696/CHE/2015', '2015-00-00', '0000-00-00', '0000-00-00', '', 'cse22'),
(3, 'Device, System and Apparatus for Functional Electrical Stimulation of Muscle', '15424807', '2017-02-04', '0000-00-00', '0000-00-00', '', 'te02'),
(4, 'Device and a Method of Automatically Triggering a Functional Electrical Stimulator', '201641004692', '2016-02-10', '0000-00-00', '0000-00-00', '', 'te02'),
(5, 'Feedback Control For Reducing Flaring Process Smoke and Noise', '20150293506', '2014-04-08', '0000-00-00', '0000-00-00', '', 'te02'),
(6, 'Integrated Smoke Monitoring and Control Systems for Flaring Operations', '0150260397', '2014-03-09', '0000-00-00', '0000-00-00', '', 'te02'),
(7, 'Vision Based Zero Velocity and Zero Attitude Rate Update', 'US Patent 13/009,368', '2011-01-19', '0000-00-00', '0000-00-00', '', 'te02'),
(8, 'SYNTHESIS OF NANOTUBES REINFORCED BRAKE LINER MATERIAL”, ', 'Dr SRIDHAR', '2014-02-15', '0000-00-00', '0000-00-00', 'Application Number 717/CHE/201', 'me03'),
(12, 'Na', 'Na', '0000-00-00', '0000-00-00', '0000-00-00', '', 'me02');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_qualification`
--

CREATE TABLE `faculty_qualification` (
  `slNo` int(11) NOT NULL,
  `degree` varchar(30) NOT NULL,
  `university` varchar(100) NOT NULL,
  `collegeName` varchar(100) NOT NULL,
  `passClass` varchar(30) NOT NULL,
  `passYear` varchar(30) NOT NULL,
  `areaOfSpecialization` varchar(100) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_qualification`
--

INSERT INTO `faculty_qualification` (`slNo`, `degree`, `university`, `collegeName`, `passClass`, `passYear`, `areaOfSpecialization`, `facultyId`) VALUES
(1, 'BE', 'Karnatak University', '0', 'FCD', '1988', 'ECE', 'cse01'),
(2, 'BE', 'Gulbarga', '0', 'FCD', '1994', 'CSE', 'cse02'),
(3, 'BE', 'BU', '0', 'FCD', '2001', 'CSE', 'cse29'),
(4, 'BE', 'vtu', '0', 'FC', '2003', 'CSE', 'cse19'),
(5, 'BE', 'vtu', '0', 'FC', '2009', 'ISE', 'cse24'),
(6, 'BE', 'vtu', '0', 'FCD', '2005', 'CSE', 'cse13'),
(7, 'BE', 'vtu', '0', 'FC', '2009', 'CSE', 'cse26'),
(8, 'BE', 'Karnatak University', '0', 'FCD', '1986', 'CSE', 'cse18'),
(9, 'BE', 'vtu', '0', 'FC', '2010', 'CSE', 'cse25'),
(10, 'BE', 'BU', '0', 'FCD', '2001', 'CSE', 'cse10'),
(11, 'BE', 'vtu', '0', 'FCD', '2010', 'CSE', 'cse28'),
(12, 'BE', 'Karnatak University', '0', 'FCD', '1999', 'CSE', 'cse04'),
(13, 'BE', 'Mysore', '0', 'FCD', '1988', 'CSE', 'cse05'),
(14, 'BE', 'Mysore', '0', 'FCD', '1988', 'CSE', 'cse11'),
(15, 'BE', 'vtu', '0', 'FCD', '2005', 'CSE', 'cse17'),
(16, 'BE', 'BU', '', 'FCD', '1996', 'CSE', 'cse12'),
(17, 'BE', 'Gulbarga', '0', 'FC', '2006', 'CSE', 'cse16'),
(18, 'BE', 'Gulbarga', '0', 'FCD', '1996', 'CSE', 'cse06'),
(19, 'BE', 'Mysore', '0', 'FCD', '1984', 'ECE', 'cse33'),
(20, 'BE', 'Trichy', '0', 'FC', '2001', 'CSE', 'cse08'),
(21, 'BE', 'vtu', '0', 'FCD', '2009', 'CSE', 'cse23'),
(22, 'BE', 'VTU', '0', 'FCD', '2006', 'CSE', 'cse21'),
(23, 'BE', 'TN', '0', 'FCD', '1998', 'CSE', 'cse20'),
(24, 'BSc', 'Madhurai', '0', 'FCD', '1974', 'Mathematics, Computer Science', 'cse32'),
(25, 'BE', 'VTU', '0', 'FC', '2002', 'CSE', 'cse07'),
(26, 'BE', 'Gulbarga', '0', 'FCD', '1991', 'CSE', 'cse03'),
(27, 'BE', 'North Maharashtra University', '0', 'FCD', '1998', 'CSE', 'cse30'),
(28, 'BTECH', 'Kerala', '0', 'FC', '2004', 'CSE', 'cse14'),
(29, 'BE', 'vtu', '0', 'FCD', '2008', 'CSE', 'cse22'),
(30, 'BE', 'vtu', '0', 'FCD', '2011', 'CSE', 'cse27'),
(31, 'BE', 'Pune', '0', 'FCD', '2000', 'CSE', 'cse15'),
(32, 'BE', 'Kuvempu', '0', 'FCD', '1994', 'CSE', 'cse09'),
(33, 'ME', 'Karnatak University', '0', 'FCD', '1995', 'Computer networks', 'cse01'),
(34, 'MTECH', 'VTU', '0', 'FCD', '2001', 'CSE', 'cse02'),
(35, 'MTECH', 'NITK, Surathkal', '0', 'FCD', '2007', 'COMPUTER SCIENCE AND ENGINEERI', 'cse29'),
(36, 'MTECH', 'vtu', '0', 'FC', '2007', 'CSE', 'cse19'),
(37, 'MTECH', 'vtu', '0', 'FCD', '2012', 'COMPUTER SCIENCE', 'cse24'),
(38, 'M TECH', 'vtu', '0', 'FCD', '2011', 'BMSPI', 'cse26'),
(39, 'ME', 'Karnatak University', '0', 'FCD', '1998', 'CSE', 'cse18'),
(40, 'M TECH', 'vtu', '0', 'FCD', '2012', 'COMPUTER SCIENCE', 'cse25'),
(41, 'MTECH', 'JNTU,HYD', '0', 'FCD', '2007', 'Computer Science &ENgg', 'cse10'),
(42, 'MTECH', 'vtu', '0', 'FCD', '2013', 'Computer science and engineering', 'cse28'),
(43, 'MTECH', 'vtu', '0', 'FCD', '2004', 'Artificial Intelligence, Information retrieval, Text Summarization', 'cse04'),
(44, 'MSC(Engg) ', 'vtu', '0', 'FCD', '2008', 'CSE', 'cse05'),
(45, 'MTECH', 'Mysore', '0', 'FCD', '1995', 'COMPUTER SCIENCE AND ENGG', 'cse11'),
(46, 'MTECH', 'vtu', '0', 'FCD', '2009', 'COMPUTER SCIENCE AND ENGG', 'cse17'),
(47, 'MTECH', 'vtu', '', 'FCD', '2006', 'CSE', 'cse12'),
(48, 'MTECH', 'vtu', '0', 'FCD', '2010', 'CSE', 'cse16'),
(49, 'MTECH', 'vtu', '0', 'FCD', '2003', 'Computer Science & Engineering', 'cse06'),
(50, 'MTECH', 'IIT, Mumbai', '0', 'FCD', '1987', 'CSE', 'cse33'),
(51, 'ME', 'Trichy', '0', 'FC', '2005', 'Data Analytics', 'cse08'),
(52, 'M TECH', 'vtu', '0', 'FCD', '2011', 'SOFTWARE ENGG', 'cse23'),
(53, 'MTECH', 'VTU', '0', 'FCD', '2011', 'COMPUTER SCIENCE', 'cse21'),
(54, 'ME', 'TN', '0', 'FCD', '2005', 'CSE', 'cse20'),
(55, 'MSc', 'madhurai', '0', 'FCD', '1976', 'Mathematics, Space Dynamics', 'cse32'),
(56, 'MTECH', 'MGR', '0', 'Honours', '2007', 'Computer Science & Engineering', 'cse07'),
(57, 'MS', 'BITS Pilani', '0', 'FCD', '1996', 'Data Mining', 'cse03'),
(58, 'MTECH', 'Pune', '0', 'FCD', '2003', 'Electronics(Computer)', 'cse30'),
(59, 'ME', 'Anna University', '0', 'FCD', '2006', 'COMPUTER SCIENCE & ENGINEERING', 'cse14'),
(60, 'MTECH', 'vtu', '0', 'FCD', '2013', 'SOFTWARE ENGG', 'cse22'),
(61, 'MTECH', 'vtu', '0', 'FCD', '2013', 'SOFTWARE ENGG\r\n', 'cse27'),
(62, 'ME', 'Pune', '0', 'FCD', '2008', 'COMPUTER ENGINEERING', 'cse15'),
(63, 'MTECH', 'vtu', '0', 'FCD', '1998', 'Image Processing', 'cse09'),
(64, 'PhD', 'BU', '0', 'null', '2013', 'Computer networks', 'cse01'),
(65, 'PhD', 'VTU', '0', 'null', '2014', 'CSE', 'cse02'),
(66, 'PhD', 'VTU', '0', 'null', 'Pursuing', 'CSE', 'cse26'),
(67, 'PhD', 'JJ University, Rajasthan', '0', 'null', '2017', 'CSE', 'cse18'),
(68, 'PhD', 'JNTU', '0', 'null', '2015', 'Artificial Intelligence, Information retrieval, Text Summarization', 'cse04'),
(69, 'PhD', 'VELS', '0', 'null', '2014', 'COMPUTER SCIENCE AND ENGG', 'cse11'),
(70, 'PhD', 'Dr MGR Educational and Research Institute', '0', 'null', '2014', 'Wireless sensor networks', 'cse06'),
(71, 'null', 'IIT Bombay', '0', 'null', 'null', 'software engineering', 'cse33'),
(72, 'PhD', 'MSU', '0', 'null', 'null', 'Cloud Computing', 'cse20'),
(73, 'PhD', 'MGR', '0', 'null', '2014', 'Software Architecture', 'cse32'),
(74, 'PhD', 'VTU', '0', 'null', '2014', 'Data Mining', 'cse03'),
(75, 'PhD', 'VTU', '0', 'null', '2017', 'Routing in Mobile Ad-hoc Network', 'cse30'),
(77, 'M.Tech', 'VTU', '0', 'FIRST CLAS', '2009', 'DIGITAL ELECTRONICS AND COMMUNICATION', 'te09'),
(79, 'PhD', 'ANNA University', '0', 'FCD', '2018', 'Embedded Wireless Networks', 'te06'),
(80, 'M. Tech', 'VTU', '0', 'FCD', '2006', 'Digital Communication with Networking', 'te06'),
(81, 'B. E.', 'University of Mysore', '0', 'FC', '2001', 'Electronics and Communication Engineering', 'te06'),
(82, 'M.Tech', 'V.T.U', '0', 'FCD', '2007', 'DIGITAL COMMUNICATION ENGINEERING', 'te14'),
(83, 'BE', 'Bangalore University', '0', '1st class', '1996', 'Telecommunication Engineeing', 'te07'),
(84, 'ME', 'Bangalore University', '0', '1st class,', '1999', 'Digital Communication Engineering', 'te07'),
(85, 'PhD', 'Jain University', '0', '-', '2018', 'Electronics and Communication', 'te07'),
(86, 'B E ', 'BANGALORE UNIVERSITY', '0', 'FIRST', '1993', 'ELECTRONICS AND COMMUNICATION', 'te03'),
(87, 'M.E', 'BANGALORE UNIVERSITY', '0', 'FIRST', '1999', 'DIGITAL COMMUNICATION', 'te03'),
(88, 'Ph.D', 'VTU', '0', 'FIRST', '2014', 'MOBILE ADHOC NETWORKS', 'te03'),
(90, 'Mtech', 'VTU', '0', 'first clas', '2012', 'VLSI Design and embedded systems', 'te12'),
(91, 'M TECH', 'VTU', '0', 'FCD', '2006', 'VLSI DESIGN & EMBEDDED SYSTEMS', 'te10'),
(92, 'BE', 'Bangalore University', '0', 'First Clas', '2000', 'Telecommunication Engineering', 'te11'),
(93, 'Mtech', 'VTU', '0', 'First Clas', '2009', 'Digital Communication Engineering', 'te11'),
(94, '', '', '0', '', '', '', 'te05'),
(95, 'B.E(Electr', 'University of  Mysore', '0', 'First Clas', '1988', 'Electronics and Communication', 'te05'),
(96, 'M.Tech ', 'Visvevaraya Technological University ,Belgaum', '0', 'First clas', '2001', 'Digital Electronics ', 'te05'),
(97, 'PhD(Pursui', 'Visvevaraya Technological University ,Belgaum', '0', '', '', 'Optical sensors, pattern analysis and machine learning ', 'te05'),
(98, 'B.E', 'VTU', '0', 'FCD', '2005', 'ELECTRONICS AND COMMUNICATION', 'te13'),
(99, 'M.TECH', 'VTU', '0', 'FCD', '2009', 'COMMUNICATION SYSTEMS', 'te13'),
(100, 'BE', 'BANGALORE UNIVERSITY', '0', 'FCD', '1997', 'Instrumentation Engineering', 'te02'),
(101, 'Ph.D', 'University of Twente', '0', '', '2004', 'Dept of Applied Mathematics', 'te02'),
(102, 'Post-docto', 'Imperial College, London', '0', '', '2007', '', 'te02'),
(103, 'BE', 'Kuvempu', '0', 'First clas', '1998', 'Electronics and communication', 'te08'),
(104, 'MTech', 'VTU', '0', 'First clas', '2003', 'Industrial electronics', 'te08'),
(105, 'Ph.D', 'Jain University', '0', '', '2018', 'Image Processing', 'te04'),
(106, 'M.E', 'Bangalore University', '0', 'First', '1991', 'Electronics', 'te04'),
(107, 'B.E', 'Bangalore University', '0', 'Second', '1984', 'Electronics', 'te04'),
(108, 'Ph.D', 'Visvesvariah Technological University', 'M S Ramaiah Institute of Technology', 'Nil', '2012', 'Image Processing', 'ece02'),
(109, 'M E', 'Bangalore University', 'University Visvesvariah College of Engineering', 'First Clas', '1992', 'Electronics', 'ece02'),
(110, 'B E', 'Bangalore University', 'M S Ramaiah Institute of Technology', 'First Clas', '1989', 'Electronics', 'ece02'),
(114, 'BE', 'Bangalore University', 'UVCE', 'FCD', '2012', 'Civil Engineering', 'cv01'),
(115, 'M.Tech', 'Visvesvaraya Technological University', 'MSRIT', 'FCD', '2016', 'Structural Engineering', 'cv01'),
(116, 'Bachelor of Engineering', 'VTU', 'Shridevi Institute of Engineering and Technology', 'First', '2009', 'Biotechnology', 'bt01'),
(117, 'Master of Thechnology', 'Manipal University', 'Manipal Institute of Technology', 'First with Distinction ', '2012', 'Chemical Engineering', 'bt01'),
(118, 'PhD', 'VTU', 'Siddaganga Institute of Technology', 'null', 'Pursuing', 'Chemical Engineering', 'bt01'),
(119, 'BE ', 'GUJARAT UNIVERSITY', '0', 'FCD', '2006', 'ELECTRICAL ENGINEERING', 'eee01'),
(120, 'MTECH', 'VISVESVARAYA TECHNOLOGICAL UNIVERSITY', '0', 'FCD', '2008', 'COMPUTER APPLICATIONS IN INDUSTRIAL DRIVES', 'eee01'),
(121, 'Ph.D', 'JAWAHARLAL NEHRU TECHNOLOGICAL UNIVERSITY, HYDERABAD', '', '', '2013', 'MECHANICAL ENGINEERING', 'me01'),
(122, 'M.E.', 'BANGALORE UNIVERSITY', 'UVCE, BANGALORE', 'FCD', '2003', 'Manufacturing Science & engineering', 'me01'),
(123, 'GATE-2000', '--', '--', '77.06', '2000', 'MECHANICAL ENGINEERING', 'me01'),
(124, 'B.E.', 'MYSORE UNIVERSITY', 'NATIONAL INSTITUTE OF ENGINEERING (NIE), MYSORE', 'FCD', '1999', 'MECHANICAL ENGINEERING', 'me01'),
(125, 'B.E', 'Visvesvaraya Technological University', 'Bapuji Institute of Engineering and Technology', 'First Clas', '2010', 'Biotechnology', 'bt03'),
(126, 'M.Tech', 'Sathyabama University', 'Sathyabama University', 'First Clas', '2012', 'Biotechnology', 'bt03'),
(127, 'Doctor of ', 'University of Cincinnati', 'College of Engineering', 'N/A', '2013', 'VLSI', 'ece03'),
(128, 'Master of ', 'University of Cincinnati', 'College of Engineering', '3.65/4.0', '2003', 'VLSI', 'ece03'),
(129, 'Bachelor o', 'University of Mysore', 'Sri Jayachamarajendra College of Engineering', 'FCD', '2000', 'Electrical and Electronics Engineering', 'ece03'),
(130, 'Master of ', 'National Institute of Technology Karnataka', 'National Institute of Technology Karnataka', 'FCD', '2014', 'Water Resources Engineering and Management', 'cv03'),
(131, 'Bachelor o', 'Visvesvaraya Technological University', 'Ramaiah Institute of Technology', 'FCD', '2012', 'Civil Engineering', 'cv03'),
(132, 'M.Phil', 'Bharathidasan', '', 'First', '2006', 'Computer Science', 'mca02'),
(133, 'MCA', 'VTU', 'Dr.AIT', 'First', '2002', 'Computer Applications', 'mca02'),
(134, 'B.Sc', 'Bangalore', 'BHS First Grade College', 'Second', '1999', 'Statistics, Mathematics, Computer Science', 'mca02'),
(135, 'BE', 'Bangalore University', 'Sri Siddartha Institute of Technology', 'First Clas', '2000', 'Mechanical Engineering ', 'me02'),
(136, 'M.Tech', 'Vellore Institute of Technology', 'VIT, Vellore', 'First Clas', '2003', 'CAD/CAM', 'me02'),
(137, 'Ph.D', 'JNTU, Hyderabad', 'JNTU, Hyderabad', '4.0/4.0', '2016', 'Low Velocity Impact, Sandwich Composites, Composite Materials', 'me02'),
(138, 'PhD', 'VTU', 'M S RAMAIAH INSTITUTE OF TECHNOLOGY', 'PASS', '2017', 'NANO MATERIALS', 'me03'),
(139, 'M Tech', 'vtu', 'BMSCE  BANGALORE', 'FCD', '2006', 'PRODUCT DESIGN AND MANUFACTURING', 'me03'),
(140, 'BE', 'BANGALORE', 'SJCIT, CHICKABALLAPUR', 'FCD', '1997', 'MECHANICAL', 'me03'),
(141, 'M.tech', ' Visvesvaraya Technological University, Belguam', 'Bellary Engineering College, ', 'I Class ', '2007', 'Computer Network Engineering.', 'ece01'),
(142, 'B.E', 'Karnatak University, Dharwad', 'Basaveshwar Engineering College', 'II Class ', '1993', 'Electronics and Communication Engineering', 'ece01'),
(143, 'Ph. D.', 'Indian Institute of Science, Bangalore', 'Indian Institute of Science, Bangalore', '', '2000', 'Nonlinear Partial Differential Equations, Computational Fluid Dynamics', 'mat01'),
(144, 'Ph.D.', 'Visvesvaraya Technological University', 'M S Ramaiah Institute of Technology', 'With Cours', '2018', 'Management-Marketing-Tourism', 'mba03'),
(145, 'MBA', 'Kuvempu University', 'Kuvempu University', 'First Clas', '2005', 'Marketing', 'mba03'),
(146, 'PGDHR', 'Kuvempu University', 'Kuvempu University', 'First Clas', '2006', 'Human Resource Management', 'mba03'),
(147, 'Bcom', 'Kuvempu University', 'ATNCC', 'First Clas', '2003', 'Commerce', 'mba03'),
(148, 'B.TECH', 'SRI VENKATESWARA UNIVERSITY', 'SRI VENKATESWARA UNIVERSITY COLLEGE OF ENGINEERING', 'FIRST', '2007', 'CHEMICAL ENGINEERING', 'ch01'),
(149, 'M.TECH', 'OSMANIA UNIVERSITY', 'UNIVERSITY COLLEGE OF TECHNOLOGY', 'DISTINCTIO', '2010', 'CHEMICAL TECHNOLOGY (PHARMACEUTICALS AND FINE CHEMICALS)', 'ch01'),
(150, 'PhD', 'HOMI BHABHA NATIONAL INSTITUTE', 'INDIRA GANDHI CENTRE FOR ATOMIC RESEARCH', 'FIRST', '2016', 'CHEMICAL ENGINEERING', 'ch01'),
(152, 'BE', 'ANNAMALAI UNIVERSITY', 'ANNAMALAI UNIVERSITY', 'FIRST', '2003', 'ELECTRONICS AND INSTRUMENTATION', 'it01'),
(153, 'ME', 'ANNAMALAI UNIVERSITY', 'ANNAMALAI UNIVERSITY', 'FIRST', '2005', 'PROCESS CONTROL  AND INSTRUMENTATION', 'it01'),
(154, 'PhD', 'ANNAMALAI UNIVERSITY', 'ANNAMALAI UNIVERSITY', 'FIRST', '2016', 'INSTRUMENTATION', 'it01'),
(155, 'Ph.D.', 'Kurukshetra University', 'Kurukshetra University', '', '2014', 'Nuclear Physics and Material Science', 'phy01'),
(156, 'M.Sc.', 'Kurukshetra University', 'Department of Physics, Kurukshetra University', 'FIrst', '2008', 'Particle Physics and Material Science', 'phy01'),
(157, 'B.Sc.', 'Kurukshetra University', 'S.D. College, Ambala Cantt', 'FIrst', '2006', 'Physics', 'phy01'),
(158, 'B.E', 'Bangalore University', 'Dayananda Sagar College of Engineering', 'First Clas', '1996', 'Instrumentation & Electronics Engineering', 'it02'),
(159, 'M.Tech', 'Mysore University', 'Malnad College of Engineering', 'First Clas', '1999', 'Computer Applications in Industrial Drives', 'it02'),
(160, 'Ph.D', 'Visvesvaraya Technological University', 'Dr.Ambedkar Institute of Technology, Bangalore', '-', '2017', 'Electrical & Electronics Engineering Sciences', 'it02'),
(161, 'Ph.D.', 'University of Madras', 'Centre of Advanced Studies  in Crystallography and', 'FIrst', '2008', 'Protein Crystallography and Drug Design', 'phy02'),
(165, 'BE', 'VTU', 'Nagarjuna Colege Of Engineering andTechnology', 'First', '2009', 'Civil Engineering', 'cv02'),
(166, 'ME', 'BU', 'University Visvesvaraya College of Engineering', 'FCD', '2011', 'Highway Engineering', 'cv02'),
(167, 'BE', 'University of Mysore', 'SJCE', 'First', '1997', 'Instrumentation Technology', 'it03'),
(168, 'MTech', 'VTU', 'SJCE', 'FCD', '2001', 'Biomedical Instrumentation', 'it03'),
(169, 'Ph.D', 'Bangalore University', 'Central College, Bangalore', '', '2010', 'Materials Science', 'chy02'),
(170, 'MSc', 'Bangalore University', 'Central College, Bangalore', 'First', '2000', 'Physical Chemistry', 'chy02'),
(171, 'BSc', 'Bangalore University', 'Govt. First Grade College, Chintamani, Chikkaballapur Dist.', 'First', '1997-98', 'Physics, Chemistry, Maths', 'chy02'),
(172, 'BE', 'Mysore University', 'JMIT Chitradurga', 'First', '1989', 'Electrical & Electronics Engineering', 'ee02'),
(173, 'MTech', 'Mangalore', 'NITK (Surathkal)', 'FCD', '1995', 'Power & Energy Systems', 'ee02'),
(174, 'PhD', 'VISVESVARAYA TECHNOLOGICAL UNIVERSITY', 'MSRIT(Research Center)', '', '2009', 'High Voltage Engineering', 'ee02'),
(175, 'BCA', 'Sri Venkateshwara University', 'Seicom Degree College', 'FCD', '2002', 'Computer Applications ', 'mca01'),
(176, 'MCA', 'Sri Padmavathi Mahila Viswa Vidyalayam', 'Sri Padmavathi Mahile Viswa Vidyalayam', 'FCD', '2005', 'Computer Applications ', 'mca01'),
(177, 'PhD', 'VTU', 'MSRIT', 'Others', '2014', 'Industrial Engineering', 'im02'),
(178, 'MSc(Engg)', 'VTU', 'BMS College of Engineering', 'First', '2008', 'Industrial Engineering', 'im02'),
(179, 'BE', 'Bangalore University', 'BMS College of Engineering', 'First', '1997', 'Industrial Engineering', 'im02'),
(180, 'BTech', 'DEEMED', 'NIT SUART', '1ST ', '2007', 'PRODUCTION ENGINEERING ', 'iem01'),
(181, 'MTech', 'DEEMED', 'NIT TRICHY', '1ST', '2009', 'INDUSTRIAL ENGINEERING', 'iem01'),
(182, 'PhD Purshuing ', 'VTU', 'RIT', '', '', 'FUZZY LOGIC', 'iem01'),
(183, 'PhD', 'Anna University', 'Anna University', 'FCD', '2014', 'Mathematics', 'mat03'),
(184, 'MSc', 'Bharathiar University', 'Bharathiar Universityu', 'FCD', '2007', 'Mathematics', 'mat03'),
(185, 'Others (M.Phil)', 'Anna University', 'Madras Institute of Technology', 'FCD', '2008', 'Mathematics', 'mat03'),
(186, 'BSc', 'Bharathiar University', 'Emerald Heights College for women', 'FCD', '2005', 'Mathematics', 'mat03'),
(187, 'BSc', 'Bangalore University', 'Government Science College', 'First', '1990', 'Physics, Chemistry, Mathematics', 'mca03'),
(188, 'MCA', 'Bangalore University', 'Central College', 'First', '1993', 'Computer Applications ', 'mca03'),
(189, 'M Phil', 'M S University', 'M S University', 'First', '2003', 'Computer Science', 'mca03'),
(190, 'PhD', 'Visveshwaraya Technological University', 'Ramaiah Institute of Technology', '', '2014', 'Distributed Database Systems ', 'mca03'),
(191, 'BE', 'VTU', 'JNNCE ,Shivamogga', 'First', '2007', 'Mechanical', 'mba01'),
(192, 'MBA', 'VTU', 'MSRIT, Bangalore', 'First', '2010', 'Finance', 'mba01'),
(193, 'BE', 'Karnataka University', '', 'FCD', '1982', 'ELECTRICAL ENGINEERING', 'ee03'),
(194, 'ME', 'Mysore University', 'National Institute of Engineering', 'FCD', '1985', 'Power System', 'ee03'),
(195, 'PhD', 'Indian Institute of Science', '', '', '1990', 'Power System', 'ee03'),
(196, 'Bcom', 'Bangalore University', 'SJRC', 'Second Class', '2000', 'Commerce', 'mba02'),
(197, 'MBA', 'Bangalore University', 'CNK CBM', 'First', '2004', 'Finance and HR', 'mba02'),
(198, 'PhD', 'Visvesvaraya Technological University', 'M S Ramaiah Institute of Technology', 'With Course work completion', '2018', 'Human Resource Management', 'mba02'),
(199, 'BE', 'Panjab University', 'Panjab University', 'First', '1993', 'Chemical Engineering', 'ch02'),
(200, 'ME', 'Panjab University', 'Panjab University', 'FCD', '1995', 'Chemical Engineering', 'ch02'),
(201, 'PhD', 'Panjab University', 'Panjab University', 'First', '2009', 'Chemical Engineering', 'ch02'),
(202, 'M. Phil.', 'Kurukshetra University, Kurukshetra', 'Dept of Mathematics, KUK', 'First', '1990', 'Applied Mathematics', 'mat01'),
(203, 'M. Sc.', 'Kurukshetra University, Kurukshetra', 'Dept of Mathematics, KUK', 'First', '1989', 'Applied Mathematics', 'mat01'),
(204, 'B. Sc.', 'Kurukshetra University, Kurukshetra', 'S. A. Jain College, Ambala City', 'First', '1987', 'Physics, Chemistry, Mathematics', 'mat01'),
(205, 'BTech', 'IIT Kanpur', 'IIT Kanpur', '', '2011', 'Chemical Engg', 'ch03'),
(206, 'ME', 'IISc', 'IISc', 'First', '2013', 'Chemical Engg', 'ch03'),
(207, 'PhD', 'University of Roorkee (Presently IIT Roorkee)', 'University of Roorkee (Presently IIT Roorkee)', '', '1996', 'Atomic and Molecular Collision', 'phy03'),
(208, 'BSc', 'Kuvempu University', 'Kuvempu University', 'First', '2001', 'Biochemistry, Microbiology, Botany', 'bt02'),
(209, 'MSc', 'Kuvempu University', 'Kuvempu University', 'First Class', '2003', 'Biotechnology', 'bt02'),
(210, 'PhD', 'Kuvempu University', 'Kuvempu University', '', '2009', 'Biotechnology', 'bt02'),
(211, 'BSc', 'Gulbarga University', 'S B College, Kalburgi', 'FCD', '2005', 'Chemistry, Botany, Zoology', 'chy04'),
(212, 'MSc', 'Gulbarga University', 'Department of Chemistry, Gulbarga University', 'First', '2007', 'Pharmaceutical Chemistry ', 'chy04'),
(213, 'Ph.D.,', 'Gulbarga University', 'Department of Chemistry, Gulbarga University', 'FCD', '2012', 'Synthetic Organic Chemistry and Medicinal Chemistry', 'chy04');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_research`
--

CREATE TABLE `faculty_research` (
  `slNo` int(11) NOT NULL,
  `guideName` varchar(100) NOT NULL,
  `usn` varchar(30) NOT NULL,
  `centreName` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `registrationYear` varchar(30) NOT NULL,
  `yearOfCompletion` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_research`
--

INSERT INTO `faculty_research` (`slNo`, `guideName`, `usn`, `centreName`, `university`, `registrationYear`, `yearOfCompletion`, `title`, `status`, `facultyId`) VALUES
(1, 'null', 'null', 'null', 'null', '2015', '', 'Design and Development of Efficient Algorithms for', 'Completed 2 subjects of Course', 'cse07'),
(2, 'Dr.Anita Kanavalli', 'null', 'null', 'null', '2015', '', 'Insightful data analytics on big data using effici', 'Completed 2 subjects of Course', 'cse23'),
(3, 'Dr. Seema S', 'null', 'null', 'null', '2015', '', 'Cryptographically secured Data Mining', 'Completed 2 subjects of Course', 'cse22'),
(4, 'Dr. Anita Kanavalli', 'null', 'null', 'null', '2014', '', 'Design and Development of Efficient Big Data Analy', 'Completed the Course Work', 'cse21'),
(5, 'Dr. Anita Kanavalli', 'null', 'null', 'null', '2013', '', 'Modeling Context Information in Pervasive Computin', 'COMPLETED Course Work of all s', 'cse14'),
(6, ' Dr. Jagadish S. Kallimani', 'null', 'null', 'null', '2017', '', 'Development and analysis of real-time computationa', 'null', 'cse19'),
(7, 'Dr Seema S', 'null', 'null', 'null', '2015', '', 'Leveraging  Data Mining Technique in analyzing and', 'Completed 2 subjects of Course', 'cse26'),
(8, 'Dr. Monica R Mundada', 'null', 'null', 'null', '2016', '', 'Design and Implimentation of Algorithms for better', 'null', 'cse16'),
(9, 'Dr. Anita Kanavalli', 'null', 'null', 'null', '2015', '', 'Energy efficient Service Oriented Architeture base', 'Completed 3 papers', 'cse17'),
(10, 'Dr. B K SUJATHA', '1MS11PEN06', 'MSRIT', 'VTU', '2012', '', 'Performance Improvement of QPSK MODEM Implementing', 'submitted thesis', 'te10'),
(11, 'Dr. C S RAMESH', '', 'CENTRAL MANUFACTURING TECHNOLOGY INSTITUTE, BANGAL', 'JAWAHARLAL NEHRU TECHNOLOGICAL', '2007', '2013', 'Optimization of Process Parameters Using Design of', 'Awarded', 'me01'),
(12, 'Dr.G.Shiva Murthy', '5VX13PEN125', 'VTU-RRC', 'VTU', '2013', '', 'Effective Resource Provisioning in Cloud', 'Persuing', 'mca02'),
(13, 'Dr RAJI GEORGE', '1MS08PMM02', 'RAMAIAH INSTITUTE OF TECHNOLOGY', 'VTU', '2008', '2017', 'SYNTHESIS AND CHARACTERIZATIO OF EPOXY BASED CARBO', 'COMPLETED', 'me03'),
(14, 'Harish N', '', 'MSRIT', 'VTU', '2018', '', '', 'Persuing', 'cv01'),
(15, 'Dr. Sharath R', '1MS13PGN02', 'Biotechnology', 'VTU', '2013', '', 'Synthesis and Characterization of Metallic and Non', 'Pursuing', 'bt03'),
(16, 'Dr. P V Raveendra', '1MS12PBN01', 'MSRIT', 'Visvesvaraya Technological Uni', '2012', '2018', '“A Study on Infrastructural problems with referenc', 'Completed', 'mba03'),
(17, 'Dr. B Janakiram', '1MS11PBM02', 'MSRIT', 'Visvesvaraya Technological Uni', '2011', '2018', 'A Study on Work-Life Balance of among officers in Banking sector with special reference to Bangalore', 'Completed', 'mba02'),
(18, 'Prof.D.Velmurugan', '', 'Center of Advanced Studies in Crystallography and ', 'University of Madras', '2002', '2008', 'Crystal Structure Determination of some Enzymes of', 'Completed', 'phy02'),
(19, 'H K Shivanand', '0803PH1575', 'JNTU, Hyderabad', 'JNTU, Hyderabad', '2008', '2016', 'INVESTIGATION OF ENERGY ABSORPTION CAPACITY FOR SA', 'Completed', 'me02'),
(20, 'Dr.M.Meenakshi, ', '1DA09PEN01', 'Dept. of EIE, Dr.AIT, Bangalore', 'Visvesvaraya Technological University', '2009', '2017', 'Novel and Efficient algorithms for early detection of cardiac ischemia', 'Completed', 'it02'),
(21, 'Dr. R. Prabhakara & Dr B V Kiran Kumar', '1MS17PCA02', 'MSRIT BANGALORE', 'VTU', '2017', '', 'Investigation on Effective Utilization of Reclaimed Asphalt pavements(RAP) in Sustainable Pavemnents', 'Persuing', 'cv02'),
(22, 'Dr. N V R Naidu', '1MS08PMN06', 'IEM-RIT', 'VTU', '2009', '2014', 'Study, Analysis and Optimization of external parameter of an automobile for fuel economy through Des', 'Completed', 'im02'),
(23, 'Dr. S. V. Subhashini', '2924719113', 'Anna University - Center for research', 'Anna University', '2009', '2014', 'Numerical investigations on boundary layer flows over a permeable surfaces', 'Completed', 'mat03'),
(24, 'Dr.P V Raveendra', '', 'Bharthiar University', 'Bharthiar University', '2012', '', 'A Study on Determinants of Gold Investments in India', 'Persuing', 'mba01'),
(25, 'Dr. T V Suresh Kumar', '1MS16PEJ01', 'Department of Computer Applications. RIT', 'Visvesvaraya Technological University, Belagavi', '2016', 'NA', 'Designing and Evaluating Recommender Systems for Large Social Networks', 'Persuing', 'mca01'),
(26, 'Dr. P.M. Satya Sai', 'ENGG02201004009', 'Indira Gandhi Centre for Atomic Research', 'Homi bhabha National Institute', '2010', '2016', 'Separation of Cesium from simulated High Level Waste Using Electrodialysis Ion Exchange (EDIX)', 'Completed', 'ch01'),
(27, '', '', 'MSRIT', 'Panjab University', '', '2009', 'Biological denitrification of ground water using cotton as the carbon source and different microbial', 'Completed', 'ch02'),
(28, 'Dr. V Krishnan', '1MS02PEN02', 'MSRIT, Bangalore', 'VTU', '2002', '2009', 'Studies on Pollution Performance of Outdoor Insulators', 'Completed', 'ee02'),
(29, 'DR T V Suresh Kumar', '1MS04PEN02', 'COMPUTER SCIENCE', 'VTU', '2004', '2014', 'PERFORMANCE ENGINEERING IN DISTRIBUTED DATABASE SYSTEM', 'Completed', 'mca03'),
(30, 'Dr. B S Gowrishankar', '1SI15PGJ04', 'Department of Chemical Engineering, Siddaganga Institute of Technology, Tumakuru-572103', 'Visvesvaraya Technological University', '2015', '', 'Studies on applications of coffee husk derived activated biomass and nanometal oxides in environment', 'Pursuing', 'bt01'),
(31, 'Seema Agarwal', '1MS09PGM05', 'MSRIT', '', '2009', '2017', 'Optical and thermodynamical properties of some liquid crystalline dimers', 'Completed', 'phy03'),
(32, 'krishna. V', '', 'Kuvempu University', 'Kuvempu University', '2004', '2009', 'Studies on Induction and Evaluation of Secondary Metabolites in vitro and Genetic Finger Printing of', 'Completed', 'bt02'),
(33, 'DR. C S CHETHAN KUMAR', 'IMS12PMN05', 'MSRIT', 'VTU', '2012', '', 'Assessment & Application of Adaptive Fuzzy Logic Inference System in Measurement of Supply Chain Agi', 'Pre PhD Viva Voce - COMPLETED', 'iem01'),
(34, 'Dr.S.SethuSelvi', 'IMS03PEN07', 'E&C', 'VTU', '2003', '2012', '', 'Completed', 'ece02');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_service`
--

CREATE TABLE `faculty_service` (
  `slNo` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_service`
--

INSERT INTO `faculty_service` (`slNo`, `designation`, `fromDate`, `toDate`, `facultyId`) VALUES
(2, 'PROFESSOR', '1998-04-16', '0001-00-00', 'cse02'),
(3, 'PROFESSOR', '1995-10-31', '0002-00-00', 'cse03'),
(4, 'ASSOCIATE PROFESSOR', '1999-12-17', '0003-00-00', 'cse04'),
(5, 'ASSOCIATE PROFESSOR', '2002-08-30', '0004-00-00', 'cse05'),
(6, 'ASSOCIATE PROFESSOR', '2000-04-18', '0005-00-00', 'cse06'),
(7, 'ASST PROFESSOR', '2005-08-16', '0006-00-00', 'cse07'),
(8, 'ASST PROFESSOR', '2005-08-17', '0007-00-00', 'cse08'),
(9, 'ASST PROFESSOR', '2005-08-18', '0008-00-00', 'cse09'),
(10, 'ASST PROFESSOR', '2006-02-27', '0009-00-00', 'cse10'),
(11, 'ASST PROFESSOR', '2006-08-01', '0010-00-00', 'cse11'),
(12, 'ASST PROFESSOR', '2007-08-08', '0011-00-00', 'cse12'),
(13, 'ASST PROFESSOR', '2007-09-24', '0012-00-00', 'cse13'),
(14, 'ASST PROFESSOR', '2008-02-27', '0013-00-00', 'cse14'),
(15, 'ASST PROFESSOR', '2009-08-14', '0014-00-00', 'cse15'),
(16, 'ASST PROFESSOR', '2009-08-17', '0015-00-00', 'cse16'),
(17, 'ASST PROFESSOR', '2009-09-23', '0016-00-00', 'cse17'),
(18, 'ASST PROFESSOR', '2010-02-07', '0017-00-00', 'cse18'),
(19, 'ASST PROFESSOR', '2010-07-15', '0018-00-00', 'cse19'),
(20, 'ASST PROFESSOR', '2010-09-08', '0019-00-00', 'cse20'),
(21, 'ASST PROFESSOR', '2012-10-09', '0020-00-00', 'cse21'),
(22, 'ASST PROFESSOR', '2013-08-08', '0021-00-00', 'cse22'),
(23, 'ASST PROFESSOR', '2014-04-08', '0022-00-00', 'cse23'),
(24, 'ASST PROFESSOR', '2014-04-08', '0023-00-00', 'cse24'),
(25, 'ASST PROFESSOR', '2014-04-08', '0024-00-00', 'cse25'),
(26, 'ASST PROFESSOR', '2014-04-08', '0025-00-00', 'cse26'),
(27, 'ASST PROFESSOR', '2014-11-08', '0026-00-00', 'cse27'),
(28, 'Assistant Professor', '2015-12-08', '0027-00-00', 'cse28'),
(29, 'Assistant Professor', '2015-08-13', '0028-00-00', 'cse29'),
(30, 'Associate Professor', '2017-08-08', '0029-00-00', 'cse30'),
(31, 'PROFESSOR, R&D Head', '2016-07-26', '0030-00-00', 'cse31'),
(32, 'PROFESSOR', '2014-11-08', '0031-00-00', 'cse32'),
(33, 'Associate Professor', '2015-02-28', '0032-00-00', 'cse33'),
(38, 'Associate Professor', '2011-03-25', '2018-06-20', 'te06'),
(39, 'Assistant Professor', '2016-01-11', '0000-00-00', 'te14'),
(40, 'Lecturer', '1999-12-13', '2011-12-25', 'te07'),
(41, 'Assistant Professor', '2011-12-25', '0000-00-00', 'te07'),
(42, 'LECTURER', '1999-12-01', '2004-12-24', 'te03'),
(43, 'SENIOR LECTURER', '2004-12-25', '2006-03-01', 'te03'),
(44, 'ASSISTANT PROFESSOR', '2006-03-01', '2011-06-01', 'te03'),
(45, 'Associate professor', '2011-06-01', '0000-00-00', 'te03'),
(46, 'ASSISTANT PROFESSOR', '2005-08-17', '2011-01-01', 'te09'),
(47, 'Assistant Professor', '2012-08-22', '0000-00-00', 'te12'),
(48, 'Assistant Professor', '2007-06-01', '2010-08-01', 'te06'),
(49, 'Project Trainee', '2005-10-01', '2006-07-30', 'te06'),
(50, 'Lecturer', '2005-08-24', '2007-06-05', 'te06'),
(51, 'Assistant Professor', '2010-09-08', '0000-00-00', 'te11'),
(52, 'Technical Support Executive', '2003-07-28', '2004-09-09', 'te06'),
(53, 'Software Programmer', '2001-10-12', '2003-04-28', 'te06'),
(54, 'Asst. Professor', '2007-08-03', '0000-00-00', 'te10'),
(55, 'Associate Professor , Joined as Assistant Professo', '2005-09-05', '2011-01-01', 'te05'),
(56, 'LECTURER', '2006-06-05', '0000-00-00', 'te13'),
(57, 'LECTURER', '2009-06-05', '2012-06-05', 'te13'),
(58, 'Principal Research Scientist', '2007-02-01', '0000-00-00', 'te02'),
(59, 'Associate Professor', '2012-09-01', '2017-08-01', 'te02'),
(60, 'Professor', '2017-08-01', '0000-00-00', 'te02'),
(61, 'Lecturer', '0000-00-00', '0000-00-00', 'te08'),
(62, 'Assistant Professor', '0000-00-00', '0000-00-00', 'te08'),
(63, 'Lecturer', '2001-03-29', '2003-09-02', 'te04'),
(64, 'assistant professor', '2012-08-22', '0000-00-00', 'te13'),
(65, 'Professor', '2013-04-12', '2018-10-03', 'ece02'),
(66, 'Assistant Professor', '1992-09-21', '2005-12-24', 'ece02'),
(67, 'Assistant Professor', '2017-09-04', '0000-00-00', 'cv01'),
(68, 'Asst Professor', '2014-08-04', '0000-00-00', 'bt01'),
(70, 'Associate Professor', '2017-08-01', '2018-09-28', 'me01'),
(72, 'Assistant Professor', '2010-07-24', '2017-07-31', 'me01'),
(73, 'Assistant Professor', '2012-08-27', '0000-00-00', 'bt03'),
(74, 'Research Associate, IISc', '2010-08-30', '2014-05-30', 'ece03'),
(75, 'Adjunct Instructor, College of Engineering, Univer', '2004-05-26', '2007-08-31', 'ece03'),
(76, 'Assistant Professor', '2015-08-04', '0000-00-00', 'cv03'),
(78, 'Lecturer', '2002-11-11', '2004-09-17', 'mca02'),
(79, 'Lecturer', '2007-08-08', '2011-12-31', 'me02'),
(80, 'Assistant Professor', '2012-01-01', '2016-07-31', 'me02'),
(81, 'Associate Professor', '2016-08-01', '0000-00-00', 'me02'),
(82, 'Associate Professor', '2005-12-25', '2013-04-11', 'ece02'),
(83, 'Assistant Professor', '1992-09-21', '2005-12-24', 'ece02'),
(84, 'ASSISTANT PROFESSOR', '2011-01-01', '2018-03-10', 'me03'),
(85, 'SENIOR LECTURER', '2007-08-08', '2011-01-01', 'me03'),
(86, 'LECTURER', '1997-01-08', '2007-08-08', 'me03'),
(87, 'Lecturer', '2004-09-20', '2006-09-02', 'mca02'),
(88, 'Lecturer', '2006-09-04', '2010-12-31', 'mca02'),
(89, 'Assistant Professor', '2011-01-01', '0000-00-00', 'mca02'),
(90, 'Lecturer', '2010-01-29', '2013-07-01', 'ece01'),
(91, 'Assistant Professor', '2013-07-01', '0000-00-00', 'ece01'),
(92, 'Teaching Research Associate (Anna University)', '2008-08-11', '2012-04-30', 'mat03'),
(93, 'Assistant Professor', '2011-12-07', '2018-10-31', 'mba03'),
(94, 'Lecturer', '2008-06-02', '2011-07-26', 'mba03'),
(95, 'Visiting Faculty', '2006-08-02', '2007-02-24', 'mba03'),
(96, 'Assistant Sales manager', '2005-07-15', '2008-05-14', 'mba03'),
(97, 'ADHOC FACULTY', '2015-07-27', '2016-07-31', 'ch01'),
(98, 'Assistant Professor', '2012-08-01', '2018-10-31', 'mba02'),
(99, 'Assistant Professor', '2016-08-04', '0000-00-00', 'ch01'),
(100, 'Lecturer', '2005-05-06', '2008-01-08', 'it01'),
(101, 'Lecturer', '2008-06-08', '2011-06-01', 'it01'),
(102, 'Assistant Professor', '2011-06-01', '2018-10-10', 'it01'),
(103, 'Assistant Professor', '2016-08-03', '2018-10-10', 'phy01'),
(104, 'Assistant Professor', '2014-07-14', '2016-06-06', 'phy01'),
(105, 'TEACHING ASSOCIATE', '2008-08-28', '2009-03-17', 'phy01'),
(106, 'TEACHING ASSOCIATE', '2009-08-11', '2010-02-01', 'phy01'),
(107, 'Associate Professor', '2018-06-21', '2018-10-10', 'it02'),
(108, 'Assistant Professor', '2011-01-01', '2018-06-20', 'it02'),
(109, 'Sr. Lecturer', '2004-12-01', '2010-12-01', 'it02'),
(110, 'Lecturer', '1999-04-10', '2004-11-30', 'it02'),
(111, 'Assistant Professor', '2014-08-06', '2018-10-11', 'phy02'),
(112, 'Lecturer', '2001-04-28', '2007-12-25', 'it03'),
(113, 'Senior Lecturer', '2007-12-26', '2011-01-01', 'it03'),
(114, 'Assistant Professor', '2011-01-01', '0000-00-00', 'it03'),
(115, 'Assistant Professor ', '2014-09-29', '0000-00-00', 'cv02'),
(116, 'Lecturer', '2006-09-11', '2011-01-01', 'chy02'),
(117, 'Assistant Professor', '2011-01-01', '2014-12-31', 'chy02'),
(118, 'Lecturer', '1990-02-22', '1996-02-29', 'ee02'),
(119, 'Lecturer', '1996-03-01', '2005-02-28', 'ee02'),
(120, 'Sr. Lecturer', '2005-03-01', '2007-07-31', 'ee02'),
(121, 'Associate Professor', '2015-01-01', '0000-00-00', 'chy02'),
(122, '', '0000-00-00', '0000-00-00', 'chy02'),
(125, 'Assistant Professor', '2007-08-01', '2009-10-31', 'ee02'),
(126, 'Professor & Head', '2009-11-02', '2011-06-04', 'ee02'),
(127, 'Associate Professor', '2011-06-06', '2015-09-14', 'ee02'),
(128, 'Professor', '2015-09-15', '2016-04-10', 'ee02'),
(129, 'Professor & Head', '2016-04-11', '2017-09-24', 'ee02'),
(130, 'Professor', '2017-09-25', '2018-10-16', 'ee02'),
(131, 'Lecturer', '2006-08-27', '2007-07-29', 'mca01'),
(132, 'Software Engineer', '2007-08-01', '2011-05-25', 'mca01'),
(133, 'Assistant Professor', '2012-07-16', '2018-10-27', 'mca01'),
(134, 'Associate Professor', '2018-06-22', '2018-10-29', 'im02'),
(135, 'Assistant Professor', '2011-01-01', '2018-06-21', 'im02'),
(136, 'Lecturer', '2001-03-31', '2011-12-31', 'im02'),
(137, 'Associate Professor', '2013-08-12', '0000-00-00', 'iem01'),
(138, 'Associate Professor', '2011-01-10', '2013-08-10', 'iem01'),
(139, 'LECTURER', '2010-01-12', '2010-12-24', 'iem01'),
(140, 'LECTURER', '2009-07-13', '2010-01-08', 'iem01'),
(141, 'Temporary Faculty (NIT-T)', '2013-08-12', '2013-12-20', 'mat03'),
(143, 'Lecturer, Dept of Computer Science, Al-Ameen Arts,', '1993-09-01', '1998-08-31', 'mca03'),
(144, 'Lecturer, Dept of MCA, M. S. Ramaiah Institute of ', '1998-10-01', '2003-12-01', 'mca03'),
(145, 'Senior Lecturer, Dept of MCA, M. S. Ramaiah Instit', '2003-12-01', '2006-03-31', 'mca03'),
(146, 'Assistant Professor, Dept of MCA, M. S. Ramaiah In', '2006-04-01', '2010-12-31', 'mca03'),
(147, 'Associate Professor', '2011-01-01', '2018-10-30', 'mca03'),
(148, 'Assitant Professor', '2010-08-05', '2014-07-31', 'mba01'),
(149, 'Assitant Professor', '2014-08-04', '2018-10-31', 'mba01'),
(150, 'Lecturer', '1982-08-01', '1983-12-01', 'ee03'),
(151, 'Tutor', '1991-09-01', '1991-12-01', 'ee03'),
(152, 'Research Associate', '1993-09-01', '1994-09-01', 'ee03'),
(153, 'Software Engineer', '1996-08-01', '2003-03-01', 'ee03'),
(154, 'Assistant Professor', '2003-10-01', '2009-02-01', 'ee03'),
(155, 'Professor', '2009-02-01', '2012-01-01', 'ee03'),
(156, 'Professor & Head', '2012-01-01', '2018-12-01', 'ee03'),
(157, 'Lecturer', '2008-08-08', '2012-07-27', 'mba02'),
(158, 'Lecturer', '2007-04-01', '2008-07-31', 'mba02'),
(159, 'Lecturer', '2006-02-01', '2007-03-25', 'mba02'),
(160, 'Assistant Professor', '2007-04-23', '2010-07-27', 'ch02'),
(161, 'Professor', '2010-07-23', '0000-00-00', 'ch02'),
(162, 'Associate Professor', '2007-08-27', '2018-11-02', 'mat01'),
(163, 'Research Engineer', '2013-07-15', '2015-09-09', 'ch03'),
(164, 'Associte Professor', '2014-01-06', '0000-00-00', 'phy03'),
(165, 'Assistant Professor', '2011-01-01', '2014-01-05', 'phy03'),
(166, 'Assistant Professor', '2009-08-01', '0000-00-00', 'bt02');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_workshop_fdp`
--

CREATE TABLE `faculty_workshop_fdp` (
  `slNo` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sponsoredOrFunded` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(100) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `role` varchar(50) NOT NULL,
  `nationalOrInternational` varchar(30) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_workshop_fdp`
--

INSERT INTO `faculty_workshop_fdp` (`slNo`, `type`, `title`, `sponsoredOrFunded`, `date`, `place`, `duration`, `role`, `nationalOrInternational`, `facultyId`) VALUES
(2, '', 'Cyber-Physical Systems Symposium (CyPhySS)', 'null', '2017-07-19', '', '', '', 'null', 'cse05'),
(3, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', '', '', '', 'null', 'cse05'),
(4, '', 'Cloud Computing With Amazon Web Services', 'null', '2017-07-31', '', '', '', 'null', 'cse05'),
(5, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', '', '', '', 'null', 'cse06'),
(6, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', '', '', '', 'null', 'cse14'),
(7, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', '', '', '', 'null', 'cse19'),
(8, '', 'Machine learning techniques and advances for cognitive computing', 'null', '2017-07-31', '', '', '', 'null', 'cse19'),
(9, '', 'AWS educate', 'null', '2017-07-31', '', '', '', 'null', 'cse13'),
(10, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', '', '', '', 'null', 'cse13'),
(11, '', 'Entrepreneurship Educator Program from Wadhwani Foundation', 'null', '2017-11-23', '', '', '', 'null', 'cse13'),
(12, '', 'Teaching techniques and Learning management System using ICT tools', 'null', '2018-01-16', '', '', '', 'null', 'cse26'),
(13, '', 'Workshop on “Research Methodology” ', 'null', '2017-07-17', '', '', '', 'null', 'cse26'),
(14, '', 'Workshop on “Role of Statistics in Scientific Research”', 'null', '2018-01-04', '', '', '', 'null', 'cse26'),
(15, '', 'Cyber-Physical Systems Symposium (CyPhySS)', 'null', '2017-07-19', '', '', '', 'null', 'cse29'),
(16, '', 'Distributed and Cognitive Technologies, Business and Security', 'null', '2017-07-24', '', '', '', 'null', 'cse29'),
(17, '', 'Cloud Computing With Amazon Web Services', 'null', '2017-07-31', '', '', '', 'null', 'cse29'),
(18, '', 'Android developer fundamentals faculty training ', 'null', '2017-12-18', '', '', '', 'null', 'cse23'),
(19, '', 'Teaching techniques and Management systems using ICT tools', 'null', '2018-01-16', '', '', '', 'null', 'cse23'),
(20, '', 'One week FDP on “Cloud based IOT Programming” ', 'null', '2018-01-16', '', '', '', 'null', 'cse25'),
(21, '', 'Cyber-Physical Systems Symposium', 'null', '2017-07-19', '', '', '', 'null', 'cse25'),
(22, '', 'One Week FDP on “Cloud Computing with AWS”', 'null', '2018-02-15', '', '', '', 'null', 'cse25'),
(23, '', 'oneM2M Developers Tutorial ', 'null', '2013-08-22', '', '', '', 'null', 'cse25'),
(24, '', 'International Conference on Advances in Computing, Communications and Informatics (ICACCI-2013)', 'null', '2013-08-22', '', '', '', 'null', 'cse25'),
(25, '', 'AWS Educate ', 'null', '2017-07-31', '', '', '', 'null', 'cse18'),
(26, '', 'Machine learning techniques and advances for cognitive computing ', 'null', '2017-07-31', '', '', '', 'null', 'cse18'),
(27, '', 'Distributed and cognitive Technologies , Business and security ', 'null', '2017-07-24', '', '', '', 'null', 'cse18'),
(28, '', 'AWS educate', 'null', '2017-07-31', '', '', '', 'null', 'cse17'),
(29, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', '', '', '', 'null', 'cse17'),
(30, '', 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', '', '', '', 'null', 'cse06'),
(31, '', 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', '', '', '', 'null', 'cse12'),
(32, '', 'Workshop on ”Computational machine learning and artificial intelligence”', 'null', '2018-01-18', '', '', '', 'null', 'cse12'),
(33, '', 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', '', '', '', 'null', 'cse27'),
(34, '', 'One week workshop on “Distributed and cognitive Technologies, Business and Security', 'null', '2017-07-24', '', '', '', 'null', 'cse15'),
(35, '', 'Four days course on “  Social and Information. Networks Analysis: Problems, Models and Machine Learn', 'null', '2018-12-11', '', '', '', 'null', 'cse15'),
(36, '', 'Two Day National Seminar on” Empowering Indian Society Towards Cashles Economy”', 'null', '2017-11-24', '', '', '', 'null', 'cse09'),
(37, '', 'Two Day Workshop on “ Research to Impact” ', 'null', '2017-11-13', '', '', '', 'null', 'cse09'),
(38, '', 'National Workshop on “ Popularisation of Remote Sensing Based Maps and Geospatial Information”', 'null', '2017-08-11', '', '', '', 'null', 'cse09'),
(39, '', 'Workshop on Cloud Computing with Amazon web services', 'null', '2005-07-31', '', '', '', 'null', 'cse04'),
(41, '', 'Social and Information Networks Analysis: Problems, Models and Machine Learning Methods”', 'null', '2017-12-11', '', '', '', 'null', 'cse15'),
(42, '', 'workshop on Distributed and Cognitive technologies, Business and Security ', 'null', '2017-07-24', '', '', '', 'null', 'cse03'),
(43, '', 'Machine learning techniques and advances for cognitive computing', 'null', '2017-07-31', '', '', '', 'null', 'cse19'),
(87, '', 'Building Learning Machines', 'Sponsored', '2018-08-16', '', '', '', 'Participan', 'te09'),
(89, '', 'RF CIRCUITS AND MICROWAVE SYSTEMS', 'Sponsored', '2018-07-08', '', '', '', 'FDP', 'te10'),
(90, '', 'ADVANCED DSP APPLICATIONS USING TMS320C6713/6748', 'Sponsored', '2018-07-30', '', '', '', 'FDP', 'te10'),
(91, '', 'IOT SYSTEM DESIGN USING RPI AND DATA ANALYTICS', 'Sponsored', '2018-01-16', '', '', '', 'FDP', 'te10'),
(92, '', 'ADVANCED ENGG APPLICATIONS OF INTEGRAL TRANSFORMS, WAVELETS AND STOCHASTIC PROCESS', 'Sponsored', '2017-07-31', '', '', '', 'FDP', 'te10'),
(93, '', 'Research Trends & Development on IOT enabled 5G Wireless Networks', 'Sponsored', '2017-01-16', '', '', '', 'FDP', 'te10'),
(94, '', 'Rf circuits and microwave systems', '', '2018-07-23', '', '', '', '1 week FDP', 'te07'),
(95, '', 'IOT for Wireless Applications', 'Sponsored', '2016-07-25', '', '', '', 'FDP', 'te10'),
(98, '', '‘Smart Ph.D Planning and how to do research effectively”,', 'Sponsored ', '2013-02-08', '', '', '', 'Faculty de', 'te05'),
(99, '', '“Advanced Communication Technologies “ ', 'Sponsored', '2013-02-13', '', '', '', 'Two day wo', 'te05'),
(100, '', '“Heterogeneous Computing: A Roadmap to parallel processing “', 'Sponsored', '2013-03-15', '', '', '', 'Three day ', 'te05'),
(101, '', '“Probability, Mathematical Statistics and its applications to Engineering “', 'Sponsored ', '2013-03-23', '', '', '', 'Three day ', 'te05'),
(102, '', '“Advances in Signal processing and Pattern Recognition “', 'Sponsored ', '2013-08-03', '', '', '', 'Five day w', 'te05'),
(103, '', '“Recent advances in Computer and communication  Networks “', 'Sponsored ', '2013-11-23', '', '', '', 'Two day wo', 'te05'),
(104, '', '“Software defined radio” ', 'Sponsored ', '2014-01-24', '', '', '', 'One day wo', 'te05'),
(105, '', 'Springer Author workshop', 'Sponsored ', '2014-02-13', '', '', '', ' one day w', 'te05'),
(106, '', '“Light runner an optical test bench and its applications”,', 'Sponsored and Organised ', '2014-04-30', '', '', '', 'Organized ', 'te05'),
(107, '', '“Pedagogy (Core Module)”', 'Sponsored', '2014-08-02', '', '', '', 'Five day w', 'te05'),
(108, '', '“Advances on RF and Terahertz  Technologies “', 'Sponsored', '2014-11-20', '', '', '', 'Pre confer', 'te05'),
(109, '', '“Trends in RF, Microwave and Sensor Networks  Technology” ', 'Sponsored', '2015-06-06', '', '', '', 'Five day w', 'te05'),
(110, '', 'Optical biosensors and biomedical signal processing ', 'Sponsored ', '2015-06-06', '', '', '', 'One day wo', 'te05'),
(111, '', '“Embedded system design using MSP 430”,', 'Sponsored', '2015-07-24', '', '', '', 'Five day w', 'te05'),
(112, '', '“Soft Computing and its application in  Engineering”,', 'Sponsored', '2015-08-12', '', '', '', 'Three day ', 'te05'),
(113, '', '” Pedagogy(Outcome Based Education)”Under TEQIP-II ', 'Sponsored', '2015-08-18', '', '', '', 'Two day wo', 'te05'),
(114, '', '‘Recent Developments in Signal and Image Processing  with Applications “', 'Sponsored', '2016-01-09', '', '', '', 'Three day ', 'te05'),
(115, '', '“MICRO AND NANO SENSORS FOR HEALTH  MONITORING”', 'Sponsored', '2016-06-11', '', '', '', 'Five day w', 'te05'),
(116, '', '“Latex and Research Methodologies “', 'Sponsored', '2016-07-21', '', '', '', 'Three day ', 'te05'),
(117, '', '“IOT for Wireless application “,', 'Sponsored', '2016-07-29', '', '', '', 'Five day w', 'te05'),
(118, '', '“ I –Care 2016”  ', 'Sponsored', '2016-10-16', '', '', '', 'Three day ', 'te05'),
(119, '', '“Research Trends and Development of IOT enabled 5G Wireless Network” ', 'Sponsored', '2017-01-21', '', '', '', 'Five day w', 'te05'),
(120, '', '“Machine learning techniques and advances for Cognitive  Computing “,', 'Sponsored', '2017-08-05', '', '', '', 'Five day w', 'te05'),
(121, '', '“IOT SYSTEM DESIGN USING RPI AND DATA ANALYTICS” ', 'Sponsored', '2018-01-20', '', '', '', 'Five day w', 'te05'),
(122, '', '“RF Circuits and Systems” ', 'Sponsored', '2018-07-28', '', '', '', 'Five day w', 'te05'),
(123, '', '“Building Learning Machines”', 'Sponsored', '2018-07-21', '', '', '', 'Five day w', 'te05'),
(124, '', 'RF Circuits and Systems', 'MSRIT', '2018-07-23', '', '', '', '', 'te02'),
(125, '', 'iot system design using rpi and data analytics', 'MSRIT', '2018-01-16', '', '', '', '', 'te02'),
(126, '', 'Research Trends & Development on IOT enabled 5G Wireless Networks', '', '2017-01-16', '', '', '', '', 'te02'),
(127, '', 'Three Day International Conference on I4C-2016', '', '2016-10-06', '', '', '', '', 'te02'),
(128, '', 'IOT for Wireless Applications', 'teqip II', '2016-07-25', '', '', '', '', 'te02'),
(129, '', 'RF CIRCUITS AND MICROWAVE SYSTEMS', 'MSRIT', '2018-07-28', '', '', '', '', 'te13'),
(130, '', 'ATMS INDIA-2018', 'ATMS', '2018-02-05', '', '', '', '', 'te13'),
(131, '', '“IOT SYSTEM DESIGN USING RPI AND DATA ANALYTICS', 'MSRIT', '2018-01-16', '', '', '', '', 'te13'),
(132, '', 'MAPLESOFT PRODUCT OVERVIEW- LEVEL 1', 'MSRIT', '2017-09-10', '', '', '', '', 'te13'),
(133, '', 'ADVANCED ENGG APPLICATIONS OF INTEGRAL TRANSFORMS, WAVELETS AND STOCHASTIC PROCESS', 'MSRIT', '2017-07-31', '', '', '', '', 'te13'),
(134, '', '1.    One week FDP on “RF Circuits and Systems” held at RIT from 23rd  to 28th   July 2018 ', '', '2018-07-23', '', '', '', 'National', 'te03'),
(135, '', '2.    One week FDP on “Building Learning Machines” held at RIT from 16th to 21st  July 2018 ', '', '2018-07-16', '', '', '', 'National', 'te03'),
(136, '', '3.    One week FDP on “Practical Statistical Machine Learning and data Science with Julia” held at R', '', '2018-06-11', '', '', '', 'National', 'te03'),
(137, '', '4.    One week  faculty development programme on “IOT system design using RPI and data analytics” he', '', '2018-01-16', '', '', '', 'National', 'te03'),
(138, '', '5.    Two day Workshop on “Entrepreneurship Educator program” organized by DC, RIT and Wadwani Found', '', '2017-11-23', '', '', '', 'National', 'te03'),
(139, '', '6.    Workshop on Analysis and Inference from UGC (WAIU) held at IISC on October 9th and 10th 2017', '', '2017-10-09', '', '', '', 'National', 'te03'),
(140, '', '7.    One day National workshop on Popularization of remote Sensing Based Maps and Geospatial inform', '', '2017-08-11', '', '', '', 'National', 'te03'),
(141, '', '8.    One day Transition training on ISO 9001:2015 International Standard held at MSRIT on 27th Feb ', '', '2017-02-27', '', '', '', 'Internatio', 'te03'),
(142, '', '9.    Two days training at Nihon Communication on Qualnet Simulator in Feb 2017', '', '2017-02-15', '', '', '', 'National', 'te03'),
(143, '', '10. One week FDP on “Research Trends and Development on IOT enabled 5G Wireless Networks” Under ', '', '2017-01-16', '', '', '', 'National', 'te03'),
(144, '', '11.    Three day Winterschool on Web Designing held at MSRIT during Jan 19th to 21st Jan 2017, Condu', '', '2017-01-19', '', '', '', 'National', 'te03'),
(145, '', '12.    One week FDP on “IOT and Cyber Security using Watson and Bluemix” Under TEQIP-II  held at de', '', '2017-01-09', '', '', '', 'National', 'te03'),
(146, '', '13.    Two day workshop – “ICARE-2016” organized jointly by IBM and MSRIT from 14-15th October 2016', '', '2016-10-14', '', '', '', 'National', 'te03'),
(147, '', '14.    One week FDP on “IoT for Wireless Applications “C  from 25th to 29th July 2016 Organized at  ', '', '2016-07-25', '', '', '', 'National', 'te03'),
(148, '', '15.    One week FDP on “Analog, Power, Embedded Systems and Wireless(IOT) Hands on Workshop” conduct', '', '2016-07-11', '', '', '', 'National', 'te03'),
(149, '', '16.    One week FDP on “NS3 and its Advanced usage” conducted Under ISTE sponsorship  from 27th June', '', '2016-07-01', '', '', '', 'National', 'te03'),
(150, '', '17.    One week FDP on Micro –Nano Sensors for health Monitoring Under TEQIP-II  from 6th   to 11th', '', '2016-06-06', '', '', '', 'National', 'te03'),
(151, '', '18.    Faculty development programme on “Recent Developments in signal and Image processing with app', '', '2016-01-07', '', '', '', 'National', 'te03'),
(152, '', '19.    Two day workshop on “IEEE Smart Tech Workshop-2015”conducted by IEEE region 10 held at Bangal', '', '2015-09-25', '', '', '', 'National', 'te03'),
(153, '', '20.    Two days Faculty development programme on “Pedagogy(Outcome Based Education)”Under TEQIP-II  ', '', '2015-08-17', '', '', '', 'National', 'te03'),
(154, '', '21.Three days Faculty development programme on “Soft Computing and its Applications in Engg” from 10', '', '2015-08-10', '', '', '', 'National', 'te03'),
(155, '', '22.One week Faculty development programme on “A Practical Approach Towards Embedded System Design”Un', '', '2015-07-27', '', '', '', 'National', 'te03'),
(156, '', '23.    Two week Faculty development programme on “Foundations For Innovation in Cyber Physical Syst', 'Sponsored by DST', '2015-07-20', '', '', '', 'National', 'te03'),
(157, '', '24. One week Faculty development programme on “Embedded System Design Using MSP-430” from 20th  to 2', '', '2015-07-20', '', '', '', 'National', 'te03'),
(158, '', '25. One week workshop on “Trends in RF, Microwave and Sensor Networks Technology”  on 01-06-2015', '', '2015-06-01', '', '', '', 'National', 'te03'),
(159, '', '26.    Three day workshop on “Embedded System Design Using ARM Cortex M4” from 25th  to 27th May 20', '', '2015-05-25', '', '', '', 'National', 'te03'),
(160, '', '27.    Three DaysFDP  on Applications of Machine Learning for Music Data Analyticsunder TEQIP-II, 2', '', '2015-05-20', '', '', '', 'National', 'te03'),
(161, '', '28.     Two Day Work-shop  on Emerging Technologies in Data Science(Machine Learning)under TEQIP-II,', 'Funded under TEQIP-II', '2015-03-26', '', '', '', 'National', 'te03'),
(162, '', '29. Two day workshop on Sensing and control for Automotive applications, 27-28th Feb 2015, held ', '', '2015-02-27', '', '', '', 'National', 'te03'),
(163, '', '30.    One day workshop titled Contiki  workshop on Middleware for IOT on 26th Feb 2015 ayt Robert ', '', '2015-02-26', '', '', '', 'National', 'te03'),
(164, '', '31.    One Day Pre- Conference Work-shop  on Application of RF and TeraHertz Technologies at MSRIT ', '', '2014-11-20', '', '', '', 'National', 'te03'),
(165, '', '32.    One Day Workshop on Sensors for Robotics on 15th Nov 2014, at MSRIT-IEEE Sensor Council', '', '2015-11-15', '', '', '', 'National', 'te03'),
(166, '', '33. One day preconference workshop on “Micro and Nano Technology for Consumer electronics” organ', '', '2014-07-08', '', '', '', 'National', 'te03'),
(167, '', '34. 1 day workshop on “Light Runner –an Optical Test Bench and Its Applications”, 30th Apr, 2014, De', '', '2015-08-30', '', '', '', 'National', 'te03'),
(168, '', '35.1 day workshop on Software defined radio,24th Jan 2014, Dept of TCE, MSRIT', '', '2014-01-24', '', '', '', 'National', 'te03'),
(169, '', '36. 2 days workshop on Recent Advances in Computer and Communications Network,22-23 Nov-2013, Dept o', '', '2013-11-22', '', '', '', 'National', 'te03'),
(170, '', '37.3 days workshop on Wireless Sensor Networks: Recent Trends and Applications, 7-9 Nov 2013, D', '', '2013-11-07', '', '', '', 'National', 'te03'),
(171, '', '38. 2 days workshop on NovotonNuMicro ARM Cortex-M0 and its Applications under TEQIP-II,10-11thsepte', '', '2013-09-10', '', '', '', 'National', 'te03'),
(172, '', '39. 3 day NBA workshop , 9-11th May 2013,t PESIT,Bangalore ', '', '2013-05-11', '', '', '', 'National', 'te03'),
(173, '', '40. 3 day workshop on Micro and Nano Technology Applications under TEQIP-II,25-27th April. 2013, Dep', '', '2013-04-25', '', '', '', 'National', 'te03'),
(174, '', '41. 3 days workshop on Advances in RF & Wireless Technology, 18 -20th March. 2013,  Dept of ECE,', '', '2013-03-18', '', '', '', 'National', 'te03'),
(175, '', '42. 3 days workshop on  Heterogeneous Computing:A Road Map to Parallel Processing, 13-15 march 2013,', '', '2013-03-13', '', '', '', 'National', 'te03'),
(176, '', '43.    One day workshop from Nokia at National Institute of Design,Bangalore.', '', '0000-00-00', '', '', '', 'National', 'te03'),
(177, '', '44. 2 days workshop on Advanced Communication Technologies,12-13 Feb. 2013,  Dept of TCE, MSRIT', '', '2013-02-12', '', '', '', 'National', 'te03'),
(178, '', '45. 2 days workshop on Food Adulteration and safety Measures, 4-5 Feb 2013, Dept of Chemistry, M', '', '2013-02-04', '', '', '', 'National', 'te03'),
(179, 'Workshop', 'Teaching Techniques and Learning Management Systems using ICT Tools', 'NA', '2018-06-01', 'MSRIT Bangalore', '1 Week', 'Participant', 'National', 'cv01'),
(180, 'FDP', 'Advanced Materials & Manufacturing Technology', 'AICTE, NEW DELHI', '2017-12-04', '', '2 WEEKS', 'Chief Coordinator', 'National', 'me01'),
(181, 'Workshop', 'Hard Turning and its Applications', 'ARMAMENT RESEARCH BOARD, DRDO', '2017-01-05', '', '3 DAYS', 'Chief Coordinator', 'National', 'me01'),
(182, 'Seminar', 'Smart Materials & its Applications', 'AICTE, NEW DELHI', '2016-12-21', '', '2 DAYS', 'Chief Coordinator', 'National', 'me01'),
(183, 'Workshop', 'Latex and Scilab/Octave', 'Nil', '2013-01-23', 'RNSIT, Bangalore', 'two', 'Participant', 'National', 'ece02'),
(184, 'Workshop ', 'Advances in RF and Wireless Technologies', 'Nil', '2013-03-18', 'Ramaiah Institute of Technology', 'one week', 'Participant', 'National', 'ece02'),
(185, 'Workshop', 'Curriculum Development using Outcome based Education in Engineering', 'Nil', '2013-06-24', 'Ramaiah Institute of Technology', 'one week', 'Participant', 'National', 'ece02'),
(186, 'Workshop', 'Advances in Signal Processing and Pattern Recognition', 'Nil', '2013-07-29', 'Ramaiah Institute of Technology', 'one week', 'Coordinator', 'National', 'ece02'),
(187, 'Workshop', 'Advances in VLSI System', 'Nil', '2014-08-13', 'Ramaiah Institute of Technology', 'one week', 'Participant', 'National', 'ece02'),
(188, 'Workshop', 'Trends in RF, Microwave And Sensor Network Technologies', 'Nil', '2015-06-01', 'Ramaiah Institute of Technology', 'one week', 'Participant', 'National', 'ece02'),
(189, 'Workshop', 'Analog and RF CMOS Circuit Design', 'Nil', '2015-06-29', 'Ramaiah Institute of Technology', 'one week', 'Participant', 'National', 'ece02'),
(191, 'Workshop', 'A Practical Approach Towards Embedded System Design', 'Nil', '2015-07-27', 'Ramaiah Institute of Technology', 'one week', 'Participant', 'National', 'ece02'),
(192, 'Workshop', 'Recent Trends in Video Analytics', 'Nil', '2016-01-04', 'Ramaiah Institute of Technology', 'one week', 'Participant', 'National', 'ece02'),
(193, 'Workshop', 'Pedagogy (Outcome Based Education) ', 'Nil', '2016-03-14', 'Ramaiah Institute of Technology', 'Two days', 'Participant', 'National', 'ece02'),
(195, 'FDP', 'Cyber Forensic', '', '2018-01-10', '', '1 day', 'Resource Person', 'National', 'mca02'),
(196, 'FDP', 'Cloud Based IoT Programming', 'Funded', '2018-01-16', '', '1 Week', 'Co-Ordinator', 'National', 'mca02'),
(197, 'Others', ' Project Management', 'Funded', '2017-10-16', '', '2 Weeks', 'Co-Ordinator', '', 'mca02'),
(198, 'FDP', 'Cloud Computing with Amazon Web Services', 'Sponsored', '2017-07-31', '', '1 Week', 'Participant', 'National', 'mca02'),
(199, 'FDP', 'Software Defined Data Centers : Creating Scalable Infrastructure for SMAC and IoT', '', '2016-07-25', '', '1 Week', 'Participant', 'National', 'mca02'),
(200, 'Training', '3-Day workshop on “Internet of Things (IoT)”, ', '22nd to 24th May, 2017, RIT, Bengaluru.', '2017-05-22', '', '3 days', 'Participant', '', 'ece01'),
(201, 'Training', ' “Biological Signal Analysis”, November 21st – 25th 2016, NITK Surathkal.', ' RIT Bangalore', '2016-11-21', '', '1 week', 'Participant', '', 'ece01'),
(202, 'Training', ' “IoT for Wireless Applications”, July 25th  to 29th  2016,', 'RIT, Bangalore', '2016-07-25', '', '5 days', 'Participant', '', 'ece01'),
(203, 'Training', 'One  week  workshop  on  “Recent  Trends  in  4G/5G  Wireless  Mobile Communication”, ', 'RIT, Bengaluru', '2016-07-11', '', '1week', 'Participant', '', 'ece01'),
(204, 'Training', '3 Day FDP on “ Computer Network Lab” organized by ECE Dept. Don Bosco Institute of Technology during', 'organized by ECE Dept. Don Bosco Institute of Technology during 8th to 10th Jan, 2018', '2018-01-08', '', '3 days', 'Participant', '', 'ece01'),
(205, 'Training', 'Cytoflex – Flow Cytometry Applications in Biotechnology', 'RIT and Bristol – Myers Squibb', '2018-06-04', '', '1 week', 'Others', 'National', 'bt03'),
(206, 'Others', 'Data Science – Impact on Business Decisions', 'Karnataka Science and Technology Promotion Society', '2018-04-10', '', '4 days', 'Participant', 'National', 'bt03'),
(207, 'Others', 'Novel Drug Discovery', 'RIT and Bristol – Myers Squibb', '2018-01-17', '', '1 week', 'Others', 'National', 'bt03'),
(208, 'Training', 'Pedagogy', 'RIT', '2017-03-06', '', '3 days', 'Participant', 'National', 'bt03'),
(209, 'Others', 'Protein Applications in Biotechnology ', 'RIT and Aristrogene Bioscience', '2017-01-16', '', '1 week', 'Others', 'National', 'bt03'),
(210, 'Others', 'Computational Tools for OMICS Data Analysis', 'RIT', '2016-07-11', '', '5 days', 'Participant', 'National', 'bt03'),
(211, 'Others', 'Applications of Biotechnology in Natural products Development', 'RIT and Himalaya Drug Company', '2016-06-28', '', '5 days', 'Others', 'National', 'bt03'),
(212, 'Others', 'Nanomaterials and Nanocomposites ', 'RIT ', '2016-06-20', '', '1 week', 'Participant', 'National', 'bt03'),
(213, 'Training', 'Pedagogy (Outcome Based Education)', 'RIT', '2016-03-14', '', '2 days', 'Participant', 'National', 'bt03'),
(214, 'Others', 'Downstream Processing of biologics and Nutraceuticals', 'RIT', '2016-01-04', '', '5 days', 'Others', 'National', 'bt03'),
(215, 'Others', 'Drug Discovery and Development Strategies ', 'RIT', '2015-07-20', '', '5 days', 'Others', 'National', 'bt03'),
(216, 'Others', 'Leadership and Techno-Entrepreneurship through Project Based Learning System ', 'RIT - Entrepreneurship Development Cell', '2015-03-16', '', '2 week', 'Participant', 'National', 'bt03'),
(217, 'Others', 'Process Simulation and Optimization using AspenONE ', 'RIT', '2015-01-27', '', '5 days', 'Participant', 'National', 'bt03'),
(218, 'Training', 'Case Studies in AspenONE ', 'RIT', '2015-01-22', '', '3 days', 'Participant', 'National', 'bt03'),
(219, 'Others', 'Career Assessment, Coaching and Counselling ', 'SIT, Tumkur and Swinburne University and Career Life College, Australia', '2014-07-20', '', '3 days', 'Participant', 'National', 'bt03'),
(220, 'Others', 'Recent Advances in Catalysis and Engineering ', 'RIT', '2014-01-27', '', '5 days', 'Participant', 'National', 'bt03'),
(221, 'Others', 'Curriculum Development using Outcome Based Education in Engineering ', 'RIT', '2013-06-24', '', '5 days', 'Participant', 'National', 'bt03'),
(222, 'Others', 'Oil and Gas with Focal Theme: Recent Trends in Upstream and Downstream Processing', 'RIT', '2013-03-07', '', '2 days', 'Participant', 'National', 'bt03'),
(223, '', '', '', '0000-00-00', '', '', '', '', 'mat01'),
(224, 'Training', 'Practical Approach To Stocks and Derivatives Trading', 'Sponsored', '2016-10-07', '', 'one day', 'Organising committee', 'National', 'mba03'),
(225, 'Training', 'Practical Approach To Stocks and Derivatives Trading', 'Sponsored', '0000-00-00', '', 'one day', 'Organising committee', 'National', 'mba02'),
(226, 'Training', 'Advanced Process Control', 'TEQIP', '2015-11-21', '', '2 days', 'Participant', 'National', 'ch01'),
(227, 'Field Visit', 'Parallel Computing using GPUs', '', '2016-03-08', '', '3 days', 'Participant', 'National', 'ch01'),
(228, 'Training', 'Advances in Wastewater Treatment Technologies', 'TEQIP', '2016-05-06', '', '2 days', 'Participant', 'National', 'ch01'),
(229, 'Training', 'Energy conservation and alternative options', 'TEQIP', '2016-05-20', '', '1', 'Participant', 'National', 'ch01'),
(230, 'Training', 'Faculty Pedagogical Development Programme', 'TEQIP', '2017-03-06', '', '3 days', 'Participant', 'National', 'ch01'),
(231, 'Training', 'Transport Processes', '', '2017-07-21', '', 'one week', 'Participant', 'National', 'ch01'),
(232, 'FDP', 'Building Learning Machines', 'N/A', '2018-07-16', '', 'One-week', 'Co-Ordinator', 'National', 'ece03'),
(233, 'FDP', 'New Horizon in Soft Condensed Matter Physics for Interdisciplinary Research', '', '2017-01-09', '', '1 Week', 'Participant', 'National', 'phy01'),
(234, 'FDP', 'Pedagogy', 'TEQIP-II', '2017-03-06', '', '3 days', 'Participant', 'National', 'phy01'),
(235, 'FDP', 'Recent Trends in Photonic Techniques', '', '2017-07-31', '', '1 Week', 'Participant', 'National', 'phy01'),
(236, 'FDP', 'Recent Advancess in Materials Science and Applications', '', '2018-01-16', '', '1 Week', 'Participant', 'National', 'phy01'),
(237, 'FDP', 'Functional Materials for Industrial Applications (FMIA-2018)', '', '2018-07-23', '', '1 Week', 'Participant', 'National', 'phy01'),
(238, 'FDP', 'Advanced DSP applications using TMS320C6713/6748 ', '-', '2018-07-30', '', '1 week', 'Participant', 'National', 'it02'),
(239, 'FDP', 'Medical Instrumentation and Signal Analysis Using Virtual Instrumentation Platform (A2A)', 'Dept. of EIE & ML, RIT', '2018-07-09', '', '1 week', 'Participant', 'National', 'it02'),
(240, 'FDP', 'Medical Imaging: Algorithms, Analysis and its Applications', 'School of Information Technology, VIT, Vellore', '2018-06-11', '', '1 week', 'Participant', 'National', 'it02'),
(241, 'FDP', 'Adaptive Filters', 'Dept. of ECE, RIT', '2018-05-28', '', '2 days', 'Participant', 'National', 'it02'),
(242, 'FDP', 'Teaching Techniques and Learning Management System using ICT Tools', 'Dept. of EIE , RIT', '2018-01-16', '', '1 week', 'Co-ordinator', 'National', 'it02'),
(243, 'Short term course', 'Control Systems Engineering and Design ', 'Dept. of Avionics, Indian Institute of Space Science & Technology, Trivandrum', '2018-06-06', '', '1 week', 'Participant', 'National', 'it02'),
(244, 'FDP', 'Robotics & Embedded Systems  ', 'Dept. of EIE , RIT', '2018-07-31', '', '1 week', 'Participant', 'National', 'it02'),
(245, 'FDP', 'PEDAGOGY (Outcome Based Education)', 'TEQIP-II, MSRIT', '2018-03-14', '', '2 days', 'Participant', 'National', 'it02'),
(246, 'FDP', 'Internet of Robotic Things (IoRT)', 'Dept. of EIE & EEE , RIT ', '2017-01-16', '', '1 week', 'Participant', 'National', 'it02'),
(247, 'Workshop', 'Current trends in Digital Image processing and its applications', 'TEQIP-II, MSRIT', '2016-01-19', '', '3 days', 'Participant', 'National', 'it02'),
(248, 'FDP', 'Soft computing and its applications in engineering', 'Dept. of EIE , RIT', '2015-08-10', '', '3 days', 'Participant', 'National', 'it02'),
(249, 'FDP', 'A Practical approach towards embedded system design', 'TEQIP, Dept. of ECE, MSRIT', '2015-07-27', '', '1 week', 'Participant', 'National', 'it02'),
(250, 'FDP', 'Embedded system design using ARM cortex M4', 'TEQIP, Dept. of EIE, MSRIT', '2015-05-25', '', '3 days', 'Participant', 'National', 'it02'),
(251, 'FDP', 'Vibration and modal analysis', 'TEQIP, Dept. of Mech. Engineering , RIT', '2013-08-19', '', '1 week', 'Participant', 'National', 'it02'),
(252, 'FDP', 'Pedagogy (core module)', 'TEQIP, Dept. of EIE, MSRIT', '2014-07-22', '', '3 days', 'Participant', 'National', 'it02'),
(253, 'FDP', 'Advanced Training Program In Industrial Automation Using PLC and SCADA', 'TEQIP, Dept. of EIE, MSRIT', '2014-08-04', '', '3 days', 'Participant', 'National', 'it02'),
(254, 'Workshop', 'Advances in signal processing and pattern recognition', 'TEQIP, Dept. of ECE, MSRIT', '2013-07-29', '', '1 week', 'Participant', 'National', 'it02'),
(255, 'FDP', 'Graphical system design in engineering', 'TEQIP, Dept. of EIE, Dr.AIT, Bangalore', '2013-07-15', '', '1 week', 'Participant', 'National', 'it02'),
(256, 'FDP', 'Analog system design using Texas instruments analog systems lab kit (ASLK V2010)', 'TEQIP, Dept. of EIE, Dr.AIT, Bangalore', '2012-09-24', '', '3 days', 'Participant', 'National', 'it02'),
(257, 'FDP', 'Electronic system design and manufacturing', 'TEQIP, Dept. of ECE, MSRIT', '2013-01-29', '', '1 day', 'Participant', 'National', 'it02'),
(258, 'FDP', 'Research challenges in EEG analysis and applications', 'TEQIP, Dept. of ML, Dr.AIT, Bangalore', '2013-06-25', '', '2 days', 'Participant', 'National', 'it02'),
(259, 'FDP', 'Probability, mathematical statistics and its applications in Engg', 'TEQIP, Dept. of Mathematics, MSRIT', '2013-03-21', '', '3 days', 'Participant', 'National', 'it02'),
(260, 'Workshop', 'Smart PhD planning and how to do research effectively', 'Dept. of ML, MSRIT', '2013-02-08', '', '1 day', 'Participant', 'National', 'it02'),
(261, 'Workshop', 'Workshop on Thermal Analysis', '', '2010-03-11', '', '2 days', 'Participant', 'National', 'phy01'),
(262, 'Workshop', 'National Workshop on Advanced Characterization and Simulation Techniques ', '', '2012-03-12', '', '6 days', 'Participant', 'National', 'phy01'),
(263, 'Workshop', 'Workshop on Upgradation of Knowledge on nanomaterials', '', '2015-01-07', '', '2 days', 'Participant', 'National', 'phy01'),
(264, 'Workshop', 'Workshop on Recent Trends in Advanced materials and Nanotechnology', '', '2015-01-27', '', '1 day', 'Participant', 'National', 'phy01'),
(265, 'workshop/FDP/Conferences/Sympo', 'workshop on Data mining Applications in Bioinformatics ', 'IISc-Bangalore', '2003-03-19', '', '3 days', 'Participant', 'Internatio', 'phy02'),
(266, 'Workshop', 'Workshop on Recent Trends in Modelling & Simulation of Multiscale Systems', '', '2015-07-09', '', '2 days', 'Participant', 'National', 'phy01'),
(267, 'FDP', 'SCADA/ network control system', 'TEQIP, Dept. of EIE, MSRIT', '2013-01-21', '', '3 days', 'Participant', 'National', 'it02'),
(268, 'Workshop', 'INUP Familiarization Workshop held at centre for Nano Science and Engineering (CeNSE)', '', '2015-07-20', '', '3 days', 'Participant', 'National', 'phy01'),
(269, 'FDP', 'Advanced micro controller MSP 430 (with hands on)', 'TEQIP, Dept. of EIE, MSRIT', '2013-02-04', '', '3 days', 'Participant', 'National', 'it02'),
(270, 'Workshop', 'Linear algebra and its applications to Engg', 'TEQIP, Dept. of Mathematics, MSRIT', '2012-01-16', '', '3 days', 'Participant', 'National', 'it02'),
(273, 'SDP', 'Mix Design of Neo Concrete', 'TEQIP II', '2015-10-07', 'Ramaiah Institute of Technology', '2 days', 'Participant', 'National', 'cv03'),
(281, 'SDP', 'Innovation and Technology Driven Entrepreneurial Momentum & Change in Emerging India', 'TEQIP II', '2016-01-04', 'Ramaiah Institute of Technology', '3 days', 'Participant', 'National', 'cv03'),
(282, 'SDP', 'Applied Mathematics in Engineering', 'TEQIP II', '2016-01-12', 'Ramaiah Institute of Technology', '3 days', 'Participant', 'National', 'cv03'),
(283, 'SDP', 'Pedagogy', 'TEQIP II', '2016-07-18', 'Ramaiah Institute of Technology', '3 days', 'Participant', 'National', 'cv03'),
(284, 'SDP', 'Significance of Hydrology in Civil Engineering Practice', 'TEQIP II', '2016-07-25', 'Ramaiah Institute of Technology', '5 days', 'Co-Ordinator', 'National', 'cv03'),
(285, 'Workshop', 'Application of Smart Materials and Devices for Sustainable Rehabilitation of Structures', 'TEQIP II', '2016-08-01', 'Ramaiah Institute of Technology', '5 days', 'Participant', 'National', 'cv03'),
(286, 'Workshop', 'Design of Formworks', 'TEQIP II', '2016-08-08', 'Ramaiah Institute of Technology', '5 days', 'Participant', 'National', 'cv03'),
(287, 'SDP', 'Application of Green Technologies to Overcome Environmental Challenges for Sustainable Urban Develop', 'TEQIP II', '2017-07-24', 'Ramaiah Institute of Technology', '5 days', 'Participant', 'National', 'cv03'),
(288, 'Workshop', 'Popularisation of Remote Sensing Based Maps and Geospatial Information', 'Indian Society of Remote Sensing and Indian Space Research Organization', '2017-08-11', 'Indian Space Research Organization', '1 day', 'Participant', 'National', 'cv03'),
(289, 'Training', 'Nature-Based Solutions for Water and Waste Management', 'Centre of Science and Environment', '2018-07-10', 'Centre of Science and Environment', '4 days', 'Participant', 'National', 'cv03'),
(290, 'SDP', 'Current Issues of Geo-Environmental Pollution', 'TEQIP II', '2018-07-23', 'Ramaiah Institute of Technology', '6 days', 'Participant', 'National', 'cv03'),
(291, 'SDP', 'Challenges in Geotechnical Engineering', 'Funded', '2014-12-29', 'MSRIT, Bangalore', '3 Day', 'Participant', 'National', 'cv02'),
(292, 'SDP', 'Mix Design of Neo Concretes', 'Funded', '2015-10-07', 'MSRIT, Bangalore', '3 Day', 'Participant', 'National', 'cv02'),
(293, 'SDP', 'Applied mathematics in Engineering', 'Funded', '2016-01-12', 'MSRIT, Bangalore', '3 Day', 'Participant', 'National', 'cv02'),
(294, 'SDP', 'Pedagogy', 'Funded', '2016-07-18', 'MSRIT, Bangalore', '3 Day', 'Participant', 'National', 'cv02'),
(295, 'SDP', 'Application of Smart materials and devices for sustainable rehabilitation of structures', 'Funded', '2016-08-01', 'MSRIT, Bangalore', '5', 'Participant', 'National', 'cv02'),
(296, 'SDP', 'Design of Formworks', 'Funded', '2016-08-08', 'MSRIT, Bangalore', '5 Day', 'Participant', 'National', 'cv02'),
(297, 'SDP', 'Significance of Hydrology in Civil Engineering Practice', 'Funded', '2016-07-25', 'MSRIT, Bangalore', '5 Day', 'Participant', 'National', 'cv02'),
(298, 'SDP', 'Recent Advancements in Transportation Engineering (RATE-2017)', 'Funded', '2017-07-16', 'MSRIT, Bangalore', '5 Day', 'Participant', 'National', 'cv02'),
(299, 'SDP', 'Application of Green Technologies to Overcome Environmental Challenges for Sustainable Urban Develop', 'Funded', '2017-07-24', 'MSRIT, Bangalore', '5 Day', 'Participant', 'National', 'cv02'),
(300, 'Workshop', 'Research Methodlogy', 'Funded', '2018-05-28', 'VTU, Muddenahalli', 'One Week', 'Participant', 'National', 'cv02'),
(301, 'SDP', 'Current Issues of  Geo- Environmental Pollution', 'Funded', '2018-07-23', 'MSRIT, Bangalore', '5 Day', 'Participant', 'National', 'cv02'),
(302, 'Training', 'Transition Training on ISO 9001:2015 International Standard ', 'held at MSRIT, Bangalore ', '2017-02-27', 'RIT, Bangalore', '01', 'Participant', 'National', 'chy02'),
(303, 'Others', '1-week Summer School on “Non-destructive Testing and Its Applications: Perspective of Imaging” from ', '', '2016-07-11', 'RIT, Bangalore', '1 Week', 'Co-Ordinator/Participant ', 'National', 'chy02'),
(304, 'Others', 'Solid Insulating materials for electrical applications & their performance', 'Self', '1994-12-26', 'NITK, Surathkal', '13 days', 'Participant', 'National', 'ee02'),
(305, 'Training', 'Cloud based CAD/CAM Tools for Product Design', 'AICTE', '2017-12-16', 'MSRIT', '2 wEEKS', 'Co-Ordinator', 'National', 'me02'),
(306, 'Workshop', 'National Awareness Workshop on National Board of Accreditation ', 'Self', '2000-12-19', 'IISc, Bangalore', '2 days', 'Participant', 'National', 'ee02'),
(307, 'Workshop', 'National workshop on Technology Trends in Mobile Computing and Communications.', 'Self', '2004-04-10', 'IISc, Bangalore', '1 day', 'Participant', 'National', 'ee02'),
(308, 'Workshop', 'Recent trends in High Voltage Engineering', 'Self', '2007-03-09', 'UBDTCE, Davangere', '2 days', 'Participant', 'National', 'ee02'),
(309, 'Workshop', 'Recent trends in Electrical Engineering', 'Self', '2007-04-18', 'UBDTCE, Davangere', '2 days', 'Participant', 'National', 'ee02'),
(310, 'Workshop', 'Authors workshop on Research Publications', 'Self', '2010-01-09', 'Jain College, JC Road, Bangalore', '1 day', 'Participant', 'National', 'ee02'),
(311, 'Workshop', 'High Voltage Engineering', 'Self', '2010-04-16', 'SIET, Tumkur', '1 day', 'Participant', 'National', 'ee02'),
(312, 'Workshop', 'Indian Technology Congress', 'Self', '2013-07-24', 'NIMAHANS, Bangalore', '2 days', 'Participant', 'National', 'ee02'),
(313, 'Workshop', 'World Summit on Accreditation, Leela Ambience', 'funded', '2016-03-18', 'NBA, Delhi', '3 days', 'Participant', 'International', 'ee02'),
(314, 'Workshop', 'Smart Grid Innovation Challenge', 'Self', '2017-11-18', 'Indian Institute of Technology Delhi, New Delhi', '1 day', 'Participant', 'International', 'ee02'),
(315, 'Workshop', 'Strategic Planning & Institutional Development ', 'funded', '1995-07-02', '(STJIT, Ranebennur)', '5 days', 'Co-Ordinator', 'National', 'ee02'),
(316, 'Workshop', 'Recent Trends & Applications in HV Insulation', 'funded', '2003-01-13', ' BIET, Davangere', '12 days', 'Co-Ordinator', 'National', 'ee02'),
(317, 'Workshop', 'Faculty Development Programme on Advances in HVAC, HVDC and FACTS controllers', 'funded', '2015-07-13', 'MSRIT, Bangalore', '5 days', 'Others', 'National', 'ee02'),
(318, 'Workshop', 'Lightning:Phenomena, Hazards Protection of LV Electrical Systems', 'funded', '2017-07-24', 'MSRIT, Bangalore', '6 days', 'Others', 'National', 'ee02'),
(319, 'Workshop', 'A one day workshop on High Voltage Engineering', 'funded', '2010-04-16', 'Sridevi Institute of Engineering and Technology, Tumkur', '1 day', 'Resource Person', 'National', 'ee02'),
(320, 'Workshop', 'Renewable Energy Sources & Latest Manufacturing Technology', 'funded', '2011-01-27', 'New Horizon College of Engineering, Bangalore', '3 days', 'Resource Person', 'National', 'ee02'),
(321, 'Workshop', 'Renewable Energy Sources and Control', 'funded', '2013-03-07', 'MSRIT, Bangalore', '2 days', 'Resource Person', 'National', 'ee02'),
(322, 'Workshop', 'Insulation and High Voltage Engineering', 'funded', '2013-06-11', 'Dr. AIT, Bangalore.', '5 days', 'Resource Person', 'National', 'ee02'),
(323, 'Workshop', 'Curriculum Development Using Outcome Based Education in Engineering', 'NA', '2012-07-04', 'RIT, Bangalore', '3 days', 'Participant', 'National', 'mca01'),
(324, 'Workshop', 'Optimization of Mathematical Models and Their Applications', 'NA', '2013-06-01', 'RIT, Bangalore', '6 days', 'Participant', 'National', 'mca01'),
(325, 'Workshop', 'Software Testing Using Selenium', 'NA', '2013-10-09', 'RIT, Bangalore', '3 days', 'Co-Ordinator', 'National', 'mca01'),
(326, 'Training', 'Curriculum Development using Outcome Based Education in Engineering', 'TEQUIP -II', '2013-06-28', 'RIT, Bangalore', '5 days', 'Participant', 'National', 'mca01'),
(327, 'Training', 'Computer Forensics and Cybercrime', 'TEQUIP -II', '2013-08-05', 'RIT, Bangalore', '6 days', 'Participant', 'National', 'mca01'),
(328, 'Training', 'Network Security Vulnerability Assessment and Penetration Testing', 'TEQUIP -II', '2013-06-11', 'RIT, Bangalore', '3 days', 'Participant', 'National', 'mca01'),
(329, 'Training', 'HPC, CUDA and parallel programming using Mathematica', 'TEQUIP -II', '2014-06-07', 'RIT, Bangalore', '6 days', 'Participant', 'National', 'mca01'),
(330, 'Training', 'cyber Security – Laws and Forensics', 'Advanced Center for Research, Development & Training in Cyber Laws & Forensics, National Law School ', '2015-02-10', 'RIT, Bangalore', '1 day', 'Participant', 'National', 'mca01'),
(331, 'Training', 'Empowering women for Entrepreneurship', 'TEQUIP -II', '2015-05-18', 'RIT, Bangalore', '14 days', 'Participant', 'National', 'mca01'),
(332, 'Training', 'Cloud Computing with Amazon Web services', 'TEQUIP -II', '2017-07-31', 'RIT, Bangalore', '1week', 'Participant', 'National', 'mca01'),
(333, 'Training', 'Cloud based IoT programming', 'NA', '2018-01-16', 'RIT, Bangalore', '1 week', 'Participant', 'National', 'mca01'),
(334, 'Training', 'Practical Statistical Machine Learning and Data Science with Julia', 'NA', '2018-07-11', 'RIT, Bangalore', '1 week', 'Participant', 'National', 'mca01'),
(335, 'Workshop', 'Insulation and High Voltage Engineering', 'funded', '2013-06-11', 'Dr. AIT, Bangalore', '5 days', 'Resource Person', 'National', 'ee02'),
(336, 'Workshop', 'Advances in Renewable and Power Engineering’', 'funded', '2013-07-06', 'S J B Institute of Technology, Bangalore', '3 Days', 'Resource Person', 'National', 'ee02'),
(337, 'Training', 'Power System Reliability', 'funded', '2013-08-04', 'PSTI, Bangalore ', '5 days', 'Resource Person', 'National', 'ee02'),
(338, 'Workshop', 'HVDC Transmission', 'funded', '2013-12-24', 'SSIT, Tumkur', '5 days', 'Resource Person', 'National', 'ee02'),
(339, 'Workshop', 'Design and Optimization of Experiments', 'funded', '2014-08-07', 'MSRIT, Bangalore', '4 days', 'Resource Person', 'National', 'ee02'),
(340, 'Workshop', 'HVAC, HVDC & FACTs controllers’', 'funded', '2015-07-13', 'MSRIT, Bangalore', '5 days', 'Resource Person', 'National', 'ee02'),
(341, 'Workshop', 'Applied Mathematics in Engineering’', 'funded', '2016-01-12', 'MSRIT, Bangalore', '3 Days', 'Resource Person', 'National', 'ee02'),
(342, 'Workshop', 'Role of Power Electronics in Renewable Energy Systems’', 'funded', '2016-01-18', 'MSRIT, Bangalore', '3 days', 'Resource Person', 'National', 'ee02'),
(343, 'Workshop', 'Protection of Aircraft / Helicopter from Lightning and Rain water', 'funded', '2016-01-28', 'HAL MANAGEMENT ACADEMY, Bangalore', '2 days', 'Resource Person', 'National', 'ee02'),
(344, 'Workshop', 'Industrial Automation and Measurements', 'funded', '2016-06-27', 'MSRIT,  Bangalore', '5 days', 'Resource Person', 'National', 'ee02'),
(345, 'Workshop', 'Power Quality Issues and Mitigations', 'funded', '2016-10-24', 'PDACE, Kalaburagi ', '3 Days', 'Resource Person', 'National', 'ee02'),
(346, 'Workshop', 'Lightning: Phenomena, Hazards & Protection Safety of LV Electrical Systems', 'funded', '2017-07-24', 'MSRIT, Bangalore  ', '6 days', 'Resource Person', 'National', 'ee02'),
(347, 'Workshop', 'Intelligent Algorithms & Applications', 'funded', '2018-01-19', 'Dr.AIT, Bangalore', '3 Days', 'Resource Person', 'National', 'ee02'),
(348, 'Workshop', 'Recent Trends in High Voltage Insulation’', 'funded', '2018-03-09', 'Acharya Institute of Technology, Bangalore.', '2 days', 'Resource Person', 'National', 'ee02'),
(349, 'Workshop', 'Technologies to address the energy needs of India', 'IIT and NASI', '2018-10-11', 'IISc, Bengaluru', '2 days', 'Participant', 'International', 'im02'),
(350, 'FDP', 'ADVANCED MICROCONTROLLER MSP 430', 'TEQIP', '2013-02-04', 'MSRIT', '3 DAYS', 'Participant', 'National', 'it01'),
(351, 'FDP', 'SCADA/NETWORK CONTROL SYSTEM', 'TEQIP', '2013-01-21', 'MSRIT', '3 DAYS', 'Participant', 'National', 'it01'),
(352, 'Workshop', 'SMART PHD PLANNING AND RESEARCH', 'DEPT OF ML', '2013-02-08', 'MSRIT', '1 DAY', 'Participant', 'National', 'it01'),
(353, 'FDP', 'Advanced Training Program In Industrial Automation Using PLC anSCADA', 'TEQIP', '2014-04-08', 'MSRIT', '3 DAYS', 'Co-Ordinator', 'National', 'it01'),
(354, 'FDP', 'SOFT COMPUTING AND ITS APPLICATIONS', 'TEQIP', '2015-08-10', 'MSRIT', '3 DAYS', 'Co-Ordinator', 'National', 'it01'),
(355, 'Workshop', 'CURRENT TRENDS IN DIGITAL IMAGE PROCESSING AND ITS APPLICATIONS', 'TEQIP', '2016-01-19', 'MSRIT', '3 DAYS', 'Co-Ordinator', 'National', 'it01'),
(356, 'FDP', 'INTERNET OF ROBOTIC THINGS(IoRT)', 'TEQIP', '2017-01-16', 'MSRIT', '3 DAYS', 'Participant', 'National', 'it01'),
(357, 'FDP', 'ROBOTICS AND EMBEDDED SYSTEMS ', 'TEQIP', '2017-07-31', 'MSRIT', '1 WEEK', 'Participant', 'National', 'it01'),
(358, 'FDP', '“Wireless Sensor Network Design and Deployment”', 'TEQIP', '2017-12-26', 'NIT, TRICHY', '1 WEEK', 'Participant', 'National', 'it01'),
(359, 'FDP', '“Teaching Techniques and learning Management system using ICT tools”', 'TEQIP', '2018-01-16', 'MSRIT', '1 WEEK', 'Participant', 'National', 'it01'),
(360, 'FDP', '“Practical Statistical Machine Learning and Data Science with Julia”', 'TEQIP', '2018-06-11', 'MSRIT', '1 WEEK', 'Participant', 'International', 'it01'),
(361, 'FDP', 'MULTI SENSOR DATA FUSION ', 'TEQIP', '2016-07-27', 'MSRIT', '1 WEEK', 'Co-Ordinator', 'National', 'it01'),
(362, 'FDP', ' ADVANCED MATERIALS & MANUFACTURING TECHNOLOGY (AM&MT)', 'AICTE', '2017-12-04', 'BANGALORE', '2 WEEKS', 'Co-Ordinator', 'NATIONAL', 'me03'),
(363, 'FDP', 'Faculty Development Programme on Cloud Based CAD / CAM Tools for Product Design  ', 'AICTE', '2017-12-15', 'BANGALORE', '2 WEEKS', 'Co-Ordinator', 'NATIONAL', 'me03'),
(364, 'Workshop', 'Applications of finite analysis method in food technology and engineering', '', '2015-01-27', 'Department of Biotechnology, RIT, Bangalore', '3 days', 'Participant', ' ', 'mat03'),
(365, 'Workshop', 'Applied Mathematical Modelling', '', '2015-07-13', 'Department of Mathematics,  RIT, Bangalore', '3 days', 'Participant', ' ', 'mat03'),
(366, 'Workshop', 'Applied Mathematics in Engineering', '', '2016-01-12', 'Department of Mathematics,  RIT, Bangalore', '3 days', 'Participant', '', 'mat03'),
(367, 'Workshop', 'Pedagogyu', '', '2016-07-18', '  RIT, Bangalore', '3 days', 'Participant', '', 'mat03'),
(368, 'Workshop', 'Theory and applications of mathematical modeling in engineering', '', '2016-07-26', 'Department of Mathematics,  RIT, Bangalore', '5 days', 'Participant', '', 'mat03'),
(369, 'Workshop', 'Wolfram technology workshop', '', '2016-09-24', '  RIT, Bangalore', '1 day', 'Participant', '', 'mat03'),
(370, 'Workshop', 'Discrete Mathematics modeling and computational techniques in science and engineering', '', '2017-01-16', 'Department of Mathematics,  RIT, Bangalore', '6 days', 'Participant', '', 'mat03'),
(371, 'Workshop', 'Advanced Engineering Applications of Integral transforms, wavelets and stochastic process', '', '2017-07-31', 'Department of Mathematics,  RIT, Bangalore', '6 days', 'Participant', '', 'mat03'),
(372, 'Workshop', 'Discrete Mathematics, Modeling and computational Techniques in science and engineering', '', '2017-01-16', 'Department of Mathematics,  RIT, Bangalore', '6 days', 'Participant', '', 'mat03'),
(373, 'Workshop', 'Computational tools for engineering applications', '', '2018-01-16', 'Department of Mathematics,  RIT, Bangalore', '6 days', 'Participant', '', 'mat03'),
(374, 'Workshop', 'Application of Mathematical tools for engineering problems', '', '2018-07-30', 'Department of Mathematics,  RIT, Bangalore', '6 days', 'Co-Ordinator', '', 'mat03'),
(375, 'Workshop', 'Recent Advances and application of Digital Signal Processing', 'Sponsered', '2004-08-09', 'MSRIT', '2 weeks', 'Participant', 'National', 'it03'),
(376, 'Workshop', 'Digital Signal Processor and its application', 'Sponsered', '2006-09-25', 'Bagalkot, karnataka', '1 week', 'Participant', 'National', 'it03'),
(377, 'Workshop', 'Modeling Techniques in Electrical Sciences using MATLAB', 'Sponsered', '2007-03-26', 'Dr AIT, Bangalore', '1 week', 'Participant', 'National', 'it03'),
(378, 'Workshop', 'Speech and Image processing', 'Sponsered', '2007-07-23', 'Bagalkot, karnataka', '1 week', 'Participant', 'National', 'it03'),
(379, 'Workshop', 'Practical Approach to Biomedical Instrumentation', 'Sponsered', '2010-01-11', 'MSRIT', '2 weeks', 'Participant', 'National', 'it03'),
(380, 'Others', 'Hackathon organized under the PaySE digital cashless card launch ', 'RIT', '2017-03-16', 'Bangalore', '2 dAYS', 'Co-Ordinator', '', 'is01'),
(382, 'Workshop', '“Computer Forensics and Cybercrime” ', 'MSRIT', '2013-08-05', 'Dept of CSE, MSRIT', 'one week', 'Participant', 'National', 'mca03'),
(383, 'Workshop', 'Simulation and TestBed Environment for research challenges in Wired and Wireless Networks   ', 'TEQIP- II', '2014-07-09', 'Dept of CSE and ISE, MSRIT, Bangalore', 'one week', 'Participant', 'National', 'mca03'),
(384, 'Workshop', 'Software Testing using Selenium  ', 'MSRIT', '2015-03-07', 'Dept of Computer Applications, MSRIT, Bangalore-54 ', '3 Days', 'Co-Ordinator/ Resource person', 'National', 'mca03'),
(385, 'Workshop', ' Big Data Analytics ', 'TEQIP, MSRIT', '2015-07-04', ' Dept of Information Science, Engineering and MCA, MSRIT, Bangalore', '3 days', 'Attended/ conducted ', 'National', 'mca03'),
(386, 'Workshop', 'Predictive Analytics with R', 'MSRIT', '2015-07-30', ' Dept of Computer Applications,  MSRIT,  Bangalore-54 .', '3 Days', 'Participant', 'National', 'mca03'),
(387, 'Workshop', 'Game Theory and Mechanism Design   ', '', '2016-01-11', 'National Mathematics Initiative (NMI) Indian Institute of Science, Bangalore', 'one week', 'Participant', 'National', 'mca03'),
(388, 'Workshop', 'Bloom’s Taxonomy ', '', '2016-07-26', ' M S Ramaiah Institute of Technology, Bangalore-54', 'one day', 'Participant', 'National', 'mca03'),
(389, 'Workshop', ' Software Defined Data Centers: Creating Scalable Infrastructure for SMAC and IOT', 'TEQUIP', '2016-07-25', 'ISE, M S Ramaiah Institute of Technology, Bangalore-54.', 'one week', 'Participant', 'National', 'mca03'),
(390, 'Workshop', 'Research Frontiers in Computing ', '', '2016-07-11', 'ISE, MCA, MSRIT', 'one week', 'Co-Coordinator and Participant', 'National', 'mca03'),
(391, 'Workshop', ' Cofnitive Computing ', 'TEQUIP  Phase-I', '2017-01-21', ' Dept of ISE.  M S Ramaiah Institute of Technology, Bangalore-54', 'one week', 'Participant', 'National', 'mca03'),
(392, 'Workshop', ' Hadoop  ', '', '2017-03-02', 'Dept of Computer Applications.  M S Ramaiah Institute of Technology, Bangalore-54.', '2 days', 'Co-Ordinator and participant', 'National', 'mca03'),
(393, 'Workshop', 'Cloud computing with AWS  ', '', '2017-07-31', 'Dept of Computer Applications, M S Ramaiah Institute of Technology, Bangalore-54. ', 'one week', 'Co-Ordinator and  Participant', 'National', 'mca03'),
(394, 'Workshop', 'Bloom’s Taxonomy   ', '', '2017-07-26', 'Dept of MCA, M S Ramaiah Institute of Technology, Bangalore-54', 'one day', 'Participant', 'National', 'mca03');
INSERT INTO `faculty_workshop_fdp` (`slNo`, `type`, `title`, `sponsoredOrFunded`, `date`, `place`, `duration`, `role`, `nationalOrInternational`, `facultyId`) VALUES
(395, 'Training', 'Technology-Exclusive Event on Technology-Enabled Education ', 'Organized by  - Amazon and Manipal  Global ', '2017-06-22', ' Hotel  SHANGRI-LA, Bangalore', 'one day', 'Participant', 'International', 'mca03'),
(396, 'Workshop', 'International Conference on Circuits, Control, Communications, and Computing(I4c 2018) ', 'RIT', '2018-10-03', ' RIT on 3rd 2018', 'one day', 'Participant', 'International', 'mca03'),
(397, 'Workshop', '“National Conf.on Recent Trends in Computer Science & Information Technology', '', '2016-04-04', 'SJCIT', '', 'Resource Person', 'National', 'is01'),
(398, 'Workshop', 'Latest Afdvances in Wireless Communication & Wireless Sensor Networks\'', '', '2016-01-06', 'MVIT Bangalore', '', 'Resource Person', 'National', 'is01'),
(399, 'Workshop', 'Software Testing Using Selenium', 'NA', '2013-10-09', 'RIT, Bangalore', '3 days', 'Co-Ordinator', 'National', 'mca01'),
(400, 'Workshop', ' Design for Everything: Opportunities in IoT', 'TEQIP-II', '2016-06-04', 'MSRIT Bangalore', '6', 'Resource Person', 'National', 'is01'),
(401, 'Training', 'Curriculum Development Using Outcome Based Education in Engineering', 'TEQUIP -II', '2012-06-04', 'RIT, Bangalore', '2 days', 'Participant', 'National', 'mca01'),
(402, 'Workshop', 'Optimization of Mathematical Models and Their Applications', 'TEQUIP -II', '2013-06-01', 'RIT, Bangalore', '6 days', 'Participant', 'National', 'mca01'),
(403, 'Training', 'Statistical Modeling, Analysis and its applications to Engineering', 'NA', '2014-07-08', 'RIT, Bangalore', '1 day', 'Participant', 'National', 'mca01'),
(404, 'Training', 'Pedagogy (Core Module)', 'TEQUIP -II', '2014-06-21', 'RIT, Bangalore', '3 days', 'Participant', 'National', 'mca01'),
(405, 'Training', 'simulation and TestBed Environment for research challenges in Wired and Wireless Networks', 'TEQUIP -II', '2014-07-28', 'RIT, Bangalore', '5 days', 'Participant', 'National', 'mca01'),
(406, 'Training', 'Software Testing Using Selenium', 'NA', '2015-03-07', 'RIT, Bangalore', '3 days', 'Participant', 'National', 'mca01'),
(407, 'Workshop', ' Understanding The Indirect Taxes Including Goods And Services Tax (GST)', '', '2016-09-22', 'Bangalore', 'one day', 'Participant', 'National', 'mba03'),
(408, 'Training', 'Emerging Technologies in Data Science (Machine Learning)', 'TEQUIP -II', '2015-03-26', 'RIT, Bangalore', '2 days', 'Participant', 'National', 'mca01'),
(409, 'Training', 'Predictive Analytics with R', 'NA', '2015-07-30', 'RIT, Bangalore', '2 days', 'Participant', 'National', 'mca01'),
(410, 'Workshop', 'Stock Market Trading', '', '2015-11-26', 'Bangalore', 'one day', 'Organising committee', 'National', 'mba03'),
(411, 'Workshop', 'Digital Marketing', '', '2015-05-28', 'Bangalore', 'one day', 'Co-Ordinator', 'National', 'mba03'),
(412, 'Training', 'Bloom’s Taxonomy: A Taxonomy for Accreditation', 'NA', '2016-06-26', 'RIT, Bangalore', '1 day', 'Participant', 'National', 'mca01'),
(413, 'Workshop', 'Practical Components of Business Analytics', '', '2014-11-27', 'Bangalore', 'one day', 'Organising committee', 'National', 'mba03'),
(414, 'Training', 'Hadoop', 'NA', '2017-03-02', 'RIT, Bangalore', '2 days', 'Participant', 'National', 'mca01'),
(415, 'Workshop', 'Risk Management and Derivatives ', '', '2014-02-14', 'Bangalore', 'one day', 'Organising committee', 'National', 'mba03'),
(416, 'Workshop', 'Practical Components of Personal Growth And Interpersonal Effectiveness', '', '2014-02-21', 'Bangalore', 'one day', 'Presented', 'National', 'mba03'),
(417, 'Workshop', 'Digital Marketing', '', '2015-05-28', 'Bangalore', 'one day', 'Co-Ordinator', 'National', 'mba03'),
(418, 'Workshop', 'Software Defined Data Centers: Creating Scalable Infrastructure for SMAC and IOT', 'TEQIP-II', '2016-07-25', 'MSRIT Bangalore', '4', 'Organiser', 'National', 'is04'),
(419, 'Workshop', 'Research Methodologies and LATEX” and speaker on Research Methodologies ', 'TEQIP-II', '2014-02-17', 'VKIT BANGALORE', '1 DAY', 'Resource Person', 'National', 'is04'),
(420, 'Training', 'Research methodology', 'Funded', '2015-12-14', 'Bangalore', 'one week', 'Co-Ordinator', 'National', 'mba03'),
(421, 'Training', 'Promoting start-ups ', 'Funded', '2016-11-24', 'Bangalore', 'one week', 'Organising committee', 'National', 'mba03'),
(422, 'Training', 'Contemporary Issues in Indian Management Practices', 'Funded', '2013-12-05', 'Bangalore', '3 days', 'Organising committee', 'National', 'mba03'),
(423, 'SDP', 'Building  Managerial Competencies for New Age Organizations', 'Funded', '2017-07-03', 'Bangalore', 'one week', 'Co-Ordinator', 'National', 'mba03'),
(424, 'SDP', 'Agile Manufacturing and Supply Chain Management', 'Funded', '2017-01-16', 'Bangalore', 'one week', 'Co-Ordinator', 'National', 'mba03'),
(425, 'SDP', 'Research methodology', 'Funded', '2013-03-06', 'Bangalore', 'one week', 'Co-Ordinator', 'National', 'mba03'),
(426, 'SDP', 'Empowering Women for Entrepreneurship', 'Funded', '2015-05-18', 'Bangalore', 'one week', 'Organising committee', 'National', 'mba03'),
(427, 'SDP', '•	Attended 2 days FDP on Experiential Learning methods in Marketing at TA Pai Management Institute M', 'Funded', '2018-06-16', 'Manipal', 'Two days', 'Participant', 'National', 'mba03'),
(428, 'Training', 'FDP on Data analysis with the help of SPSS conducted by Kristu Jayanti College Bangalore.', 'Funded', '2014-02-02', 'Bangalore', '3 days', 'Participant', 'National', 'mba03'),
(429, 'SDP', 'FDP on Research Methodology and Data analysis with SPSS conducted by JNNCE Shimoga', 'Funded', '2012-03-02', 'Shivamogga', 'one week', 'Participant', 'National', 'mba03'),
(430, 'Workshop', 'One day workshop on NLP conducted by Cambridge Institute of Technology Bangalore', 'Funded', '2014-04-20', 'Bangalore', 'one day', 'Participant', 'National', 'mba03'),
(431, 'Workshop', 'Changing Paradigms in Management & Research', '', '2018-01-01', 'RIT, Bangalore', 'one Week', 'Co-Ordinator', 'National', 'mba01'),
(432, 'Workshop', 'Creative Learning conducted by Presidency College Bangalore.', 'Funded', '2014-08-20', 'Bangalore', 'one day', 'Participant', 'National', 'mba03'),
(433, 'Training', 'Financial Acumen in Contemporary Business Scenario', '', '2018-07-06', 'RIT, Bangalore', 'one Week', 'Participant', 'National', 'mba01'),
(434, 'Workshop', 'Financial Literacy for Investment in Stock Market', '', '2018-07-05', 'RIT, Bangalore', 'one Week', 'Co-Ordinator', 'National', 'mba01'),
(435, 'Workshop', ' Understanding The Indirect Taxes Including Goods And Services Tax (GST)', 'Funded', '2016-09-22', 'Bangalore', 'one day', 'Organising committee', 'National', 'mba02'),
(436, 'Workshop', 'Stock Market Trading', 'Funded', '2015-11-26', 'Bangalore', 'one day', 'Organising committee', 'National', 'mba02'),
(437, 'Workshop', 'Practical Components of Business Analytics', 'Funded', '2014-11-27', 'Bangalore', 'one day', 'Organising committee', 'National', 'mba02'),
(438, 'Workshop', 'Digital Marketing', 'Funded', '2014-02-14', 'Bangalore', 'one day', 'Organising committee', 'National', 'mba02'),
(439, 'Training', 'ANN, Fuzzy logic and Genetic Algorithm ', 'funded', '2003-12-05', 'MSRIT Bangalore', '2 days', 'Participant', 'National', 'ee03'),
(440, 'Training', 'ISO Auditor training ', 'funded', '2004-08-01', 'MSRIT,  Bangalore', '1 day', 'Participant', 'National', 'ee03'),
(441, 'Workshop', 'Workshop On “Security Analysis And Portfolio Management”', 'Funded', '2012-09-27', 'Bangalore', 'one day', 'Organising committee', 'National', 'mba02'),
(442, 'Workshop', 'Real Time Digital Simulators for Power Systems', 'funded', '2005-01-24', 'CPRI Bangalore', '1 day', 'Participant', 'National', 'ee03'),
(443, 'Workshop', 'MEMS: Technology devices and applications', 'funded', '2005-07-27', 'IISc, Bangalore ', '1 day', 'Participant', 'National', 'ee03'),
(444, 'Workshop', 'Power system simulation laboratory for VII Sem', 'funded', '2005-09-29', 'BIT Bangalore', '3 Days', 'Participant', 'National', 'ee03'),
(445, 'Training', 'Research methodology', 'Funded', '2015-12-14', 'Bangalore', 'one week', 'Organising committee', 'National', 'mba02'),
(446, 'SDP', 'Agile Manufacturing and Supply Chain Management', 'Funded', '2017-01-16', 'Bangalore', 'one week', 'Organising committee', 'National', 'mba02'),
(447, 'Workshop', 'Power system protection-recent industrial practices', 'funded', '2005-10-19', 'MSRIT, Bangalore', '1 day', 'Participant', 'National', 'ee03'),
(448, 'SDP', 'Research methodology', 'Funded', '0003-03-16', 'Bangalore', 'one week', 'Organising committee', 'National', 'mba02'),
(449, 'Training', 'Train the trainers', 'funded', '2008-01-03', 'BigTech  Private Limited, Bangalore', '3 Days', 'Participant', 'National', 'ee03'),
(450, 'Training', 'Building  Managerial Competencies for New Age Organizations', 'Funded', '2017-07-03', 'Bangalore', 'one week', 'Organising committee', 'National', 'mba02'),
(451, 'SDP', 'Promoting start-ups ', 'Funded', '2016-11-24', 'Bangalore', 'one week', 'Organising committee', 'National', 'mba02'),
(452, 'SDP', 'Contemporary Issues in Indian Management Practices', 'Funded', '2013-12-05', 'Bangalore', 'one day', 'Organising committee', 'National', 'mba02'),
(453, 'FDP', 'Building  Managerial Competencies for New Age Organizations', '', '2017-07-03', 'RIT, Bangalore', 'one Week', 'Participant', 'National', 'mba01'),
(454, 'MDP', 'Promoting startups ', '', '2016-11-24', 'RIT, Bangalore', '3 days', 'Co-Ordinator', 'National', 'mba01'),
(455, 'FDP', 'RESEARCH METHODOLOGY', '', '2015-12-14', 'RIT, Bangalore', '3 days', 'Co-Ordinator', 'National', 'mba01'),
(456, 'FDP', 'Agile Manufacturing and Management', '', '2017-01-16', 'RIT, Bangalore', 'one Week', 'Co-Ordinator', 'National', 'mba01'),
(457, 'Workshop', 'MEMS ', 'funded', '2008-03-10', 'IISc, Bangalore ', '5 days', 'Participant', 'National', 'ee03'),
(458, 'Training', 'HVDC Transmission', 'funded', '2010-12-21', 'CPRI Bangalore', '2 days', 'Participant', 'National', 'ee03'),
(459, 'Workshop', 'High Performance Computing in Science and Engineering', 'funded', '2011-10-18', 'IBM at JNCASR,  Jakkur, Bangalore', '1 day', 'Participant', 'National', 'ee03'),
(460, 'Workshop', 'Special workshop on Outcome based Education ', 'funded', '2012-07-01', 'RVCE, Bangalore', '1 day', 'Participant', 'National', 'ee03'),
(461, 'Training', 'Pedagogy', 'funded', '2014-07-22', 'MSRIT,  Bangalore', '3 Days', 'Participant', 'National', 'ee03'),
(462, 'Workshop', 'HVDC Transmission Systems', 'funded', '2012-01-23', 'CPRI Bangalore', '3 Days', 'Resource Person', 'National', 'ee03'),
(463, 'Workshop', 'HVDC Systems', 'funded', '2012-08-06', 'PESIT, Bangalore', '3 Days', 'Resource Person', 'National', 'ee03'),
(464, 'Workshop', 'Micro and Nano Technology', 'funded', '2013-08-05', 'GNDCE, Bidar', '5 days', 'Resource Person', 'National', 'ee03'),
(465, 'Workshop', 'Recent trends and developments in transmission and distribution', 'funded', '2016-12-21', 'SIT Tumkur', '1 week', 'Resource Person', 'National', 'ee03'),
(467, '', '', '', '0000-00-00', '', '', '', 'National', 'data02'),
(468, 'Workshop', 'Faculty Development Program on “BIOLOGY FOR ENGINEERS”, 16-17, April 2008', '', '2008-04-16', 'MSRIT', 'Two days', 'Co-Ordinator', 'National', 'ch02'),
(469, 'Workshop', 'Novel Drug Discovery', 'Funded', '2018-01-17', 'MSRIT', '6 days', 'Participant', 'National', 'bt01'),
(470, 'Workshop', 'Software Mining and Analysis', 'Sponsored', '1016-11-16', 'NITK, Surathkal', '17-21,2016 ', 'Participant', 'National', 'is02'),
(471, 'Workshop', 'Software Defined Data Centers:Creating Scalable Infrastructure for SMAC and IOT', 'Sponsored', '2016-07-24', 'under TEQIP-II in MSRIT', '25th and 29th July 2016  ', 'Participant', 'National', 'is02'),
(472, 'Training', 'Advance Training in ANSYS', 'Sponsered', '0000-00-00', 'SJBIT, Bangalore', '1 Week', 'Participant', 'National', 'cv01'),
(473, 'Workshop', 'Applications of Biotechnology in Natural Products Development', 'TEQIP - II & RIT', '2016-06-28', 'RIT', '5 days', 'Participant', 'National', 'bt02'),
(474, 'Workshop', 'Computational Tools for OMICS data Analysis', 'TEQIP - II & RIT', '2016-07-11', 'RIT', '5 days', 'Participant', 'National', 'bt02'),
(475, 'Workshop', 'Current advances in Bio-analytical Techniques', 'TEQIP - II & RIT', '2018-05-25', 'RIT, Bangalore', '5 days', 'Co-Ordinator', 'National', 'bt02'),
(476, 'Workshop', ' “practical Statistical Machine Learning and Data Science with Julia ', 'RIT, Bangalore', '2018-04-11', 'on 11th to 16th 2018 organised by the dept of ISE and MCA, MSRIT, Bangalore-560054', 'One week', 'Participant', 'National', 'mca03'),
(477, 'Workshop', '‘Challenges and Opportunities in Industry 4.0- Manufacturing and operations in smart factories’, at ', '', '2017-07-24', 'RIT', '1 WEEK', 'Organizing Committee member', 'National', 'iem01'),
(478, 'Workshop', 'IT Tools for establishing Smart Factory Engineering Pvt. Ltd, and RIT- The Next Gen Industry', '', '2018-01-16', 'RIT', '1 WEEK ', 'Organizing Committee member', 'National', 'iem01'),
(479, 'Workshop', '‘Data Science – Impact on Business Decisions', '', '2018-04-10', 'RIT', '4 DAYS', 'Organizing Committee member', 'National', 'iem01'),
(480, 'Workshop', 'Fundamentals of Materials Science for Research Scholars', '', '2018-07-30', 'RIT', '1 WEEK', 'Participant', 'National', 'iem01'),
(481, 'FDP', 'Foundations for Innovation in Cyber-Physical Systems', ' ', '2015-07-20', 'Bangalore', '1 Week', 'Participant', 'National', 'mca02'),
(482, 'FDP', 'Cognitive Computing', '', '2017-01-23', 'RIT, Bangalore', '1 Week', 'Participant', 'National', 'mca02');

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `slNo` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`slNo`, `category`, `name`, `address`, `status`, `instituteName`) VALUES
(1, 'Principal', 'Dr. N V R Naidu', 'null', 'Chairperson', 'Ramaiah Institute of Technology'),
(2, 'Member of the Governing Body, to be nominated by t', 'Sri. S.M. Acharya', 'Chief Executive, GEF', 'Member', 'Ramaiah Institute of Technology'),
(3, 'Member of the Governing Body, to be nominated by t', 'Dr. T. V. Suresh Kumar', 'Registrar (Academic)', 'Member', 'Ramaiah Institute of Technology'),
(4, 'Senior Faculty of the College, to be nominated in ', 'Dr. R Prabhakara,', 'HOD. Dept. of Civil Engg.', 'Member', 'Ramaiah Institute of Technology'),
(5, 'Senior Faculty of the College, to be nominated in ', 'Dr. Premila Manohar,', 'HOD. Dept. of Ele..&Elo.Engg.', 'Member', 'Ramaiah Institute of Technology'),
(6, 'Member with knowledge of Financial Management to b', 'Sri. G. Ramachandra', 'Chief of Finance, GEF (E & GS)', 'Member', 'Ramaiah Institute of Technology'),
(7, 'Finance Officer', 'Sri. Ramesh Naik', 'Registrar (Administration)', 'Member Secretary', 'Ramaiah Institute of Technology');

-- --------------------------------------------------------

--
-- Table structure for table `funded_projects`
--

CREATE TABLE `funded_projects` (
  `slNo` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `projectTitle` varchar(100) NOT NULL,
  `nameOfFundingAgent` varchar(100) NOT NULL,
  `scheme` varchar(50) NOT NULL,
  `sanctionOrderNumber` varchar(30) NOT NULL,
  `projectDuration` varchar(30) NOT NULL,
  `dateSanctioned` date NOT NULL,
  `sanctionedAmount` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funded_projects`
--

INSERT INTO `funded_projects` (`slNo`, `role`, `projectTitle`, `nameOfFundingAgent`, `scheme`, `sanctionOrderNumber`, `projectDuration`, `dateSanctioned`, `sanctionedAmount`, `status`, `facultyId`) VALUES
(2, '', 'Advanced Biometrics for Cockpit Security', 'Boeing', '', '', '2014-2015', '0000-00-00', 3, '', 'te02'),
(3, '', 'Human Brain Controllability', 'Stanford University', '', '', '2015-2016', '0000-00-00', 6, '', 'te02'),
(4, '', 'Wireless Mesh Networks', 'ABB', '', '', '2015-2019', '0000-00-00', 24, '', 'te02'),
(5, '', 'A low cost portable Gait analysis system', 'DST', '', '', '2015-2018', '0000-00-00', 55, '', 'te02'),
(6, '', '', '', '', '', '', '2018-09-19', 0, '', 'cse01'),
(7, 'Co-Investigator', 'Investigation into Hard Turing of Hard Chrome Plat', 'DST, New Delhi', 'SERC', 'SR/S3/MERC', '2 years', '2010-06-10', 1312000, 'Completed', 'me01'),
(8, 'Principal Investigator', 'A Study on Determining Demand for Biodiesel in  Ba', 'KSCST Bangalore IISC Bangalore', '', '41S_B_MBA_', '6 months', '2018-03-28', 12500, 'Completed', 'mba03'),
(9, 'Principal Investigator', 'Deep Neural Networks for CT Scans', 'NVIDIA GPU Grant', 'N/A', 'N/A', 'N/A', '2017-07-28', 1, 'Completed', 'ece03'),
(10, 'NA', 'Na', 'Na', 'NA', 'NA', '', '0000-00-00', 0, 'Na', 'me02'),
(11, 'Co-Investigator', 'Enhancing fuel economy of automobile through design of experiments', 'UGC', 'RPS', '40-18/2011 (SR)', '3', '2011-06-29', 950200, 'Completed', 'im02'),
(12, 'Principal Investigator', ' Modernization of High Voltage Engineering Laboratory ', 'AICTE', 'MODROB', '', '2 years', '1997-10-31', 800000, 'Completed', 'ee02'),
(13, 'Principal Investigator', 'Study Of Flashover Voltages of Artificially Polluted Porcelain Insulators Energised With High Voltag', 'AICTE', 'R&D scheme ', '', '3 years', '2003-05-31', 700000, 'Completed', 'ee02'),
(14, 'Principal Investigator', 'Modelling and System Improvements for a Fast Rise Time Marx Generator', 'BARC, Mumbai', '', '', '', '2011-01-31', 1600000, 'Completed', 'ee02'),
(15, 'Principal Investigator', 'Modernization of Power Electronics Laboratory', 'AICTE', 'MODROB', '', '2 year', '2017-10-01', 635000, 'Pending', 'ee02'),
(16, 'Principal Investigator', 'Development of Prosumer driven integrated smart grid, Mission Innovation-I', 'DST', 'R & D Scheme', '', '3 years', '2018-07-01', 3332000, 'Pending', 'ee02'),
(17, 'Co-Investigator', 'Hospital Staff Training Tracker', 'Ramaiah Memorial Hospital', '', '', '9 june to 17 aug', '2017-08-07', 0, 'Pending', 'is02'),
(18, 'Co-Investigator', 'Exam Questionnaire Tool for the prospective nursing staff  ', 'Ramiah Memorial Hospital', '', '', '9 July to 17 Aug', '2017-08-07', 0, 'Pending', 'is02'),
(19, 'Co-Investigator', 'Leave Encashment Tool', 'Ramiah Memorial Hospital', '', '', '1 Month', '2017-08-07', 0, 'Pending', 'is02'),
(20, 'Co-Investigator', 'Exit Interview Data Analytics Tool', 'Ramiah MemoriaL Hospital', '', '', '1 Month', '2017-08-07', 0, 'Pending', 'is02'),
(21, 'Principal Investigator', 'Developing Teaching-Learning Apps for Differently Abled School Students', 'CSR', '', '', 'Aug2017 till Dec2018', '0000-00-00', 15, 'Pending', 'is01'),
(22, '', '', '', '', '', '', '0000-00-00', 65873, '', 'data02'),
(23, 'Co-Investigator', 'Cluster Project Proposal', 'MSRIT', '', '', '', '2015-04-06', 0, 'Completed', 'is01'),
(24, 'Co-Investigator', 'PBL For Smart Farming', 'IBM', '', '', '', '2016-05-04', 0, 'Completed', 'is01'),
(25, 'Co-Investigator', '“Thought Interpreter” Using Brain Computer Interface (BCI)', 'AICTE', 'Research Promotion Scheme (RPS)', '8-152/RIFD/RPS/POLICY-4/ 2013-', '3 years', '2014-02-16', 0, 'Completed', 'is04'),
(26, 'Principal Investigator', 'Hybrid HVDC systems for Multi Infeed Applications ', 'CPRI', 'RSoP', '', '2 years', '2016-06-01', 17, 'Completed', 'ee03'),
(27, 'Principal Investigator', 'A study of correlation effect on (e,2e) studies of alkali atoms', 'DAE-BRNS', '', '', '3 years', '0000-00-00', 2, 'Completed', 'phy03'),
(29, '', 'Analysis of DAEs in Circuit Simulation', 'University Research Council, University of Cincinnati, USA', 'N/A', 'N/A', 'N/A', '0000-00-00', 0, 'Completed', 'ece03');

-- --------------------------------------------------------

--
-- Table structure for table `governing_body`
--

CREATE TABLE `governing_body` (
  `slNo` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `governing_body`
--

INSERT INTO `governing_body` (`slNo`, `category`, `name`, `address`, `status`, `instituteName`) VALUES
(1, 'Members of the Management', 'Dr.M.R.Jayaram', 'Chairman, GEF', 'Chairperson', 'Ramaiah Institute of Technology'),
(2, 'Members of the Management', 'Sri M. R. Seetharam', 'Vice Chairman, GEF', 'Vice Chairperson', 'Ramaiah Institute of Technology'),
(3, 'Members of the Management', 'Sri M. R. Ramaiah', 'Secretary, GEF', 'Member', 'Ramaiah Institute of Technology'),
(4, 'Members of the Management', 'Sri M. R. Kodandaram', 'Trustee, GEF', 'Member', 'Ramaiah Institute of Technology'),
(5, 'Members of the Management', 'Sri M. R. Sampangiramaiah', 'Trustee, GEF', 'Member', 'Ramaiah Institute of Technology'),
(6, 'Members of the Management', 'Sri S. M. Acharya', 'Chief Executive, GEF(Engg)', 'Member', 'Ramaiah Institute of Technology'),
(7, 'Members of the Management', 'Sri. G. Ramachandra', 'Chief of Finance, GEF (E & GS)', 'Special Invitee', 'Ramaiah Institute of Technology'),
(8, 'Teachers of the College', 'Dr. T. V. Suresh Kumar', 'Registrar ( Academic)', 'Member', 'Ramaiah Institute of Technology'),
(9, 'Teachers of the College', 'Dr. R. Prabhakara', 'Head of the Dept, Department of Civil Engg.', 'Member', 'Ramaiah Institute of Technology'),
(10, 'Educationist or Industrialist to be nominated by t', 'Dr. V. K. Aatre', 'Former SA to RM / Secretary, Dept. of Defence R&D / Director General / DRDO ‘MAPLE’ 139, 1st Block, ', 'Member', 'Ramaiah Institute of Technology'),
(11, 'Commission Nominee to be nominated by the Commissi', 'Prof. A. S. Sheoran', 'Head, Dept. of Mining Engineering, MBM Engineering College, Jain Narayan Vyas University, Jodhpur, R', 'Member', 'Ramaiah Institute of Technology'),
(12, 'Council Nominee to be nominated by the Council (AI', 'Professor B. S. Sonde', 'Former Vice Chancellor Goa University, 274-C, Shree Ananth Nagar 18th Cross, Electronic City, P. O. ', 'Member', 'Ramaiah Institute of Technology'),
(13, 'State Govt. Nominee', 'Dr. Shashidhar S Ramatal', 'Principal, Govt. Sri. Krishnarajendra Silver Jubilee Technological Institute, Bangalore Govt. Nomine', 'Member', 'Ramaiah Institute of Technology'),
(14, 'University nominee to be nominated by VTU', 'Prof. Dr.Venkatesh Raikar', 'Vice Chancellor, Sanjay Ghodawat University, Kohlapur VTU Nominee', 'Member', 'Ramaiah Institute of Technology'),
(15, 'Industry', 'Dr. Vinod Kumar Nowal', 'Deputy Managing Director, JSW Steel, Bellary, Karnataka', 'Member', 'Ramaiah Institute of Technology'),
(16, 'Principal of the College', 'Dr. NVR Naidu', 'null', 'Ex-officio Member Secretary ', 'Ramaiah Institute of Technology');

-- --------------------------------------------------------

--
-- Table structure for table `guest_lectures_invited`
--

CREATE TABLE `guest_lectures_invited` (
  `slNo` int(11) NOT NULL,
  `guestName` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `affiliation` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `areaOfSpecialization` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_lectures_invited`
--

INSERT INTO `guest_lectures_invited` (`slNo`, `guestName`, `designation`, `affiliation`, `title`, `areaOfSpecialization`, `date`, `departmentId`) VALUES
(1, 'Rishab Animesh', '', '', 'Computer Programming', 'null', '2016-01-29', 'cse'),
(2, 'Chirag Dhull', '', '', 'Cloud and Data Analytics', 'null', '2016-01-29', 'cse'),
(3, 'Nihon Communications', '', '', 'Qualnet', 'null', '2015-03-23', 'cse'),
(4, 'Ravindra Guntur', '', '', 'Opportunity for computational algorithms in the fi', 'null', '2015-03-19', 'cse'),
(5, 'Anbumani Subramanian', '', '', 'Computational Photography', 'null', '2015-03-19', 'cse'),
(6, 'Brainstorm Consulting', '', '', 'Opportunities for Higher Studies', 'null', '2015-03-13', 'cse'),
(7, 'Dr S. S Iyengar', '', '', 'An Integrated Framework for developing Research So', 'null', '2015-03-10', 'cse'),
(8, 'Mahantesh Gadaginamath', '', '', 'Cloud Computing System and Data Center in Cloud Co', 'null', '2015-03-07', 'cse'),
(9, 'Col. Jerry Miller', '', '', 'R & D collaborations', 'null', '2014-12-26', 'cse'),
(10, 'Dr. Ramadoss', '', '', 'eNBA and some evaluation criteria', 'null', '2014-03-21', 'cse'),
(11, 'Dr. Sathish Wadiyar', '', '', 'Research opportunities in parallel computing', 'null', '2014-03-13', 'cse'),
(12, 'Rishab Animesh', '', '', 'Invited Talk', 'null', '2014-01-24', 'cse'),
(13, 'Mr. P N Santosh', '', '', 'Higher Education  Opportunities for  Biotechnology', 'Biotechnology', '2018-09-07', 'bt');

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

CREATE TABLE `hardware` (
  `slNo` int(11) NOT NULL,
  `labName` varchar(100) NOT NULL,
  `carpetArea` varchar(100) NOT NULL,
  `equipments` varchar(100) NOT NULL,
  `dateOfProcurement` varchar(30) NOT NULL,
  `modeOfProcurement` varchar(200) NOT NULL,
  `description` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amountPerUnit` int(11) NOT NULL,
  `totalInvestment` int(11) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hardware`
--

-- --------------------------------------------------------

--
-- Table structure for table `higher_studies`
--

CREATE TABLE `higher_studies` (
  `studentName` varchar(100) NOT NULL,
  `usn` varchar(100) NOT NULL,
  `yearOfPassing` int(30) NOT NULL,
  `program` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `yearOfJoining` int(30) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `industrial_collaboration_mou`
--

CREATE TABLE `industrial_collaboration_mou` (
  `slNo` int(11) NOT NULL,
  `mouTitle` varchar(100) NOT NULL,
  `mouSignedWithIndustryOrGovt` varchar(100) NOT NULL,
  `typeOfMou` varchar(50) NOT NULL,
  `nationalOrInternational` varchar(30) NOT NULL,
  `mouSigningDate` date NOT NULL,
  `validTill` varchar(30) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industrial_collaboration_mou`
--

INSERT INTO `industrial_collaboration_mou` (`slNo`, `mouTitle`, `mouSignedWithIndustryOrGovt`, `typeOfMou`, `nationalOrInternational`, `mouSigningDate`, `validTill`, `facultyId`) VALUES
(1, '', '', 'Intership', '', '0000-00-00', '', 'cse22');

-- --------------------------------------------------------

--
-- Table structure for table `industrial_visit`
--

CREATE TABLE `industrial_visit` (
  `slNo` int(11) NOT NULL,
  `industryName` varchar(100) NOT NULL,
  `dateOfVisit` date NOT NULL,
  `place` varchar(200) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `noOfStudents` int(11) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE `institution` (
  `instituteName` varchar(100) NOT NULL,
  `yearOfEstablishment` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactNumber` varchar(50) NOT NULL,
  `websiteUrl` varchar(100) NOT NULL,
  `officialMailId` varchar(100) NOT NULL,
  `headOfTheInstitution` varchar(100) NOT NULL,
  `headContactNumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`instituteName`, `yearOfEstablishment`, `address`, `contactNumber`, `websiteUrl`, `officialMailId`, `headOfTheInstitution`, `headContactNumber`) VALUES
('Ramaiah Institute of Technology', '1962', 'MSR College Road, MSR Nagar, MSRIT Post, Bengaluru, Karnataka 560054', '\"+9180-23606939', 'msrit.edu', 'admn@msrit.edu', 'NVR Naidu', '\"+9180-23600822');

-- --------------------------------------------------------

--
-- Table structure for table `journal_paper`
--

CREATE TABLE `journal_paper` (
  `slNo` int(11) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `issnPrint` varchar(50) NOT NULL,
  `issnOnline` varchar(50) NOT NULL,
  `journalName` varchar(100) NOT NULL,
  `journalType` varchar(100) NOT NULL,
  `volumeNumber` int(11) NOT NULL,
  `pageNumbers` varchar(30) NOT NULL,
  `year` int(10) NOT NULL,
  `issueNumber` varchar(30) NOT NULL,
  `impactFactor` varchar(30) NOT NULL,
  `citation` varchar(30) NOT NULL,
  `doi` varchar(30) NOT NULL,
  `sjrQuartile` varchar(10) NOT NULL,
  -- `hIndex` varchar(50) NOT NULL,
  -- `iIndex` varchar(50) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `indexing` varchar(50) NOT NULL,
  `date` int(11) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal_paper`
--

INSERT INTO `journal_paper` (`slNo`, `authors`, `title`, `issnPrint`, `issnOnline`, `journalName`, `journalType`, `volumeNumber`, `pageNumbers`, `year`, `issueNumber`, `impactFactor`, `citation`, `doi`, `sjrQuartile`, `hIndex`, `iIndex`, `isbn`, `indexing`, `date`, `facultyId`) VALUES
(1, 'H.R. Roopashree, A. Kanavalli', 'Joint Algorithm for Energy-Conservation and Secure Key Generation in Wireless Sensor Network', '0973-4562', '', 'International Journal of Applied Engineering Research ', 'International', 11, '2250', 2015, '', '', '', '', 'null', '', '', '', '', 0, 'cse01'),
(2, ' Jagadish S Kallimani, KG Srinivasa, B Eswara Reddy', 'Statistical and analytical study of guided abstractive text summarization.', '0011-3891', '', 'Journal Current Science', 'null', 110, '0', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse04'),
(3, 'Rashmi Ranjana T P,  Jayalakshmi D.S., and R. Srinivasan', 'On Replication Strategies for Data Intensive Cloud Applications', '0975-9646', '', 'International Journal of Computer Science and Information Technologies(IJCSIT) ', 'International', 0, '2479', 2015, '', '', '', '', 'null', '', '', '', '', 0, 'cse05'),
(4, 'Vinay Kumar N, Chandan G S,Sudershan Rai N, Ganesh Prasad Bhagwat,Monica R Mundada ', 'Smart Crop Monitoring Using Cooja Network Simulator', '1087-1090', '', 'IJAER journal', 'null', 70, '0', 2015, '', '', '', '', 'null', '', '', '', '', 0, 'cse06'),
(5, 'Parkavi.A, Dr.N.Vetrivelan ', 'A Flipped Selection: Strategic Approach for Project', 'null', '', 'International Journal of Applied Engineering Research', 'International', 10, '0', 2015, '', '', '', '', 'null', '', '', '', '', 0, 'cse08'),
(6, 'Geetha J, Uday Bhaskar, PChenna Reddy\r\n', 'Data Local Reduce Task Scheduling', 'null', '', 'Procedia Computer science', 'null', 0, '598', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse10'),
(7, 'T.N.R.Kumar', 'A Real Time Approach for Indian Road Analysis using Image Processing and Computer Vision', 'null', '', 'International organization of Scientific Research Journal of Computer Engineering', 'International', 17, '1', 2015, '', '', '', '', 'null', '', '', '', '', 0, 'cse11'),
(8, 'Madhusudan G  T.N.R.Kumar', 'MINIMUM ENERGY CONSUMPTION IN ROUTING OF MOBILE AD HOC NETWORK', 'null', '', 'IRACST – International Journal of Computer Networks and Wireless Communications', 'International', 6, '0', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse11'),
(9, 'Vinay Shankar and Mallegowda  M', 'Time Evolving Rating Prediction with Privacy Preserving and Defending Sybil Attack in Online Service', 'null', '', 'International Imperial Journal of Interdisciplinary Research (IJIR IS)', 'International', 2, '0', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse17'),
(10, 'S.Rajarajeswari, K.Somasundaram ', 'Data Cleansing using Probabilistic classification for prediction of heart disease', '0973-4562', '', 'International Journal of Applied Engineering Research', 'International', 10, '0', 2015, '', '', '', '', 'null', '', '', '', '', 0, 'cse20'),
(11, 'S.Rajarajeswari, K. Somasundaram', 'Data confidentiality and privacy in cloud computing', '0974-5645', '', 'SCI Indian Journal of Science and Technology', 'National', 9, '0', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse20'),
(12, ' S.Rajarajeswari,  Tulasi srinivas', 'Empirical Analysis of Location Based Service Approaches to Preserve Privacy: A Cloud Computing Appro', '0973-4562', '', 'International Journal of Applied Engineering Research', 'International', 10, '0', 2015, '', '', '', '', 'null', '', '', '', '', 0, 'cse20'),
(13, 'S.Rajarajeswari, K.Somasundaram ', 'Data Cleansing using Automated Extraction Tools', '1995-0772', '', 'Advances in Natural and Applied Sciences', 'null', 10, '68', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse20'),
(14, 'Swamy L N,Sukruth Gowda M A, Rajesh S M, HanumanthaRaju R', 'Improving Social Networks for P2p Content and Context Based File Sharing In Mobile Ubiquitous Comput', 'null', '', 'International -Journal of Engineering Trends and Technology (IJETT)', 'International', 30, '0', 2015, '', '', '', '', 'null', '', '', '', '', 0, 'cse28'),
(15, 'Sanjeetha.R, Monisha.B, Anita Kanavalli', 'Prevention of DdoS Attacks in SDN by Using Virtual IP Addresses', '2230-9659', '', 'Journal of Advances in Science and Technology', 'null', 12, '1', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse01'),
(16, 'Roopashree H.R. and Anita Kanavalli', 'Behavior analysis of STREE, SABR and SARDS under different simulation environments :A Case Study', 'null', '', 'International Journal Of Engineering And Computer Science (IJECS)', 'International', 6, '20033', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse01'),
(17, 'Sini Anna Alex and Dr. Anita Kanavalli', 'CONTEXT AWARE TEACHING AID CEM FOR LEARNING COMPILER DESIGN CONCEPT FOR STUDENTS WITH LEARNING DISAB', '2320-5407', '', 'International Journal of Advanced Research (IJAR)', 'International', 0, '0', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse01'),
(18, 'Archana M Kanthi, Annapurna P Patil', 'Analytics on Command Center Data in Healthcare Systems: A Case Study Implemented using Apache, Hadoo', '2320-9801', '', 'IJIRCCE', 'International', 4, '13674', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse02'),
(19, 'Rachana N B, K G Srinivasa, S Seema', 'Airplane Health Surveillance System: A Framework', 'null', '', 'International Journal of Aviation Systems, Operations and Training', 'International', 3, '11', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse03'),
(20, 'Shantveer, Jagadish S Kallimani', 'A Study on Dynamic Multilevel Priority Packet Scheduling Scheme for WSNs', '2278-2540', '', 'International Journal of Latest Technology in Engineering, Management & Applied Science', 'International', 5, '58', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse04'),
(21, 'Meera Devi, Monica R Mundada', 'Real Time Monitoring of Environmental Parameters in Precision Agriculture using Wireless Sensor Netw', 'null', '', 'International Journal of Information and Communication Technology Research', 'International', 6, '0', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse06'),
(22, 'Sanjeetha.R, Monisha.B, Anita Kanavalli', 'Prevention of DdoS Attacks in SDN by Using Virtual IP Addresses', '2230-9659', '', 'Journal of Advances in Science and Technology', 'null', 12, '1', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse07'),
(23, 'Madhusudan G  T.N.R.Kumar   ', 'Simulation of Mobile Backbone Network', 'null', '', 'International Journal of Computer Networks and Communications Security', 'International', 4, '213', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse11'),
(24, 'Madhusudan G  T.N.R.Kumar', 'MODRP: Multipath on-Demand Routing Protocol for MANET', 'null', '', 'International Journal of Wireless Communications and Networking Technologies', 'International', 5, '0', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse11'),
(25, 'Madhusudhan G  T N R Kumar', 'Performance Analysis of MANET Protocols for DTN', 'null', '', 'International Journal of Latest Trends in Engineering and Technology (IJLTET)', 'International', 7, '0', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse11'),
(26, 'Sini Anna Alex and Dr. Anita Kanavalli', 'CONTEXT AWARE TEACHING AID CEM FOR LEARNING COMPILER DESIGN CONCEPT FOR STUDENTS WITH LEARNING DISAB', '2320-5407', '', 'International Journal of Advanced Research (IJAR)', 'International', 0, '0', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse14'),
(27, 'Meera Devi, Monica R Mundada', 'Real Time Monitoring of Environmental Parameters in Precision Agriculture using Wireless Sensor Netw', 'null', '', 'International Journal of Information and Communication Technology Research', 'International', 6, '0', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse16'),
(28, 'Banerjee Shekhar, and Divakar Harekal', 'Vehicle Control in Vehicle to Infrastructure (V2I) Environment', 'null', '', 'International Journal of Computer Applications', 'International', 168, '0', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse18'),
(29, 'S.Rajarajeswari, K. Somasundaram', 'Data Cleansing Framework for Heart Disease Data Set in Cloud Environment', '1943-023X', '', 'SJR Journal of Advanced Research in Dynamical and Control Systems', 'null', 9, '0', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse20'),
(30, 'Shruthi B, Pramod Sunagar', 'Multi-Authentication for File Access in Cloud Storage with DNA Crypto System', '2454-1362', '', ' International Journal Imperial Journal of Interdisciplinary Research (IJIR)', 'International', 3, '0', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse21'),
(31, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', '', 'IJAEC ', 'International', 7, '77', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse22'),
(32, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', '', 'IJAEC ', 'International', 7, '77', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse23'),
(33, 'Srinivasa, K. G., Hegde, G., Mishra, K., Siddiqui, M. N., Kumar, A., & Kumar, Pradeep', 'Microsense: Sensor Framework for IoT System-on-Chip', 'null', '', 'International Journal of Handheld Computing Research (IJHCR)', 'International', 7, '38', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse23'),
(34, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', '', 'IJAEC ', 'International', 7, '77', 2016, '', '', '', '', 'null', '', '', '', '', 0, 'cse24'),
(35, 'Shilpa Shashikant Chaudhari, Rajashekhar C. Biradar\r\n', 'Resource prediction-based routing using agents in mobile ad hoc networks\r\n\r\n\r\n', 'null', '', 'Int. J. Communication Networks and Distributed Systems\r\n\r\n', 'International', 0, '0', 0, '', '', '', '', 'null', '', '', '', '', 0, 'cse30'),
(36, 'Srinidhi Hiriyannaiah, G.M. Siddesh, P. Anoop, K.G. Srinivasa', 'Semi-structured data analysis and visualisation using NoSQL', 'null', '', 'International Journal of Big Data Intelligence', 'International', 0, '0', 2018, '', '', '', '', 'null', '', '', '', '', 0, 'cse27'),
(37, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', '', 'International Journal of Pure and Applied Mathematics', 'International', 0, '0', 2018, '', '', '', '', 'null', '', '', '', '', 0, 'cse23'),
(38, 'Shruthi B R, Pramod C SUNAGAR', 'Multi-Authentication for File Access in Cloud Storage with DNA Crypto System', '2454-1362', '', 'Imperial Journal of Interdisciplinary Research', 'null', 3, '0', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse21'),
(39, 'Pramod Sunagar, Pradeep Kumar, Mallegowda M, Dr. Anita Kanavalli', 'A Vehicular Apprehension Scheme in Wireless Networks', '2347-8616', '', 'International Journal of Innovations & Advancement in Computer Science', 'International', 0, '0', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse21'),
(40, 'Shishir Mathew, Mamatha Jadav V,', 'SE2R2: Secure Energy Efficient and Reliable Routing Protocol in Presence of Phishing Attacks for WSN', '2395-0056', '', 'International Research Journal of Engineering and Technology (IRJET)', 'International', 4, '0', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse12'),
(41, 'Varunashree N  T N R Kumar', 'Identification and classification of brain tumor MRI images with feature extraction using DWT and pr', 'null', '', 'Springer Nature Journal', 'null', 5, '0', 2018, '', '', '', '', 'null', '', '', '', '', 0, 'cse11'),
(42, 'Geetha J, Uday Bhaskar, P Chenna Reddy\r\n', 'New Hadoop Scheduler Framework', '0973-4562', '', 'International Journal of Applied Engineering Research\r\n\r\n', 'International', 12, '15152', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse10'),
(43, 'Geetha J, Uday Bhaskar, P Chenna Reddy', 'An Analytical Approach for Optimizing the Performance of Hadoop Map Reduce over RoCE\r\n\r\n', 'null', '', 'IGI Global Special Issue : IoT, Fog and Cloud Computing Towards Building Intelligent Systems\r\n\r\n', 'null', 10, '0', 2018, '', '', '', '', 'null', '', '', '', '', 0, 'cse10'),
(44, 'Parkavi.A, Dr.K.Lakshmi, Dr.K.G.Srinivasa', 'Predicting effective course conduction strategy using Datamining techniques', 'null', '', 'Educational research and reviews, Academic Journals', 'null', 12, '1188', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse08'),
(45, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', '', 'International Journal of Pure and Applied Mathematics', 'International', 0, '0', 2018, '', '', '', '', 'null', '', '', '', '', 0, 'cse07'),
(46, 'Sanjeetha, R., Shikhar Srivastava, Rishab Pokharna, Syed Shafiq, and Anita Kanavalli', 'Mitigation of DDoS attack instigated by compromised switches on SDN controller by analyzing the flow', 'null', '', 'International Journal of Engineering and Technology (UAE)', 'International', 7, '46', 2018, '', '', '', '', 'null', '', '', '', '', 0, 'cse07'),
(47, 'Jayalakshmi D S,  R Srinivasan', 'A Greedy File Merging Algorithm for Handling Small Files in HDFS', 'null', '', 'International Journal of Pure and Applied mathematics', 'International', 0, '0', 0, '', '', '', '', 'null', '', '', '', '', 0, 'cse05'),
(48, 'Jayalakshmi D S,  R Srinivasan', 'An Analytical Model for HDFS Replication Pipeline based on Queuing Theory', 'null', '', 'International Journal of Applied Engineering Research', 'International', 12, '15158', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse05'),
(49, 'N.M. Annigeri, S. Shetty, A.P. Patil', 'Analysing the supervised learning methods for prediction of healthcare data in cloud environment: A ', '2347-2693', '', 'International Journal of Computer Sciences and Engineering', 'International', 6, '447', 2018, '', '', '', '', 'null', '', '', '', '', 0, 'cse02'),
(50, 'Shashikala Gudimani, Koushik S, Dr Annapurna P. Patil', 'SLA Based Brokerage for Multicloud Migration', '2347-8616', '', 'International Journal of Innovations & Advancement in Computer Science IJIACS', 'International', 6, '128', 2017, '', '', '', '', 'null', '', '', '', '', 0, 'cse02'),
(51, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', '', 'International Journal of Pure and Applied Mathematics', 'International', 0, '0', 2018, '', '', '', '', 'null', '', '', '', '', 0, 'cse01'),
(52, 'Sanjeetha, R., Shikhar Srivastava, Rishab Pokharna, Syed Shafiq, and Anita Kanavalli', 'Mitigation of DDoS attack instigated by compromised switches on SDN controller by analyzing the flow', 'null', '', 'International Journal of Engineering and Technology (UAE)', 'International', 7, '46', 2018, '', '', '', '', 'null', '', '', '', '', 0, 'cse01'),
(105, 'ARVIND KUMAR G', 'Adaptive Noise Detection Using Texture Feature Extraction and Random Forest Classification', '2185310X', '', 'International Journal of IntelligentEngineering Systems', 'INTERNATIONAL', 11, '254', 2018, '', '', '', '', '6', '', '', '', '', 0, 'te14'),
(106, 'ARVIND KUMAR G', 'A NOVEL APPROACH FOR IMAGE NOISE ESTIMATION AND ITS REMOVAL', ' 2393-9028', '', 'International Journal of Research in electronics and Computer Engineering', 'INTERNATIONAL', 6, '135', 2018, '', '', '', '', '', '', '', '', '', 0, 'te14'),
(107, 'Umesharaddy, B.K.Sujatha', 'SDR IMPLEMENTATION OF QPSK MODEM WITH AWGN', '2229-5518', '', 'International Journal of Scientific & Engineering Research', 'INTERNATIONAL JOURNAL', 8, '484', 2017, '', '', '', '', 'THOMSON RO', '', '', '', '', 0, 'te10'),
(108, 'Umesharaddy, B.K.Sujatha', 'Performance Improvement of QPSK Modem with AWGN Implemented in FPGA', '2229-5518', '', 'International Journal of Scientific & Engineering Research', 'INTERNATIONAL JOURNAL', 8, '206', 2017, '', '', '', '', 'THOMSON RO', '', '', '', '', 0, 'te10'),
(109, 'Umesharaddy, B.K.Sujatha', 'OPTIMIZED MODEM DESIGN FOR SDR APPLICATIONS', '2395-0056', '', 'International Research Journal of Engineering and Technology', 'INTERNATIONAL JOURNAL', 2, '1831', 2015, '', '', '', '', '2.3 IF', '', '', '', '', 0, 'te10'),
(110, 'Umesharaddy, B.K.Sujatha', 'FPGA Implementation of High Throughput Digital QPSK Modulator using Verilog HDL', '2277-7970', '', 'International Journal of Advanced Computer Research', 'INTERNATIONAL JOURNAL', 4, '217', 2014, '', '', '', '', '1.83 IF SC', '', '', '', '', 0, 'te10'),
(111, 'Sai Lakshmi Ramya H R', 'Fuzzy Based Multimodal Medical Image  Fusion ', '2321-2705', '', 'International Journal of Research and Scientific Innovation ', 'International', 0, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'te09'),
(112, 'Mamata M Teggihalli, Mrs. H R Ramya', 'Image Fusion Based on DWT Type-2 Fuzzy      Logic System', '2229-5518', '', 'SystemInternational Journal of Scientific & Engineering Research ', 'International', 0, '716', 0, '', '', '', '', '', '', '', '', '', 0, 'te09'),
(113, 'Swathi Rathore, Krishna Prasad ', 'Binary offset Carrier Modulation for Wireless Radio Communication”', '', '', 'Inter science Research  Network, Journal', 'National ', 1, '154', 0, '', '', '', '', '', '', '', '', '', 0, 'te05'),
(114, 'Priyanka D C, Krishna Prasad S J ', 'Development of prototype for tremor data collection', 'ISSN 2229-5518', '', 'in International journal of Scientific and Engineering Research IJSER', 'International', 5, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'te05'),
(115, 'S.J.Krishna Prasad, Prajwal R, Amrutha Haritha B N, Neha M V, Lakshmi Priya J', 'Automatic anesthesia monitoring and Control system', 'ISSN 2394-1588', '', 'International advanced research Journal In Science, Engineering and Technology,IARJSET ', 'International', 3, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'te05'),
(116, 'Santhosh Kumar G, Krishna Prasad S J', 'Blood Pressure Measurement and Prediction of  BP Effects Using Classification Algorithm', 'ISSN NO:2348 - 9480 ', '', 'International journal of Emerging Trends in Science and Technology IJETST', 'International', 3, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'te05'),
(117, 'Akash, Krishna Prasad S.J', 'Design and Implementation of web based Vehicle emission  Monitoring and notification system using Zi', 'ISSN 2395-0072', '', 'International research Journal        of Engineering and Technology IRJET,', 'International', 3, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'te05'),
(118, 'Joice John, S.J.Krishna Prasad, R.Prabhakara ', 'Effect of lead distance on the Transmittance of the light through mortar made out of Optical fiber', 'ISSN 2321-7308', '', 'International Journal of Research in Engineering and Technology, IJRET', 'International', 5, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'te05'),
(119, 'Pooja viswanath,SoumenRoy,S.J.KrishnaPrasad', 'ION driving app development for android  based smart phones', ' ISSN  2321-0613', '', 'IJSRD journal', 'International', 5, '1069', 0, '', '', '', '', '', '', '', '', '', 0, 'te05'),
(120, 'Eswaran, Rajatha,Viswanath Talasila', 'Design of a novel pressure signal based biometric system for automated identification of cockpit per', 'ISSN (Online): 2394-0697, ISSN', '', '', 'International Journal of Current Engineering And Scientific Research (IJCESR)', 0, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'te02'),
(121, 'Sandeep K, Viswanath T', 'Recognition of Medicinal Plants Based on Its Leaf Features', '', '', 'Springer Book on Systems Thinking Approach for Social Problems', '', 0, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'te02'),
(122, 'Swetha Amit', 'Design and Implementation of Printed Folded Dipole Antenna for GPS Application', 'ISSN: 23210613', '', 'International Journal for Scientific Research and Development (IJSRD)', '', 3, '0', 2015, '', '', '', '', '', '', '', '', '', 0, 'te13'),
(123, 'Swetha, A., and Raol, J. R', 'Generalized model error estimators for nonlinear systems', '2319-7463', '', 'International Journal of Enhanced Research in Science, Technology & Engineering ', 'Thomson Reuters Researcher Id: B-6734-2016', 5, '77', 2016, '', '', '', '', '', '', '', '', '', 0, 'te13'),
(124, 'Swetha, A., and Raol, J. R', 'Continuous Time H-infinity Filter with Asymptotic Convergence', '2454-2261', '', 'International Research Journal of Engineering, IT and Scientific Research', '', 3, '69', 2017, '', '', '', '', '', '', '', '', '', 0, 'te13'),
(125, 'Swetha, A., and Raol, J. R', 'Data Fusion with Model Error Estimators and Stability Analysis', '0973-4562', '', 'International Journal of Applied  Engineering Research', 'SCOPUS', 12, '5819', 2017, '', '', '', '', '', '', '', '', '', 0, 'te13'),
(126, '    Sushmita Tapashetti, Dr. Shobha K.R', 'Precision Agriculture using LoRa', '2229-5518', '', 'International Journal of Scientific & Engineering Research', 'National', 9, '0', 0, '', '', '', '', '3.8', '', '', '', '', 0, 'te03'),
(127, 'Anusha P, Dr.Shobha K R  ', 'Design and Implementation of Wireless Sensor Network for Precision Agriculture', '2395-3470', '', 'International Journal of Scientific Engineering and Applied Science (IJSEAS)', 'National', 1, '521', 0, '', '', '', '', '4.214', '', '', '', '', 0, 'te03'),
(128, 'Sampada H K, Dr.Shobha K R, Rakhi S ', 'Review on Prevention and Detection of Black hole Attack in MANETs', '0976-1353 ', '', ',International Journal of Emerging Technology in Computer Science & Electronics (IJETCSE)', 'International', 14, '437', 0, '', '', '', '', '', '', '', '', '', 0, 'te03'),
(129, 'Rakhi S, Dr.Shobha K R, Sampada H K   ', 'A Comprehensive Survey on Security Issues in VANETs for Safe Communication', '0976-1353', '', 'International Journal of Emerging Technology in Computer Science & Electronics (IJETCSE)', 'International', 14, '446', 0, '', '', '', '', '', '', '', '', '', 0, 'te03'),
(130, ' Shobha.K.R,  Dr.K.Rajanikanth ', 'Adaptive AODV routing protocol for Mobile Ad hoc Networks', '0976-2205', '', 'International Journal of Ad hoc, Sensor & Ubiquitous Computing (IJASUC)', 'International', 2, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'te03'),
(131, ' Shobha.K.R. and Dr.K.Rajanikanth    ', 'Analysis of performance of DSR using different types of cache in dynamic Environment', ' 2229 – 3957', '', 'International Journal of Distributed and Parallel Systems (IJDPS)', 'International', 2, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'te03'),
(132, ' Shobha.K.R. and Dr.K.Rajanikanth', 'Enhanced Dynamic Source Routing Protocol using On Demand Passive Clustering', '1947-5500', '', 'International Journal of Computer Science and information Security(IJCSIS)', 'International', 8, '0', 0, '', '', '', '', '0.438 ', '', '', '', '', 0, 'te03'),
(133, 'Bharath Yoganarasimha, Vivek Chandramohan, Thirupathihalli Pandurangappa Krishna Murthy, Bhavya Soma', 'Prediction of deleterious single nucleotide polymorphisms and their effect on the sequence and struc', '1658-3612', '1658-3612', 'Journal of Taibah University Medical Sciences', 'International', 12, '221-228', 2017, '3', '', '', '10.1016/j.jtumed.2016.07.009', 'Q3', '', '', '', 'Scopers', 2016, 'bt01'),
(134, 'Nandeesh M S, Arjun Reddy, R Prabhakara', 'Investigations On Effect of CFRP Strips Retrofitted Using NSM Method On Two-Way NSC and HSC Slabs Su', '2319-7308', '2321-1169', 'International Journal of Research in Engineering and Technology', 'International', 5, '53-58', 2016, '14', '5.181', '0', 'https://doi.org/10.15623/ijret', '', '', '', '', 'Google Scholar', 2016, 'cv01'),
(135, 'Arjun Reddy, Nandeesh M S, R Prabhakara', 'Studies on Strength and Deformation Behaviour of Two-way NSC and HSC Slabs under Single Point Loadin', '2321-7308', '2321-1169', 'International Journal of Research in Engineering and Technology', 'International', 5, '42-46', 2016, '14', '5.181', '0', 'https://doi.org/10.15623/ijret', '', '', '', '', 'Google Scholar', 2016, 'cv01'),
(136, 'a', 'b', 'c', 'd', 'e', 'f', 0, '0', 0, 'j', 'k', 'l', 'm', 't', '', '', '', '', 0, 'cse22'),
(137, 'Manjunath M Narwate, Mohandas K N', 'A Study on Mechanical and Tribological Properties of Aluminum Metal Matrix Composite Reinforced With', '', 'ISSN 2347-3258', 'International Journal of Advance Research and Innovation', 'International', 0, '729', 2016, 'N4', '', '2', '15.12.2016', '', '', '', '', 'Google Scholar', 2016, 'me01'),
(138, 'B Divakara Baliga, Mohandas K N', 'Study of Machinability and Corrosion Behaviour of Al-Si-Mg Alloy Treated With Master Alloys', '', 'ISSN: 2319-5967', 'International Journal of Engineering Science and Innovative Technology', 'International', 4, '310', 2015, '3', '', '', '1.5.2015', '', '', '', '', 'Web of Science', 2015, 'me01'),
(139, 'Mohandas K.N., Ramesh C.S., Eshwara Prasad K., Balashanmugam N.', 'Investigation of residual stress and flank wear on insert by hard turning of hard chrome plated surf', '', '2156-1680', 'International Journal of Manufacturing, Materials, and Mechanical Engineering', 'International', 4, '14', 2014, '2', '', '', '12/2014', '', '', '', '', 'Web of Science', 2014, 'me01'),
(140, 'Karthick Raja Namasivayam S, Samrat K, Srimanti Debnath, Jayaprakash C', 'Biocompatible chitosan nanoparticles incorporated bacteriocin (CSNps-B) preparation for the controll', '0975-8585', '', 'Research Journal of Pharmaceutical, Biological and Chemical Sciences', 'International', 6, '625', 2015, '5', '0.35', '1', 'September 2015', 'Q3', '', '', '', '', 0, 'bt03'),
(141, 'S KARTHICK RAJA NAMASIVAYAM, Y JUSTINE KOILPILLAI, RS ARVIND BHARANI, K Samrat', 'Synthesis, characterization, anti bacterial activity and ecotoxicity of silver nanoparticles from ca', '0974-2441', '2455-3891', 'Asian Journal of Pharmaceutical and Clinical Research', 'International', 7, '212', 0, '2', '0.5', '1', 'April 2014', 'Q3', '', '', '', '', 0, 'bt03'),
(142, 'S.KARTHICK RAJA NAMASIVAYAM, K.SAMRAT AND S.GANESH', 'PREPARATION OF CHITOSAN STABILIZED OFLOXACIN- GOLD NANO CONJUGATE FOR THE IMPROVED ANTI BACTERIAL AC', '2614-5006', ' 2321-4406', 'Innovare Journal of Medical Science', 'International', 1, '7', 2013, '2', '', '', 'July 2013', '', '', '', '', '', 0, 'bt03'),
(143, 'Dr. Santhosh Kumar S', '“Role of Tourism in the development of the Indian Economy: A strategic approach” has been accepted t', '0972-938', '0972-938', 'International Journal of Economic Research”,', 'International', 0, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'mba03'),
(144, 'Dr. Vijaya Kumar', '“Performance appraisal biases and behavioral biases in decision making: an empirical study” at Inter', '0976-6340', '0976-6359.', 'International Journal of Mechanical Engineering and Technology', 'International', 0, '0', 0, '', '', '', '6 June 2018', '', '', '', '', '', 0, 'mba02'),
(145, 'Prashant R Bhadri, Raghuram Srinivasan, Prosenjit Mal, FR Beyette, Harold W Carter', 'Mixed-Signal Design', '0278-6648', '1558-1772', 'IEEE Potentials', 'National', 24, '6', 2005, '1', '0.17', '1', '2005', 'Q3', '', '', '', 'Web of Science', 0, 'ece03'),
(146, 'Neetu, K. Sharma, Pratibha, P.K. Diwan and S. Kumar', 'Energy loss straggling of 5.486   MeV ?-particles in PP, PET and KAPTON polymeric foils', '', '', 'Applied Radiation and Isotopes', 'International', 68, '2252', 2010, '', '', '', '', '', '', '', '', '', 0, 'phy01'),
(147, 'Kalpana Sharma, P.K. Diwan and Shyam Kumar', 'Study of isotropic    etching behavior of  CR-39(DOP) polymer through ion tracks', '', '', 'Nuclear Instruments and Methods in Physics Research, B', 'International', 268, '3523', 2010, '', '', '', '', '', '', '', '', '', 0, 'phy01'),
(148, '3.	Kalpana Sharma, Rishi Pal Chahal, Suman Mahendia, Anil Kumar Tomar and Shyam Kumar', 'Optical behaviour of swift heavy ions irradiated poly(vinyl alcohol) films', '', '', 'Radiation effects and defects in solids', 'International', 168, '378', 2013, '', '', '', '', '', '', '', '', '', 0, 'phy01'),
(149, 'Neetu, Kalpana Sharma, P.K. Diwan,, S. Kumar and D.K. Avasthi', 'Higher order moments associated with energy loss distribution of swift heavy ions in thick polyethyl', '', '', 'Radiation effects and defects in solids', 'International', 168, '601', 2013, '', '', '', '', '', '', '', '', '', 0, 'phy01'),
(150, 'Kalpana Sharma, Neetu, Anupam, P.K. Diwan and S. Kumar ', 'Energy loss for swift heavy ions in polymers: A new approach for effective charge parameterization', '', '', 'Defects and   Diffusion Forum Journal, ', 'International', 341, '129', 2013, '', '', '', '', '', '', '', '', '', 0, 'phy01'),
(151, 'Kalpana Sharma, Neetu, Vijay Kumar, Rishi Pal Chahal and Shyam Kumar', 'Energy loss for heavy ions in polymers: A possible correlation with the induced changes in optical a', '', '', 'IOP Conf. Series: Materials Science and Engineering', '', 73, '12021', 2015, '', '', '', '', '', '', '', '', '', 0, 'phy01'),
(152, 'B. Rani, Kalpana Sharma, Neetu, Anupam, S. Kumar and H.S. Virk', 'Energy Loss for Swift Heavy Ions in Different Elemental Absorbers: A Different Approach for Effectiv', '', '', 'Solid State Phenomena ', 'International', 238, '196', 2015, '', '', '', '', '', '', '', '', '', 0, 'phy01'),
(153, 'Bindu Rani, Neetu, Kalpana Sharma, P.K. Diwan, Shyam Kumar', 'Precise measurements of energy loss straggling for swift heavy ions in polymers', '', '', 'Nuclear Instruments and Methods in Physics Research, B', '', 387, '34', 2016, '', '', '', '', '', '', '', '', '', 0, 'phy01'),
(154, 'Bindu Rani, Kalpana Sharma, P.K.Diwan & Shyam Kumar', 'Energy Loss of Swift heavy Ions in Solids ', '', '', 'CPUH-Research Journal', 'National', 2, '68', 2017, '2', '', '', '', '', '', '', '', '', 0, 'phy01'),
(155, 'V.T.  Muttannavar, Raveendra. Melavanki, Kalpana. Sharma, P.Bhavya,N. R. Patil,  and L. R. Naik ', 'Steady state and time resolved methods of fluorescence quenching of heterocyclic compound in dioxane', '', '', 'AIP Conference Proceedings   ', 'International', 1953, '80009', 2018, '', '', '', '', '', '', '', '', '', 0, 'phy01'),
(156, 'P. Bhavya, Raveendra. Melavanki, Raviraj. Kusanur, Kalpana Sharma, V. T. Muttannavara and L R Naik', 'Effect of viscosity and dielectric constant variation on fractional fluorescence quenching analysis ', '', '', 'Luminescence: The Journal of Biological and Chemical Luminescence ', 'International', 33, '933', 2018, '5', '', '', '', '', '', '', '', '', 0, 'phy01'),
(157, '12.	V. T. Muttannavara, Raveendra. Melavanki, Kalpana Sharma, P. Bhavya, Raviraj. Kusanur and L R Na', 'Effect of hydrogen bonding on fluorescence quenching of Quinolin-8- ol – Analysis using negative Ste', '', '', 'International Journal of Life Science & Pharma Research ', 'International', 8, '14', 2018, '4', '', '', '', '', '', '', '', '', 0, 'phy01'),
(158, 'R M Melavanki , V T Muttannavar , S Vaijayanthimala , N R Patilc , L R Naik  & J S Kadadevarmath', 'Solvent effects on the dipole moments and photo physical properties of laser dye ', '', '', 'Indian Journal of Pure & Applied Physics ', 'National', 0, '749-754', 0, '', '0.582', '', '', '', '', '', '', '', 0, 'phy02'),
(159, 'Sujata Joshi, Mydhili Nair', 'Survey of classification based prediction techniques in healthcare', 'ISSN: 1816-9503', '', 'International Journal of Soft Computing', 'International', 0, '1-19', 0, 'Issue 15', '', '', '4/1/2018', '', '', '', '', '', 0, 'is01'),
(160, 'Kumaraswamy S, Mydhili K Nair', 'Virtual Machine Placement in Distributed Cloud Centers using Bin Packing Algorithm', '1741-8488', '', '', '', 0, '0', 0, '', '', '', '', '', '', '', '', '', 0, 'is01'),
(161, 'Varun M Deshpande, Mydhili K. Nair', 'Need for User Centric & Unified Privacy and Data Policies for Social Networking. Case Study: Google,', '2455-7137', '', 'International Journal of Latest Engineering Research and Applications (IJLERA)', 'International', 2, '91-101', 0, '08', '', '', 'August2017', '', '', '', '', '', 0, 'is01'),
(162, 'Varun M Deshpande, Mydhili K. Nair', 'Open Standards for Data Privacy Policy Framework in context of Trusted Social Networking', '2456-3307', '', 'International Journal of Scientific Research in Computer Science, Engineering and Information Techno', 'International', 2, '0', 2017, '05', '', '', '', '', '', '', '', '', 0, 'is01'),
(163, 'Varun M Deshpande, Dr. Mydhili K. Nair, Dhrumil Shah', 'Major Web Application Threats for Data Privacy & Security - Detection, Analysis and Mitigation Strat', '2395-6011', '2395-602X', 'International Journal of Scientific Research in Science and Technology(IJSRST),', 'International', 3, '182-198', 2017, '07', '', '', 'Sep-Oct ', '', '', '', '', '', 0, 'is01'),
(164, 'Varun M Deshpande, Dr. Mydhili K. Nair', 'Finding Trustable Software Solutions for Secured Cloud based Services', '', '2394-4099', 'International Journal of Scientific Research in Science, Engineering and Technology', 'International', 3, '0', 2017, '06', '', '', 'Sep-Oct ', '', '', '', '', '', 0, 'is01'),
(165, 'Ch.Mahendra, Suranjen Bera, C. Anand Babu, K.K. Rajan', 'Separation of cesium by Electrodialysis-Ion exchange using AMP-PAN', '', '', 'Separation Science and Technology', 'International', 48, '2473-2478', 2013, '16', '1.2', '', '', '', '', '', '', '', 0, 'ch01'),
(166, 'Ch. Mahendra, P.M. Satya Sai, C. Anand Babu ', 'Current -Voltage characteristics in EDIX for separation of cesium from AMP-PAN', '', '', 'Desalination ', 'International', 353, '8-14', 2014, '8', '6.6', '', '', '', '', '', '', '', 0, 'ch01'),
(167, 'Ch.Mahendra, P.M. Satya Sai, C. Anand Babu, K.Revathy, K.K.Rajan ', 'Analysis and modeling of fixed bed sorption of cesium by AMP-PAN ', '', '', 'Journal of Environmental Chemical Engineering', 'International', 3, '1546-1554', 2015, '3', '1.384', '', '', '', '', '', '', '', 0, 'ch01'),
(168, 'Ch.Mahendra, P.M. Satya Sai, C. Anand Babu ', 'Different modes of electrodeionization of cesium from AMP-PAN ', '', '', 'International Journal of Engineering Research and Technology', 'International', 5, '30-34', 2016, '', '', '', '', '', '', '', '', '', 0, 'ch01'),
(169, 'Ch.Mahendra, P.M. Satya Sai, C. Anand Babu, K.Revathy, K.K.Rajan, ', 'Transport phenomena in electrodeionization of cesium from AMP-PAN', '', '', 'Separation Science and Technology', 'International', 52, '1468-1476', 2017, '8', '1.2', '', '', '', '', '', '', '', 0, 'ch01'),
(170, 'A.Ajina, Mydhili K Nair', 'Cross Layered Network Condition Aware Mobile Wireless Multimedia Sensor Network Routing Protocol for', '2076-0930 ', '2073-607X ', 'International Journal of Communication Networks and Information Security', 'International', 9, '48-56', 2017, '01', '', '', '', '', '', '', '', '', 0, 'is01'),
(171, 'H.S.Niranjana Murthy, M.Meenakshi', 'Comparison of Feature Extraction Techniques: A Case Study On Myocardial Ischemic Beat Detection', '1311-8080', '1314-3395', 'International Journal of Pure and Applied Mathematics', 'International', 119, '1389-1395', 2018, '15', '7.19', '-', '2018-119-15/4/745', 'Q4', '', '', '', '', 0, 'it02'),
(172, 'Aparna K, Mydhili K Nair', 'Development of Fractional Genetic PSO Algorithm for Multi Objective Data Clustering', '1942-3594,', '1942-3608', 'International Journal of Applied Evolutionary Computation (IJAEC)', 'International', 7, '1-16', 2016, '3', '', '', '', '', '', '', '', '', 0, 'is01'),
(173, 'Varun M Deshpande, Mydhili K. Nair', 'Trust based Novel Secure Data Sharing Policy Framework for Social Networking', '', '2394-2320', 'International Journal of Engineering Research in Computer Science and Engineering', 'International', 4, '91-101', 2017, '6', '', '', '', '', '', '', '', '', 0, 'is01'),
(174, 'H.S.Niranjana Murthy, M.Meenakshi', 'Novel and Efficient algorithms for early detection of myocardial ischemia', '1755-0653', ' 1755-0661', 'International journal of Medical Engineering & Informatics', 'International', 9, '351-372', 2017, '4', '0.5', '-', '10.1504/IJMEI.2017.086897', 'Q3', '', '', '', '', 0, 'it02'),
(175, 'H.S.Niranjana Murthy, M.Meenakshi', 'Efficient algorithms for early detection of myocardial ischemia using PCA based features', ' 0974-6846 ', '0974-5645', 'Indian Journal of Science & Technology', 'International', 9, '', 2016, '39', '0.25', '1', '10.17485/ijst/2016/v9i39/95788', 'Q3', '', '', '', '', 0, 'it02'),
(176, 'Aparna K, Mydhili K Nair', 'Incorporating Stability and Error-Based Constraints for a Novel Partitional Clustering Algorithm', '', '2086 – 9614', 'International Journal of Technology', 'International', 7, '691-700', 2016, '4', '', '', '', '', '', '', '', '', 0, 'is01'),
(177, 'H.S.Niranjana Murthy, M.Meenakshi', 'Novel and Efficient Myocardial Ischemia Classifier based on Statistical features with Random Weight ', '09709983', '-', 'Journal of Instrument Society of India, IISc', 'National', 45, '219-222', 2015, '4', '0.1', '-', '-', '-', '', '', '', '', 0, 'it02'),
(178, 'Aparna K, Mydhili K Nair', 'Comprehensive Study and Analysis of Partitional Data Clustering Techniques,', '2334-4555', '2334-4547', 'International Journal of Business Analytics (IGI Global Publications)', 'International', 2, '22-38', 2015, '1', '', '', '', '', '', '', '', '', 0, 'is01'),
(179, 'A.Ajina, Mydhili K Nair', 'A Study of QoS algorithm for Wireless Multimedia Sensor Networks', '2319-7323', '', 'International Journal of Computer Science Engineering (IJCSE), ', 'International', 4, '203-207', 2015, '4', '', '', '', '', '', '', '', '', 0, 'is01'),
(180, 'Mallamma B Hataraki, Mydhili K Nair', 'A Survey Paper on Hybrid Cloud Based Recommender Systems', '', '22776451,2277128X', 'International Journal of Advanced Research in Computer Science and Software Engineering', 'International', 6, '912-914', 2016, '', '', '', '', '', '', '', '', '', 0, 'is01'),
(181, 'H.S.Niranjana Murthy, M.Meenakshi', 'ANN, SVM and KNN Classifiers for prognosis of Cardiac Ischemia-A Comparison', ' 2250-110X', '2277-5080', 'Bonfring International Journal of Research in Communication Engineering', 'International', 5, '1-5', 2015, '2', '0.528', '6', '10.9756/BIJRCE.8030', '-', '', '', '', '', 0, 'it02'),
(182, 'H.S.Niranjana Murthy, M.Meenakshi', 'ANN Model to Predict Coronary Heart Disease Based on Risk Factors', '2250-1061 ', '2277-5064', 'Bonfring International Journal of Man Machine Interface', 'International', 3, '13-18', 2013, '2', '0.325', '8', '10.9756/BIJMMI.4473', '-', '', '', '', '', 0, 'it02'),
(183, 'H.S.Niranjana Murthy, M.Meenakshi', 'ECG signal Denoising and Ischemic Event Feature extraction using Daubechies Wavelets', '0975 – 8887', '0975 – 8887', 'International journal of computer applications', 'International', 67, '1-5', 2013, '2', '3.12', '5', '10.5120/11369-6630', '-', '', '', '', '', 0, 'it02'),
(184, 'Sunith Babu, HK Shivanand', ' Impact Analysis of Laminated Composites On Glass Fiber And Carbon Fiber', '', ' 2250 – 2459', 'International Journal of Emerging Technology and Advanced Engineering', 'International', 4, '824-829', 2014, '6', '0', '0', '', '', '', '', '', '', 0, 'me02'),
(185, 'Sunith Babu, HK Shivanand', 'Effect of Core Thickness and Core Density on Low Velocity Impact Behavior of Sandwich Panels with PU', '', ' 2327 – 4085', ' Journal of Minerals and Materials Characterization and Engineering', 'International', 3, '164-170', 2015, '3', '0.1', '2', 'NA', 'NA', '', '', '', '', 0, 'me02'),
(186, 'Sunith Babu, HK Shivanand', 'Mechanical Characterization of PU based sandwich composites with variation in core density', '', '2327 – 2643', ' International Journal of Materials Science and Applications', 'International', 4, '261-265', 2015, '4', '0', '0', 'NA', 'NA', '', '', '', '', 0, 'me02'),
(187, 'Sunith Babu, HK Shivanand', ' Compression After Impact on GFRP and CFRP sandwich Composites', '', ' 2278 – 0181', ' International Journal of Engineering Research & Technology ', 'International', 4, 'NA', 2015, '7', '0', '0', 'NA', 'NA', '', '', '', '', 0, 'me02'),
(188, 'A. SARAVANAN & P. NAGARAJAN', 'ALPHA - CUT FUZZY CONTROL CHARTS FOR BOTTLE BURSTING STRENGTH DATA', 'ISSN 2249-684X', '', 'International Journal of Electronics, Communication & Instrumentation Engineering Research and Devel', 'International', 2, '17-30', 2012, '4', '', '', '', '', '', '', '', '', 0, 'it01'),
(189, 'A. SARAVANAN & P. NAGARAJAN', 'IMPLEMENTATION OF QUALITY CONTROL CHARTS IN BOTTLE MANUFACTURING INDUSTR', 'ISSN : 0975-5462 ', '', ' International Journal of Engineering Science and Technology (IJEST) ISSN : 0975-5462 Vol. 5 No.02 F', 'International', 5, '335-340', 2013, '2', '', '', '', '', '', '', '', '', 0, 'it01'),
(190, 'A. SARAVANAN & P. NAGARAJAN', 'Artificial Neural Intelligent Visual Inspection for Process Improvement ', '', 'ISSN: 2278 – 0211 ', 'INTERNATIONAL JOURNAL OF INNOVATIVE RESEARCH & DEVELOPMENT ', 'International', 2, '768-778', 2013, '4', '', '', '', '', '', '', '', '', 0, 'it01'),
(191, 'A. SARAVANAN & P. NAGARAJAN', 'Performance of ANN in Pattern Recognition For Process Improvement Using Levenberg- Marquardt And Qua', '2250-3021 ', '2278-8719', 'IOSR Journal of Engineering (IOSRJEN) ', 'International', 3, '8-13', 2013, '3', '', '', '', '', '', '', '', '', 0, 'it01'),
(192, 'A.Saravanan &  Dr. V.Alamelumangai', 'Performance of Attribute Charts and Fuzzy  Control Chart for Variable Data', 'ISSN (Print) : 2320 – 3765 ', '2278 – 8875', 'International Journal of Advanced Research in Electrical, Electronics and Instrumentation engineerin', 'International', 3, '9758-9766', 2015, '5', '', '', '', '', '', '', '', '', 0, 'it01'),
(193, 'Pradipkumar Dixit, Gopal H.G', 'Variation of Leakage current with SDD on an artificially polluted porcelain pin insulator-an experim', '', '', 'Electric Power Components and Systems Journal, Taylor & Francis', 'International', 35, '359-365', 2007, '3', '', '', '10.1080/15325000600978791', '', '', '', '', '', 0, 'ee02'),
(194, 'Vinayak V Rao, Pradipkumar Dixit', 'Electric Field Computation of 400kV AC Porcelain String Insulator', '0976 – 6545', '0976 – 6553', 'International Journal of Electrical Engineering & Technology (IJEET)', 'International', 3, '174-181', 2012, '2', '3.2031', '', '', '', '', '', '', '', 0, 'ee02'),
(195, 'K. M. Latha and Pradipkumar Dixit', 'Study of Voltage Stresses inside Regenerative Drive', '2321-2705', '', 'International Journal of Research and Scientific Innovation (IJRSI)', 'International', 1, '4-8', 2014, 'II', '', '', '', '', '', '', '', '', 0, 'ee02'),
(196, 'Chandrashekhar Badachi & Pradipkumar Dixit', 'Analytical Model to Predict Pollution Flashover Voltages of Porcealin Disc Insulators', '1335-8243 ', '1338-3957', 'Acta Electrotechnica et Informatica', 'International', 15, '42-49', 2015, '1', '', '', '10.15546/aeei-2015-0007', '', '', '', '', '', 0, 'ee02'),
(197, 'A. G. Suresh & Pradipkumar Dixit', 'Minimum Leakage Current for Dry Band Formation under Polluted Environment', '2394-3386', '', 'International Journal of Engineering Technology Science and Research(IJETSR)', 'International', 2, '35-40', 2015, '7', '', '', '', '', '', '', '', '', 0, 'ee02'),
(198, 'A. G. Suresh, Jyothish Kumar S.Y and Pradipkumar Dixit', 'Comparative Study of PID and Fuzzy controller on embedded computer for water level control', '2319-8354', '', 'International Journal of Advance Research in Science and Engineering (IJARSE)', 'International', 4, '300-310', 2015, '7', '', '', '', '', '', '', '', '', 0, 'ee02'),
(199, 'R.V Srinivasamurthy and Pradipkumar Dixit', 'Simulation Study of Voltage Surge Distribution in a Transformer Winding', '2278-0181', '', 'International Journal of Engineering Research & Technology (IJERT)', 'International', 5, '307-311', 2016, '01', '', '', '', '', '', '', '', '', 0, 'ee02'),
(200, 'Chandrashekhar Badachi & Pradipkumar Dixit ', 'Prediction of Pollution Flashover Voltages of Ceramic string Insulators under Uniform and Non-unifor', '', '', 'Journal of Electrical Systems and Information Technology', 'International', 3, '270-281', 2016, '2', '', '', '', '', '', '', '', '', 0, 'ee02'),
(201, 'R. V. Srinivasamurthy, Pradipkumar Dixit', 'Study of Distribution of Transient Voltages in the Winding of a Transformer Subjected to VFTO and Li', '0975-6450', '', 'International Journal of Electronic Engineering Research', 'International', 9, '867-882', 2017, '6', '', '', '', '', '', '', '', '', 0, 'ee02'),
(202, 'Suresh A.G & Pradipkumar Dixit ', 'ANN Model to Predict Critical Flashover Voltages of Polluted Porcelain Disc Insulators', '0973-4562', '', 'International Journal of Applied Engineering Research ', 'International', 12, '2942-2951', 2017, '11', '', '', '', '', '', '', '', '', 0, 'ee02'),
(203, 'Manimekalai. D & Pradipkumar Dixit', 'Analysis of reliability for Fault Tolerant Design in Nano CMOS logic circuit', '', '', 'International Journal of Nanoelectronics and Materials ', 'International', 10, '123-138', 2017, '', '', '', '', '', '', '', '', '', 0, 'ee02'),
(204, 'H C Mouneswarachar & Pradipkumar Dixit', 'Experimental Investigation on Role of Arc Foot Radius on Pollution Flashover Voltage of Porcelain Di', '', '1582-4594 ', 'Journal of Electrical Engineering', 'International', 17, '240-246', 2017, '2', '', '', '', '', '', '', '', '', 0, 'ee02'),
(205, 'Anguraja R and Pradipkumar Dixit', 'Electric Field Analysis of High Voltage Condenser Bushing', '', '', 'Grenze International Journal of Engineering and Technology', 'International', 3, '107-113', 2017, '3', '', '', '', '', '', '', '', '', 0, 'ee02'),
(206, 'D.Manimekalai and Pradipkumar Dixit', 'Analysis of Reliability for the Gate Level Fault Tolerant Design using Probabilistic Transfer Matrix', '', '2210-142x', 'International Journal of Computing and Digital Systems', 'International', 0, '261-269', 2017, '', '', '', 'dx.doi.org/10.12785/ijcds', '', '', '', '', '', 0, 'ee02'),
(207, 'Anguraja R and Pradipkumar Dixit', 'Effect of Foils on Electric Field Distribution of a 245kV Condenser Bushing', '', '1582-4594 ', 'Journal of Electrical Engineering', 'International', 17, '370-374', 2017, '3', '', '', '', '', '', '', '', '', 0, 'ee02'),
(208, 'H C Mouneswarachar & Pradipkumar Dixit', 'Experimental Determination of Critical Arc Length for Ac Flashover of Polluted Porcelain Disc Insula', '', '', 'International Journal of Power and Energy Systems', 'International', 37, '', 2017, '4', '', '', '10.2316/Journal.203.2017.4.203', '', '', '', '', '', 0, 'ee02'),
(209, 'H C Mouneswarachar & Pradipkumar Dixit', 'Role of Multiple Arcs on Flashover of Contaminated Porcelain Disc Insulators', '2278-800X', '2278-067X', 'International Journal Of Engineering Research And Development', 'International', 14, '05-11', 2018, '1', '', '', '', '', '', '', '', '', 0, 'ee02'),
(210, 'V. Ramesh Kumar & Pradipkumar Dixit', 'Artificial Neural Network Model for Hourly Peak Load Forecast', '', '2146-4553', 'International Journal of Energy Economics and Policy(IJEEP)', 'International', 8, '155-160', 2018, '5', '', '', '', 'Q2', '18', '', '', 'Scopers', 2000, 'ee02'),
(211, 'Ashwin N, Sreedevi J and Pradipkumar Dixit', 'Network reduction of power system for transient stability studies', '', '', 'The Journal of CPRI', 'National', 13, '263-268', 2017, '2', '', '', '', '', '', '', '', '', 0, 'ee02'),
(212, 'auth', 'tit', 'issn', 'issn num', 'ju=ou', 'jtyp', 0, 'pagenum', 6786, 'iss', 'imp', 'cit', 'doi', 'sjr q', 'hin', 'iin', 'isbn', 'inde', 1998, 'data02'),
(213, 'Anupama.H.S, N.K.Cauvery, Lingaraju.G.M', 'MAPPING OF INTELLECT VISION TO PICTURE PIXELS USING EEG BASED MODEL', '', '', '', 'International', 0, '70-74', 2017, '', '', '', '', '', '', '', '', 'Scopers', 0, 'is04'),
(214, 'Anupama H S, Raj.V.Jain, RevanurVenkatesh, Cauvery N K, Lingaraju G M', 'Implementing and analyzing different Machine Learning Algorithms using EEG based BCI', '', '', '', 'International', 0, '', 2017, '', '', '', '', '', '', '', '', 'Scopers', 0, 'is04'),
(215, 'Niranajanamurthy M, B.N.Nithya, S. Jaganatha', 'Analysis of Blockchain technology: pros, cons and SWOT', '1386-7857 ', '1573-7543 ', 'Journal of Springer - Cluster Computing, The Journal of Networks, Software Tools and Applications', 'International', 0, '', 2018, '', '', '', '', '', '', '', '', 'Web of Science', 2018, 'mca01'),
(216, 'Dr. Santhosh Kumar S', '•	“Customers’ attitude towards online reviews on social media among youth in Bangalore” (2018)  Inte', ': 0976-6340 ', '0976-6359', 'International Journal of Mechanical Engineering and Technology (IJMET), ', 'International', 0, '', 2018, '5', '', '', '', '', '', '', '', 'Scopers', 2000, 'mba03'),
(217, 'Dr. Santhosh Kumar S', 'Performance appraisal biases and behavioral biases in decision making: an empirical study”', '0976-6340 ', '0976-6359', 'International Journal of Mechanical Engineering and Technology', 'National', 0, '', 2018, '6', '', '', '', '', '', '', '', 'Scopers', 0, 'mba03'),
(218, 'Dr. Santhosh Kumar S', '•	Entrepreneurship development through industry institute collaboration: An observation  ', '0976-6308 ', '0976-6316 ', 'International Journal of Civil Engineering and Technology', 'International', 0, '6', 2018, '', '', '', '', '', '', '', '', 'Scopers', 2000, 'mba03'),
(219, 'Dr. Santhosh Kumar S', '•	Behavioral Finance And Its Impact On Poor Financial Performance Of SMEs: A Review,” ', '0976-6340 ', '0976-6359', 'International Journal of Mechanical Engineering and Technology', 'National', 0, '', 2018, '', '', '', '', '', '', '', '', 'Scopers', 0, 'mba03'),
(220, 'Dr. Santhosh Kumar S', '•	A Study On Identifying The Factors Affecting Tourism Industry With Respect To Infrastructural Faci', '', '2321-1709  ', 'International Journal Of Management Research', 'National', 0, '', 2016, '', '4.88 ', '', '', '', '', '', '', 'Google Scholar', 0, 'mba03'),
(221, 'Dr. Santhosh Kumar S', 'A Study on impact of tourism industry on hotel industry in Karnataka State', '2394-1545', '2394-1553 ', 'International Journal of Advances in Economics and Business Management (AEBM) ', 'International', 0, '', 0, '', '', '', '', '', '', '', '', 'Google Scholar', 0, 'mba03');
INSERT INTO `journal_paper` (`slNo`, `authors`, `title`, `issnPrint`, `issnOnline`, `journalName`, `journalType`, `volumeNumber`, `pageNumbers`, `year`, `issueNumber`, `impactFactor`, `citation`, `doi`, `sjrQuartile`, `hIndex`, `iIndex`, `isbn`, `indexing`, `date`, `facultyId`) VALUES
(222, 'Dr. Santhosh Kumar S', '•	A Study On Significance Of Rewards & Recognition Policy as a Tool for Employee Motivation ', '2394-4218', '2349-4202', 'International Research Journal of Human Resources and Social Sciences ', 'National', 0, '', 0, '02', '', '', '', '', '', '', '', 'Google Scholar', 0, 'mba03'),
(223, 'Arun Kumar D C', 'SOCIAL ENTREPRENEURSHIP AND CRM: LINKING THROUGH COMMON FACTORS', ' 0976-6340', '0976-6359', 'International Journal of Mechanical Engineering and Technology (IJMET)', 'International', 9, ' 733–740', 2018, ' Issue 4', '9.2286', '', '', '', '', '', '', 'Scopers', 0, 'mba01'),
(224, 'Arun Kumar D C', 'A Study on Analzing volatility of gold price in India', '2348-0653 ', '', 'International Journal of Business and Administration Research Review', 'International', 0, ' 01-08', 2018, '23', '', '', '', '', '', '', '', 'Google Scholar', 0, 'mba01'),
(225, 'Arun Kumar D C', 'ANALYZING THE DETERMINANTS OF GOLD PRICE IN INDIA.', '2349-6738', '2349-6746', 'International Journal of Management And Social Science Research Review ', 'International', 0, '168-171', 2016, '3', '5.483', '', '', '', '', '', '', 'Google Scholar', 0, 'mba01'),
(226, 'S.V. Subhashini, Nancy Samuel, I.Pop', 'Effects of buoyancy assisting and opposing flows on mixed convection boundary layer flow over a perm', '', '', 'International Communications in Heat and Mass Transfer', 'International', 38, ' 499-503', 2011, '4', '4.463', '27', 'doi:10.1016/j.icheatmasstransf', '', '', '', '', 'Scopers', 0, 'mat03'),
(227, 'S.V. Subhashini, Nancy Samuel, I.Pop', 'Double-diffusive convection from a permeable vertical surface under convective boundary condition', '', '', 'International Communications in Heat and Mass Transfer', 'International', 38, '1183-1188', 2011, '9', '', '43', 'https://doi.org/10.1016/j.iche', '', '', '', '', 'Scopers', 2000, 'mat03'),
(228, 'S.V. Subhashini, Nancy Samuel, I.Pop', 'Numerical investigation of dual solutions for double diffusive convection from a permeable horizonta', '', '', 'International Journal of Heat and Mass Transfer', 'International', 55, '4981-4986', 2012, '19-20', '', '', '', '', '', '', '', 'Scopers', 2012, 'mat03'),
(229, 'S.V. Subhashini, Nancy Samuel', 'Mixed convection flow of nanofluids past a permeable vertical surface under convective boundary cond', '', '', 'Acta Technica', 'International', 59, '237 - 253', 2014, '', '', '', '', '', '', '', '', 'Web of Science', 0, 'mat03'),
(230, 'S.V. Subhashini, Nancy Samuel', 'Unsteady highly accelerated laminar compressible boundary layer with large injection rates', '', '', 'Acta Technica', 'International', 61, '71-84', 2016, '', '', '', '', '', '', '', '', 'Web of Science', 0, 'mat03'),
(231, 'M. Niranjanamurthy1 • B. N. Nithya1 • S. Jagannatha1', '  Analysis of Blockchain technology: pros, cons and SWOT', '', '', ' springe journal Cluster Computing ', 'International', 0, 'https://doi.org/10.1007/s10586', 2018, '', ' Impact Factor2.040', '5', 'Received: 30 January 2018 / Re', '', '', '', '', 'Scopers', 2018, 'mca03'),
(232, 'S.V. Subhashini, Nancy Samuel', 'NON-SIMILAR SOLUTION OF A STEADY COMPRESSIBLE BOUNDARY LAYER FLOW OVER A THIN CYLINDER', '', '', 'Frontiers in Heat and Mass Transfer', 'International', 7, '', 2016, '1', '', '', '', '', '', '', '', 'Web of Science', 2016, 'mat03'),
(233, 'Nancy Samuel', 'Triple diffusive flow along a stretching sheet with variable thickness in a porous medium Authors', '', '', 'Acta Technica', 'International', 63, '407 - 422', 2018, '3', '', '', '', '', '', '', '', 'Web of Science', 0, 'mat03'),
(234, 'S Sushma, Nancy Samuel, G Neeraja', 'Slip Flow Effects on Unsteady MHD Blood Flow in a Permeable Vessel in the Presence of Heat Source/Si', '', '', 'Global Journal of Pure and Applied Mathematics', 'National', 14, '1083-1099', 2018, '8', '', '', '', '', '', '', '', 'Web of Science', 0, 'mat03'),
(235, 'Dr.G.Vijaya Kumar', 'THEORIES OF WORK LIFE BALANCE –A CONCEPTUAL REVIEW', 'ISSN : 2348-9766 ', '', 'INTERNATIONAL RESEARCH JOURNAL OF MANAGEMENT AND COMMERCE (IRJMC) ', 'National', 4, '', 2017, '4', 'SJIF 5.564', 'SJIF', '', '', '', '', '', 'Web of Science', 2017, 'mba02'),
(236, 'Lakshmi S, Premila Manohar, K Natarajan and Naga Sayanu P', 'Design, Fabrication, characterization of micromachined capacitive shunt switches with low actuation ', '', '', 'Microsystem Technologies', 'International', 23, '4509-4522', 2017, '10', '', '', '', '', '', '', '', 'Web of Science', 2017, 'ee03'),
(237, 'S . Jagannatha,      M Niranjanamurthy,     K Venkatesh   ', ' Performance Evaluation by Throughput in Private Cloud ', 'E-ISSN  : 2348 – 8387', 'E-ISSN  : 2348 – 8387   ', ' SSRG International Journal of Computer Science and Engineering (SSRG-IJCSE)  © 2017 ', 'International', 0, 'http://www.internationaljourna', 2017, 'Issue 10', 'Impact Factor: 2.15', '', ' 10.14445/23488387/IJCSE-V4I10', '', '', '', '', 'Google Scholar', 2017, 'mca03'),
(238, 'Lakshmi S, Premila Manohar and Naga Sayanu P', 'Optimization of structures of DC RF MEMS series switches for low actuation', '', '', 'Microsystem Technologies', 'International', 23, '2371-2379', 2017, '7', '', '', '', '', '', '', '', 'Web of Science', 2017, 'ee03'),
(239, 'Premila Manohar and Wajid Ahmed', 'Application of Superconducting Fault Current limiter in HVDC systems', '', '', 'PULSE, the Manitoba HVDC Research Centre Journal', 'International', 0, '1-5', 2013, '', '', '', '', '', '', '', '', 'Web of Science', 2013, 'ee03'),
(240, 'Premila Manohar and P Usha', 'Application of SMES to improve dynamic performance of HVDC systems', '', '0974-2042', 'International Journal on Electronic & Electrical Engineering, IJEEE', 'International', 13, '10-19', 2010, '1', '', '', '', '', '', '', '', 'Web of Science', 0, 'ee03'),
(241, 'Premila Manohar and  Wajid Ahmed', 'Dynamic modeling of SMES coil', '', '0974-2042', 'International Journal of Electronics and Electrical Engineering, IJEEE', 'International', 10, '37-49', 2010, '1', '', '', '', '', '', '', '', 'Web of Science', 0, 'ee03'),
(242, 'Premila Manohar and H S Chandrasekharaiah', 'Application of ZnO varistor protection to capacitors of artificially commutated inverter in MTDC sys', '', '', 'IEEE Transactions on Power Systems', 'International', 6, '356-363', 1991, '1', '', '', '', '', '', '', '', 'Web of Science', 0, 'ee03'),
(243, 'Premila Manohar and H S Chandrasekharaiah', 'Artificial commutation for inversion into weak ac system in MTDC system', '', '', 'Electrical Power Systems Research', 'International', 19, '95-104', 1990, '2', '', '', '', '', '', '', '', 'Web of Science', 0, 'ee03'),
(244, 'S. Jagannatha,  T. V. Suresh Kumar,  K. Rajanikanth', ' Query Based Resource Allocation and Performance Prediction in Distributed Database ', '', ' ISSN 2457-905X', 'Journal of Communications Technology, Electronics and Computer Science, ', 'International', 4, 'p 16-24,', 2016, '', '', '', '', '', '', '', '', 'Google Scholar', 2016, 'mca03'),
(245, 'S. Jagannatha, D.E.Geetha, Dr. T. V. Suresh Kumar, Dr Rajanikanth ', '“Load Balancing in Distributed Database System using Resource Allocation” ', ' ISSN (Print) :2319-5940  ', 'ISSN (Online) : 2278 - 1021', 'International Journal of Advanced Research in Computer and Communication Engineering”', 'International', 0, '  pg 2529 – 2535.', 2013, ' Issue 7, ', 'Impact Factor is 1.770', '', '', '', '', '', '', 'Google Scholar', 2013, 'mca03'),
(246, 'S. Jagannatha,  T. V Suresh Kumar, K Rajani Kanth  ', ' Algorithm of Performance Prediction by Resource sharing in Distributed Database ', '', ' (0975 -8887) ', ' International Journal of Computer Applications (0975 -8887) ', 'International', 0, '', 2013, ' ', 'Impact Factor: 0.814.', '', '', '', '', '1', '', 'Google Scholar', 0, 'mca03'),
(247, 'Bhavya S G, Manjunath D, Sharath R, Krishna Murthy T P, Gowrishankar B S.', 'Reverse Micelles as a Bioseperation Tool for Enzymes.', '', '', 'Journal of Proteins & Proteomics', 'International', 8, '105-120', 2017, '2', '', '', '', '', '', '', '0975-8151', 'Google Scholar', 2017, 'bt01'),
(248, 'KR Gopi, KN Mohandas, HN Reddappa, MR Ramesh', 'Characterization of as Cast and Heat Treated Aluminum 6061/Zircon Sand/Graphite Particulate Hybrid C', '', '2249  – 8958', 'International J ournal of Engineering and Advanced Technology', 'National', 2, '340-344', 2013, '5', '', '10', '', '', '', '', '', 'Google Scholar', 2013, 'me01'),
(249, 'K. Indira, Dr. S. SethuSelvi', 'Kannada Character Recognition system – A review', '', '', 'Journal of Research & Industry', 'International', 1, '31-35', 2010, ' Issue 2  ', '', '9', '', '', '', '', '', 'Google Scholar', 2010, 'ece02'),
(250, 'Kavys Shree N S, Pushpalatha M N', 'A Survey of the Bug Localisation Techniques', 'ISSN 1738-9984', '', 'International Journal of Software engineering and its applications ', 'International', 0, 'pp. 17-30', 2018, '', '', '0', '', '0.16', '14', '', '', 'Scopers', 2000, 'is02'),
(251, 'K. Indira , Dr. S. Sethu Selvi , Anjali Kulkarni', ' Line Segmentation of       Handwritten Kannada text', '0974-9691', '', 'Coimbatore Institute of Information       Technology', 'International', 4, '214-220', 2012, '4', '', '', '', '', '', '', '', 'Google Scholar', 2012, 'ece02'),
(252, 'Dr.K.Indira, Bibi Ayesha Patil', 'Automatic Recognition of Rodent  •	 Species based on Mathematical Morphological Characterization of ', '', '', 'IJEAT', 'International', 3, '', 0, '4', '', '', '', '', '', '', '', 'Google Scholar', 2014, 'ece02'),
(253, 'Pushpaltha M N, Mrunalini M', 'Clustering the duplicate open crash reports based on call stack traces of crash reports', '', ' 2347-2693', 'International Journal of Computer Sciences and Engineering', 'International', 0, 'pp. 207-210', 0, 'Issue-9', '3.02', '0', '', '0', '009', '007', '', 'Google Scholar', 2018, 'is02'),
(254, 'Jinadatta Preetham, Sundera Raja Rao Kiran, Rajshekarappa Sharath, Pasura Subbaiah Sujan Ganapath', 'Biochemical and antioxidant influences of Bridelia scandens (Roxb.) Willd. on carbon tetrachloride -', '2209-5276', '', 'Australian Journal of Pharmaceutical Biology', 'International', 1, '7-14', 2018, '1', '', '', '', '', '', '', '', 'Google Scholar', 2018, 'bt02'),
(255, 'Bincy Rose Vergis,  · R. Hari Krishna,  Nagaraju Kottam,  B. M. Nagabhushana, R. Sharath · B. Daruka', 'Removal of malachite green from aqueous solution by magnetic CuFe2O4 nano?adsorbent synthesized by o', '', '2193-8865', 'Journal of Nanostructure in Chemistry', 'International', 8, '1-12', 2018, '1', '', '3', '', '', '', '', '', 'Web of Science', 2018, 'bt02'),
(256, 'DEEPAK KUMAR', '[2].	Fuzzy Logic Approach to Assess Supply Chain Agility Level of a Manufacturing Industry', '', '', ', Journal of Product Design, Quality Engineering & Technology', 'National', 0, 'PP16-34', 2017, ' Issue 3', '4.7', '', '', '', '', '', '', 'Web of Science', 0, 'iem01'),
(257, 'DEEPAK KUMAR', 'Reformation in existing micro size laundry system by using product design and development process to', 'p-ISSN: 2395-0072', ' e-ISSN: 2395 -0056,', 'International Research Journal of Engineering and Technology (IRJET)', 'International', 0, 'Page 2330-2333', 2017, 'Issue: 06', 'Impact Factor value: 5.181', '', '', '', '', '', '', 'Web of Science', 0, 'iem01'),
(258, 'Divya R S,  Pushpalatha M N', 'Software CrashLocator: Locating the Faulty Functions by Analyzing the Crash Stack Information in Cra', '2454-1311', '', 'International Journal of Advanced Engineering, Management and Science', 'National', 2, '212-216', 2016, '5', '', 'Thomson Reuter', '', '', '', '', '', 'Google Scholar', 2016, 'is02'),
(259, 'Pushpalatha M N M.Mrunalini', 'Automatic Bug Assignment using Bagging', '2319:2682', '', 'International Journal of Advanced Information Science and Technology', 'International', 40, '98-103', 2015, '', '', 'CrossRef, ICI', '', '', '', '', '', 'Google Scholar', 2015, 'is02'),
(260, 'AshaRamaraddiBelahunashi, Pushpalatha M N', 'A survey on analysing the crash reports of software applications', '2395-0072', '2395 -0056', 'International Research Journal of Engineering and Technology (IRJET)', 'International', 4, '1014-1017', 2017, '06', '', 'Thomson Reuter,', '', '', '', '', '', 'Google Scholar', 2017, 'is02'),
(261, 'P. R. Bhadri; Raghuram Srinivasan et al.', 'Mixed mode integrated circuits', '', '', 'IEEE Potentials', 'National', 24, '6-11', 2005, '1', '', '', '2005', '', '', '', '', 'Web of Science', 0, 'ece03');

-- --------------------------------------------------------

--
-- Table structure for table `non_teaching_staff`
--

CREATE TABLE `non_teaching_staff` (
  `staffId` varchar(10) NOT NULL,
  `staffName` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `caste` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `natureOfAppointment` varchar(100) NOT NULL,
  `mobileNo` varchar(100) NOT NULL,
  `emailId` varchar(100) NOT NULL,
  `panNo` varchar(100) NOT NULL,
  `accountNo` varchar(100) NOT NULL,
  `pfNo` varchar(100) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phd_scholar`
--

CREATE TABLE `phd_scholar` (
  `slNo` int(11) NOT NULL,
  `role` varchar(30) NOT NULL,
  `scholarName` varchar(100) NOT NULL,
  `researchCentre` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `registrationYear` varchar(30) NOT NULL,
  `usn` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phd_scholar`
--

INSERT INTO `phd_scholar` (`slNo`, `role`, `scholarName`, `researchCentre`, `university`, `registrationYear`, `usn`, `title`, `status`, `facultyId`) VALUES
(1, '', 'Chetan Shetty', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse24'),
(2, '', 'Sowmya B J', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse22'),
(3, '', 'Sanjeetha. R', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse07'),
(4, '', 'Pradeep kumar D', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse23'),
(5, '', 'Pramod Sunagar', 'null', 'null', '2014', 'null', 'null', 'Completed the course', 'cse21'),
(6, '', 'Sini Anna Alex', 'null', 'null', '2013', 'null', 'null', 'Completed Course Wor', 'cse14'),
(7, '', 'Chandrika C.P', 'null', 'null', '2017', 'null', 'null', 'To start Course Work', 'cse19'),
(8, '', 'Darshana A Naik', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse26'),
(9, '', 'Parkavi.A', 'null', 'null', '2012', 'null', 'null', 'Comprehensive viva c', 'cse08'),
(10, '', 'Meera A Kawagi', 'null', 'null', '2016', 'null', 'null', 'Completed 2 course w', 'cse16'),
(11, '', 'Mallegowda M', 'null', 'null', '2015', 'null', 'null', 'completed 3 subjects', 'cse17'),
(12, '', 'Ramya H R', 'Telecommunication Engineering', 'VTU', 'May 2012', '1MS11PEN08', 'Fuzzy Logic', 'Persuing', 'te09'),
(13, '', 'Parimala.P', 'Jain University', 'Jain University', '2011', '11PPEEE011', 'Image Tracking and fusion using Square root Inform', 'Completed (July 2018', 'te07'),
(14, '', 'UMESHARADDY', 'DEPT. OF TCE, MSRIT, BANGALORE-560054', 'VTU', '2012', '1MS11PEN06', 'Performance Improvement of QPSK MODEM Implementing', 'submitted thesis', 'te10'),
(15, '', 'S J Krishnaprasad', 'MSRIT', 'VTU, Belgaum', '2014', '1MS13PEN13', 'APPLICATIONS OF FBG SENSORS FOR DIAGNOSIS OF NEURO', 'Completed 3 subjects', 'te02'),
(16, '', 'Mahendra SJ', 'MSRIT', 'VTU', '2014', '1MS15PEJ03', 'Design of advanced FES system for control of movem', 'Registered for cours', 'te02'),
(17, '', 'Vanitha KM', 'MSRIT', 'VTU', 'Dec 2014', '1MS15PEJ06', 'Sensor fusion for tremor detection and analysis', 'Completed Course wor', 'te02'),
(18, '', 'Balaji V', 'MSRIT', 'VTU', 'Dec 2014', '1MS15PEJ14', 'Performance validation of a wireless mesh network', 'Registered for cours', 'te02'),
(19, '', 'Sandeep Kumar E', 'MSRIT', 'VTU', '31-07-2017', '1MS17PEA17', 'Analysis of Large Scale Complex Networks in the co', '•    Completed cours', 'te02'),
(20, 'Guide', 'Vibhas P', 'M.S. Ramaiah Institute of Technology, Bangalore', 'VTU, Belagavi', '2015', '1MS15PMJ02', 'AN INVESTIGATION INTO THE MACHINABLITY PARAMETERS ', 'On going', 'me01'),
(21, 'Guide', 'Nishanth R Acharya', 'M.S. Ramaiah Institute of Technology, Bangalore', 'VTU, Belagavi', '2017', '1MS17PMS01', 'Study on dimensional and geometrical integrity of ', 'On going', 'me01'),
(23, 'Guide', 'me', 'he', 'uni', 'regYear', 'usn', 'title', 'status', 'data01'),
(24, 'Guide', 'Bharath M R', 'MSRIT, Mechanical', 'VTU', '2018-2019', 'To be Announced', 'Low Velocity Impact of Laminated Composites and Damage Assessment ', 'Others', 'me02'),
(25, 'Guide', 'Lohit Chetan', 'IEM-RIT', 'VTU', '2016', '', 'Study, analysis & optimization of workplace parameters using design of experiments for productive an', 'Others', 'im02'),
(26, 'Guide', 'Seetharama Rao', 'IEM-RIT', 'VTU', '2017', '', 'Optimization of cyber-physical system resources of                 Industrial Internet of Things thr', 'Others', 'im02'),
(28, 'Guide', 'P Usha', 'MSRIT, Bangalore', 'VTU', '', '', 'Expert control of superconducting magnetic energy storage systems for real and reactive power modula', 'Completed', 'ee03'),
(29, 'Guide', 'S Lakshmi', 'MSRIT, Bangalore', 'VISVESVARAYA TECHNOLOGICAL UNIVERSITY', '', '', 'Efficient micro machined actuating mechanism for RF applications', 'Completed', 'ee03'),
(30, 'Guide', 'Wajid Ahmed', 'MSRIT, Bangalore', 'VISVESVARAYA TECHNOLOGICAL UNIVERSITY', '', '', 'VSC based HVDC transmission systems', 'Pending', 'ee03'),
(31, 'Guide', 'Suresh Babu C', 'MSRIT, Bangalore', 'VISVESVARAYA TECHNOLOGICAL UNIVERSITY', '', '', 'MEMS based self–calibrated capacitive proximity sensor for liquid level monitoring', 'Pending', 'ee03'),
(32, 'Guide', 'Sreedevi J', 'MSRIT, Bangalore', 'VISVESVARAYA TECHNOLOGICAL UNIVERSITY', '', '', 'Multi Infeed HVDC systems', 'Pending', 'ee03'),
(33, 'Guide', 'Bapiraju', 'MSRIT, Bangalore', 'VISVESVARAYA TECHNOLOGICAL UNIVERSITY', '', '', 'VSC-HVDC for offshore applications', 'Pending', 'ee03'),
(34, 'Guide', 'Niveditha', 'MVJ', 'VTU', '2009', '', '', 'Pending', 'ch02'),
(35, 'Guide', 'V Sravanthi', 'MSRIT', 'JNTU', '2014', '', '', 'Pending', 'ch02'),
(36, 'Guide', 'Halima', 'Sir MVIT', 'VTU', '2014', '', '', 'Pending', 'ch02'),
(37, 'Guide', 'Manjunath', 'MVJ', 'VTU', '2014', '', '', 'Pending', 'ch02'),
(38, 'Guide', 'Moses Vinutha', 'RVCE', 'VTU', '2014', '', '', 'Pending', 'ch02'),
(39, 'Co-Guide', 'Chaithra', 'ISE, RIT, Bangalore', 'VTU', '2015', '', 'Data Mining Technique to Improve in Quality in  Web Pages', 'Pending', 'mca03'),
(40, 'Guide', 'Tenkale Pallavi Shivrajappa', 'Computer Application, RIT', 'VTU', '2016', '', 'Web Content  Mining Optimization for Opinin Extration from Online Resources', 'Pending', 'mca03'),
(41, 'Guide', 'Jeny Varghese', 'Computer Applications, RIT, ', 'VTU', '2017', '', 'Design, Modeling and Performer  Evaluation of Dynamic Resource Provisioning Strategy in Federated Cl', 'Pending', 'mca03'),
(42, 'Guide', 'Sujatha', 'Computer Applications, RIT,  ', 'VTU', '2017', '', 'Effective Load Balancing Approach in Cloud', 'Pending', 'mca03'),
(43, 'Guide', 'Manjunatha B', 'Computer Science ', 'Reva University', '2015', '', 'Design, Modeling and Performance of Resource Allocation Strategy in Cloud computing  Environment', 'Pending', 'mca03'),
(44, 'Guide', 'scholar name', 'rsc cent', 'uni', 'year ofreg ', 'usn', 'ti', 'sta', 'data01'),
(45, 'Guide', 'Bhavya G', 'Ramaiah Institute of Technology', 'Visvesvaraya Technological University', '2015', '', 'Proteomic study of Serratia marcescens using high resolution mass spectrometry', 'Pending', 'bt02'),
(46, 'Co-Guide', 'Samrat K', 'Ramaiah Institute of Technology', 'Visvesvaraya Technological University', '2013', '1MS13PGN02', 'Synthesis, Characterization of metallic and nonmetallic nanoparticles and evaluation of their Pharma', 'Pending', 'bt02'),
(47, 'Guide', 'Muktha H', 'Ramaiah Institute of Technology', 'Visvesvaraya Technological University', '2013', '1MS13PGN19', 'Synthesis, characterization and evaluation of pharmacological activities of metal oxide nanoparticle', 'Pending', 'bt02'),
(48, 'Guide', 'Preetham J', 'Ramaiah Institute of Technology', 'Visvesvaraya Technological University', '2012', '', 'Pharmacological Evaluation of selective medicinal plants for Hepato-protective activity', 'Pending', 'bt02'),
(49, 'Guide', 'Dr K.Indira', 'E&C', 'VTU', '2014', 'IMS15PEJ08', 'Statistical Parametric Modeling and Synthesis of Kannada Speech Signal', 'Ongoing', 'ece02'),
(50, 'Guide', 'Dr K.Indira', 'ECE', 'VTU', '2013', '', 'Intelligent Kannada Character Recognition Based on Neuro-Fuzzy System', 'Ongoing', 'ece02'),
(51, 'Guide', 'Dr K.Indira', 'E&C', 'VTU', '2013', '', '', 'Ongoing', 'ece02'),
(52, 'Guide', 'Raghuram S', 'Scientific Computation Lab, SERC', 'Research Associate, IISc, Bangalore', '2010-2014', '', '', 'Completed', 'ece03'),
(53, 'Guide', 'Raghuram S', 'Distibuted Processing Lab, College of Engineering', 'Research Assistant, University of Cincinnati, USA', '2003-2009', '', '', 'Completed', 'ece03');

-- --------------------------------------------------------

--
-- Table structure for table `placement_details_ug`
--

CREATE TABLE `placement_details_ug` (
  `slNo` int(11) NOT NULL,
  `studentName` varchar(100) NOT NULL,
  `usn` varchar(50) NOT NULL,
  `yearOfPassing` int(11) NOT NULL,
  `companyName` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placement_details_ug`
--

INSERT INTO `placement_details_ug` (`slNo`, `studentName`, `usn`, `yearOfPassing`, `companyName`, `package`, `departmentId`) VALUES
(1, 'a', 'b', 0, '', 'd', 'data');

-- --------------------------------------------------------

--
-- Table structure for table `professional_activities`
--

CREATE TABLE `professional_activities` (
  `slNo` int(11) NOT NULL,
  `board` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `externalOrInternal` varchar(20) NOT NULL,
  `year` varchar(10) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professional_activities`
--

INSERT INTO `professional_activities` (`slNo`, `board`, `college`, `externalOrInternal`, `year`, `facultyId`) VALUES
(2, 'BOE', 'BMSCE', 'External', '2017-2018', 'ml01'),
(3, 'Board of Examination', 'Ramaiah Institute of technology', 'Internal', '2016, 2017', 'me01'),
(4, 'Board of Studies', 'Jain University', 'External', '2018', 'me01'),
(5, '', '', '', '', 'mat01'),
(6, 'BOS', 'MSRIT', 'INTERNAL', '2017-2018', 'me03'),
(8, 'BOS', 'MSRIT', 'Internal', '2018', 'mba03'),
(9, 'BOE', 'MSRIT', 'Internal', '2018', 'mba03'),
(12, 'BOARD OF EXAMINERS', 'RAMAIAH INSTITUTE OF TECHNOLOGY', 'INTERNAL', '2016-2018', 'ch01'),
(13, 'BOS', 'Ramaiah Institute of Technology', 'Internal', '2015-2018', 'it02'),
(14, 'BOE', 'Ramaiah Institute of Technology', 'Internal', '2016-17', 'it02'),
(15, '', '', '', '', 'phy02'),
(17, 'ISA Faculty Advisor', 'Ramaiah Institute of Technology', 'Internal', '2008-2015', 'it02'),
(18, 'ISOI student chapter coordinator', 'Ramaiah Institute of Technology', 'Internal', '2015-2018', 'it02'),
(19, 'VTU valuation coordinator', 'Ramaiah Institute of Technology', 'Internal', '2006-2007', 'it02'),
(20, 'Autonomous Valuation Centre', 'Ramaiah Institute of Technology', 'Internal', '2007-2015', 'it02'),
(21, 'Industrial visit coordinator', 'Ramaiah Institute of Technology', 'Internal', '2008-2015', 'it02'),
(22, 'FDP coordinator', 'Ramaiah Institute of Technology', 'Internal', '2015, 2017', 'it02'),
(23, 'Student workshop coordinator', 'Ramaiah Institute of Technology', 'Internal', '2010, 2018', 'it02'),
(24, 'Disciplinary committee member', 'Ramaiah Institute of Technology', 'Internal', '2008 onwar', 'it02'),
(26, 'BOS', 'Ramaiah Institute of Technology', 'Internal', '2012-prese', 'chy02'),
(27, 'BOE', 'Ramaiah Institute of Technology', 'Internal', '2012-prese', 'chy02'),
(28, 'BOE', 'Bangalore University-Engg. chemistry', 'External', '2017 to pr', 'chy02'),
(29, 'BOE', 'Dayanandasagar College of Engineering, Bangalore', 'External', '2016 to pr', 'chy02'),
(30, 'Board of Examination', 'MSRIT', 'Internal', '2017-18', 'ee02'),
(31, 'Board of Studies', 'MSRIT', 'Internal', '2017-18', 'ee02'),
(32, 'Board of Studies', 'NMIT, Bangalore', 'External', '2017-18', 'ee02'),
(33, 'Board of Studies', 'NMIT, Bangalore', 'External', '2017-18', 'ee02'),
(34, 'Board of Examination', 'Dr. AIT, Bangalore', 'External', '2017-18', 'ee02'),
(35, 'Board of Examination', 'Dr. AIT, Bangalore', 'External', '2017-18', 'ee02'),
(36, 'Board of Examiners', 'MSRIT', 'Internal', '2017', 'me02'),
(37, 'Board of Studies', 'RIT', 'Internal', '2017', 'me02'),
(38, 'Board of Examiners', 'RIT', 'Internal', '2018', 'me02'),
(39, 'Indian Intuition of Industrial Engineering', '', 'External', '2018', 'im02'),
(40, 'BOS', 'Ramaiah institute of technology', 'internal', '2015-2018', 'it01'),
(43, 'BOE', 'MSRIT', 'INTERNAL', '2017-2018', 'me03'),
(44, 'Board of Studies', 'RIT', 'Internal', '2015', 'it03'),
(45, '', '', '', '', 'data02'),
(47, 'Board of Studies', 'MSRIT', 'Internal', '', 'ee03'),
(48, 'Board of Examination', 'MSRIT', 'Internal', '', 'ee03'),
(49, 'Board of Studies', 'BVBCE, Hubli', 'Internal', '2007-2009', 'ee03'),
(50, 'Board of Examination', 'UVCE', 'External', '2009-10', 'ee03'),
(51, 'Governing Council', 'MSRIT', 'Internal', '', 'ee03'),
(52, 'BOE', 'MSRIT', 'Internal', '2016', 'mba02'),
(53, 'Board of Examiners', 'BMS College of Engineering', 'External', '2011-13', 'ch02'),
(54, 'Board of Examiners', 'RVCE', 'External', '2008-14', 'ch02'),
(55, 'Board of Examiners', 'MSRIT', 'Internal', '2010-till ', 'ch02'),
(56, 'Board of Studies', 'Bangalore University', 'External', '2002-2003', 'ch02'),
(57, 'Board of Studies', 'MSRIT', 'Internal', '2007-til d', 'ch02'),
(58, 'BOS Member', 'Dept of Computer Applications', 'Internal', '2018', 'mca03'),
(59, 'BOE  Member', 'Dept of Computer Applications', 'Internal', '2017- 2018', 'mca03'),
(60, 'Board of Examiner', 'RIT', 'Internal', ' 2015', 'mca02'),
(61, 'BOS ', 'Jain University', 'External', 'Jan 2018', 'mca03'),
(62, 'BOS ', 'PES College of Engineering, Mandya', 'External', 'Mar 2018', 'mca03'),
(63, 'BOS', 'Jain Unsiversity', 'External', 'April 2018', 'mca03'),
(64, 'BOE ', 'SIT Tumkur', 'External', 'April 2018', 'mca03'),
(65, 'BOE Meeting', 'PES College of Engineering,   Mandya', 'External', 'Oct 2018', 'mca03'),
(66, 'BOE', 'Dept of Computer Applications, SSIT, Tumkur', 'External', '2016', 'mca03');

-- --------------------------------------------------------

--
-- Table structure for table `professional_body_membership`
--

CREATE TABLE `professional_body_membership` (
  `slNo` int(11) NOT NULL,
  `professionalBodyName` varchar(100) NOT NULL,
  `membershipType` varchar(50) NOT NULL,
  `subscriptionYear` varchar(30) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professional_body_membership`
--

INSERT INTO `professional_body_membership` (`slNo`, `professionalBodyName`, `membershipType`, `subscriptionYear`, `facultyId`) VALUES
(1, 'ISTE', 'Life Member', '1996', 'ml01'),
(2, 'IEEE', 'Member', '2016', 'ece03'),
(3, 'International Association of Engineers (IAENG)', 'Life Member', '2014', 'bt03'),
(4, 'Indian Society for Technical Education', 'Life Member', '2010', 'me01'),
(5, 'Member of SAE India', 'Life Member', '2014', 'me01'),
(6, 'Member of International Association of Engineers ', 'Life Member', '2016', 'me01'),
(8, 'Indian Society of Technical Education', 'Life', '2005', 'mca02'),
(9, 'Indian Society for Technical Education ', 'Life Member', '2017', 'cv01'),
(10, 'Indian Chapter of American Concrete Institute ', 'Life Member', '2017', 'cv01'),
(11, 'The Institution Of Engineers ', 'Associate Member', '2018', 'cv01'),
(12, 'The Institution Of Engineers ', 'Chartered Engineer', '2018', 'cv01'),
(13, 'Indian Society for Technical Education ', 'Life Member', '2018', 'cv03'),
(14, 'National Institute of Personnel Management', 'Life time Member', '2015', 'mba03'),
(15, 'LMISTE', 'Life time', '', 'it01'),
(16, 'NIL', 'NIl', 'NIL', 'ch01'),
(17, 'Indian Physics Association', 'Life time', '2015', 'phy01'),
(18, 'Indian Society for Radiation and Photochemical Sci', 'Life time', '2018', 'phy01'),
(19, 'The Indian Society for Technical Education', 'Life Member', '2000', 'it02'),
(20, 'International Society of Automation', 'Annual member', '2008-2014', 'it02'),
(21, 'Instrument society of India, IISc', 'Life Member', '2015', 'it02'),
(22, '', '', '', 'it02'),
(23, 'Indian Crystallographic Association', 'Life time', '2006', 'phy02'),
(25, 'ISTE', 'permanent', '2002', 'it03'),
(26, 'ISOI', 'permanent', '2014', 'it03'),
(27, 'Electrochemical Society of India” Indian Institute of Science, Bangalore', 'Life member', '2006', 'chy02'),
(28, 'Materials Research Society of India, Indian academy of sciences,    Bangalore', 'Life member', '2010', 'chy02'),
(29, 'Luminescence Society of India: Karnataka chapter.', 'Life member', '2010', 'chy02'),
(30, 'ISTE', 'Life Member', '2000', 'ee02'),
(31, 'Institution of Engineers', 'Life Member', '2000', 'ee02'),
(32, 'IEEE', 'Senior Member', '2012', 'ee02'),
(33, 'Institute of Indian Foundry ', 'Member', '2016', 'me02'),
(34, 'International Association of Engineers', 'Life Member', '2015', 'im02'),
(35, 'Institution of Engineers (India)', 'Life Member', '2012', 'im02'),
(36, 'Indian Intuition of Industrial Engineering ', 'Senior Member and EC Member', '2010', 'im02'),
(37, 'Center for Growth of Education and Research', 'Life Member', '2012', 'im02'),
(38, 'Indian Society for Technical Education', 'Life Member', '2007', 'im02'),
(39, 'Society of Automotive Engineers', 'Student Member', '2011', 'im02'),
(40, 'ISTE', '', '', 'iem01'),
(42, 'ISSS', 'Life Member', '', 'ee03'),
(43, 'IEEE_-PES', 'Senior Member', '', 'ee03'),
(44, 'IEEE Sensor Council', 'Member', '', 'ee03'),
(45, 'IEEE council for super conductors', 'Member', '', 'ee03'),
(46, 'National Institute of Personnel Management', 'Life time Member', '2015', 'mba02'),
(47, 'Indian Institute of Chemical Engineers', 'Life Member', '', 'ch02'),
(48, 'Indian Society for Technical Education', 'Life Member', '', 'ch02'),
(49, 'International Association of Engineers', 'Life Member', '', 'ch02'),
(50, 'ISTE', 'Life memeber ship', '2001', 'mca03'),
(51, 'Computer  Society   India', 'Life member ship ', '2016', 'mca03');

-- --------------------------------------------------------

--
-- Table structure for table `projects_handled`
--

CREATE TABLE `projects_handled` (
  `slNo` int(11) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `ugOrPg` varchar(5) NOT NULL,
  `projectTitle` varchar(100) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects_handled`
--

INSERT INTO `projects_handled` (`slNo`, `batch`, `ugOrPg`, `projectTitle`, `facultyId`) VALUES
(3, '', '', '', 'cse01'),
(4, ' 2018 batch-Shreyanka N, Shubhangi T, Soundharya A', 'UG', 'Smart parking system', 'te07'),
(5, ' 2018 batch- Kavyashree M.S, Niharika S.N ,Chandra', 'UG', 'In-pipe inspection robot', 'te07'),
(6, '2018-K.Lakshmi Sowmya (1MS16LDC03)', 'PG', 'Recursive Algorithm for detection and Tracking of ', 'te07'),
(8, '2018', 'UG', 'Soldier Tracking System using LoRa Technology', 'te10'),
(9, '2017', 'PG', 'SDR IMPLEMENTATION OF QPSK MODEM WITH AWGN', 'te10'),
(10, '2017-18', 'UG', 'Muscle fatigue measurement using EMG', 'te02'),
(11, '2017-18', 'UG', 'Gait analysis for gym applications', 'te02'),
(12, '2017-18', 'UG', 'Real time animation visualization of gait', 'te02'),
(13, '2017', 'Ug', 'Automatic Vehical Number Recognition System', 'ece02'),
(14, '2017-18', 'Ug', 'Extensive Survey Project', 'cv01'),
(15, '2016-18', 'PG', 'Development of Plasma Sprayed NiCrAlY-WC Coating o', 'me01'),
(16, '2015-17', 'PG', 'Fabrication and characterization of AA5083 reinfor', 'me01'),
(17, '2014-16', 'PG', 'A Study on Mechanical Properties and Tribological ', 'me01'),
(18, '2014-16', 'PG', 'Die-Casting Simulation for a Filter Cap using Z-Ca', 'me01'),
(19, '2013-15', 'PG', 'Study of Machinability and Corrosion Behavior of A', 'me01'),
(20, '2013-15', 'pg', 'Design of Apparatus to Address Untreated Emissions', 'me01'),
(21, '2012-14', 'PG', 'New Method of Joining Steel and Carbide using Poro', 'me01'),
(22, '2012-14', 'PG', 'Numerical Simulation and Analysis of reverse Engin', 'me01'),
(23, '2011-13', 'PG', 'Characterization of As-cast and Heat Treated Alumi', 'me01'),
(24, '2010-12', 'PG', 'Investigation of Cutting Forces and Its Effects on', 'me01'),
(25, '2015-2018', 'Pg', 'UNIX auto patching tool', 'mca02'),
(26, '2015-2018', 'Pg', 'Medicine Market', 'mca02'),
(27, '2015-2018', 'Pg', 'Medicine Market - Company', 'mca02'),
(28, '2015-2018', 'Pg', 'Uniform Resource Allocation in Multiple Datacenter', 'mca02'),
(29, '2015-2018', 'Pg', 'Simulation Of Resource Provisioning in Cloud', 'mca02'),
(30, '2009-2011', 'PG', '“Automation of Sequencing Station for Robotic Appl', 'me03'),
(31, '2009-2011', 'PG', 'Asbestos Friction Material used for Clutches', 'me03'),
(32, '2010-2012', 'PG', '“Finite Element Analysis of Thermal Stresses with ', 'me03'),
(33, '2011-2013', 'PG', '“Structural Integrity and Thickness Optimization o', 'me03'),
(34, '2016-2018', 'PG', 'Modelling and analysis of pressure Distribution fo', 'me03'),
(35, '2015-16', 'Ug', 'VIRTUAL WATER TRADE IN TERMS OF FOOD CROPS FROM BE', 'cv03'),
(36, '2017-18', 'Ug', 'EXPERIMENTAL STUDIES ON VERTICAL FARMING USING HYD', 'cv03'),
(37, '2014-2018', 'UG', 'Green synthesis of nanosulphur using orange peel e', 'bt03'),
(38, '2014-2018', 'UG', 'Punica granatum derived nano Zno: DNA protection f', 'bt03'),
(39, '2014-2018', 'UG', 'Comparative study of chemical and Green synthesize', 'bt03'),
(40, '2013-2017', 'UG', 'Investigation of Antibacterial and Cytotoxic Activ', 'bt03'),
(41, '2013-2017', 'UG', 'Comparative study of Curcumin and Nanocurcumin for', 'bt03'),
(42, '2015-2017', 'PG', 'Multifunctionalized Iron Oxide Nanoconjugates and ', 'bt03'),
(43, '2015-2017', 'PG', 'Green Synthesis of Carbon Dots and its Biological ', 'bt03'),
(44, '2018', 'Pg', 'A Study on Determining Demand for Biodiesel in  Ba', 'mba03'),
(45, '2016-18', 'Pg', 'A Study on financial analysis at BHEL', 'mba02'),
(46, '2004', 'Ug', 'Design of test rig for dynamic simulation of an aircraft pneumatic control system at HAL', 'it02'),
(47, '2004', 'Ug', 'PIC based RPM meter', 'it02'),
(48, '2005', 'Ug', 'DC to DC converter', 'it02'),
(49, '2005', 'Ug', 'Low cost PC based Quad Channel Oscilloscope', 'it02'),
(50, '2006', 'Ug', 'Portable Weather Monitoring System', 'it02'),
(51, '2007', 'Ug', 'Automated Raster Scanner', 'it02'),
(52, '2008', 'Ug', 'Instrumentation in Automotive applications', 'it02'),
(53, '2009', 'Ug', 'Auto signaling for Railway Level Crossing with Voice', 'it02'),
(54, '2010', 'Ug', 'Application of sensor network in Industrial automation', 'it02'),
(55, '2010', 'Ug', 'Combat robot', 'it02'),
(56, '2011', 'Ug', 'Smart Home with User Interactive Video Monitoring Burglar Alert system', 'it02'),
(57, '2011', 'Ug', 'Wireless Based Alive Human Detector in Affected Areas / War Fields', 'it02'),
(58, '2013', 'Ug', 'Mine Detection Robot', 'it02'),
(59, '2014', 'Ug', 'PLC based intelligent crusher & conveyor unit', 'it02'),
(60, '2014', 'Ug', 'Light intensity & traffic light control using PLC', 'it02'),
(61, '2015', 'Ug', 'Fuzzy based Level and Temperature Controller', 'it02'),
(62, '2017', 'Ug', 'Virtual Eye: Reading Aid for the blind', 'it02'),
(63, '2018', 'Ug', 'Design of Inspection and Cleaning Robot', 'it02'),
(64, '2017', 'Ug', 'Utilisation of RAP for Base Course', 'cv02'),
(65, '2017', 'Ug', 'Utilisation of RAP for Sub-Base Course', 'cv02'),
(66, '2016', 'Ug', 'Route Optimization and capacity analysis of Silkboard Junction ', 'cv02'),
(67, '2016', 'Ug', 'Measures to Decongest Traffic Flow at Major Intersections of Outer Ring road in Bengaluru', 'cv02'),
(68, '2018', 'UG', 'Design and Fabrication of Morphing Wing System Employing Complaint Mechanism', 'me02'),
(69, '2014', 'UG', 'Fabrication of Compressed Air Powered Vehicle', 'me02'),
(70, '2017', 'Pg', 'Studies on Influences of Machining Parameters by Drilling of Glass Fiber Reinforced Plastic PU Foam ', 'me02'),
(71, '2018', 'Pg', 'Studies on Drilling Parameters of GFRP laminates with Varying Thickness', 'me02'),
(72, '2017', 'Ug', 'Studies on Drilling of composite laminates', 'me02'),
(73, '2012', 'Pg', 'Impact Analysis of GFRP & CFRP Composite Laminates', 'me02'),
(74, '20418', 'Ug', 'Studies on Machining of Hybrid Laminated Composites', 'me02'),
(75, '2018', 'PG', 'Optimization of material management, rate of production & maintenance scheduling for a equipment man', 'im02'),
(76, '2017', 'PG', 'Reduction of lead time of manufacturing using lean six sigma', 'im02'),
(77, '2016', 'PG', 'Plant layout optimization for CS Aerotherm using Industrial Engineering Tools ', 'im02'),
(78, '2015', 'PG', 'Application of Lean Techniques in Excavator Assembly Line.', 'im02'),
(79, '2014', 'PG', 'Improving first pass yield and reducing defect Cost of delivery valve using Six Sigma Methodology', 'im02'),
(80, '2012-2015', 'Pg', 'Power Order Automation Testing', 'mca01'),
(81, '2012-2015', 'Pg', 'Interactive Multimedia PR Communicate with Advance Sharing', 'mca01'),
(82, '2012-2015', 'Pg', 'Lead Generation System', 'mca01'),
(83, '2012-2015', 'Pg', 'Online Enterprise Performance Review Software', 'mca01'),
(84, '2012-2015', 'Pg', 'Village Communic Bureau-E Spade IT', 'mca01'),
(85, '2015-2018', 'Pg', 'WinkWash', 'mca01'),
(86, '2015-2018', 'Pg', 'Smart Agricultural System', 'mca01'),
(87, '2015-2018', 'Pg', 'GPMS Transportal for  Dropout Survey', 'mca01'),
(88, '2015-2018', 'Pg', 'Self - Security for Women ', 'mca01'),
(89, '2015-2018', 'Pg', 'Voice Enabled Bot', 'mca01'),
(90, '2015', 'Pg', 'A study on the effectiveness of health and safety measures implemented in Apollo tyres ltd', 'mba03'),
(91, '2015', 'Ug', 'A Study on LMS implementation with reference to ITC ltd. Bangalore.', 'mba03'),
(92, '2015', 'Pg', 'A study on HR practices and attrition analysis with reference to Vivanta by Taj Bangalore', 'mba03'),
(93, '2015', 'Pg', 'A study on Recruitment and selection process at Minacs Bangalore.', 'mba03'),
(94, '2015', 'Pg', 'A study on wages employment and productivity in retail beverage with reference to Cafecoffeday Banga', 'mba03'),
(95, '2015', 'Pg', 'A study on Quality of work life at with reference to Net connects India Limited.', 'mba03'),
(96, '2015', 'Pg', 'A study on effectiveness of EMAP with reference to BHEL EPD Bangalore.', 'mba03'),
(97, '2015', 'Pg', 'A study on recruitment process procedures involved and employee satisfaction after recruitment. ', 'mba03'),
(98, '2016', 'Pg', 'A study on the effectiveness of health and safety measures implemented in Apollo tyres ltd.', 'mba03'),
(99, '2016', 'Pg', '1.	A Study On Proactive Approach On Safety And Health Practices With Special Reference To Apollo Tyr', 'mba03'),
(100, '2016', 'Pg', '2.	A Study On Need For Learning Management System And To Implement It At Itc Ltd Foods Division Bang', 'mba03'),
(101, '2016', 'Pg', '3.	A Study On Growth And Evolving Issues Of Tourism Industry With Special Reference To Infrastructur', 'mba03'),
(102, '2017', 'Pg', ':  EFFECTIVENESS OF BTL CAMPAIGNS IN IT PARKS,', 'mba03'),
(103, '2017', 'Pg', 'A STUDY ON BUSINESS TO BUSINESS MARKET ANALYSIS OF POWER TECH                           LASER, BANGA', 'mba03'),
(104, '2017', 'Pg', 'A STUDY ON MARKET ANALYSIS AND SALES DEVELOPMENT,', 'mba03'),
(105, '2017', 'Pg', 'A STUDY ON SALES AND DISTRIBUTION STRATEGY,', 'mba03'),
(106, '2017', 'Pg', 'A STUDY ON RETAILER PERCEPTION  ', 'mba03'),
(107, '2017', 'Pg', 'A STUDY ON CUSTOMER EXPERIENCE ANALYSIS AND SCOPE FOR SOCIAL                            MEDIA EXPOSU', 'mba03'),
(108, '2017', 'Pg', 'A STUDY ON EFFECTIVENESS OF ADVERTISING TO RESCUE  24/7                           ROADSIDE ASSISTANC', 'mba03'),
(109, '2017', 'Pg', 'A STUDY ON SELECTED SCHEMES OF LARGE CAP MUTUAL FUND ', 'mba03'),
(110, '2016-18', 'Pg', 'A STUDY ON CUSTOMER PERCEPTION TOWARDS INTERNATIONAL AND LOCAL BRANDS', 'mba01'),
(111, '2016-18', 'Pg', 'A STUDY ON INDIAN LOGISTICS INDUSTRY: OVERVIEW AND CHAL;LENGES', 'mba01'),
(112, '2016-18', 'Pg', 'A STUDY ON CONSUMER PERCEPTION TOWARDS SPORTS BRANDS', 'mba01'),
(113, '2016-18', 'Pg', 'CONSUMER AWARENESS ABOUT PRODUCTS AND SERVICES', 'mba01'),
(114, '2016-18', 'Ug', 'A STUDY ON FINANCIAL PERFORMANCE USING RATIO ANALYSIS AND WORKING CAPITAL MANAGEMENT   ', 'mba01'),
(115, '2016-18', 'Pg', 'A STUDY ON IMPACT OF DEMONITIZATION ON REAL ESATE SECTOR', 'mba01'),
(116, '2016-18', 'Pg', 'A STUDY ON FINANCIAL SOUNDNESS', 'mba01'),
(117, '2016-18', 'Pg', 'A STUDY ON COMPETITION SCENARIO & MARKET POTENTIAL FOR WIDMA GUN DRILLING MACHINE FOR DIE AND MOULD ', 'mba01'),
(118, '2016-18', 'Pg', 'STUDY ON FINANCIAL BOOTSTRAPPING USED  BY SMALL BUSINESSES IN BANGALORE', 'mba01'),
(119, '2016-18', 'Pg', 'ANALYSIS OF STANDARD COSTING USED ', 'mba01'),
(120, '2016-2017', 'Ug', 'Automated Hardware in Loop testing of Advanced Driver', 'ece01'),
(121, '2016-2017', 'Pg', 'Vehicle Theft Detection and Notification with Remote Engine Loading System', 'ece01'),
(122, '2016-18', 'Pg', 'A Study on Capital Appraisal of term  Loan Borrowers.', 'mba02'),
(123, '2016-18', 'Pg', 'A Study on Performance Evaluation of Selected Scheme of Mutual fund', 'mba02'),
(125, '2016-18', 'Pg', 'A study on Credit risk management and recovery system exclusive lending to MSME.', 'mba02'),
(126, '2016-18', 'Pg', 'A Study on Inventory Management', 'mba02'),
(127, '2013-15', 'Pg', 'A Study on Management of Non Performing Assets. ', 'mba02'),
(128, '2013-15', 'Pg', 'A study on Technical Analysis of  Selected Stocks.(', 'mba02'),
(129, '2013-15', 'Pg', 'A Study on Financial Statement Analysis', 'mba02'),
(130, '2012-14', 'Pg', '1.	A Study on Non Performing Assets,SUCO Co op Bank Ltd', 'mba02'),
(131, '', 'Pg', 'Hydro power plant training simulator', 'ee03'),
(132, '', 'Pg', 'PIC based stepper motor speed control and On/OFF control of electrical appliances', 'ee03'),
(133, '', 'Pg', 'Simulation of Piezoelectric Micro Power Generator for MEMS applications', 'ee03'),
(134, '', 'Pg', 'Sensor less Vector Control of Induction Motor Drives', 'ee03'),
(135, '', 'Pg', 'FPGA based control for DC motor', 'ee03'),
(136, '', 'Pg', 'Design and simulation of piezoelectric ultrasonic micro motor', 'ee03'),
(137, '', 'Pg', 'VSC-HVDC  System  for Passive Industrial Drive System', 'ee03'),
(138, '', 'Pg', 'Design and simulation of valve less piezoelectric micro pump', 'ee03'),
(139, '', 'Pg', 'Voltage source converter based back to back HVDC system', 'ee03'),
(140, '', 'Pg', 'Design and simulation of electrostatic micro relay', 'ee03'),
(141, '', 'Pg', 'Capacitor commutated converter for HVDC applications', 'ee03'),
(142, '', 'Pg', 'Design and analysis of sensors for micro pump   ', 'ee03'),
(143, '', 'Pg', 'Dynamic analysis of multi infeed VSC-HVDC systems', 'ee03'),
(144, '', 'Pg', 'Electric Drive circuits for robotic arm', 'ee03'),
(145, '', 'Pg', 'Design of inverter for airborne application', 'ee03'),
(146, '2013-17', 'Ug', 'Manufacture of P-xylene', 'ch01'),
(147, '', 'Pg', 'Robotic arm control and design for 3D printer', 'ee03'),
(148, '', 'Pg', 'Product type testing and automation of AC 800PEC(ABB)', 'ee03'),
(149, '', 'Pg', 'Single phase cascaded multi-level inverter with reduced number of power switches', 'ee03'),
(150, '2013-17', 'Ug', 'Investigation of seashells for removal of heavy metals', 'ch01'),
(151, '', 'Pg', 'MMC for HVDC applications', 'ee03'),
(152, '', 'Pg', 'Controllers for hybrid multi infeed HVDC systems ', 'ee03'),
(153, '', 'Ug', 'Dynamic simulation of superconducting fault current limiter', 'ee03'),
(154, '', 'Ug', 'Dynamic simulation of HVDC transmission system', 'ee03'),
(155, '', 'Ug', 'Design and analysis of piezo electric micro power generator for MEMS', 'ee03'),
(156, '2014-18', 'Ug', 'Modeling of methane generation from kitchen waste', 'ch01'),
(157, '', 'Ug', 'Hybrid Multi-Terminal HVDC (H-MTDC) system simulation', 'ee03'),
(158, '2014-18', 'Ug', 'DEGRADATION OF MORDANT BLACK 11 BY HYDRODYNAMIC CAVITATION', 'ch01'),
(159, '', 'Ug', 'Centralized power line monitoring and control using GSM', 'ee03'),
(160, '', 'Ug', 'Improved controls for hybrid VSC-HVDC systems', 'ee03'),
(161, '', 'Ug', 'Application of superconducting fault current limiter in multi terminal HVDC systems', 'ee03'),
(162, '', 'Ug', 'Multi level inverters for HVDC applications', 'ee03'),
(163, '', 'Ug', 'A study of non-electrolytic capacitor based LED driver circuits', 'ee03'),
(164, '2014-18', 'Ug', 'Manufacturing of PVC', 'ch01'),
(165, '', 'Ug', 'Navigation assistance for the visually impaired', 'ee03'),
(166, '', 'Ug', 'Design and development frame work for smart connected electric bicycle', 'ee03'),
(167, '2014-18', 'Ug', 'Production of Methane by Artificial Landfill System', 'ch01'),
(168, '2015-19', 'Ug', 'Production of Vinyl chloride', 'ch01'),
(169, '2015-19', 'Ug', 'Production of Monoethylene Glycol (MEG)', 'ch01'),
(170, '2015-2018', 'Pg', 'RFID based student attendance system', 'mca03'),
(171, '2015-18', 'Pg', 'RFID based student attendance system', 'mca03'),
(172, '2015-18', 'Pg', 'GRx enhancement for GE MR', 'mca03'),
(173, '2015-18', 'Pg', 'EPMS - Enterprise Performance Management System', 'mca03'),
(174, '2015-18', 'Pg', 'Knowledge Pro', 'mca03'),
(176, '2015-18', 'Pg', 'Methods for Mining frequent Sub-graphs', 'mca03'),
(177, '2014-2017', 'Pg', 'Web Portal & Dashboard for VDT Access Management', 'mca02'),
(178, '2014-2017', 'Pg', 'E-Lab', 'mca02'),
(179, '2014-2017', 'Pg', 'Apartment Visitor Log', 'mca02'),
(180, '2014-2017', 'Pg', 'Scheduler', 'mca02'),
(181, '2014-2017', 'Pg', 'Infrastructure and Security Enhancements', 'mca02'),
(182, '2014-2017', 'Pg', 'Dynamic Resource Provisioning In Heterogeneous Cloud Environment', 'mca02'),
(183, '2012-2015', 'Pg', 'Computerized Answer Script Evaluation System - Admin Process', 'mca02'),
(184, '2012-2015', 'Pg', 'Student Mitra- Elecronic Notice and Alumni Tracker', 'mca02'),
(185, '2012-2015', 'Pg', 'Computerized Answer Script Evaluation System - Evaluation Module', 'mca02'),
(186, '2012.-2015', 'Pg', 'Online Project Evaluation', 'mca02'),
(187, '2012-2015', 'Pg', 'Student Mitra - Online Study & Placement Training', 'mca02'),
(188, '2011-2014', 'Pg', 'Hungree', 'mca02'),
(189, '2011-2014', 'Pg', 'Strategic Business Decision Planner And Forecaster', 'mca02'),
(190, '2011-2014', 'Pg', 'E-commerce Studio Tool with Payment Gateway Integration', 'mca02'),
(191, '2011-2014', 'Pg', 'Universal Online Banker Automation Testing', 'mca02'),
(192, '2011-2014', 'Pg', 'Incorporating IPv6 Functionality to Akamai NOCC Tools', 'mca02'),
(194, '2014-17', 'Pg', '•	Performance Analysis: An Algorithm for Computer Performance Evaluation using QN model ', 'mca03'),
(195, '2014-17', 'Pg', '•	A Methodology to Propose an Optimal Resource Management in Cloud Computing System using Markov-Cha', 'mca03'),
(196, '2014-2017', 'Pg', '•	Effort Estimation of Software Systems during early stages. ', 'mca03'),
(197, '2014-2017', 'Pg', '•	Zone', 'mca03'),
(198, '2013-2016', 'Pg', 'Student Advisory System', 'mca02'),
(199, '2014-17', 'Pg', 'Health Care module Cerner, Bangalore.', 'mca03'),
(200, '2013-2016', 'Pg', 'Deploying & Configuring Multi-tier Web Application on OpenStack cloud using Ansible', 'mca02'),
(201, '2014-17', 'Ug', '•	IOT projects: ?	Smart Irrigation System ?	Smart Water level Control System. ?	Fish tank monitoring', 'mca03'),
(202, '2013-2016', 'Pg', 'Asset Management & ERP solution', 'mca02'),
(203, '2013-2016', 'Pg', 'CDDS (Collaborative Design & Delivery System)', 'mca02'),
(204, '2013-2016', 'Pg', 'GALE Recognize', 'mca02'),
(205, '2013-16', 'Pg', 'Performance Prediction Tool For Software System using SPE Approach', 'mca03'),
(206, '2013-16', 'Pg', 'Hosted flexible point & click designer with  Google Analytics & gateways.', 'mca03'),
(207, '2013-16', 'Pg', 'Online code evaluation.', 'mca03'),
(208, '2013-16', 'Pg', 'Optimal resource allocation in cloud using markov-chain model.', 'mca03'),
(209, '2013-16', 'Pg', 'ASTERISK Restaurant Management System.', 'mca03'),
(210, '1', 'Pg', 'A systematic approach to analysis of Jig Inventory Management ', 'iem01'),
(212, '4', 'Ug', 'Development and Improvement the Composting Process Using DMAIC Methodology at Sheraton Hotel ', 'iem01'),
(213, '4 PPL', 'Ug', 'Integration of 4 TON ASPHALT Compactor into10 TON TANDEM Compactor Assembly Line ', 'iem01'),
(214, '201-15', 'Pg', 'CLEO', 'mca03'),
(215, '2012-15', 'Pg', 'Lean Management System(Planner module)', 'mca03'),
(216, '2012-15', 'Pg', 'Web Based Action Portal ', 'mca03'),
(217, '2012-15', 'Pg', 'Installer Automation for windows and  Unix', 'mca03'),
(218, '2012-15', 'Pg', '•	Cognizion Blogging Application', 'mca03'),
(219, '2011-14', 'Pg', 'Office Management System', 'mca03'),
(220, '2011-14', 'Pg', 'Multi-Client Supported Server Framework', 'mca03'),
(221, '2011-14', 'Pg', 'Online carrier guidance and placement unit', 'mca03'),
(222, '2011-14', 'Pg', 'Social Media Analytics', 'mca03'),
(223, '2011-14', 'Pg', 'AdamSkool', 'mca03'),
(224, 'Harshitha PK', 'Pg', 'Thermal Protection Of Electromotive Exhaust Gas Recirculation Valve', 'ece03'),
(225, 'Deepashree BN', 'Pg', 'CMOS Implementations of Layers in Convolutional Neural Network', 'ece03'),
(226, 'Dhanyashree SV', 'Pg', 'Performance Verification for an RTOS Based Application', 'ece03'),
(227, 'Megha Hallikeri', 'Pg', 'Logic Optimization of the AES S-Box', 'ece03'),
(228, 'Gajendra Munde', 'Pg', 'ASIC Design of MEMS Gyro', 'ece03'),
(229, 'Ramanath Nayak', 'Pg', 'Design and Implementation of High Performance Bus Architecture for SoC Communication', 'ece03'),
(230, 'Priyanka Patil', 'Pg', 'Design of SRAM Cells using TFETs', 'ece03');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `scholarshipName` varchar(100) NOT NULL,
  `scholarshipType` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `slNo` int(11) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE `software` (
  `slNo` int(11) NOT NULL,
  `softwareName` varchar(100) NOT NULL,
  `licenseNumber` varchar(30) NOT NULL,
  `typeOfLicence` varchar(50) NOT NULL,
  `noOfUsers` int(11) NOT NULL,
  `dateOfProcurement` date NOT NULL,
  `modeOfProcurement` varchar(100) NOT NULL,
  `expiryDate` date NOT NULL,
  `vendorName` varchar(100) NOT NULL,
  `costOfSoftware` varchar(30) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`slNo`, `softwareName`, `licenseNumber`, `typeOfLicence`, `noOfUsers`, `dateOfProcurement`, `modeOfProcurement`, `expiryDate`, `vendorName`, `costOfSoftware`, `departmentId`) VALUES
(1, 'uho;i', 'oihj', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', 'oi;h', '', 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `staff_achievement`
--

CREATE TABLE `staff_achievement` (
  `slNo` int(11) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `staffId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_service`
--

CREATE TABLE `staff_service` (
  `slNo` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `dateOfJoining` date NOT NULL,
  `yearsOfExperience` int(11) NOT NULL,
  `promotionDate` date NOT NULL,
  `scaleOfPay` varchar(100) NOT NULL,
  `staffId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_achievement`
--

CREATE TABLE `student_achievement` (
  `slNo` int(11) NOT NULL,
  `studentName` varchar(100) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(200) NOT NULL,
  `award` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_achievement`
--

INSERT INTO `student_achievement` (`slNo`, `studentName`, `eventName`, `date`, `place`, `award`, `category`, `type`, `departmentId`) VALUES
(1, 'm', 'b', '0000-00-00', 'f', 'g', 'h', 'International', 'data');

-- --------------------------------------------------------

--
-- Table structure for table `student_achievement_pg`
--

CREATE TABLE `student_achievement_pg` (
  `slNo` int(11) NOT NULL,
  `studentName` varchar(100) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(200) NOT NULL,
  `award` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_achievement_pg`
--

INSERT INTO `student_achievement_pg` (`slNo`, `studentName`, `eventName`, `date`, `place`, `award`, `category`, `type`, `departmentId`) VALUES
(1, 'm', 'b', '0000-00-00', 'f', 'g', 'h', 'International', 'data');

-- --------------------------------------------------------

--
-- Table structure for table `student_activities`
--

CREATE TABLE `student_activities` (
  `slNo` int(11) NOT NULL,
  `studentName` varchar(100) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `industryOrOrganization` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- Table structure for table `student_activities_pg`
--

CREATE TABLE `student_activities_pg` (
  `slNo` int(11) NOT NULL,
  `usn` VARCHAR(9) unique NOT NULL,
  `studentName` varchar(100) NOT NULL,
  `programName` varchar(50) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `industryOrOrganization` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_conference_publications`
--

CREATE TABLE `student_conference_publications` (
  `slNo` int(11) NOT NULL,
  `authors` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `conferenceType` varchar(50) NOT NULL,
  `organizedBy` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- Table structure for table `student_conference_publications_pg`
--

CREATE TABLE `student_conference_publications_pg` (
  `slNo` int(11) NOT NULL,
  `author` varchar(300) NOT NULL,
  `coauthor` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `conferenceType` varchar(50) NOT NULL,
  `organizedBy` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_journal_publications`
--

CREATE TABLE `student_journal_publications` (
  `slNo` int(11) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `issnPrint` varchar(100) NOT NULL,
  `issnOnline` varchar(100) NOT NULL,
  `journalName` varchar(100) NOT NULL,
  `journalType` varchar(100) NOT NULL,
  `volumeNumber` varchar(50) NOT NULL,
  `pageNumbers` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `issueNumber` varchar(100) NOT NULL,
  `impactFactor` varchar(30) NOT NULL,
  `citation` varchar(100) NOT NULL,
  `doi` varchar(100) NOT NULL,
  `sjrQuartile` varchar(100) NOT NULL,
  -- `hIndex` varchar(50) NOT NULL,
  -- `iIndex` varchar(50) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `indexing` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- Table structure for table `student_journal_publications_pg`
--

CREATE TABLE `student_journal_publications_pg` (
  `slNo` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `coauthor` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `issnPrint` varchar(100) NOT NULL,
  `issnOnline` varchar(100) NOT NULL,
  `journalName` varchar(100) NOT NULL,
  `journalType` varchar(100) NOT NULL,
  `volumeNumber` varchar(50) NOT NULL,
  `pageNumbers` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `issueNumber` varchar(100) NOT NULL,
  `impactFactor` varchar(30) NOT NULL,
  `citation` varchar(100) NOT NULL,
  `doi` varchar(100) NOT NULL,
  `sjrQuartile` varchar(100) NOT NULL,
  -- `hIndex` varchar(50) NOT NULL,
  -- `iIndex` varchar(50) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `indexing` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_publication`
--

CREATE TABLE `student_publication` (
  `slNo` int(11) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `conferenceOrJournal` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_council`
--
ALTER TABLE `academic_council`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `instituteName` (`instituteName`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `administrator_login`
--
ALTER TABLE `administrator_login`
  ADD PRIMARY KEY (`emailId`);

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`year`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `book_chapter`
--
ALTER TABLE `book_chapter`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `competative_exam_details`
--
ALTER TABLE `competative_exam_details`
  ADD PRIMARY KEY (`usn`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `conference_paper`
--
ALTER TABLE `conference_paper`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `consultancy`
--
ALTER TABLE `consultancy`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `courses_handled`
--
ALTER TABLE `courses_handled`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentId`),
  ADD KEY `instituteName` (`instituteName`),
  ADD KEY `departmentId` (`departmentId`),
  ADD KEY `departmentId_2` (`departmentId`),
  ADD KEY `departmentId_3` (`departmentId`);

--
-- Indexes for table `department_industrial__collaboration_mou`
--
ALTER TABLE `department_industrial__collaboration_mou`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `events_organized`
--
ALTER TABLE `events_organized`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyId`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `faculty_conference_symposia`
--
ALTER TABLE `faculty_conference_symposia`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_guest_lecture`
--
ALTER TABLE `faculty_guest_lecture`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_patent`
--
ALTER TABLE `faculty_patent`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_qualification`
--
ALTER TABLE `faculty_qualification`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_research`
--
ALTER TABLE `faculty_research`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_service`
--
ALTER TABLE `faculty_service`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_workshop_fdp`
--
ALTER TABLE `faculty_workshop_fdp`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `instituteName` (`instituteName`);

--
-- Indexes for table `funded_projects`
--
ALTER TABLE `funded_projects`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `governing_body`
--
ALTER TABLE `governing_body`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `instituteName` (`instituteName`);

--
-- Indexes for table `guest_lectures_invited`
--
ALTER TABLE `guest_lectures_invited`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `higher_studies`
--
ALTER TABLE `higher_studies`
  ADD PRIMARY KEY (`usn`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `industrial_collaboration_mou`
--
ALTER TABLE `industrial_collaboration_mou`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `industrial_visit`
--
ALTER TABLE `industrial_visit`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`instituteName`);

--
-- Indexes for table `journal_paper`
--
ALTER TABLE `journal_paper`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `non_teaching_staff`
--
ALTER TABLE `non_teaching_staff`
  ADD PRIMARY KEY (`staffId`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `phd_scholar`
--
ALTER TABLE `phd_scholar`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `placement_details_ug`
--
ALTER TABLE `placement_details_ug`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `professional_activities`
--
ALTER TABLE `professional_activities`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `professional_body_membership`
--
ALTER TABLE `professional_body_membership`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `projects_handled`
--
ALTER TABLE `projects_handled`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `instituteName` (`instituteName`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `staff_achievement`
--
ALTER TABLE `staff_achievement`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `staffId` (`staffId`);

--
-- Indexes for table `staff_service`
--
ALTER TABLE `staff_service`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `staffId` (`staffId`);

--
-- Indexes for table `student_achievement`
--
ALTER TABLE `student_achievement`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `student_activities`
--
ALTER TABLE `student_activities`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `student_conference_publications`
--
ALTER TABLE `student_conference_publications`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `student_journal_publications`
--
ALTER TABLE `student_journal_publications`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `student_publication`
--
ALTER TABLE `student_publication`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_council`
--
ALTER TABLE `academic_council`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `book_chapter`
--
ALTER TABLE `book_chapter`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `conference_paper`
--
ALTER TABLE `conference_paper`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `consultancy`
--
ALTER TABLE `consultancy`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `courses_handled`
--
ALTER TABLE `courses_handled`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `department_industrial__collaboration_mou`
--
ALTER TABLE `department_industrial__collaboration_mou`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events_organized`
--
ALTER TABLE `events_organized`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `faculty_conference_symposia`
--
ALTER TABLE `faculty_conference_symposia`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `faculty_guest_lecture`
--
ALTER TABLE `faculty_guest_lecture`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `faculty_patent`
--
ALTER TABLE `faculty_patent`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `faculty_qualification`
--
ALTER TABLE `faculty_qualification`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `faculty_research`
--
ALTER TABLE `faculty_research`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `faculty_service`
--
ALTER TABLE `faculty_service`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `faculty_workshop_fdp`
--
ALTER TABLE `faculty_workshop_fdp`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `funded_projects`
--
ALTER TABLE `funded_projects`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `governing_body`
--
ALTER TABLE `governing_body`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `guest_lectures_invited`
--
ALTER TABLE `guest_lectures_invited`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hardware`
--
ALTER TABLE `hardware`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `industrial_collaboration_mou`
--
ALTER TABLE `industrial_collaboration_mou`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `industrial_visit`
--
ALTER TABLE `industrial_visit`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `journal_paper`
--
ALTER TABLE `journal_paper`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `phd_scholar`
--
ALTER TABLE `phd_scholar`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `placement_details_ug`
--
ALTER TABLE `placement_details_ug`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `professional_activities`
--
ALTER TABLE `professional_activities`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `professional_body_membership`
--
ALTER TABLE `professional_body_membership`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `projects_handled`
--
ALTER TABLE `projects_handled`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_achievement`
--
ALTER TABLE `staff_achievement`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_service`
--
ALTER TABLE `staff_service`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_achievement`
--
ALTER TABLE `student_achievement`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_activities`
--
ALTER TABLE `student_activities`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_conference_publications`
--
ALTER TABLE `student_conference_publications`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_journal_publications`
--
ALTER TABLE `student_journal_publications`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_publication`
--
ALTER TABLE `student_publication`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_council`
--
ALTER TABLE `academic_council`
  ADD CONSTRAINT `academic_council_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_chapter`
--
ALTER TABLE `book_chapter`
  ADD CONSTRAINT `book_chapter_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `competative_exam_details`
--
ALTER TABLE `competative_exam_details`
  ADD CONSTRAINT `competative_exam_details_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `conference_paper`
--
ALTER TABLE `conference_paper`
  ADD CONSTRAINT `conference_paper_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consultancy`
--
ALTER TABLE `consultancy`
  ADD CONSTRAINT `consultancy_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses_handled`
--
ALTER TABLE `courses_handled`
  ADD CONSTRAINT `courses_handled_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `department_industrial__collaboration_mou`
--
ALTER TABLE `department_industrial__collaboration_mou`
  ADD CONSTRAINT `department_industrial__collaboration_mou_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events_organized`
--
ALTER TABLE `events_organized`
  ADD CONSTRAINT `events_organized_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_conference_symposia`
--
ALTER TABLE `faculty_conference_symposia`
  ADD CONSTRAINT `faculty_conference_symposia_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_guest_lecture`
--
ALTER TABLE `faculty_guest_lecture`
  ADD CONSTRAINT `faculty_guest_lecture_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_patent`
--
ALTER TABLE `faculty_patent`
  ADD CONSTRAINT `faculty_patent_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_qualification`
--
ALTER TABLE `faculty_qualification`
  ADD CONSTRAINT `faculty_qualification_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_research`
--
ALTER TABLE `faculty_research`
  ADD CONSTRAINT `faculty_research_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_service`
--
ALTER TABLE `faculty_service`
  ADD CONSTRAINT `faculty_service_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_workshop_fdp`
--
ALTER TABLE `faculty_workshop_fdp`
  ADD CONSTRAINT `faculty_workshop_fdp_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `finance`
--
ALTER TABLE `finance`
  ADD CONSTRAINT `finance_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `funded_projects`
--
ALTER TABLE `funded_projects`
  ADD CONSTRAINT `funded_projects_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `governing_body`
--
ALTER TABLE `governing_body`
  ADD CONSTRAINT `governing_body_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guest_lectures_invited`
--
ALTER TABLE `guest_lectures_invited`
  ADD CONSTRAINT `guest_lectures_invited_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hardware`
--
ALTER TABLE `hardware`
  ADD CONSTRAINT `hardware_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `higher_studies`
--
ALTER TABLE `higher_studies`
  ADD CONSTRAINT `higher_studies_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `industrial_collaboration_mou`
--
ALTER TABLE `industrial_collaboration_mou`
  ADD CONSTRAINT `industrial_collaboration_mou_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `industrial_visit`
--
ALTER TABLE `industrial_visit`
  ADD CONSTRAINT `industrial_visit_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `journal_paper`
--
ALTER TABLE `journal_paper`
  ADD CONSTRAINT `journal_paper_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `non_teaching_staff`
--
ALTER TABLE `non_teaching_staff`
  ADD CONSTRAINT `non_teaching_staff_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phd_scholar`
--
ALTER TABLE `phd_scholar`
  ADD CONSTRAINT `phd_scholar_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `placement_details_ug`
--
ALTER TABLE `placement_details_ug`
  ADD CONSTRAINT `placement_details_ug_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `professional_activities`
--
ALTER TABLE `professional_activities`
  ADD CONSTRAINT `professional_activities_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `professional_body_membership`
--
ALTER TABLE `professional_body_membership`
  ADD CONSTRAINT `professional_body_membership_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projects_handled`
--
ALTER TABLE `projects_handled`
  ADD CONSTRAINT `projects_handled_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD CONSTRAINT `scholarship_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `software`
--
ALTER TABLE `software`
  ADD CONSTRAINT `software_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_achievement`
--
ALTER TABLE `staff_achievement`
  ADD CONSTRAINT `staff_achievement_ibfk_1` FOREIGN KEY (`staffId`) REFERENCES `non_teaching_staff` (`staffId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_service`
--
ALTER TABLE `staff_service`
  ADD CONSTRAINT `staff_service_ibfk_1` FOREIGN KEY (`staffId`) REFERENCES `non_teaching_staff` (`staffId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_achievement`
--
ALTER TABLE `student_achievement`
  ADD CONSTRAINT `student_achievement_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_activities`
--
ALTER TABLE `student_activities`
  ADD CONSTRAINT `student_activities_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_conference_publications`
--
ALTER TABLE `student_conference_publications`
  ADD CONSTRAINT `student_conference_publications_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_journal_publications`
--
ALTER TABLE `student_journal_publications`
  ADD CONSTRAINT `student_journal_publications_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_publication`
--
ALTER TABLE `student_publication`
  ADD CONSTRAINT `student_publication_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;



ALTER TABLE `faculty`
    ADD `hIndex` VARCHAR(50) NOT NULL,`iIndex` varchar(50) NOT NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
