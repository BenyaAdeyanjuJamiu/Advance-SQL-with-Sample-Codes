-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 01 jan. 2019 à 20:41
-- Version du serveur :  10.1.22-MariaDB
-- Version de PHP :  7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dsti_sql2019`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_users`
--

CREATE TABLE `admin_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `agents`
--

CREATE TABLE `agents` (
  `agents_id` int(11) NOT NULL,
  `AGENT_CODE` varchar(10) NOT NULL,
  `AGENT_NAME` varchar(20) NOT NULL,
  `WORKING_AREA` varchar(20) NOT NULL,
  `COMMISSION` varchar(10) NOT NULL,
  `PHONE_NO` varchar(100) NOT NULL,
  `COUNTRY` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `agents`
--

INSERT INTO `agents` (`agents_id`, `AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
(1, 'A007', 'Ramasundar   ', 'Bangalore', '0.15', '077-25814763', ''),
(2, 'A003', ' Alex', 'London', '0.13', '075-12458969', ''),
(3, 'A008', 'Alford ', 'New York ', '0.12', '044-25874365', ''),
(4, 'A011', 'Ravi Kumar ', 'Bangalore', '0.15', '077-45625874 ', ''),
(5, 'A010 ', 'Santakumar', 'Chennai ', '0.14', '007-22388644', ''),
(6, 'A012', 'Lucida ', ' San Jose', '0.12', '044-52981425', ''),
(7, 'A005', 'Anderson', 'Brisban', '0.13', '045-21447739', ''),
(8, 'A001 ', 'Subbarao ', 'Bangalore ', '0.14', ' 077-12346674', ''),
(9, ' A002     ', 'Mukesh ', 'Mumbai', '0.11', '029-12358964', ''),
(10, 'A006', 'McDen', 'London', '0.15', '078-22255588', ''),
(11, 'A004', 'Ivan', 'Torento', '0.15', '008-22544166', ''),
(12, 'A009', ' Benjamin', 'Hampshair', '0.11', '008-22536178', '');

-- --------------------------------------------------------

--
-- Structure de la table `Clients`
--

CREATE TABLE `Clients` (
  `clients_id` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `City` varchar(10) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Join_Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Clients`
--

INSERT INTO `Clients` (`clients_id`, `Customer_ID`, `Last_Name`, `First_Name`, `City`, `State`, `Join_Date`) VALUES
(4, 12, 'Jill', 'Dobbs', 'Buffalo', 'NY', 'Nov-15-2001'),
(5, 13, 'Lisa', 'Yamaguchi', 'San Diego', 'CA', 'Nov-15-2001'),
(6, 20, 'Ally', 'Smith', 'Seattle', 'WA', 'Nov-25-2001'),
(7, 67, 'Teyu', 'Lee', 'Cupertino', 'CA', 'Jan-11-2002'),
(9, 2, 'Larry', 'Kerr', 'Seattle', 'WA', 'Oct-15-2001'),
(10, 5, 'Aaron', 'Wallace', 'Denver', 'CO', 'Oct-18-2001'),
(11, 6, 'Jayson', 'Fortran', 'Raleigh', 'NC', 'Oct-24-2001');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `CUST_CODE` varchar(10) NOT NULL,
  `CUST_NAME` varchar(15) NOT NULL,
  `CUST_CITY` varchar(15) NOT NULL,
  `WORKING_AREA` varchar(15) NOT NULL,
  `CUST_COUNTRY` varchar(15) NOT NULL,
  `GRADE` int(4) NOT NULL,
  `OPENING_AMT` int(15) NOT NULL,
  `RECEIVE_AMT` int(15) NOT NULL,
  `PAYMENT_AMT` int(15) NOT NULL,
  `OUTSTANDING_AMT` int(15) NOT NULL,
  `PHONE_NO` varchar(15) NOT NULL,
  `AGENT_CODE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
(1, 'C00013', 'Holmes', 'London', 'London', 'UK', 2, 6000, 5000, 7000, 4000, 'BBBBBBB', 'A003'),
(2, 'C00001', 'Micheal', 'New York', 'New York', 'USA', 2, 3000, 5000, 2000, 4000, 'CCCCCCC', 'A008'),
(3, 'C00020', 'Albert', 'New York', 'New york', 'USA', 3, 5000, 7000, 6000, 6000, 'BBBBBBB', 'A008'),
(4, 'C00025', 'Ravindra', 'Bangalore', 'Bangalore', 'India', 2, 5000, 7000, 6000, 6000, 'AVAVAVA', 'A011'),
(5, 'C00024 ', 'Cook ', 'London', 'London', 'UK', 2, 4000, 9000, 7000, 6000, 'FSDDSDF', 'A006'),
(6, ' C00015 ', 'Stuart ', 'London', 'London', 'UK', 1, 6000, 8000, 3000, 11000, 'GFSGERS', 'A008'),
(7, 'C00002  ', 'Bolt', 'New York', 'New york', 'USA', 3, 5000, 7000, 9000, 3000, 'DDNRDRH ', 'A008'),
(8, 'C00018 ', 'Fleming', 'Brisban ', 'Brisban ', 'Australia', 2, 7000, 7000, 9000, 5000, 'NHBGVFC ', 'A005'),
(9, 'C00021 ', 'Jacks  ', ' Brisban ', ' Brisban ', 'Australia', 1, 7000, 7000, 7000, 7000, 'WERTGDF', 'A005'),
(10, 'C00019 ', 'Yearannaidu', 'Chennai ', 'Chennai ', 'India', 1, 8000, 7000, 7000, 8000, 'ZZZZBFV', 'A010'),
(11, 'C00005 ', 'Sasikant', 'Mumbai', 'Mumbai', 'India', 1, 7000, 11000, 7000, 11000, '147-25896312 ', 'A002'),
(12, 'C00007 ', 'Ramanathan ', 'Chennai', 'Chennai', 'India', 1, 7000, 11000, 9000, 9000, 'GHRDWSD', 'A010'),
(13, 'C00022 ', 'Avinash ', 'Mumbai', 'Mumbai', 'India', 2, 7000, 11000, 9000, 9000, '113-12345678', 'A002'),
(14, 'C00004', 'Winston ', 'Brisban', 'Brisban', 'Australia', 1, 5000, 8000, 7000, 6000, 'AAAAAAA  ', 'A005'),
(15, 'C00023  ', 'Karl', 'London', 'London', 'UK', 0, 4000, 6000, 7000, 3000, 'AAAABAA', 'A006'),
(16, ' C00006  ', ' Shilton  ', 'Torento  ', 'Torento  ', 'Canada ', 1, 10000, 7000, 6000, 11000, ' DDDDDDD   ', 'A004'),
(17, 'C00010   ', 'Charles ', 'Hampshair', 'Hampshair ', 'UK  ', 3, 6000, 4000, 5000, 5000, 'MMMMMMM', ' A009  '),
(18, 'C00017 ', 'Srinivas', 'Bangalore', 'Bangalore', 'India ', 2, 8000, 4000, 3000, 9000, ' AAAAAAB', 'A007'),
(19, 'C00012  ', 'Steven ', 'San Jose  ', 'San Jose  ', 'USA', 1, 5000, 7000, 9000, 3000, 'KRFYGJK ', 'A012'),
(20, 'C00008 ', 'Karolina  ', 'Torento', 'Torento', 'Canada', 1, 7000, 7000, 9000, 3000, 'KRFYGJK', 'A004'),
(21, 'C00003 ', 'Martin ', ' Torento ', ' Torento ', 'Canada ', 2, 8000, 7000, 7000, 8000, 'MJYURFD ', 'A004'),
(22, ' C00009', 'Ramesh   ', 'Mumbai ', 'Mumbai ', 'India', 3, 8000, 7000, 3000, 12000, ' Phone No  ', 'A002'),
(23, 'C00014 ', 'Rangarappa ', 'Bangalore', 'Bangalore', 'India', 2, 8000, 11000, 7000, 12000, 'AAAATGF ', 'A001'),
(24, 'C00016 ', 'Venkatpati ', 'Bangalore', 'Bangalore', 'India', 2, 8000, 11000, 7000, 12000, 'JRTVFDD', 'A007'),
(25, 'C00011 ', 'Sundariya ', 'Chennai', 'Chennai', 'India', 3, 7000, 11000, 7000, 11000, 'PPHGRTS ', 'A010');

-- --------------------------------------------------------

--
-- Structure de la table `Geopgraphy`
--

CREATE TABLE `Geopgraphy` (
  `Geography_id` int(11) NOT NULL,
  `Region_Name` varchar(100) NOT NULL,
  `Store_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Geopgraphy`
--

INSERT INTO `Geopgraphy` (`Geography_id`, `Region_Name`, `Store_Name`) VALUES
(1, 'East', 'Boston'),
(2, 'East', 'New York'),
(3, 'West', 'Lost Angeles'),
(4, 'West', 'San Diego');

-- --------------------------------------------------------

--
-- Structure de la table `Internet_Sales`
--

CREATE TABLE `Internet_Sales` (
  `Internet_Sales_id` int(11) NOT NULL,
  `Txn_Date` text NOT NULL,
  `Sales` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Internet_Sales`
--

INSERT INTO `Internet_Sales` (`Internet_Sales_id`, `Txn_Date`, `Sales`) VALUES
(1, 'Jan-07-1999', 250),
(2, 'Jan-10-1999', 535),
(3, 'Jan-11-1999', 320),
(4, 'Jan-12-1999', 750);

-- --------------------------------------------------------

--
-- Structure de la table `Product_Sales`
--

CREATE TABLE `Product_Sales` (
  `Product_ID` int(11) NOT NULL,
  `Price` int(10) NOT NULL,
  `Units` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Product_Sales`
--

INSERT INTO `Product_Sales` (`Product_ID`, `Price`, `Units`) VALUES
(1, 10, 9),
(2, 15, 4),
(3, 25, 3);

-- --------------------------------------------------------

--
-- Structure de la table `Region_Sales`
--

CREATE TABLE `Region_Sales` (
  `Region_Sales_id` int(11) NOT NULL,
  `Region` varchar(6) NOT NULL,
  `Year` year(4) NOT NULL,
  `Total_Sales` int(10) NOT NULL,
  `Orders` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Region_Sales`
--

INSERT INTO `Region_Sales` (`Region_Sales_id`, `Region`, `Year`, `Total_Sales`, `Orders`) VALUES
(1, 'West', 2013, 1560, 325000),
(2, 'West', 2014, 1820, 380000),
(3, 'North', 2013, 790, 148000),
(4, 'North', 2014, 995, 185000),
(5, 'East ', 2013, 1760, 0),
(6, 'East', 2014, 2220, 450000),
(7, 'South', 2013, 1790, 388000),
(8, 'South', 2014, 1695, 360000);

-- --------------------------------------------------------

--
-- Structure de la table `Sales_Data`
--

CREATE TABLE `Sales_Data` (
  `Sales_Data_id` int(11) NOT NULL,
  `Store_Name` varchar(50) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Sales` float NOT NULL,
  `Txn_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Sales_Data`
--

INSERT INTO `Sales_Data` (`Sales_Data_id`, `Store_Name`, `Product_ID`, `Sales`, `Txn_Date`) VALUES
(1, 'Montain View', 101, 50, '2018-12-25 00:00:00'),
(2, 'Cupertino', 120, 35, '2018-12-25 00:00:00'),
(3, 'Redwood City', 101, 40, '2018-12-25 00:00:00'),
(4, 'Sunnyvale', 80, 60, '2018-12-25 00:00:00'),
(5, 'Redwood City', 120, 20, '2018-12-25 00:00:00'),
(6, 'Sunnyvale', 101, 35, '2018-12-25 00:00:00'),
(7, 'Montain View', 120, 35, '2018-12-26 00:00:00'),
(8, 'Cupertino', 80, 25, '2018-12-26 00:00:00'),
(9, 'Montain View', 101, 30, '2018-12-26 00:00:00'),
(10, 'Cupertino', 120, 40, '2018-12-26 00:00:00'),
(11, 'Redwood City', 101, 40, '2018-12-26 00:00:00'),
(12, 'Sunnyvale', 80, 50, '2018-12-26 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `Store_Information`
--

CREATE TABLE `Store_Information` (
  `store_id` int(11) NOT NULL,
  `Store_Name` varchar(30) NOT NULL,
  `Sales` int(10) NOT NULL,
  `Txn_Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Store_Information`
--

INSERT INTO `Store_Information` (`store_id`, `Store_Name`, `Sales`, `Txn_Date`) VALUES
(3, 'San  Diego', 600, 'Jan-15-1999'),
(6, 'Los Angeles', 1500, 'Jan-05-1999'),
(7, 'Los Angeles', 300, 'Jan-08-1999'),
(8, 'San  Diego', 250, 'Jan-07-1999');

-- --------------------------------------------------------

--
-- Structure de la table `Total_Sales`
--

CREATE TABLE `Total_Sales` (
  `Total_Sales_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Sales` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Total_Sales`
--

INSERT INTO `Total_Sales` (`Total_Sales_id`, `Name`, `Sales`) VALUES
(1, 'John', 10),
(2, 'Jennifer', 15),
(3, 'Stella', 20),
(4, 'Sophia', 40),
(5, 'Greg', 50),
(6, 'Jeff', 20);

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `user_id` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Birth_date` text NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Join_Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Users`
--

INSERT INTO `Users` (`user_id`, `First_Name`, `Last_Name`, `Birth_date`, `Gender`, `Join_Date`) VALUES
(1, 'Benya', 'Jamiu', '2018-12-02', 'M', '2018-12-24'),
(2, 'Adeyanju', 'Shaffiyah', '2018-12-06', 'F', '2018-12-17'),
(3, 'Sophie', 'Lee', 'Jan-05-1960', 'F', 'Apr-05-2015'),
(4, 'Richard', 'Brown', 'Jan-07-1975', 'M', 'Apr-05-2015'),
(5, 'Jamal', 'Santo', 'Oct-08-1983', 'M', 'Apr-09-2015'),
(6, 'Casey', 'Healy', 'Sep-20-1969', 'M', 'Apr-09-2015'),
(7, 'Jill', 'Wilke', 'Nov-20-1979', 'F', 'Apr-15-2015');

-- --------------------------------------------------------

--
-- Structure de la table `User_Sales`
--

CREATE TABLE `User_Sales` (
  `User_Sales_id` int(11) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Birth_date` text NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Join_Date` text NOT NULL,
  `Total_Sales` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `User_Sales`
--

INSERT INTO `User_Sales` (`User_Sales_id`, `First_Name`, `Last_Name`, `Birth_date`, `Gender`, `Join_Date`, `Total_Sales`) VALUES
(1, 'Sophie', 'Lee', 'Jan-05-1960', 'F', 'Apr-05-2015', 500),
(2, 'Richard', 'Brown', 'Jan-07-1975', 'M', 'Apr-05-2015', 200),
(3, 'Jamal', 'Santo', 'Oct-08-1983', 'M', 'Apr-09-2015', 350),
(4, 'Casey', 'Healy', 'Sep-20-1969', 'M', 'Apr-09-2015', 80),
(5, 'Jill', 'Wilkes', 'Nov-20-1979', 'F', 'Apr-15-2015', 210);

-- --------------------------------------------------------

--
-- Structure de la table `USER_TABLE`
--

CREATE TABLE `USER_TABLE` (
  `Userid` int(11) NOT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `First_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `USER_TABLE`
--

INSERT INTO `USER_TABLE` (`Userid`, `Last_Name`, `First_Name`) VALUES
(1, 'Benya', 'Jamiu'),
(2, 'Shaffiyah', 'Hirakawa'),
(3, 'Adeyanju', 'Waheed');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`agents_id`);

--
-- Index pour la table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`clients_id`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Index pour la table `Geopgraphy`
--
ALTER TABLE `Geopgraphy`
  ADD PRIMARY KEY (`Geography_id`);

--
-- Index pour la table `Internet_Sales`
--
ALTER TABLE `Internet_Sales`
  ADD PRIMARY KEY (`Internet_Sales_id`);

--
-- Index pour la table `Product_Sales`
--
ALTER TABLE `Product_Sales`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Index pour la table `Region_Sales`
--
ALTER TABLE `Region_Sales`
  ADD PRIMARY KEY (`Region_Sales_id`);

--
-- Index pour la table `Sales_Data`
--
ALTER TABLE `Sales_Data`
  ADD PRIMARY KEY (`Sales_Data_id`);

--
-- Index pour la table `Store_Information`
--
ALTER TABLE `Store_Information`
  ADD PRIMARY KEY (`store_id`);

--
-- Index pour la table `Total_Sales`
--
ALTER TABLE `Total_Sales`
  ADD PRIMARY KEY (`Total_Sales_id`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `User_Sales`
--
ALTER TABLE `User_Sales`
  ADD PRIMARY KEY (`User_Sales_id`);

--
-- Index pour la table `USER_TABLE`
--
ALTER TABLE `USER_TABLE`
  ADD PRIMARY KEY (`Userid`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `agents`
--
ALTER TABLE `agents`
  MODIFY `agents_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `clients_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `Geopgraphy`
--
ALTER TABLE `Geopgraphy`
  MODIFY `Geography_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Internet_Sales`
--
ALTER TABLE `Internet_Sales`
  MODIFY `Internet_Sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Product_Sales`
--
ALTER TABLE `Product_Sales`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Region_Sales`
--
ALTER TABLE `Region_Sales`
  MODIFY `Region_Sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `Sales_Data`
--
ALTER TABLE `Sales_Data`
  MODIFY `Sales_Data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `Store_Information`
--
ALTER TABLE `Store_Information`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `Total_Sales`
--
ALTER TABLE `Total_Sales`
  MODIFY `Total_Sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `User_Sales`
--
ALTER TABLE `User_Sales`
  MODIFY `User_Sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `USER_TABLE`
--
ALTER TABLE `USER_TABLE`
  MODIFY `Userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
