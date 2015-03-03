-- By: Ranadeep Polavarapu and Roman Lipisiy
-- Prepared for: Dr. Siu-Cheung Chau
-- CP363-A: Database I
-- Tuesday, March 2, 2015

--
-- Database: `inventory_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE IF NOT EXISTS `Address` (
  `address_ID` int(11) NOT NULL,
  `street_name` varchar(80) NOT NULL,
  `city` varchar(80) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state_or_province` varchar(50) NOT NULL,
  `postal_code` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`address_ID`, `street_name`, `city`, `country`, `state_or_province`, `postal_code`) VALUES
(0, 'University', 'Waterloo', 'Canada', 'Ontario', 'N2J 3B9'),
(1, 'King Street', 'Waterloo', 'Canada', 'Ontario', 'N2J 3BC'),
(2, 'Younge Street', 'Toronto', 'Canada', 'Ontario', 'N2J 3L9'),
(3, 'Dundas Street', 'Toronto', 'Canada', 'Ontario', 'N2I 2M9'),
(4, 'King Street', 'Toronto', 'Canada', 'Ontario', 'C2I 2M9'),
(5, 'Queen Street', 'Toronto', 'Canada', 'Ontario', 'L2I 2M9'),
(6, 'Burhamthorpe Street', 'Toronto', 'Canada', 'Ontario', 'A2I 2M9'),
(7, 'Main Street', 'Milton', 'Canada', 'Ontario', 'L9T 0K3'),
(8, 'Millbrook Avenue', 'Milton', 'Canada', 'Ontario', 'L9T 0D1'),
(9, 'Hespeler Street', 'Kitchener', 'Canada', 'Ontario', 'N9T 0D1'),
(10, 'Hurontario Street', 'Mississauga', 'Canada', 'Ontario', 'H9T 0D1'),
(11, 'Hazel Street', 'Waterloo', 'Canada', 'Ontario', 'N2C J4C'),
(12, 'Marshal Street', 'Waterloo', 'Canada', 'Ontario', 'N2C J6C'),
(13, 'balmier street', 'Barrie', 'Canada', 'Ontario', 'M6B J7H'),
(14, 'dor street', 'Milton', 'Canada', 'Ontario', 'A1P Q0K'),
(15, 'sloking street', 'Milton', 'Canada', 'Ontario', 'T7F G2X'),
(16, 'hocussing street', 'Milton', 'Canada', 'Ontario', 'P9F H4D'),
(17, 'chishima street', 'Oakville', 'Canada', 'Ontario', 'B2D O7N'),
(18, 'spinnability street', 'Owen Sound', 'Canada', 'Ontario', 'T0F H9H'),
(19, 'renoticing street', 'Barrie', 'Canada', 'Ontario', 'S2P X8N'),
(20, 'tana street', 'Owen Sound', 'Canada', 'Ontario', 'M6S O5P'),
(21, 'crowfoot street', 'Owen Sound', 'Canada', 'Ontario', 'G3X G0L'),
(22, 'innumerably street', 'Toronto', 'Canada', 'Ontario', 'P2X H0T'),
(23, 'reorchestration street', 'Barrie', 'Canada', 'Ontario', 'N7D Z5H'),
(24, 'counterfoil street', 'Owen Sound', 'Canada', 'Ontario', 'H9C U4H'),
(25, 'screamingly street', 'Owen Sound', 'Canada', 'Ontario', 'Y1S W6Z'),
(26, 'misorganized street', 'Barrie', 'Canada', 'Ontario', 'L8M B4X'),
(27, 'postmastership street', 'Waterloo', 'Canada', 'Ontario', 'T6X C7C'),
(28, 'diazotize street', 'Milton', 'Canada', 'Ontario', 'U1V M3I'),
(29, 'difficultly street', 'Toronto', 'Canada', 'Ontario', 'B5C M9A'),
(30, 'chylophyllously street', 'Waterloo', 'Canada', 'Ontario', 'C8S W1R'),
(31, 'unfissile street', 'Oakville', 'Canada', 'Ontario', 'P3L Z3E'),
(32, 'alkalinising street', 'Owen Sound', 'Canada', 'Ontario', 'J8L A4X'),
(33, 'green street', 'Waterloo', 'Canada', 'Ontario', 'T0R X3E'),
(34, 'incidence street', 'Oakville', 'Canada', 'Ontario', 'H7B K2C'),
(35, 'forcingly street', 'Barrie', 'Canada', 'Ontario', 'T5U C0X'),
(36, 'kalifate street', 'Oakville', 'Canada', 'Ontario', 'L1A M5N'),
(37, 'trinacria street', 'Oakville', 'Canada', 'Ontario', 'B9S J8K'),
(38, 'amygdalic street', 'Owen Sound', 'Canada', 'Ontario', 'D0F Y4O'),
(39, 'unvoting street', 'Oakville', 'Canada', 'Ontario', 'M3U G3I'),
(40, 'evasion street', 'Barrie', 'Canada', 'Ontario', 'Y2D Q2F'),
(41, 'jalousie street', 'Oakville', 'Canada', 'Ontario', 'W0M R4F'),
(42, 'circinately street', 'Milton', 'Canada', 'Ontario', 'Q5Q F9F'),
(43, 'justicoat street', 'Barrie', 'Canada', 'Ontario', 'Q6C W9Z'),
(44, 'unlive street', 'Milton', 'Canada', 'Ontario', 'U3K F8K'),
(45, 'detonative street', 'Toronto', 'Canada', 'Ontario', 'B2U D7V'),
(46, 'unmelodic street', 'Milton', 'Canada', 'Ontario', 'G9S Q8G'),
(47, 'homocentrical street', 'Waterloo', 'Canada', 'Ontario', 'M6R S4U'),
(48, 'cancelling street', 'Owen Sound', 'Canada', 'Ontario', 'K3F E4N'),
(49, 'rampingly street', 'Milton', 'Canada', 'Ontario', 'X2O F5U'),
(50, 'leapfrogger street', 'Barrie', 'Canada', 'Ontario', 'H0H O1X'),
(51, 'inspissated street', 'Waterloo', 'Canada', 'Ontario', 'Y3X C7W'),
(52, 'kaluga street', 'Oakville', 'Canada', 'Ontario', 'D8V N0Z'),
(53, 'tick street', 'Barrie', 'Canada', 'Ontario', 'R3K F6V'),
(54, 'cranwell street', 'Barrie', 'Canada', 'Ontario', 'Y0X N0O'),
(55, 'gering street', 'Barrie', 'Canada', 'Ontario', 'S9F T5R'),
(56, 'overcautious street', 'Milton', 'Canada', 'Ontario', 'Y4R O8G'),
(57, 'moorland street', 'Barrie', 'Canada', 'Ontario', 'H8Y X0L'),
(58, 'diaconicum street', 'Oakville', 'Canada', 'Ontario', 'V3D A9T'),
(59, 'jobbery street', 'Milton', 'Canada', 'Ontario', 'T8I A0K'),
(60, 'anilin street', 'Oakville', 'Canada', 'Ontario', 'I4R L3C'),
(61, 'rheometer street', 'Owen Sound', 'Canada', 'Ontario', 'V1R L4M'),
(62, 'outflew street', 'Toronto', 'Canada', 'Ontario', 'Y3Z E2T'),
(63, 'sulfate street', 'Owen Sound', 'Canada', 'Ontario', 'T6J X6V'),
(64, 'financier street', 'Waterloo', 'Canada', 'Ontario', 'V8D B2M'),
(65, 'denigrating street', 'Waterloo', 'Canada', 'Ontario', 'D7N G9S'),
(66, 'lvov street', 'Barrie', 'Canada', 'Ontario', 'T1Y X9P'),
(67, 'sclerosed street', 'Toronto', 'Canada', 'Ontario', 'E7J Y5P'),
(68, 'bullfighting street', 'Milton', 'Canada', 'Ontario', 'E9N H5N'),
(69, 'anabas street', 'Barrie', 'Canada', 'Ontario', 'O2X R5E'),
(70, 'fuzing street', 'Oakville', 'Canada', 'Ontario', 'T4D R2U'),
(71, 'unlevelled street', 'Waterloo', 'Canada', 'Ontario', 'B2H H9X'),
(72, 'mastless street', 'Milton', 'Canada', 'Ontario', 'X2V O2U'),
(73, 'flora street', 'Owen Sound', 'Canada', 'Ontario', 'N1T G4P'),
(74, 'intestate street', 'Waterloo', 'Canada', 'Ontario', 'X6T O0W'),
(75, 'conducer street', 'Milton', 'Canada', 'Ontario', 'W8C J5R'),
(76, 'whimsicalness street', 'Owen Sound', 'Canada', 'Ontario', 'S1V G8T'),
(77, 'preexpansion street', 'Oakville', 'Canada', 'Ontario', 'Y6Z M0G'),
(78, 'grilse street', 'Waterloo', 'Canada', 'Ontario', 'U0I R9C'),
(79, 'porphyropsin street', 'Oakville', 'Canada', 'Ontario', 'U4R V3G'),
(80, 'hire street', 'Barrie', 'Canada', 'Ontario', 'W3D V6S'),
(81, 'cranmer street', 'Waterloo', 'Canada', 'Ontario', 'V1Z Z0H'),
(82, 'unwagged street', 'Waterloo', 'Canada', 'Ontario', 'N6Q O1V'),
(83, 'negritised street', 'Barrie', 'Canada', 'Ontario', 'A6E Y8I'),
(84, 'hespere street', 'Waterloo', 'Canada', 'Ontario', 'P7N H0H'),
(85, 'inscriber street', 'Oakville', 'Canada', 'Ontario', 'N3N O2A'),
(86, 'bedfast street', 'Oakville', 'Canada', 'Ontario', 'N7D I4P'),
(87, 'pimpernel street', 'Barrie', 'Canada', 'Ontario', 'L2X J4S'),
(88, 'gyor street', 'Owen Sound', 'Canada', 'Ontario', 'N7O W3X'),
(89, 'bestialise street', 'Waterloo', 'Canada', 'Ontario', 'D4V I0B'),
(90, 'coccyx street', 'Owen Sound', 'Canada', 'Ontario', 'Z2T U5F'),
(91, 'sombrous street', 'Milton', 'Canada', 'Ontario', 'S3Y Q6D'),
(92, 'stalagmite street', 'Toronto', 'Canada', 'Ontario', 'O9W K4K'),
(93, 'marble street', 'Toronto', 'Canada', 'Ontario', 'O4S Z3N'),
(94, 'overfar street', 'Oakville', 'Canada', 'Ontario', 'N7Z Y8W'),
(95, 'mithridatised street', 'Owen Sound', 'Canada', 'Ontario', 'W8Q A8L'),
(96, 'snow street', 'Toronto', 'Canada', 'Ontario', 'M2L C3E'),
(97, 'gerd street', 'Toronto', 'Canada', 'Ontario', 'S4S U8V'),
(98, 'cymosely street', 'Owen Sound', 'Canada', 'Ontario', 'H1R D8T'),
(99, 'massawa street', 'Owen Sound', 'Canada', 'Ontario', 'U7M Y0T'),
(100, 'sanguinolent street', 'Barrie', 'Canada', 'Ontario', 'Y6Z D2Q'),
(101, 'hezekiah street', 'Toronto', 'Canada', 'Ontario', 'F2B U7N'),
(102, 'unraised street', 'Toronto', 'Canada', 'Ontario', 'D4M I3B'),
(103, 'pentathlon street', 'Barrie', 'Canada', 'Ontario', 'K1I W1N'),
(104, 'windowpane street', 'Milton', 'Canada', 'Ontario', 'A9N W0K'),
(105, 'reflux street', 'Milton', 'Canada', 'Ontario', 'N8W F4K'),
(106, 'moniker street', 'Barrie', 'Canada', 'Ontario', 'I3T G9C'),
(107, 'snickersnee street', 'Waterloo', 'Canada', 'Ontario', 'K2W V0F'),
(108, 'natal street', 'Milton', 'Canada', 'Ontario', 'X1I C0K'),
(109, 'menshevism street', 'Milton', 'Canada', 'Ontario', 'M7B K6Y'),
(110, 'gaudiness street', 'Toronto', 'Canada', 'Ontario', 'P8T G9V'),
(111, 'dispraise street', 'Milton', 'Canada', 'Ontario', 'C7U K2I'),
(112, 'fritted street', 'Toronto', 'Canada', 'Ontario', 'S6K J5Z'),
(113, 'manichee street', 'Barrie', 'Canada', 'Ontario', 'Y8C K8D'),
(114, 'uremic street', 'Toronto', 'Canada', 'Ontario', 'P2E M0Q'),
(115, 'hordein street', 'Milton', 'Canada', 'Ontario', 'G5Z W1Z'),
(116, 'reheating street', 'Owen Sound', 'Canada', 'Ontario', 'Z2M N4Z'),
(117, 'wellsite street', 'Owen Sound', 'Canada', 'Ontario', 'U5X Z3D'),
(118, 'aforementioned street', 'Milton', 'Canada', 'Ontario', 'T1F O4Y'),
(119, 'necessaries street', 'Barrie', 'Canada', 'Ontario', 'B3S T2F'),
(120, 'prologise street', 'Oakville', 'Canada', 'Ontario', 'Z3A V4G'),
(121, 'hispania street', 'Toronto', 'Canada', 'Ontario', 'T3F L4R'),
(122, 'ignescent street', 'Toronto', 'Canada', 'Ontario', 'Q1Q J1O'),
(123, 'deathday street', 'Toronto', 'Canada', 'Ontario', 'I3M N0T'),
(124, 'stupe street', 'Oakville', 'Canada', 'Ontario', 'L0U S8J'),
(125, 'koncaved street', 'Owen Sound', 'Canada', 'Ontario', 'Q9W P2A'),
(126, 'mulhac street', 'Waterloo', 'Canada', 'Ontario', 'O4K T6B'),
(127, 'midgarth street', 'Waterloo', 'Canada', 'Ontario', 'E3Z G9J'),
(128, 'outburning street', 'Milton', 'Canada', 'Ontario', 'S7X X3M'),
(129, 'bryansk street', 'Milton', 'Canada', 'Ontario', 'U9C X4J'),
(130, 'integrator street', 'Barrie', 'Canada', 'Ontario', 'Q2T W8Q'),
(131, 'erotesis street', 'Owen Sound', 'Canada', 'Ontario', 'X7I E1U'),
(132, 'overgamble street', 'Milton', 'Canada', 'Ontario', 'V0F O3P'),
(133, 'lomax street', 'Waterloo', 'Canada', 'Ontario', 'R7O J0Z'),
(134, 'activizing street', 'Waterloo', 'Canada', 'Ontario', 'G0R C0A'),
(135, 'hunkers street', 'Owen Sound', 'Canada', 'Ontario', 'R3U E9V'),
(136, 'tenebrae street', 'Barrie', 'Canada', 'Ontario', 'Q4K G8F'),
(137, 'wageless street', 'Waterloo', 'Canada', 'Ontario', 'Q6B C1A'),
(138, 'southwestwards street', 'Toronto', 'Canada', 'Ontario', 'U7X F7K'),
(139, 'cytissorus street', 'Waterloo', 'Canada', 'Ontario', 'G1Q Z6V'),
(140, 'gamine street', 'Waterloo', 'Canada', 'Ontario', 'V5Q Q1E'),
(141, 'astable street', 'Owen Sound', 'Canada', 'Ontario', 'R3S S1B'),
(142, 'unmarled street', 'Waterloo', 'Canada', 'Ontario', 'T1M N4D'),
(143, 'swede street', 'Oakville', 'Canada', 'Ontario', 'F3O B5N'),
(144, 'scincoid street', 'Oakville', 'Canada', 'Ontario', 'T2N M2R'),
(145, 'formalness street', 'Owen Sound', 'Canada', 'Ontario', 'B9C Z3F'),
(146, 'interruptive street', 'Oakville', 'Canada', 'Ontario', 'U6F J9Z'),
(147, 'matronhood street', 'Oakville', 'Canada', 'Ontario', 'U9C O8A'),
(148, 'cockishness street', 'Barrie', 'Canada', 'Ontario', 'L0L M3P'),
(149, 'swordless street', 'Waterloo', 'Canada', 'Ontario', 'U8Q G1P'),
(150, 'seller street', 'Waterloo', 'Canada', 'Ontario', 'N3P V0H'),
(151, 'achaian street', 'Owen Sound', 'Canada', 'Ontario', 'W0F T0V'),
(152, 'matozinhos street', 'Waterloo', 'Canada', 'Ontario', 'R7U E4Y'),
(153, 'integrate street', 'Milton', 'Canada', 'Ontario', 'M6X Y7U'),
(154, 'outtraded street', 'Owen Sound', 'Canada', 'Ontario', 'M9G I4D'),
(155, 'kipnis street', 'Milton', 'Canada', 'Ontario', 'P2C Y7E'),
(156, 'warriorlike street', 'Owen Sound', 'Canada', 'Ontario', 'K4D T0V'),
(157, 'unbrutalize street', 'Milton', 'Canada', 'Ontario', 'T4V H4T'),
(158, 'bourges street', 'Milton', 'Canada', 'Ontario', 'Q3B Q5E');

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `category_ID` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`category_ID`, `category_name`) VALUES
(0, 'ELECTRONICS'),
(1, 'PRODUCE'),
(2, 'PHARMACY'),
(3, 'CLOTHING'),
(4, 'TOYS'),
(5, 'FURNITURE'),
(6, 'BOOKS'),
(7, 'HOME APPLIANCES'),
(8, 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE IF NOT EXISTS `Customer` (
  `customer_ID` int(11) NOT NULL,
  `gender` char(1) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address_ID` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`customer_ID`, `gender`, `date_of_birth`, `address_ID`, `first_name`, `last_name`) VALUES
(0, 'M', '1984-09-16', 0, 'John', 'Doe'),
(1, 'F', '1994-05-12', 1, 'Jane', 'Smith'),
(2, 'F', '1994-04-04', 2, 'James', 'Smith'),
(3, 'F', '1994-03-14', 4, 'Alex', 'Doe'),
(4, 'M', '1984-09-02', 5, 'Tiger', 'Woods'),
(5, 'F', '1978-03-25', 6, 'Sam', 'Tiger'),
(6, 'F', '1964-03-02', 7, 'Dwana', 'Bracco'),
(7, 'M', '1945-09-28', 8, 'Olen', 'Key'),
(8, 'M', '1993-04-23', 9, 'Millicent', 'Tran'),
(9, 'F', '1970-03-10', 10, 'Alma', 'Mcgary'),
(10, 'F', '1992-09-25', 11, 'Golden', 'Pettitt'),
(11, 'M', '1968-06-03', 12, 'Basil', 'Flannagan'),
(12, 'M', '1952-06-10', 13, 'Shyla', 'Marcella'),
(13, 'F', '1978-01-30', 14, 'Larraine', 'Im'),
(14, 'F', '1955-05-06', 15, 'Rayna', 'Costello'),
(15, 'M', '1993-02-01', 16, 'Ray', 'Cassette'),
(16, 'F', '0000-00-00', 17, 'Karena', 'Goolsby'),
(17, 'F', '1963-01-06', 18, 'Heidi', 'Maury'),
(18, 'M', '1990-04-26', 19, 'Nakesha', 'Mericle'),
(19, 'M', '1971-12-01', 20, 'Aline', 'Wellman'),
(20, 'M', '1990-08-18', 21, 'Chery', 'Letellier'),
(21, 'M', '1991-05-23', 22, 'Daren', 'Filippone'),
(22, 'M', '1957-02-07', 23, 'Melony', 'Rapozo'),
(23, 'M', '1985-07-08', 24, 'Augustine', 'Gushiken'),
(24, 'F', '1993-06-02', 25, 'Arcelia', 'Mcnichols'),
(25, 'M', '1945-12-16', 26, 'Terrie', 'Rahimi');

-- --------------------------------------------------------

--
-- Table structure for table `DirectPurchase`
--

CREATE TABLE IF NOT EXISTS `DirectPurchase` (
  `transaction_ID` int(11) NOT NULL,
  `purchase_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DirectPurchase`
--

INSERT INTO `DirectPurchase` (`transaction_ID`, `purchase_date`) VALUES
(0, '1994-09-07 00:00:00'),
(1, '1994-07-05 00:00:00'),
(2, '1993-10-09 00:00:00'),
(3, '1978-08-06 00:00:00'),
(4, '1986-11-27 00:00:00'),
(5, '1948-12-19 00:00:00'),
(6, '1989-04-11 00:00:00'),
(7, '0000-00-00 00:00:00'),
(8, '1955-03-09 00:00:00'),
(9, '1958-06-17 00:00:00'),
(10, '1992-04-06 00:00:00'),
(11, '1970-09-18 00:00:00'),
(12, '1990-05-30 00:00:00'),
(13, '1987-06-09 00:00:00'),
(14, '1956-09-05 00:00:00'),
(15, '1945-06-16 00:00:00'),
(16, '1978-05-02 00:00:00'),
(17, '0000-00-00 00:00:00'),
(18, '1980-02-26 00:00:00'),
(19, '1974-12-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE IF NOT EXISTS `Employee` (
  `employee_ID` int(11) NOT NULL,
  `gender` char(1) NOT NULL,
  `start_date` date NOT NULL,
  `salary` double NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `address_ID` int(11) NOT NULL,
  `store_ID` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`employee_ID`, `gender`, `start_date`, `salary`, `is_active`, `address_ID`, `store_ID`, `first_name`, `last_name`) VALUES
(0, 'F', '1953-08-29', 42537.93, 1, 52, 21, 'Bobette', 'Kensey'),
(1, 'M', '1957-06-26', 125950.59, 1, 53, 2, 'Julee', 'Donald'),
(2, 'M', '1981-11-11', 203403.79, 1, 54, 2, 'Hayley', 'Najera'),
(3, 'F', '1970-12-17', 38662.71, 1, 55, 19, 'Alejandrina', 'Mastin'),
(4, 'M', '1946-07-12', 130533.97, 1, 56, 14, 'Douglass', 'Vallejo'),
(5, 'F', '1962-07-03', 117511.48, 1, 57, 16, 'Trey', 'Fomby'),
(6, 'M', '1956-03-24', 171832.04, 1, 58, 9, 'Lucina', 'Wison'),
(7, 'M', '1962-06-30', 150422.74, 1, 59, 4, 'Deetta', 'Hibbler'),
(8, 'M', '1954-04-10', 247706.98, 1, 60, 4, 'Mattie', 'Heffelfinger'),
(9, 'F', '0000-00-00', 197508.08, 1, 61, 1, 'Shaun', 'Viers'),
(10, 'M', '1959-11-25', 60182.3, 1, 62, 1, 'Shonda', 'Tsai'),
(11, 'F', '0000-00-00', 104050, 1, 63, 19, 'Glayds', 'Tawney'),
(12, 'M', '1987-01-08', 210533.92, 1, 64, 7, 'Sanjuanita', 'Charboneau'),
(13, 'M', '1963-03-13', 39787.11, 1, 65, 19, 'Kimiko', 'Penn'),
(14, 'F', '1953-05-03', 142675.37, 1, 66, 10, 'Nelle', 'Ellingwood'),
(15, 'F', '1990-06-30', 124375.1, 1, 67, 21, 'Sharolyn', 'Goe'),
(16, 'M', '1970-06-26', 144433.33, 1, 68, 15, 'Jolene', 'Sigmon'),
(17, 'F', '1971-03-26', 219655.42, 1, 69, 0, 'Candace', 'Sansom'),
(18, 'M', '0000-00-00', 194831.6, 1, 70, 1, 'Jennine', 'Holts'),
(19, 'F', '1970-02-10', 241234.28, 1, 71, 0, 'Tom', 'Messana');

-- --------------------------------------------------------

--
-- Table structure for table `HasPhoneNumber`
--

CREATE TABLE IF NOT EXISTS `HasPhoneNumber` (
  `phone_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `manufacturer_ID` int(11) NOT NULL,
  `vendor_ID` int(11) NOT NULL,
  `employee_ID` int(11) NOT NULL,
  `store_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Item`
--

CREATE TABLE IF NOT EXISTS `Item` (
  `item_ID` int(11) NOT NULL,
  `UPC_code` bigint(20) NOT NULL,
  `is_taxable` tinyint(1) NOT NULL DEFAULT '1',
  `stock_level` int(11) NOT NULL,
  `selling_price` double NOT NULL,
  `discount_percentage` float NOT NULL DEFAULT '0',
  `procured_price` double NOT NULL,
  `category_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Item`
--

INSERT INTO `Item` (`item_ID`, `UPC_code`, `is_taxable`, `stock_level`, `selling_price`, `discount_percentage`, `procured_price`, `category_ID`) VALUES
(0, 851858581, 0, 5597, 1206.31, 0.93, 194.4, 7),
(1, 221320984, 1, 13624, 676.34, 0.19, 1353.7, 0),
(2, 676431232, 1, 8750, 78.28, 0.68, 768.7, 8),
(3, 598382431, 1, 14366, 936.4, 0.54, 1443.52, 0),
(4, 383002625, 0, 13169, 1091.39, 0.22, 1191, 1),
(5, 721355213, 0, 364, 1378.05, 0.29, 878.39, 4),
(6, 666085967, 0, 8449, 920.52, 0.18, 940.38, 6),
(7, 641836155, 0, 10456, 719.06, 0.7, 1335.58, 6),
(8, 547468666, 0, 4293, 181.31, 0.5, 674.17, 1),
(9, 464463949, 1, 5197, 1062.03, 0.06, 369.47, 8),
(10, 144453730, 0, 9697, 495.32, 0.98, 1316.06, 5),
(11, 247605091, 1, 9443, 1201.74, 0.45, 1259.35, 5),
(12, 753021108, 1, 7924, 1364.13, 0.39, 517.82, 4),
(13, 570346258, 1, 1772, 1133.28, 0.29, 36.78, 6),
(14, 651134573, 1, 14949, 105.85, 0.65, 168.19, 3),
(15, 115317623, 0, 12772, 1350.78, 0.61, 1378.05, 8),
(16, 628920613, 0, 1263, 792.7, 0.33, 1241.86, 7),
(17, 761910722, 1, 134, 239.06, 0.69, 842.21, 3),
(18, 529323677, 1, 8798, 14.96, 0.87, 612.37, 3),
(19, 410882792, 1, 3782, 304.55, 0.53, 356.22, 2),
(20, 427226575, 0, 181, 7.3, 0.94, 1116.22, 5),
(21, 226609252, 1, 8034, 1453.78, 0.36, 603.05, 1),
(22, 535284004, 1, 5991, 763.88, 0.34, 1046.72, 8),
(23, 704145020, 0, 5003, 714.22, 0.49, 816.05, 6),
(24, 191194211, 1, 6115, 846.22, 0.33, 678.52, 5),
(25, 357895850, 0, 3815, 715.24, 0.66, 1356.04, 8),
(26, 287193168, 0, 3348, 474.01, 0.49, 759.36, 0),
(27, 493747569, 1, 9745, 612.26, 0.94, 1305.38, 4),
(28, 519808371, 0, 4780, 218.5, 0.66, 518.64, 8),
(29, 466968286, 0, 11222, 491.21, 0.06, 1221.3, 1),
(30, 243843294, 0, 12441, 1065.48, 0.52, 828.27, 3),
(31, 492305680, 1, 14971, 218.07, 0.6, 1113.6, 6),
(32, 170316278, 1, 2292, 650.11, 0.11, 70.56, 7),
(33, 666922253, 1, 11299, 964.4, 0.15, 588.62, 3),
(34, 670908418, 1, 10106, 918.95, 0.42, 202.04, 7),
(35, 345507450, 1, 4984, 1202.48, 0.1, 1431.68, 1),
(36, 221169105, 0, 3445, 755.24, 0.26, 1148.5, 7),
(37, 589384966, 0, 2769, 844.88, 0.37, 933.18, 7),
(38, 866022560, 0, 3263, 1196.49, 0.11, 1092.03, 3),
(39, 266775862, 0, 927, 118.99, 0.55, 550.14, 0),
(40, 614903053, 1, 10535, 998.08, 0.33, 1431.81, 0),
(41, 848784004, 0, 14019, 832.19, 0.26, 500.54, 7),
(42, 528456329, 0, 7437, 679.54, 0.38, 35.46, 6),
(43, 279523576, 0, 14607, 1022.76, 0.43, 581.5, 5),
(44, 177873860, 0, 3279, 803.9, 0.11, 947.01, 5),
(45, 377026556, 0, 12804, 1012.92, 0.07, 868.77, 1),
(46, 846143667, 0, 10724, 1494.66, 0.06, 952.69, 8),
(47, 179379357, 0, 2794, 1311.47, 0.17, 1243.37, 1),
(48, 485030967, 0, 712, 1090.67, 0.75, 606.42, 5),
(49, 561446795, 0, 12451, 431.8, 0.71, 372.61, 0),
(50, 560749186, 0, 6474, 1147.99, 0.31, 543.83, 6),
(51, 308089892, 0, 10398, 608.16, 0.98, 123.8, 3),
(52, 245914128, 0, 9090, 65.26, 0.81, 573.08, 5),
(53, 752195026, 0, 121, 128.79, 0.6, 622.59, 0),
(54, 231532948, 0, 8916, 637.24, 0.27, 788.34, 8),
(55, 254527919, 1, 12043, 328.78, 0.2, 937.37, 0),
(56, 549993220, 1, 10201, 1413.69, 0.04, 968.54, 0),
(57, 355821763, 0, 2217, 1100.21, 0.36, 347.4, 4),
(58, 630779847, 0, 3179, 431.23, 0.44, 322.22, 5),
(59, 809449784, 0, 4933, 1494.65, 0.19, 997.26, 6),
(60, 745514565, 1, 13892, 1346.26, 0.3, 1022.44, 4),
(61, 368059589, 1, 7812, 184.08, 0.52, 855.32, 7),
(62, 802664792, 0, 11713, 509.41, 0.88, 836.65, 0),
(63, 230808970, 0, 6230, 180.27, 0.72, 1077.47, 0),
(64, 653963298, 0, 13531, 1432.02, 0.02, 139.21, 4),
(65, 293086388, 1, 10050, 941.24, 0.82, 563.91, 4),
(66, 884343255, 1, 7066, 913.49, 0.18, 89.15, 8),
(67, 183281725, 1, 6662, 1182.47, 0.84, 419.47, 0),
(68, 339851224, 1, 1362, 206.46, 0.59, 557.69, 2),
(69, 435436093, 0, 461, 401.16, 0.18, 1104.47, 6),
(70, 879738872, 1, 12505, 1079.35, 0.65, 124.78, 5),
(71, 473770676, 1, 10733, 936.8, 0.79, 742.47, 7),
(72, 894589469, 1, 13254, 160.24, 0.75, 1430.88, 0),
(73, 749406649, 0, 10078, 1088.45, 0.05, 1455.45, 8),
(74, 212004094, 1, 6535, 1131.9, 0.89, 1119.85, 4),
(75, 476338174, 0, 11467, 1453.7, 0.11, 703.63, 3),
(76, 840962632, 1, 4893, 944.43, 0.06, 1321.58, 5),
(77, 819591725, 1, 1065, 668.2, 0.56, 1371.51, 4),
(78, 280405120, 0, 8212, 296.2, 0.28, 1361.85, 5),
(79, 329421915, 1, 6526, 703.7, 0.87, 1333, 1),
(80, 681389435, 0, 13503, 1439.2, 0.15, 877.99, 2),
(81, 229175207, 0, 10359, 701.75, 0.01, 1478.6, 0),
(82, 385524430, 1, 14024, 1218.92, 0.7, 234.58, 0),
(83, 729945887, 1, 13337, 964.48, 0.3, 1247.77, 0),
(84, 668813178, 1, 13461, 1076.75, 0.51, 414.15, 6),
(85, 679631877, 1, 4382, 1204.49, 0.01, 129.45, 3),
(86, 248850689, 0, 14621, 505.62, 0.85, 1164.92, 2),
(87, 362004838, 0, 1224, 883.61, 0.64, 1440.06, 2),
(88, 846305410, 0, 13537, 303.27, 0.42, 121.95, 6),
(89, 881860933, 1, 13409, 736.87, 0.46, 192.94, 8),
(90, 332564536, 0, 9985, 824.08, 0.08, 1184.04, 7),
(91, 646183497, 1, 477, 380.65, 0.12, 1063, 2),
(92, 564644061, 1, 3886, 193.23, 0.35, 547.27, 1),
(93, 335951563, 0, 14878, 800.53, 0.63, 58.66, 4),
(94, 458173956, 0, 13978, 1064.71, 0.91, 549.78, 0),
(95, 232434239, 1, 13629, 983.05, 0.11, 686.24, 3),
(96, 789825430, 0, 1805, 76.39, 0.94, 215.42, 4),
(97, 255934345, 1, 9641, 255.48, 0.2, 1070.44, 1),
(98, 406928793, 1, 3096, 177.68, 0.82, 601.23, 8),
(99, 252602347, 1, 10224, 730.34, 0.77, 459.39, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ItemStockedIn`
--

CREATE TABLE IF NOT EXISTS `ItemStockedIn` (
  `item_ID` int(11) NOT NULL,
  `store_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Manufacturer`
--

CREATE TABLE IF NOT EXISTS `Manufacturer` (
  `manufacturer_ID` int(11) NOT NULL,
  `address_ID` int(11) NOT NULL,
  `item_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Manufacturer`
--

INSERT INTO `Manufacturer` (`manufacturer_ID`, `address_ID`, `item_ID`) VALUES
(0, 72, 0),
(1, 73, 1),
(2, 74, 2),
(3, 75, 3),
(4, 76, 4),
(5, 77, 5),
(6, 78, 6),
(7, 79, 7),
(8, 80, 8),
(9, 81, 9),
(10, 82, 10),
(11, 83, 11),
(12, 84, 12),
(13, 85, 13),
(14, 86, 14),
(15, 87, 15),
(16, 88, 16),
(17, 89, 17),
(18, 90, 18),
(19, 91, 19),
(20, 92, 20),
(21, 93, 21),
(22, 94, 22),
(23, 95, 23),
(24, 96, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ManufacturerSellsItem`
--

CREATE TABLE IF NOT EXISTS `ManufacturerSellsItem` (
  `manufacturer_ID` int(11) NOT NULL,
  `vendor_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PartOfTransactionItem`
--

CREATE TABLE IF NOT EXISTS `PartOfTransactionItem` (
  `transaction_ID` int(11) NOT NULL,
  `item_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PhoneNumber`
--

CREATE TABLE IF NOT EXISTS `PhoneNumber` (
  `phone_ID` int(11) NOT NULL,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PhoneNumber`
--

INSERT INTO `PhoneNumber` (`phone_ID`, `phone_number`) VALUES
(0, '6135550145'),
(1, '6138880145'),
(2, '9058824840'),
(3, '9050623283'),
(4, '9051241788'),
(5, '9056123394'),
(6, '9050623283'),
(7, '9058824840'),
(8, '9053036810'),
(9, '9057278725'),
(10, '9051103914'),
(11, '9050774448'),
(12, '9059024791'),
(13, '9058991053'),
(14, '9052252876'),
(15, '9051046108'),
(16, '9053600751'),
(17, '9052424617'),
(18, '9054896280'),
(19, '9050799430'),
(20, '9058606610'),
(21, '9056136962'),
(22, '9053712141'),
(23, '9050790517'),
(24, '9050029972'),
(25, '9050381768'),
(26, '9051552100'),
(27, '9059318203'),
(28, '9052208433'),
(29, '9056890081'),
(30, '9057732139'),
(31, '9057433520'),
(32, '9053087783'),
(33, '9057166412'),
(34, '9051201516'),
(35, '9054438792'),
(36, '9055197040'),
(37, '9058498148'),
(38, '9059144090'),
(39, '9058763041'),
(40, '9058546464'),
(41, '9057238225'),
(42, '9053846339'),
(43, '9054726459'),
(44, '9052657760'),
(45, '9057153871'),
(46, '9058648080'),
(47, '9054289321'),
(48, '9054528327'),
(49, '9059646460'),
(50, '9051595776'),
(51, '9051248286'),
(52, '9058678242'),
(53, '9057670219'),
(54, '9058638851'),
(55, '9051125617'),
(56, '9051814430'),
(57, '9057760862'),
(58, '9051869989'),
(59, '9059685650'),
(60, '9051734955'),
(61, '9057047142'),
(62, '9054869188'),
(63, '9050854122'),
(64, '9059900607'),
(65, '9059232809'),
(66, '9050611422'),
(67, '9056330196'),
(68, '9059386165'),
(69, '9057596905'),
(70, '9059911667'),
(71, '9054055220'),
(72, '9057506312'),
(73, '9057448186'),
(74, '9057574485'),
(75, '9055412966'),
(76, '9050692043'),
(77, '9059474469'),
(78, '9050837651'),
(79, '9053982752'),
(80, '9050803237'),
(81, '9054107846'),
(82, '9051808389'),
(83, '9058668706'),
(84, '9052424973'),
(85, '9057496136'),
(86, '9053874099'),
(87, '9059767243'),
(88, '9050866762'),
(89, '9055422943'),
(90, '9059078695'),
(91, '9052696538'),
(92, '9055608038'),
(93, '9056040154'),
(94, '9059554467'),
(95, '9054185731'),
(96, '9057805251'),
(97, '9056012011'),
(98, '9058589552'),
(99, '9059137151');

-- --------------------------------------------------------

--
-- Table structure for table `Procurer`
--

CREATE TABLE IF NOT EXISTS `Procurer` (
  `employee_ID` int(11) NOT NULL,
  `total_purchases` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Procurer`
--

INSERT INTO `Procurer` (`employee_ID`, `total_purchases`) VALUES
(0, 1902),
(1, 8605),
(2, 8893),
(3, 7060),
(4, 4848),
(5, 7035),
(6, 2142),
(7, 8224),
(8, 394),
(9, 572),
(10, 9584),
(11, 5875);

-- --------------------------------------------------------

--
-- Table structure for table `PurchaseOrder`
--

CREATE TABLE IF NOT EXISTS `PurchaseOrder` (
  `order_ID` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `date_completed` date NOT NULL,
  `employee_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PurchaseOrder`
--

INSERT INTO `PurchaseOrder` (`order_ID`, `order_date`, `date_completed`, `employee_ID`) VALUES
(0, '2015-02-08', '1979-10-03', 1),
(1, '2015-02-23', '1987-04-27', 18),
(2, '1985-07-19', '1972-04-21', 11),
(3, '1971-04-01', '1980-02-21', 3),
(4, '1949-08-11', '1953-10-15', 2),
(5, '1955-12-03', '1977-08-03', 3),
(6, '2015-03-13', '2015-03-18', 15),
(7, '2015-03-28', '2014-12-08', 4),
(8, '1995-08-02', '1953-10-31', 13),
(9, '1976-01-04', '1992-12-11', 11),
(10, '1985-09-14', '1990-02-14', 1),
(11, '1976-11-25', '2014-08-06', 6),
(12, '1979-09-23', '1981-07-16', 0),
(13, '0000-00-00', '1968-12-05', 12),
(14, '1976-09-22', '1953-09-20', 5),
(15, '1956-09-19', '1974-02-23', 8),
(16, '1966-09-25', '1955-05-10', 0),
(17, '1978-10-09', '1952-08-26', 9),
(18, '1985-04-01', '1985-03-06', 12),
(19, '1950-03-11', '1981-04-17', 0),
(20, '1965-03-03', '1992-12-16', 0),
(21, '1977-11-03', '1976-05-20', 2),
(22, '1963-03-18', '1977-04-11', 15),
(23, '1951-12-14', '1950-06-18', 8),
(24, '1988-07-23', '2015-03-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `PurchaseOrderContains`
--

CREATE TABLE IF NOT EXISTS `PurchaseOrderContains` (
  `order_ID` int(11) NOT NULL,
  `item_ID` int(11) NOT NULL,
  `store_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Shipment`
--

CREATE TABLE IF NOT EXISTS `Shipment` (
  `transaction_ID` int(11) NOT NULL,
  `shipment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Shipment`
--

INSERT INTO `Shipment` (`transaction_ID`, `shipment_date`) VALUES
(20, '1955-09-29 00:00:00'),
(21, '1976-05-04 00:00:00'),
(22, '1949-04-23 00:00:00'),
(23, '1969-03-05 00:00:00'),
(24, '0000-00-00 00:00:00'),
(25, '1953-07-19 00:00:00'),
(26, '1962-09-05 00:00:00'),
(27, '1968-11-17 00:00:00'),
(28, '1977-05-21 00:00:00'),
(29, '1977-04-11 00:00:00'),
(30, '1960-09-26 00:00:00'),
(31, '1946-03-07 00:00:00'),
(32, '1985-12-07 00:00:00'),
(33, '0000-00-00 00:00:00'),
(34, '1959-02-12 00:00:00'),
(35, '1995-03-23 00:00:00'),
(36, '1992-05-04 00:00:00'),
(37, '0000-00-00 00:00:00'),
(38, '1970-09-18 00:00:00'),
(39, '1968-10-12 00:00:00'),
(40, '1955-01-20 00:00:00'),
(41, '1961-07-27 00:00:00'),
(42, '0000-00-00 00:00:00'),
(43, '1967-10-21 00:00:00'),
(44, '1984-10-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Store`
--

CREATE TABLE IF NOT EXISTS `Store` (
  `store_ID` int(11) NOT NULL,
  `date_opening` date NOT NULL,
  `total_transaction` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `address_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Store`
--

INSERT INTO `Store` (`store_ID`, `date_opening`, `total_transaction`, `is_active`, `address_ID`) VALUES
(0, '2014-12-15', 3953, 1, 3),
(1, '1974-02-02', 14019, 1, 28),
(2, '1966-10-17', 7533, 1, 29),
(3, '2015-03-04', 14032, 1, 30),
(4, '1987-10-27', 14606, 1, 31),
(5, '1992-05-19', 10787, 1, 32),
(6, '1975-12-03', 12247, 1, 33),
(7, '1980-04-20', 9980, 1, 34),
(8, '1979-01-25', 2846, 1, 35),
(9, '1970-05-28', 7235, 1, 36),
(10, '1948-01-26', 11267, 1, 37),
(11, '2015-03-16', 4560, 1, 38),
(12, '1971-04-06', 9713, 1, 39),
(13, '1978-05-24', 4671, 1, 40),
(14, '1957-04-10', 1006, 1, 41),
(15, '1985-06-28', 9301, 1, 42),
(16, '1974-05-07', 2475, 1, 43),
(17, '1975-08-24', 9612, 1, 44),
(18, '1984-09-04', 10363, 1, 45),
(19, '1987-08-12', 10394, 1, 46),
(20, '1979-02-18', 10977, 1, 47),
(21, '1969-01-09', 11009, 1, 48),
(22, '1963-08-19', 2255, 1, 49),
(23, '1980-12-25', 8854, 1, 50),
(24, '1977-11-15', 9460, 1, 51);

-- --------------------------------------------------------

--
-- Table structure for table `StoreManager`
--

CREATE TABLE IF NOT EXISTS `StoreManager` (
  `employee_ID` int(11) NOT NULL,
  `manager_start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `StoreManager`
--

INSERT INTO `StoreManager` (`employee_ID`, `manager_start_date`) VALUES
(12, '1980-03-29'),
(13, '2014-02-19'),
(14, '1972-11-21'),
(15, '1954-11-16'),
(16, '1981-12-07'),
(17, '1987-01-19'),
(18, '1950-10-07'),
(19, '1975-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `Transaction`
--

CREATE TABLE IF NOT EXISTS `Transaction` (
  `transaction_ID` int(11) NOT NULL,
  `payment_option` char(25) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Transaction`
--

INSERT INTO `Transaction` (`transaction_ID`, `payment_option`, `quantity`) VALUES
(0, 'CREDIT CARD', 12882),
(1, 'DEBIT', 12799),
(2, 'DEBIT', 10756),
(3, 'CASH', 6542),
(4, 'CREDIT CARD', 14502),
(5, 'CASH', 879),
(6, 'CREDIT CARD', 2270),
(7, 'CASH', 12527),
(8, 'DEBIT', 12045),
(9, 'CREDIT CARD', 10971),
(10, 'CREDIT CARD', 8756),
(11, 'CREDIT CARD', 9150),
(12, 'CREDIT CARD', 176),
(13, 'CREDIT CARD', 13500),
(14, 'CASH', 1028),
(15, 'DEBIT', 14105),
(16, 'CREDIT CARD', 14875),
(17, 'DEBIT', 9423),
(18, 'CASH', 5012),
(19, 'DEBIT', 3725),
(20, 'CASH', 1254),
(21, 'DEBIT', 7375),
(22, 'CASH', 9699),
(23, 'DEBIT', 11743),
(24, 'CREDIT CARD', 12530),
(25, 'CASH', 325),
(26, 'DEBIT', 137),
(27, 'CREDIT CARD', 1653),
(28, 'DEBIT', 1725),
(29, 'DEBIT', 7046),
(30, 'CASH', 13210),
(31, 'DEBIT', 5188),
(32, 'CREDIT CARD', 10290),
(33, 'CASH', 5388),
(34, 'CREDIT CARD', 1950),
(35, 'DEBIT', 12214),
(36, 'CREDIT CARD', 2603),
(37, 'DEBIT', 7400),
(38, 'CREDIT CARD', 9713),
(39, 'DEBIT', 1239),
(40, 'CREDIT CARD', 13631),
(41, 'DEBIT', 8321),
(42, 'CASH', 3182),
(43, 'DEBIT', 4187),
(44, 'CREDIT CARD', 8858),
(45, 'CASH', 12822),
(46, 'CREDIT CARD', 10287),
(47, 'CASH', 13974),
(48, 'CREDIT CARD', 10732),
(49, 'CASH', 3522),
(50, 'DEBIT', 10226),
(51, 'CREDIT CARD', 13187),
(52, 'CREDIT CARD', 4155),
(53, 'CASH', 7104),
(54, 'CASH', 14081),
(55, 'DEBIT', 12333),
(56, 'CASH', 9109),
(57, 'CASH', 4193),
(58, 'DEBIT', 11716),
(59, 'DEBIT', 4049),
(60, 'CASH', 4466),
(61, 'CREDIT CARD', 4982),
(62, 'DEBIT', 10087),
(63, 'CREDIT CARD', 12915),
(64, 'CASH', 1428),
(65, 'CREDIT CARD', 14472),
(66, 'CASH', 11447),
(67, 'CASH', 6170),
(68, 'CREDIT CARD', 8951),
(69, 'CREDIT CARD', 1802),
(70, 'CREDIT CARD', 4589),
(71, 'DEBIT', 5813),
(72, 'DEBIT', 14420),
(73, 'CASH', 14801),
(74, 'CREDIT CARD', 2761);

-- --------------------------------------------------------

--
-- Table structure for table `Vendor`
--

CREATE TABLE IF NOT EXISTS `Vendor` (
  `vendor_ID` int(11) NOT NULL,
  `address_ID` int(11) NOT NULL,
  `item_ID` int(11) NOT NULL,
  `store_ID` int(11) NOT NULL,
  `order_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Vendor`
--

INSERT INTO `Vendor` (`vendor_ID`, `address_ID`, `item_ID`, `store_ID`, `order_ID`) VALUES
(0, 97, 0, 17, 1),
(1, 98, 1, 1, 8),
(2, 99, 2, 5, 1),
(3, 100, 3, 5, 18),
(4, 101, 4, 16, 8),
(5, 102, 5, 4, 20),
(6, 103, 6, 20, 20),
(7, 104, 7, 21, 12),
(8, 105, 8, 16, 21),
(9, 106, 9, 10, 7),
(10, 107, 10, 17, 19),
(11, 108, 11, 10, 17),
(12, 109, 12, 11, 20),
(13, 110, 13, 4, 5),
(14, 111, 14, 1, 0),
(15, 112, 15, 7, 13),
(16, 113, 16, 22, 12),
(17, 114, 17, 5, 14),
(18, 115, 18, 22, 11),
(19, 116, 19, 9, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
 ADD PRIMARY KEY (`address_ID`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
 ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
 ADD PRIMARY KEY (`customer_ID`), ADD UNIQUE KEY `address_ID` (`address_ID`);

--
-- Indexes for table `DirectPurchase`
--
ALTER TABLE `DirectPurchase`
 ADD PRIMARY KEY (`transaction_ID`,`purchase_date`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
 ADD PRIMARY KEY (`employee_ID`), ADD UNIQUE KEY `address_ID` (`address_ID`), ADD KEY `store_ID` (`store_ID`);

--
-- Indexes for table `HasPhoneNumber`
--
ALTER TABLE `HasPhoneNumber`
 ADD PRIMARY KEY (`phone_ID`,`customer_ID`,`manufacturer_ID`,`vendor_ID`,`employee_ID`,`store_ID`), ADD KEY `customer_ID` (`customer_ID`), ADD KEY `store_ID` (`store_ID`), ADD KEY `employee_ID` (`employee_ID`), ADD KEY `vendor_ID` (`vendor_ID`), ADD KEY `manufacturer_ID` (`manufacturer_ID`);

--
-- Indexes for table `Item`
--
ALTER TABLE `Item`
 ADD PRIMARY KEY (`item_ID`), ADD KEY `category_ID` (`category_ID`), ADD KEY `category_ID_2` (`category_ID`);

--
-- Indexes for table `ItemStockedIn`
--
ALTER TABLE `ItemStockedIn`
 ADD PRIMARY KEY (`item_ID`,`store_ID`), ADD KEY `store_ID` (`store_ID`);

--
-- Indexes for table `Manufacturer`
--
ALTER TABLE `Manufacturer`
 ADD PRIMARY KEY (`manufacturer_ID`), ADD UNIQUE KEY `address_ID` (`address_ID`), ADD UNIQUE KEY `item_ID` (`item_ID`);

--
-- Indexes for table `ManufacturerSellsItem`
--
ALTER TABLE `ManufacturerSellsItem`
 ADD PRIMARY KEY (`manufacturer_ID`,`vendor_ID`), ADD KEY `vendor_ID` (`vendor_ID`);

--
-- Indexes for table `PartOfTransactionItem`
--
ALTER TABLE `PartOfTransactionItem`
 ADD PRIMARY KEY (`transaction_ID`,`item_ID`), ADD KEY `item_ID` (`item_ID`);

--
-- Indexes for table `PhoneNumber`
--
ALTER TABLE `PhoneNumber`
 ADD PRIMARY KEY (`phone_ID`);

--
-- Indexes for table `Procurer`
--
ALTER TABLE `Procurer`
 ADD PRIMARY KEY (`employee_ID`,`total_purchases`);

--
-- Indexes for table `PurchaseOrder`
--
ALTER TABLE `PurchaseOrder`
 ADD PRIMARY KEY (`order_ID`), ADD KEY `employee_ID` (`employee_ID`);

--
-- Indexes for table `PurchaseOrderContains`
--
ALTER TABLE `PurchaseOrderContains`
 ADD PRIMARY KEY (`order_ID`,`item_ID`,`store_ID`), ADD KEY `item_ID` (`item_ID`), ADD KEY `store_ID` (`store_ID`);

--
-- Indexes for table `Shipment`
--
ALTER TABLE `Shipment`
 ADD PRIMARY KEY (`transaction_ID`,`shipment_date`);

--
-- Indexes for table `Store`
--
ALTER TABLE `Store`
 ADD PRIMARY KEY (`store_ID`), ADD UNIQUE KEY `address_ID` (`address_ID`);

--
-- Indexes for table `StoreManager`
--
ALTER TABLE `StoreManager`
 ADD PRIMARY KEY (`employee_ID`,`manager_start_date`);

--
-- Indexes for table `Transaction`
--
ALTER TABLE `Transaction`
 ADD PRIMARY KEY (`transaction_ID`);

--
-- Indexes for table `Vendor`
--
ALTER TABLE `Vendor`
 ADD PRIMARY KEY (`vendor_ID`), ADD UNIQUE KEY `address_ID` (`address_ID`), ADD UNIQUE KEY `item_ID` (`item_ID`,`store_ID`,`order_ID`), ADD KEY `store_ID` (`store_ID`), ADD KEY `order_ID` (`order_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Customer`
--
ALTER TABLE `Customer`
ADD CONSTRAINT `Customer_ibfk_1` FOREIGN KEY (`address_ID`) REFERENCES `Address` (`address_ID`) ON DELETE CASCADE;

--
-- Constraints for table `DirectPurchase`
--
ALTER TABLE `DirectPurchase`
ADD CONSTRAINT `DirectPurchase_ibfk_1` FOREIGN KEY (`transaction_ID`) REFERENCES `Transaction` (`transaction_ID`) ON DELETE CASCADE;

--
-- Constraints for table `Employee`
--
ALTER TABLE `Employee`
ADD CONSTRAINT `Employee_ibfk_2` FOREIGN KEY (`store_ID`) REFERENCES `Store` (`store_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`address_ID`) REFERENCES `Address` (`address_ID`) ON DELETE CASCADE;

--
-- Constraints for table `HasPhoneNumber`
--
ALTER TABLE `HasPhoneNumber`
ADD CONSTRAINT `HasPhoneNumber_ibfk_6` FOREIGN KEY (`manufacturer_ID`) REFERENCES `Manufacturer` (`manufacturer_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `HasPhoneNumber_ibfk_1` FOREIGN KEY (`phone_ID`) REFERENCES `PhoneNumber` (`phone_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `HasPhoneNumber_ibfk_2` FOREIGN KEY (`customer_ID`) REFERENCES `Customer` (`customer_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `HasPhoneNumber_ibfk_3` FOREIGN KEY (`store_ID`) REFERENCES `Store` (`store_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `HasPhoneNumber_ibfk_4` FOREIGN KEY (`employee_ID`) REFERENCES `Employee` (`employee_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `HasPhoneNumber_ibfk_5` FOREIGN KEY (`vendor_ID`) REFERENCES `Vendor` (`vendor_ID`) ON DELETE CASCADE;

--
-- Constraints for table `Item`
--
ALTER TABLE `Item`
ADD CONSTRAINT `Item_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `Category` (`category_ID`) ON DELETE CASCADE;

--
-- Constraints for table `ItemStockedIn`
--
ALTER TABLE `ItemStockedIn`
ADD CONSTRAINT `ItemStockedIn_ibfk_2` FOREIGN KEY (`store_ID`) REFERENCES `Store` (`store_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `ItemStockedIn_ibfk_1` FOREIGN KEY (`item_ID`) REFERENCES `Item` (`item_ID`) ON DELETE CASCADE;

--
-- Constraints for table `Manufacturer`
--
ALTER TABLE `Manufacturer`
ADD CONSTRAINT `Manufacturer_ibfk_2` FOREIGN KEY (`item_ID`) REFERENCES `Item` (`item_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `Manufacturer_ibfk_1` FOREIGN KEY (`address_ID`) REFERENCES `Address` (`address_ID`) ON DELETE CASCADE;

--
-- Constraints for table `ManufacturerSellsItem`
--
ALTER TABLE `ManufacturerSellsItem`
ADD CONSTRAINT `ManufacturerSellsItem_ibfk_2` FOREIGN KEY (`vendor_ID`) REFERENCES `Vendor` (`vendor_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `ManufacturerSellsItem_ibfk_1` FOREIGN KEY (`manufacturer_ID`) REFERENCES `Manufacturer` (`manufacturer_ID`) ON DELETE CASCADE;

--
-- Constraints for table `PartOfTransactionItem`
--
ALTER TABLE `PartOfTransactionItem`
ADD CONSTRAINT `PartOfTransactionItem_ibfk_2` FOREIGN KEY (`item_ID`) REFERENCES `Item` (`item_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `PartOfTransactionItem_ibfk_1` FOREIGN KEY (`transaction_ID`) REFERENCES `Transaction` (`transaction_ID`) ON DELETE CASCADE;

--
-- Constraints for table `Procurer`
--
ALTER TABLE `Procurer`
ADD CONSTRAINT `Procurer_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `Employee` (`employee_ID`) ON DELETE CASCADE;

--
-- Constraints for table `PurchaseOrder`
--
ALTER TABLE `PurchaseOrder`
ADD CONSTRAINT `PurchaseOrder_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `Employee` (`employee_ID`) ON DELETE CASCADE;

--
-- Constraints for table `PurchaseOrderContains`
--
ALTER TABLE `PurchaseOrderContains`
ADD CONSTRAINT `PurchaseOrderContains_ibfk_3` FOREIGN KEY (`order_ID`) REFERENCES `PurchaseOrder` (`order_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `PurchaseOrderContains_ibfk_1` FOREIGN KEY (`item_ID`) REFERENCES `Item` (`item_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `PurchaseOrderContains_ibfk_2` FOREIGN KEY (`store_ID`) REFERENCES `Store` (`store_ID`) ON DELETE CASCADE;

--
-- Constraints for table `Shipment`
--
ALTER TABLE `Shipment`
ADD CONSTRAINT `Shipment_ibfk_1` FOREIGN KEY (`transaction_ID`) REFERENCES `Transaction` (`transaction_ID`) ON DELETE CASCADE;

--
-- Constraints for table `Store`
--
ALTER TABLE `Store`
ADD CONSTRAINT `Store_ibfk_1` FOREIGN KEY (`address_ID`) REFERENCES `Address` (`address_ID`) ON DELETE CASCADE;

--
-- Constraints for table `StoreManager`
--
ALTER TABLE `StoreManager`
ADD CONSTRAINT `StoreManager_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `Employee` (`employee_ID`) ON DELETE CASCADE;

--
-- Constraints for table `Vendor`
--
ALTER TABLE `Vendor`
ADD CONSTRAINT `Vendor_ibfk_4` FOREIGN KEY (`order_ID`) REFERENCES `PurchaseOrder` (`order_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `Vendor_ibfk_1` FOREIGN KEY (`address_ID`) REFERENCES `Address` (`address_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `Vendor_ibfk_2` FOREIGN KEY (`item_ID`) REFERENCES `Item` (`item_ID`) ON DELETE CASCADE,
ADD CONSTRAINT `Vendor_ibfk_3` FOREIGN KEY (`store_ID`) REFERENCES `Store` (`store_ID`) ON DELETE CASCADE;