-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 05:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `gampaha_seats`
--

CREATE TABLE `gampaha_seats` (
  `seat_no` varchar(3) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `receipt_no` varchar(25) DEFAULT NULL,
  `timedate` datetime NOT NULL,
  `lock_unlock` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `latest_movies`
--

CREATE TABLE `latest_movies` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `latest_movies`
--

INSERT INTO `latest_movies` (`id`) VALUES
(1),
(2),
(3),
(4),
(6),
(9);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `img_path` varchar(300) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `duration` varchar(15) DEFAULT NULL,
  `description` varchar(600) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `ticket_price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `img_path`, `release_date`, `genre`, `rating`, `duration`, `description`, `url`, `ticket_price`) VALUES
(1, 'Interstellar', 'https://cdn.filestackcontent.com/PFBh7CdpQMyU1hWwJNQW', '2014-10-26', 'Sci-fi/Adventure', '8.6/10', '2h 49m', 'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.', 'https://www.youtube.com/embed/zSWdZVtXT7E', '500'),
(2, 'The Prestige', 'https://cdn.filestackcontent.com/bpt59ofPRpmnJCWBA3zY', '2006-10-19', 'Drama/Mystery', '8.202', '2h 10m', 'A mysterious story of two magicians whose intense rivalry leads them on a life-long battle for supremacy -- full of obsession, deceit and jealousy with dangerous and deadly consequences.', 'https://www.youtube.com/embed/ELq7V8vkekI', '450'),
(3, 'Edge of tomorrow', 'https://cdn.filestackcontent.com/uhCCi4qYTju6Vbd7ADNu', '2014-05-27', 'Action/Science Fiction', '7.597', '1h 54m', 'Major Bill Cage is an officer who has never seen a day of combat when he is unceremoniously demoted and dropped into combat. Cage is killed within minutes, managing to take an alpha alien down with him. He awakens back at the beginning of the same day and is forced to fight and die again... and again - as physical contact with the alien has thrown him into a time loop.', 'https://www.youtube.com/embed/vw61gCe2oqI', '400'),
(4, 'Man of Steel', 'https://cdn.filestackcontent.com/XDJ4L04jSvaN4924PbTu', '2013-06-12', 'Action/Adventure', '6.6', '2h 23m', 'A young boy learns that he has extraordinary powers and is not of this earth. As a young man, he journeys to discover where he came from and what he was sent here to do. But the hero in him must emerge if he is to save the world from annihilation and become the symbol of hope for all mankind.', 'https://www.youtube.com/embed/KVu3gS7iJu4', '400'),
(5, 'Top Gun: Maverick', 'https://cdn.filestackcontent.com/bsqSlNOkRICkCzP1oXKG', '2022-05-27', 'Action/Drama', '8.331', '2h 11m', 'After more than thirty years of service as one of the Navy?s top aviators, and dodging the advancement in rank that would ground him, Pete ?Maverick? Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen.', 'https://www.youtube.com/embed/qSqVVswa420', '600'),
(6, 'The Dark Knight', 'https://cdn.filestackcontent.com/e2Gd6iCXQ1mihSJpVmRm', '2008-07-14', 'Drama/Action', '8.506', '2h 32m', 'Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.', 'https://www.youtube.com/embed/LDG9bisJEaI', '500'),
(7, 'Terminator 2: Judgment Day', 'https://cdn.filestackcontent.com/f6Fzh7mQOWUI9RTQAgwb', '1991-07-03', 'Action/Thriller', '8.088', '2h 17m', 'Nearly 10 years have passed since Sarah Connor was targeted for termination by a cyborg from the future. Now her son, John, the future leader of the resistance, is the target for a newer, more deadly terminator. Once again, the resistance has managed to send a protector back to attempt to save John and his mother Sarah.', 'https://www.youtube.com/embed/CRRlbK5w8AE', '450'),
(8, 'John Wick: Chapter 2', 'https://cdn.filestackcontent.com/Dx4CM8lTSGqUBksla8Wx', '2017-02-08', 'Action/Thriller', '7.289', '2h 2m', 'John Wick is forced out of retirement by a former associate looking to seize control of a shadowy international assassins? guild. Bound by a blood oath to aid him, Wick travels to Rome and does battle against some of the world?s most dangerous killers.', 'https://www.youtube.com/embed/ChpLV9AMqm4', '400'),
(9, 'The Lord of the Rings: The Return of the King', 'https://cdn.filestackcontent.com/xsX4arFQTwixz4EjmbfX', '2002-12-18', 'Adventure/Fantasy', '8.374', '2h 59m', 'Frodo and Sam are trekking to Mordor to destroy the One Ring of Power while Gimli, Legolas and Aragorn search for the orc-captured Merry and Pippin. All along, nefarious wizard Saruman awaits the Fellowship members at the Orthanc Tower in Isengard.', 'https://www.youtube.com/embed/r5X-hFf6Bwo', '400'),
(10, 'The Lord of the Rings: The Two Towers', 'https://cdn.filestackcontent.com/LxsrUqUQRoSB0NBMDGIZ', '2002-12-18', 'Adventure/Fantasy', '8.374', '2h 59m', 'Frodo and Sam are trekking to Mordor to destroy the One Ring of Power while Gimli, Legolas and Aragorn search for the orc-captured Merry and Pippin. All along, nefarious wizard Saruman awaits the Fellowship members at the Orthanc Tower in Isengard.', 'https://www.youtube.com/embed/hYcw5ksV8YQ', '400'),
(11, 'The Empire Strikes Back', 'https://cdn.filestackcontent.com/tZwPXtgOQwiSvUiLm3Gw', '1980-05-20', 'Adventure/Action', '8.394', '2h 4m', 'The epic saga continues as Luke Skywalker, in hopes of defeating the evil Galactic Empire, learns the ways of the Jedi from aging master Yoda. But Darth Vader is more determined than ever to capture Luke. Meanwhile, rebel leader Princess Leia, cocky Han Solo, Chewbacca, and droids C-3PO and R2-D2 are thrown into various stages of capture, betrayal and despair.', 'https://www.youtube.com/embed/urhsYepFqs0', '600'),
(12, 'Revenge of the Sith', 'https://cdn.filestackcontent.com/fJoTwXhnRdysoFurV37h', '2005-05-17', 'Adventure/Action', '7.394', '2h 20m', 'The evil Darth Sidious enacts his final plan for unlimited power -- and the heroic Jedi Anakin Skywalker must choose a side.', 'https://www.youtube.com/embed/5UnjrG_N8hU', '400'),
(13, 'Saving Private Ryan', 'https://cdn.filestackcontent.com/htVNzNnTCq68iySO9CLQ', '1998-07-24', 'Drama/History', '8.202', '2h 49m', 'As U.S. troops storm the beaches of Normandy, three brothers lie dead on the battlefield, with a fourth trapped behind enemy lines. Ranger captain John Miller and seven men are tasked with penetrating German-held territory and bringing the boy home.', 'https://www.youtube.com/embed/S1Qj_AVu2pA', '400'),
(14, '1917', 'https://cdn.filestackcontent.com/i3QYMvNzSyifX4277RHa', '2019-12-25', 'War/Drama', '7.982', '1h 59m', 'At the height of the First World War, two young British soldiers must cross enemy territory and deliver a message that will stop a deadly attack on hundreds of soldiers.', 'https://www.youtube.com/embed/YqNYrYUiMfg', '450'),
(39, 'Oppenheimer', 'https://cdn.filestackcontent.com/nP66NqTdQ7K2RY7yKiG0', '2023-07-19', 'Drama/History', '0.0', '2h 50m', 'The story of J. Robert Oppenheimer?s role in the development of the atomic bomb during World War II.', 'https://www.youtube.com/embed/bK6ldnjE3Y0', '800'),
(40, 'John Wick: Chapter 4', 'https://cdn.filestackcontent.com/N4XgoqSZaHHjGNodt7gH', '2023-03-22', 'Action/Thriller', '0.0', '2h 10m', 'With the price on his head ever increasing, John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.', 'https://www.youtube.com/embed/27EF723ZDmI', '800');

-- --------------------------------------------------------

--
-- Table structure for table `negombo_seats`
--

CREATE TABLE `negombo_seats` (
  `seat_no` varchar(3) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `receipt_no` varchar(25) DEFAULT NULL,
  `timedate` datetime NOT NULL,
  `lock_unlock` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `now_showing`
--

CREATE TABLE `now_showing` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `now_showing`
--

INSERT INTO `now_showing` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14);

-- --------------------------------------------------------

--
-- Table structure for table `theatre_details`
--

CREATE TABLE `theatre_details` (
  `tname` varchar(50) NOT NULL,
  `s_perrow` int(11) NOT NULL,
  `s_divide` int(11) NOT NULL,
  `s_tot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theatre_details`
--

INSERT INTO `theatre_details` (`tname`, `s_perrow`, `s_divide`, `s_tot`) VALUES
('Gampaha', 16, 4, 144),
('Negombo', 8, 2, 80),
('Wellawatte', 10, 2, 50);

-- --------------------------------------------------------

--
-- Table structure for table `theatre_timeschedule`
--

CREATE TABLE `theatre_timeschedule` (
  `theatre_name` varchar(50) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `time` time NOT NULL,
  `dates` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theatre_timeschedule`
--

INSERT INTO `theatre_timeschedule` (`theatre_name`, `movie_name`, `time`, `dates`) VALUES
('Gampaha', '1917', '08:00:00', '2023-01-31'),
('Gampaha', '1917', '08:00:00', '2023-02-02'),
('Gampaha', '1917', '08:00:00', '2023-02-03'),
('Gampaha', '1917', '08:00:00', '2023-02-04'),
('Gampaha', '1917', '08:00:00', '2023-02-05'),
('Gampaha', '1917', '10:30:00', '2023-01-31'),
('Gampaha', '1917', '10:30:00', '2023-02-02'),
('Gampaha', '1917', '10:30:00', '2023-02-03'),
('Gampaha', '1917', '10:30:00', '2023-02-04'),
('Gampaha', '1917', '10:30:00', '2023-02-05'),
('Gampaha', '1917', '13:30:00', '2023-01-31'),
('Gampaha', '1917', '13:30:00', '2023-02-02'),
('Gampaha', '1917', '13:30:00', '2023-02-03'),
('Gampaha', '1917', '13:30:00', '2023-02-04'),
('Gampaha', '1917', '13:30:00', '2023-02-05'),
('Gampaha', '1917', '18:30:00', '2023-01-31'),
('Gampaha', '1917', '18:30:00', '2023-02-02'),
('Gampaha', '1917', '18:30:00', '2023-02-03'),
('Gampaha', '1917', '18:30:00', '2023-02-04'),
('Gampaha', '1917', '18:30:00', '2023-02-05'),
('Gampaha', 'Edge of tomorrow', '08:00:00', '2023-01-31'),
('Gampaha', 'Edge of tomorrow', '08:00:00', '2023-02-02'),
('Gampaha', 'Edge of tomorrow', '08:00:00', '2023-02-03'),
('Gampaha', 'Edge of tomorrow', '08:00:00', '2023-02-04'),
('Gampaha', 'Edge of tomorrow', '08:00:00', '2023-02-05'),
('Gampaha', 'Edge of tomorrow', '10:30:00', '2023-01-31'),
('Gampaha', 'Edge of tomorrow', '10:30:00', '2023-02-02'),
('Gampaha', 'Edge of tomorrow', '10:30:00', '2023-02-03'),
('Gampaha', 'Edge of tomorrow', '10:30:00', '2023-02-04'),
('Gampaha', 'Edge of tomorrow', '10:30:00', '2023-02-05'),
('Gampaha', 'Edge of tomorrow', '13:30:00', '2023-01-31'),
('Gampaha', 'Edge of tomorrow', '13:30:00', '2023-02-02'),
('Gampaha', 'Edge of tomorrow', '13:30:00', '2023-02-03'),
('Gampaha', 'Edge of tomorrow', '13:30:00', '2023-02-04'),
('Gampaha', 'Edge of tomorrow', '13:30:00', '2023-02-05'),
('Gampaha', 'Edge of tomorrow', '18:30:00', '2023-01-31'),
('Gampaha', 'Edge of tomorrow', '18:30:00', '2023-02-02'),
('Gampaha', 'Edge of tomorrow', '18:30:00', '2023-02-03'),
('Gampaha', 'Edge of tomorrow', '18:30:00', '2023-02-04'),
('Gampaha', 'Edge of tomorrow', '18:30:00', '2023-02-05'),
('Gampaha', 'Insterstellar', '08:00:00', '2023-01-31'),
('Gampaha', 'Insterstellar', '08:00:00', '2023-02-02'),
('Gampaha', 'Insterstellar', '08:00:00', '2023-02-03'),
('Gampaha', 'Insterstellar', '08:00:00', '2023-02-04'),
('Gampaha', 'Insterstellar', '08:00:00', '2023-02-05'),
('Gampaha', 'Insterstellar', '10:30:00', '2023-01-31'),
('Gampaha', 'Insterstellar', '10:30:00', '2023-02-02'),
('Gampaha', 'Insterstellar', '10:30:00', '2023-02-03'),
('Gampaha', 'Insterstellar', '10:30:00', '2023-02-04'),
('Gampaha', 'Insterstellar', '10:30:00', '2023-02-05'),
('Gampaha', 'Insterstellar', '13:30:00', '2023-01-31'),
('Gampaha', 'Insterstellar', '13:30:00', '2023-02-02'),
('Gampaha', 'Insterstellar', '13:30:00', '2023-02-03'),
('Gampaha', 'Insterstellar', '13:30:00', '2023-02-04'),
('Gampaha', 'Insterstellar', '13:30:00', '2023-02-05'),
('Gampaha', 'Insterstellar', '18:30:00', '2023-01-31'),
('Gampaha', 'Insterstellar', '18:30:00', '2023-02-02'),
('Gampaha', 'Insterstellar', '18:30:00', '2023-02-03'),
('Gampaha', 'Insterstellar', '18:30:00', '2023-02-04'),
('Gampaha', 'Insterstellar', '18:30:00', '2023-02-05'),
('Gampaha', 'John Wick: Chapter 2', '08:00:00', '2023-01-31'),
('Gampaha', 'John Wick: Chapter 2', '08:00:00', '2023-02-02'),
('Gampaha', 'John Wick: Chapter 2', '08:00:00', '2023-02-03'),
('Gampaha', 'John Wick: Chapter 2', '08:00:00', '2023-02-04'),
('Gampaha', 'John Wick: Chapter 2', '08:00:00', '2023-02-05'),
('Gampaha', 'John Wick: Chapter 2', '10:30:00', '2023-01-31'),
('Gampaha', 'John Wick: Chapter 2', '10:30:00', '2023-02-02'),
('Gampaha', 'John Wick: Chapter 2', '10:30:00', '2023-02-03'),
('Gampaha', 'John Wick: Chapter 2', '10:30:00', '2023-02-04'),
('Gampaha', 'John Wick: Chapter 2', '10:30:00', '2023-02-05'),
('Gampaha', 'John Wick: Chapter 2', '13:30:00', '2023-01-31'),
('Gampaha', 'John Wick: Chapter 2', '13:30:00', '2023-02-02'),
('Gampaha', 'John Wick: Chapter 2', '13:30:00', '2023-02-03'),
('Gampaha', 'John Wick: Chapter 2', '13:30:00', '2023-02-04'),
('Gampaha', 'John Wick: Chapter 2', '13:30:00', '2023-02-05'),
('Gampaha', 'John Wick: Chapter 2', '18:30:00', '2023-01-31'),
('Gampaha', 'John Wick: Chapter 2', '18:30:00', '2023-02-02'),
('Gampaha', 'John Wick: Chapter 2', '18:30:00', '2023-02-03'),
('Gampaha', 'John Wick: Chapter 2', '18:30:00', '2023-02-04'),
('Gampaha', 'John Wick: Chapter 2', '18:30:00', '2023-02-05'),
('Gampaha', 'John Wick: Chapter 4', '08:00:00', '2023-01-31'),
('Gampaha', 'John Wick: Chapter 4', '08:00:00', '2023-02-02'),
('Gampaha', 'John Wick: Chapter 4', '08:00:00', '2023-02-03'),
('Gampaha', 'John Wick: Chapter 4', '08:00:00', '2023-02-04'),
('Gampaha', 'John Wick: Chapter 4', '08:00:00', '2023-02-05'),
('Gampaha', 'John Wick: Chapter 4', '10:30:00', '2023-01-31'),
('Gampaha', 'John Wick: Chapter 4', '10:30:00', '2023-02-02'),
('Gampaha', 'John Wick: Chapter 4', '10:30:00', '2023-02-03'),
('Gampaha', 'John Wick: Chapter 4', '10:30:00', '2023-02-04'),
('Gampaha', 'John Wick: Chapter 4', '10:30:00', '2023-02-05'),
('Gampaha', 'John Wick: Chapter 4', '13:30:00', '2023-01-31'),
('Gampaha', 'John Wick: Chapter 4', '13:30:00', '2023-02-02'),
('Gampaha', 'John Wick: Chapter 4', '13:30:00', '2023-02-03'),
('Gampaha', 'John Wick: Chapter 4', '13:30:00', '2023-02-04'),
('Gampaha', 'John Wick: Chapter 4', '13:30:00', '2023-02-05'),
('Gampaha', 'John Wick: Chapter 4', '18:30:00', '2023-01-31'),
('Gampaha', 'John Wick: Chapter 4', '18:30:00', '2023-02-02'),
('Gampaha', 'John Wick: Chapter 4', '18:30:00', '2023-02-03'),
('Gampaha', 'John Wick: Chapter 4', '18:30:00', '2023-02-04'),
('Gampaha', 'John Wick: Chapter 4', '18:30:00', '2023-02-05'),
('Gampaha', 'Man of Steel', '08:00:00', '2023-01-31'),
('Gampaha', 'Man of Steel', '08:00:00', '2023-02-02'),
('Gampaha', 'Man of Steel', '08:00:00', '2023-02-03'),
('Gampaha', 'Man of Steel', '08:00:00', '2023-02-04'),
('Gampaha', 'Man of Steel', '08:00:00', '2023-02-05'),
('Gampaha', 'Man of Steel', '10:30:00', '2023-01-31'),
('Gampaha', 'Man of Steel', '10:30:00', '2023-02-02'),
('Gampaha', 'Man of Steel', '10:30:00', '2023-02-03'),
('Gampaha', 'Man of Steel', '10:30:00', '2023-02-04'),
('Gampaha', 'Man of Steel', '10:30:00', '2023-02-05'),
('Gampaha', 'Man of Steel', '13:30:00', '2023-01-31'),
('Gampaha', 'Man of Steel', '13:30:00', '2023-02-02'),
('Gampaha', 'Man of Steel', '13:30:00', '2023-02-03'),
('Gampaha', 'Man of Steel', '13:30:00', '2023-02-04'),
('Gampaha', 'Man of Steel', '13:30:00', '2023-02-05'),
('Gampaha', 'Man of Steel', '18:30:00', '2023-01-31'),
('Gampaha', 'Man of Steel', '18:30:00', '2023-02-02'),
('Gampaha', 'Man of Steel', '18:30:00', '2023-02-03'),
('Gampaha', 'Man of Steel', '18:30:00', '2023-02-04'),
('Gampaha', 'Man of Steel', '18:30:00', '2023-02-05'),
('Gampaha', 'Oppenheimer', '08:00:00', '2023-01-31'),
('Gampaha', 'Oppenheimer', '08:00:00', '2023-02-02'),
('Gampaha', 'Oppenheimer', '08:00:00', '2023-02-03'),
('Gampaha', 'Oppenheimer', '08:00:00', '2023-02-04'),
('Gampaha', 'Oppenheimer', '08:00:00', '2023-02-05'),
('Gampaha', 'Oppenheimer', '10:30:00', '2023-01-31'),
('Gampaha', 'Oppenheimer', '10:30:00', '2023-02-02'),
('Gampaha', 'Oppenheimer', '10:30:00', '2023-02-03'),
('Gampaha', 'Oppenheimer', '10:30:00', '2023-02-04'),
('Gampaha', 'Oppenheimer', '10:30:00', '2023-02-05'),
('Gampaha', 'Oppenheimer', '13:30:00', '2023-01-31'),
('Gampaha', 'Oppenheimer', '13:30:00', '2023-02-02'),
('Gampaha', 'Oppenheimer', '13:30:00', '2023-02-03'),
('Gampaha', 'Oppenheimer', '13:30:00', '2023-02-04'),
('Gampaha', 'Oppenheimer', '13:30:00', '2023-02-05'),
('Gampaha', 'Oppenheimer', '18:30:00', '2023-01-31'),
('Gampaha', 'Oppenheimer', '18:30:00', '2023-02-02'),
('Gampaha', 'Oppenheimer', '18:30:00', '2023-02-03'),
('Gampaha', 'Oppenheimer', '18:30:00', '2023-02-04'),
('Gampaha', 'Oppenheimer', '18:30:00', '2023-02-05'),
('Gampaha', 'Revenge of the Sith', '08:00:00', '2023-01-31'),
('Gampaha', 'Revenge of the Sith', '08:00:00', '2023-02-02'),
('Gampaha', 'Revenge of the Sith', '08:00:00', '2023-02-03'),
('Gampaha', 'Revenge of the Sith', '08:00:00', '2023-02-04'),
('Gampaha', 'Revenge of the Sith', '08:00:00', '2023-02-05'),
('Gampaha', 'Revenge of the Sith', '10:30:00', '2023-01-31'),
('Gampaha', 'Revenge of the Sith', '10:30:00', '2023-02-02'),
('Gampaha', 'Revenge of the Sith', '10:30:00', '2023-02-03'),
('Gampaha', 'Revenge of the Sith', '10:30:00', '2023-02-04'),
('Gampaha', 'Revenge of the Sith', '10:30:00', '2023-02-05'),
('Gampaha', 'Revenge of the Sith', '13:30:00', '2023-01-31'),
('Gampaha', 'Revenge of the Sith', '13:30:00', '2023-02-02'),
('Gampaha', 'Revenge of the Sith', '13:30:00', '2023-02-03'),
('Gampaha', 'Revenge of the Sith', '13:30:00', '2023-02-04'),
('Gampaha', 'Revenge of the Sith', '13:30:00', '2023-02-05'),
('Gampaha', 'Revenge of the Sith', '18:30:00', '2023-01-31'),
('Gampaha', 'Revenge of the Sith', '18:30:00', '2023-02-02'),
('Gampaha', 'Revenge of the Sith', '18:30:00', '2023-02-03'),
('Gampaha', 'Revenge of the Sith', '18:30:00', '2023-02-04'),
('Gampaha', 'Revenge of the Sith', '18:30:00', '2023-02-05'),
('Gampaha', 'Saving Private Ryan', '08:00:00', '2023-01-31'),
('Gampaha', 'Saving Private Ryan', '08:00:00', '2023-02-02'),
('Gampaha', 'Saving Private Ryan', '08:00:00', '2023-02-03'),
('Gampaha', 'Saving Private Ryan', '08:00:00', '2023-02-04'),
('Gampaha', 'Saving Private Ryan', '08:00:00', '2023-02-05'),
('Gampaha', 'Saving Private Ryan', '10:30:00', '2023-01-31'),
('Gampaha', 'Saving Private Ryan', '10:30:00', '2023-02-02'),
('Gampaha', 'Saving Private Ryan', '10:30:00', '2023-02-03'),
('Gampaha', 'Saving Private Ryan', '10:30:00', '2023-02-04'),
('Gampaha', 'Saving Private Ryan', '10:30:00', '2023-02-05'),
('Gampaha', 'Saving Private Ryan', '13:30:00', '2023-01-31'),
('Gampaha', 'Saving Private Ryan', '13:30:00', '2023-02-02'),
('Gampaha', 'Saving Private Ryan', '13:30:00', '2023-02-03'),
('Gampaha', 'Saving Private Ryan', '13:30:00', '2023-02-04'),
('Gampaha', 'Saving Private Ryan', '13:30:00', '2023-02-05'),
('Gampaha', 'Saving Private Ryan', '18:30:00', '2023-01-31'),
('Gampaha', 'Saving Private Ryan', '18:30:00', '2023-02-02'),
('Gampaha', 'Saving Private Ryan', '18:30:00', '2023-02-03'),
('Gampaha', 'Saving Private Ryan', '18:30:00', '2023-02-04'),
('Gampaha', 'Saving Private Ryan', '18:30:00', '2023-02-05'),
('Gampaha', 'Terminator 2: Judgment Day', '08:00:00', '2023-01-31'),
('Gampaha', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-02'),
('Gampaha', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-03'),
('Gampaha', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-04'),
('Gampaha', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-05'),
('Gampaha', 'Terminator 2: Judgment Day', '10:30:00', '2023-01-31'),
('Gampaha', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-02'),
('Gampaha', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-03'),
('Gampaha', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-04'),
('Gampaha', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-05'),
('Gampaha', 'Terminator 2: Judgment Day', '13:30:00', '2023-01-31'),
('Gampaha', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-02'),
('Gampaha', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-03'),
('Gampaha', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-04'),
('Gampaha', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-05'),
('Gampaha', 'Terminator 2: Judgment Day', '18:30:00', '2023-01-31'),
('Gampaha', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-02'),
('Gampaha', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-03'),
('Gampaha', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-04'),
('Gampaha', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-05'),
('Gampaha', 'The Dark Knight', '08:00:00', '2023-01-31'),
('Gampaha', 'The Dark Knight', '08:00:00', '2023-02-02'),
('Gampaha', 'The Dark Knight', '08:00:00', '2023-02-03'),
('Gampaha', 'The Dark Knight', '08:00:00', '2023-02-04'),
('Gampaha', 'The Dark Knight', '08:00:00', '2023-02-05'),
('Gampaha', 'The Dark Knight', '10:30:00', '2023-01-31'),
('Gampaha', 'The Dark Knight', '10:30:00', '2023-02-02'),
('Gampaha', 'The Dark Knight', '10:30:00', '2023-02-03'),
('Gampaha', 'The Dark Knight', '10:30:00', '2023-02-04'),
('Gampaha', 'The Dark Knight', '10:30:00', '2023-02-05'),
('Gampaha', 'The Dark Knight', '13:30:00', '2023-01-31'),
('Gampaha', 'The Dark Knight', '13:30:00', '2023-02-02'),
('Gampaha', 'The Dark Knight', '13:30:00', '2023-02-03'),
('Gampaha', 'The Dark Knight', '13:30:00', '2023-02-04'),
('Gampaha', 'The Dark Knight', '13:30:00', '2023-02-05'),
('Gampaha', 'The Dark Knight', '18:30:00', '2023-01-31'),
('Gampaha', 'The Dark Knight', '18:30:00', '2023-02-02'),
('Gampaha', 'The Dark Knight', '18:30:00', '2023-02-03'),
('Gampaha', 'The Dark Knight', '18:30:00', '2023-02-04'),
('Gampaha', 'The Dark Knight', '18:30:00', '2023-02-05'),
('Gampaha', 'The Empire Strikes Back', '08:00:00', '2023-01-31'),
('Gampaha', 'The Empire Strikes Back', '08:00:00', '2023-02-02'),
('Gampaha', 'The Empire Strikes Back', '08:00:00', '2023-02-03'),
('Gampaha', 'The Empire Strikes Back', '08:00:00', '2023-02-04'),
('Gampaha', 'The Empire Strikes Back', '08:00:00', '2023-02-05'),
('Gampaha', 'The Empire Strikes Back', '10:30:00', '2023-01-31'),
('Gampaha', 'The Empire Strikes Back', '10:30:00', '2023-02-02'),
('Gampaha', 'The Empire Strikes Back', '10:30:00', '2023-02-03'),
('Gampaha', 'The Empire Strikes Back', '10:30:00', '2023-02-04'),
('Gampaha', 'The Empire Strikes Back', '10:30:00', '2023-02-05'),
('Gampaha', 'The Empire Strikes Back', '13:30:00', '2023-01-31'),
('Gampaha', 'The Empire Strikes Back', '13:30:00', '2023-02-02'),
('Gampaha', 'The Empire Strikes Back', '13:30:00', '2023-02-03'),
('Gampaha', 'The Empire Strikes Back', '13:30:00', '2023-02-04'),
('Gampaha', 'The Empire Strikes Back', '13:30:00', '2023-02-05'),
('Gampaha', 'The Empire Strikes Back', '18:30:00', '2023-01-31'),
('Gampaha', 'The Empire Strikes Back', '18:30:00', '2023-02-02'),
('Gampaha', 'The Empire Strikes Back', '18:30:00', '2023-02-03'),
('Gampaha', 'The Empire Strikes Back', '18:30:00', '2023-02-04'),
('Gampaha', 'The Empire Strikes Back', '18:30:00', '2023-02-05'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-01-31'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-02'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-03'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-04'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-05'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-01-31'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-02'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-03'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-04'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-05'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-01-31'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-02'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-03'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-04'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-05'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-01-31'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-02'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-03'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-04'),
('Gampaha', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-05'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-01-31'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-02'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-03'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-04'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-05'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-01-31'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-02'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-03'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-04'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-05'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-01-31'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-02'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-03'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-04'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-05'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-01-31'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-02'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-03'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-04'),
('Gampaha', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-05'),
('Gampaha', 'The Prestige', '08:00:00', '2023-01-31'),
('Gampaha', 'The Prestige', '08:00:00', '2023-02-02'),
('Gampaha', 'The Prestige', '08:00:00', '2023-02-03'),
('Gampaha', 'The Prestige', '08:00:00', '2023-02-04'),
('Gampaha', 'The Prestige', '08:00:00', '2023-02-05'),
('Gampaha', 'The Prestige', '10:30:00', '2023-01-31'),
('Gampaha', 'The Prestige', '10:30:00', '2023-02-02'),
('Gampaha', 'The Prestige', '10:30:00', '2023-02-03'),
('Gampaha', 'The Prestige', '10:30:00', '2023-02-04'),
('Gampaha', 'The Prestige', '10:30:00', '2023-02-05'),
('Gampaha', 'The Prestige', '13:30:00', '2023-01-31'),
('Gampaha', 'The Prestige', '13:30:00', '2023-02-02'),
('Gampaha', 'The Prestige', '13:30:00', '2023-02-03'),
('Gampaha', 'The Prestige', '13:30:00', '2023-02-04'),
('Gampaha', 'The Prestige', '13:30:00', '2023-02-05'),
('Gampaha', 'The Prestige', '18:30:00', '2023-01-31'),
('Gampaha', 'The Prestige', '18:30:00', '2023-02-02'),
('Gampaha', 'The Prestige', '18:30:00', '2023-02-03'),
('Gampaha', 'The Prestige', '18:30:00', '2023-02-04'),
('Gampaha', 'The Prestige', '18:30:00', '2023-02-05'),
('Gampaha', 'Top Gun: Maverick', '08:00:00', '2023-01-31'),
('Gampaha', 'Top Gun: Maverick', '08:00:00', '2023-02-02'),
('Gampaha', 'Top Gun: Maverick', '08:00:00', '2023-02-03'),
('Gampaha', 'Top Gun: Maverick', '08:00:00', '2023-02-04'),
('Gampaha', 'Top Gun: Maverick', '08:00:00', '2023-02-05'),
('Gampaha', 'Top Gun: Maverick', '10:30:00', '2023-01-31'),
('Gampaha', 'Top Gun: Maverick', '10:30:00', '2023-02-02'),
('Gampaha', 'Top Gun: Maverick', '10:30:00', '2023-02-03'),
('Gampaha', 'Top Gun: Maverick', '10:30:00', '2023-02-04'),
('Gampaha', 'Top Gun: Maverick', '10:30:00', '2023-02-05'),
('Gampaha', 'Top Gun: Maverick', '13:30:00', '2023-01-31'),
('Gampaha', 'Top Gun: Maverick', '13:30:00', '2023-02-02'),
('Gampaha', 'Top Gun: Maverick', '13:30:00', '2023-02-03'),
('Gampaha', 'Top Gun: Maverick', '13:30:00', '2023-02-04'),
('Gampaha', 'Top Gun: Maverick', '13:30:00', '2023-02-05'),
('Gampaha', 'Top Gun: Maverick', '18:30:00', '2023-01-31'),
('Gampaha', 'Top Gun: Maverick', '18:30:00', '2023-02-02'),
('Gampaha', 'Top Gun: Maverick', '18:30:00', '2023-02-03'),
('Gampaha', 'Top Gun: Maverick', '18:30:00', '2023-02-04'),
('Gampaha', 'Top Gun: Maverick', '18:30:00', '2023-02-05'),
('Negombo', '1917', '08:00:00', '2023-01-31'),
('Negombo', '1917', '08:00:00', '2023-02-02'),
('Negombo', '1917', '08:00:00', '2023-02-03'),
('Negombo', '1917', '08:00:00', '2023-02-04'),
('Negombo', '1917', '08:00:00', '2023-02-05'),
('Negombo', '1917', '10:30:00', '2023-01-31'),
('Negombo', '1917', '10:30:00', '2023-02-02'),
('Negombo', '1917', '10:30:00', '2023-02-03'),
('Negombo', '1917', '10:30:00', '2023-02-04'),
('Negombo', '1917', '10:30:00', '2023-02-05'),
('Negombo', '1917', '13:30:00', '2023-01-31'),
('Negombo', '1917', '13:30:00', '2023-02-02'),
('Negombo', '1917', '13:30:00', '2023-02-03'),
('Negombo', '1917', '13:30:00', '2023-02-04'),
('Negombo', '1917', '13:30:00', '2023-02-05'),
('Negombo', '1917', '18:30:00', '2023-01-31'),
('Negombo', '1917', '18:30:00', '2023-02-02'),
('Negombo', '1917', '18:30:00', '2023-02-03'),
('Negombo', '1917', '18:30:00', '2023-02-04'),
('Negombo', '1917', '18:30:00', '2023-02-05'),
('Negombo', 'Edge of tomorrow', '08:00:00', '2023-01-31'),
('Negombo', 'Edge of tomorrow', '08:00:00', '2023-02-02'),
('Negombo', 'Edge of tomorrow', '08:00:00', '2023-02-03'),
('Negombo', 'Edge of tomorrow', '08:00:00', '2023-02-04'),
('Negombo', 'Edge of tomorrow', '08:00:00', '2023-02-05'),
('Negombo', 'Edge of tomorrow', '10:30:00', '2023-01-31'),
('Negombo', 'Edge of tomorrow', '10:30:00', '2023-02-02'),
('Negombo', 'Edge of tomorrow', '10:30:00', '2023-02-03'),
('Negombo', 'Edge of tomorrow', '10:30:00', '2023-02-04'),
('Negombo', 'Edge of tomorrow', '10:30:00', '2023-02-05'),
('Negombo', 'Edge of tomorrow', '13:30:00', '2023-01-31'),
('Negombo', 'Edge of tomorrow', '13:30:00', '2023-02-02'),
('Negombo', 'Edge of tomorrow', '13:30:00', '2023-02-03'),
('Negombo', 'Edge of tomorrow', '13:30:00', '2023-02-04'),
('Negombo', 'Edge of tomorrow', '13:30:00', '2023-02-05'),
('Negombo', 'Edge of tomorrow', '18:30:00', '2023-01-31'),
('Negombo', 'Edge of tomorrow', '18:30:00', '2023-02-02'),
('Negombo', 'Edge of tomorrow', '18:30:00', '2023-02-03'),
('Negombo', 'Edge of tomorrow', '18:30:00', '2023-02-04'),
('Negombo', 'Edge of tomorrow', '18:30:00', '2023-02-05'),
('Negombo', 'Insterstellar', '08:00:00', '2023-01-31'),
('Negombo', 'Insterstellar', '08:00:00', '2023-02-02'),
('Negombo', 'Insterstellar', '08:00:00', '2023-02-03'),
('Negombo', 'Insterstellar', '08:00:00', '2023-02-04'),
('Negombo', 'Insterstellar', '08:00:00', '2023-02-05'),
('Negombo', 'Insterstellar', '10:30:00', '2023-01-31'),
('Negombo', 'Insterstellar', '10:30:00', '2023-02-02'),
('Negombo', 'Insterstellar', '10:30:00', '2023-02-03'),
('Negombo', 'Insterstellar', '10:30:00', '2023-02-04'),
('Negombo', 'Insterstellar', '10:30:00', '2023-02-05'),
('Negombo', 'Insterstellar', '13:30:00', '2023-01-31'),
('Negombo', 'Insterstellar', '13:30:00', '2023-02-02'),
('Negombo', 'Insterstellar', '13:30:00', '2023-02-03'),
('Negombo', 'Insterstellar', '13:30:00', '2023-02-04'),
('Negombo', 'Insterstellar', '13:30:00', '2023-02-05'),
('Negombo', 'Insterstellar', '18:30:00', '2023-01-31'),
('Negombo', 'Insterstellar', '18:30:00', '2023-02-02'),
('Negombo', 'Insterstellar', '18:30:00', '2023-02-03'),
('Negombo', 'Insterstellar', '18:30:00', '2023-02-04'),
('Negombo', 'Insterstellar', '18:30:00', '2023-02-05'),
('Negombo', 'John Wick: Chapter 2', '08:00:00', '2023-01-31'),
('Negombo', 'John Wick: Chapter 2', '08:00:00', '2023-02-02'),
('Negombo', 'John Wick: Chapter 2', '08:00:00', '2023-02-03'),
('Negombo', 'John Wick: Chapter 2', '08:00:00', '2023-02-04'),
('Negombo', 'John Wick: Chapter 2', '08:00:00', '2023-02-05'),
('Negombo', 'John Wick: Chapter 2', '10:30:00', '2023-01-31'),
('Negombo', 'John Wick: Chapter 2', '10:30:00', '2023-02-02'),
('Negombo', 'John Wick: Chapter 2', '10:30:00', '2023-02-03'),
('Negombo', 'John Wick: Chapter 2', '10:30:00', '2023-02-04'),
('Negombo', 'John Wick: Chapter 2', '10:30:00', '2023-02-05'),
('Negombo', 'John Wick: Chapter 2', '13:30:00', '2023-01-31'),
('Negombo', 'John Wick: Chapter 2', '13:30:00', '2023-02-02'),
('Negombo', 'John Wick: Chapter 2', '13:30:00', '2023-02-03'),
('Negombo', 'John Wick: Chapter 2', '13:30:00', '2023-02-04'),
('Negombo', 'John Wick: Chapter 2', '13:30:00', '2023-02-05'),
('Negombo', 'John Wick: Chapter 2', '18:30:00', '2023-01-31'),
('Negombo', 'John Wick: Chapter 2', '18:30:00', '2023-02-02'),
('Negombo', 'John Wick: Chapter 2', '18:30:00', '2023-02-03'),
('Negombo', 'John Wick: Chapter 2', '18:30:00', '2023-02-04'),
('Negombo', 'John Wick: Chapter 2', '18:30:00', '2023-02-05'),
('Negombo', 'John Wick: Chapter 4', '08:00:00', '2023-01-31'),
('Negombo', 'John Wick: Chapter 4', '08:00:00', '2023-02-02'),
('Negombo', 'John Wick: Chapter 4', '08:00:00', '2023-02-03'),
('Negombo', 'John Wick: Chapter 4', '08:00:00', '2023-02-04'),
('Negombo', 'John Wick: Chapter 4', '08:00:00', '2023-02-05'),
('Negombo', 'John Wick: Chapter 4', '10:30:00', '2023-01-31'),
('Negombo', 'John Wick: Chapter 4', '10:30:00', '2023-02-02'),
('Negombo', 'John Wick: Chapter 4', '10:30:00', '2023-02-03'),
('Negombo', 'John Wick: Chapter 4', '10:30:00', '2023-02-04'),
('Negombo', 'John Wick: Chapter 4', '10:30:00', '2023-02-05'),
('Negombo', 'John Wick: Chapter 4', '13:30:00', '2023-01-31'),
('Negombo', 'John Wick: Chapter 4', '13:30:00', '2023-02-02'),
('Negombo', 'John Wick: Chapter 4', '13:30:00', '2023-02-03'),
('Negombo', 'John Wick: Chapter 4', '13:30:00', '2023-02-04'),
('Negombo', 'John Wick: Chapter 4', '13:30:00', '2023-02-05'),
('Negombo', 'John Wick: Chapter 4', '18:30:00', '2023-01-31'),
('Negombo', 'John Wick: Chapter 4', '18:30:00', '2023-02-02'),
('Negombo', 'John Wick: Chapter 4', '18:30:00', '2023-02-03'),
('Negombo', 'John Wick: Chapter 4', '18:30:00', '2023-02-04'),
('Negombo', 'John Wick: Chapter 4', '18:30:00', '2023-02-05'),
('Negombo', 'Man of Steel', '08:00:00', '2023-01-31'),
('Negombo', 'Man of Steel', '08:00:00', '2023-02-02'),
('Negombo', 'Man of Steel', '08:00:00', '2023-02-03'),
('Negombo', 'Man of Steel', '08:00:00', '2023-02-04'),
('Negombo', 'Man of Steel', '08:00:00', '2023-02-05'),
('Negombo', 'Man of Steel', '10:30:00', '2023-01-31'),
('Negombo', 'Man of Steel', '10:30:00', '2023-02-02'),
('Negombo', 'Man of Steel', '10:30:00', '2023-02-03'),
('Negombo', 'Man of Steel', '10:30:00', '2023-02-04'),
('Negombo', 'Man of Steel', '10:30:00', '2023-02-05'),
('Negombo', 'Man of Steel', '13:30:00', '2023-01-31'),
('Negombo', 'Man of Steel', '13:30:00', '2023-02-02'),
('Negombo', 'Man of Steel', '13:30:00', '2023-02-03'),
('Negombo', 'Man of Steel', '13:30:00', '2023-02-04'),
('Negombo', 'Man of Steel', '13:30:00', '2023-02-05'),
('Negombo', 'Man of Steel', '18:30:00', '2023-01-31'),
('Negombo', 'Man of Steel', '18:30:00', '2023-02-02'),
('Negombo', 'Man of Steel', '18:30:00', '2023-02-03'),
('Negombo', 'Man of Steel', '18:30:00', '2023-02-04'),
('Negombo', 'Man of Steel', '18:30:00', '2023-02-05'),
('Negombo', 'Oppenheimer', '08:00:00', '2023-01-31'),
('Negombo', 'Oppenheimer', '08:00:00', '2023-02-02'),
('Negombo', 'Oppenheimer', '08:00:00', '2023-02-03'),
('Negombo', 'Oppenheimer', '08:00:00', '2023-02-04'),
('Negombo', 'Oppenheimer', '08:00:00', '2023-02-05'),
('Negombo', 'Oppenheimer', '10:30:00', '2023-01-31'),
('Negombo', 'Oppenheimer', '10:30:00', '2023-02-02'),
('Negombo', 'Oppenheimer', '10:30:00', '2023-02-03'),
('Negombo', 'Oppenheimer', '10:30:00', '2023-02-04'),
('Negombo', 'Oppenheimer', '10:30:00', '2023-02-05'),
('Negombo', 'Oppenheimer', '13:30:00', '2023-01-31'),
('Negombo', 'Oppenheimer', '13:30:00', '2023-02-02'),
('Negombo', 'Oppenheimer', '13:30:00', '2023-02-03'),
('Negombo', 'Oppenheimer', '13:30:00', '2023-02-04'),
('Negombo', 'Oppenheimer', '13:30:00', '2023-02-05'),
('Negombo', 'Oppenheimer', '18:30:00', '2023-01-31'),
('Negombo', 'Oppenheimer', '18:30:00', '2023-02-02'),
('Negombo', 'Oppenheimer', '18:30:00', '2023-02-03'),
('Negombo', 'Oppenheimer', '18:30:00', '2023-02-04'),
('Negombo', 'Oppenheimer', '18:30:00', '2023-02-05'),
('Negombo', 'Revenge of the Sith', '08:00:00', '2023-01-31'),
('Negombo', 'Revenge of the Sith', '08:00:00', '2023-02-02'),
('Negombo', 'Revenge of the Sith', '08:00:00', '2023-02-03'),
('Negombo', 'Revenge of the Sith', '08:00:00', '2023-02-04'),
('Negombo', 'Revenge of the Sith', '08:00:00', '2023-02-05'),
('Negombo', 'Revenge of the Sith', '10:30:00', '2023-01-31'),
('Negombo', 'Revenge of the Sith', '10:30:00', '2023-02-02'),
('Negombo', 'Revenge of the Sith', '10:30:00', '2023-02-03'),
('Negombo', 'Revenge of the Sith', '10:30:00', '2023-02-04'),
('Negombo', 'Revenge of the Sith', '10:30:00', '2023-02-05'),
('Negombo', 'Revenge of the Sith', '13:30:00', '2023-01-31'),
('Negombo', 'Revenge of the Sith', '13:30:00', '2023-02-02'),
('Negombo', 'Revenge of the Sith', '13:30:00', '2023-02-03'),
('Negombo', 'Revenge of the Sith', '13:30:00', '2023-02-04'),
('Negombo', 'Revenge of the Sith', '13:30:00', '2023-02-05'),
('Negombo', 'Revenge of the Sith', '18:30:00', '2023-01-31'),
('Negombo', 'Revenge of the Sith', '18:30:00', '2023-02-02'),
('Negombo', 'Revenge of the Sith', '18:30:00', '2023-02-03'),
('Negombo', 'Revenge of the Sith', '18:30:00', '2023-02-04'),
('Negombo', 'Revenge of the Sith', '18:30:00', '2023-02-05'),
('Negombo', 'Saving Private Ryan', '08:00:00', '2023-01-31'),
('Negombo', 'Saving Private Ryan', '08:00:00', '2023-02-02'),
('Negombo', 'Saving Private Ryan', '08:00:00', '2023-02-03'),
('Negombo', 'Saving Private Ryan', '08:00:00', '2023-02-04'),
('Negombo', 'Saving Private Ryan', '08:00:00', '2023-02-05'),
('Negombo', 'Saving Private Ryan', '10:30:00', '2023-01-31'),
('Negombo', 'Saving Private Ryan', '10:30:00', '2023-02-02'),
('Negombo', 'Saving Private Ryan', '10:30:00', '2023-02-03'),
('Negombo', 'Saving Private Ryan', '10:30:00', '2023-02-04'),
('Negombo', 'Saving Private Ryan', '10:30:00', '2023-02-05'),
('Negombo', 'Saving Private Ryan', '13:30:00', '2023-01-31'),
('Negombo', 'Saving Private Ryan', '13:30:00', '2023-02-02'),
('Negombo', 'Saving Private Ryan', '13:30:00', '2023-02-03'),
('Negombo', 'Saving Private Ryan', '13:30:00', '2023-02-04'),
('Negombo', 'Saving Private Ryan', '13:30:00', '2023-02-05'),
('Negombo', 'Saving Private Ryan', '18:30:00', '2023-01-31'),
('Negombo', 'Saving Private Ryan', '18:30:00', '2023-02-02'),
('Negombo', 'Saving Private Ryan', '18:30:00', '2023-02-03'),
('Negombo', 'Saving Private Ryan', '18:30:00', '2023-02-04'),
('Negombo', 'Saving Private Ryan', '18:30:00', '2023-02-05'),
('Negombo', 'Terminator 2: Judgment Day', '08:00:00', '2023-01-31'),
('Negombo', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-02'),
('Negombo', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-03'),
('Negombo', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-04'),
('Negombo', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-05'),
('Negombo', 'Terminator 2: Judgment Day', '10:30:00', '2023-01-31'),
('Negombo', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-02'),
('Negombo', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-03'),
('Negombo', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-04'),
('Negombo', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-05'),
('Negombo', 'Terminator 2: Judgment Day', '13:30:00', '2023-01-31'),
('Negombo', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-02'),
('Negombo', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-03'),
('Negombo', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-04'),
('Negombo', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-05'),
('Negombo', 'Terminator 2: Judgment Day', '18:30:00', '2023-01-31'),
('Negombo', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-02'),
('Negombo', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-03'),
('Negombo', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-04'),
('Negombo', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-05'),
('Negombo', 'The Dark Knight', '08:00:00', '2023-01-31'),
('Negombo', 'The Dark Knight', '08:00:00', '2023-02-02'),
('Negombo', 'The Dark Knight', '08:00:00', '2023-02-03'),
('Negombo', 'The Dark Knight', '08:00:00', '2023-02-04'),
('Negombo', 'The Dark Knight', '08:00:00', '2023-02-05'),
('Negombo', 'The Dark Knight', '10:30:00', '2023-01-31'),
('Negombo', 'The Dark Knight', '10:30:00', '2023-02-02'),
('Negombo', 'The Dark Knight', '10:30:00', '2023-02-03'),
('Negombo', 'The Dark Knight', '10:30:00', '2023-02-04'),
('Negombo', 'The Dark Knight', '10:30:00', '2023-02-05'),
('Negombo', 'The Dark Knight', '13:30:00', '2023-01-31'),
('Negombo', 'The Dark Knight', '13:30:00', '2023-02-02'),
('Negombo', 'The Dark Knight', '13:30:00', '2023-02-03'),
('Negombo', 'The Dark Knight', '13:30:00', '2023-02-04'),
('Negombo', 'The Dark Knight', '13:30:00', '2023-02-05'),
('Negombo', 'The Dark Knight', '18:30:00', '2023-01-31'),
('Negombo', 'The Dark Knight', '18:30:00', '2023-02-02'),
('Negombo', 'The Dark Knight', '18:30:00', '2023-02-03'),
('Negombo', 'The Dark Knight', '18:30:00', '2023-02-04'),
('Negombo', 'The Dark Knight', '18:30:00', '2023-02-05'),
('Negombo', 'The Empire Strikes Back', '08:00:00', '2023-01-31'),
('Negombo', 'The Empire Strikes Back', '08:00:00', '2023-02-02'),
('Negombo', 'The Empire Strikes Back', '08:00:00', '2023-02-03'),
('Negombo', 'The Empire Strikes Back', '08:00:00', '2023-02-04'),
('Negombo', 'The Empire Strikes Back', '08:00:00', '2023-02-05'),
('Negombo', 'The Empire Strikes Back', '10:30:00', '2023-01-31'),
('Negombo', 'The Empire Strikes Back', '10:30:00', '2023-02-02'),
('Negombo', 'The Empire Strikes Back', '10:30:00', '2023-02-03'),
('Negombo', 'The Empire Strikes Back', '10:30:00', '2023-02-04'),
('Negombo', 'The Empire Strikes Back', '10:30:00', '2023-02-05'),
('Negombo', 'The Empire Strikes Back', '13:30:00', '2023-01-31'),
('Negombo', 'The Empire Strikes Back', '13:30:00', '2023-02-02'),
('Negombo', 'The Empire Strikes Back', '13:30:00', '2023-02-03'),
('Negombo', 'The Empire Strikes Back', '13:30:00', '2023-02-04'),
('Negombo', 'The Empire Strikes Back', '13:30:00', '2023-02-05'),
('Negombo', 'The Empire Strikes Back', '18:30:00', '2023-01-31'),
('Negombo', 'The Empire Strikes Back', '18:30:00', '2023-02-02'),
('Negombo', 'The Empire Strikes Back', '18:30:00', '2023-02-03'),
('Negombo', 'The Empire Strikes Back', '18:30:00', '2023-02-04'),
('Negombo', 'The Empire Strikes Back', '18:30:00', '2023-02-05'),
('Negombo', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-01-31'),
('Negombo', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-02'),
('Negombo', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-03'),
('Negombo', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-04'),
('Negombo', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-05'),
('Negombo', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-01-31'),
('Negombo', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-02'),
('Negombo', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-03'),
('Negombo', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-04'),
('Negombo', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-05'),
('Negombo', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-01-31'),
('Negombo', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-02'),
('Negombo', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-03'),
('Negombo', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-04'),
('Negombo', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-05'),
('Negombo', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-01-31'),
('Negombo', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-02'),
('Negombo', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-03'),
('Negombo', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-04'),
('Negombo', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-05'),
('Negombo', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-01-31'),
('Negombo', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-02'),
('Negombo', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-03'),
('Negombo', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-04'),
('Negombo', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-05'),
('Negombo', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-01-31'),
('Negombo', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-02'),
('Negombo', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-03'),
('Negombo', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-04'),
('Negombo', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-05'),
('Negombo', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-01-31'),
('Negombo', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-02'),
('Negombo', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-03'),
('Negombo', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-04'),
('Negombo', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-05'),
('Negombo', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-01-31'),
('Negombo', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-02'),
('Negombo', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-03'),
('Negombo', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-04'),
('Negombo', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-05'),
('Negombo', 'The Prestige', '08:00:00', '2023-01-31'),
('Negombo', 'The Prestige', '08:00:00', '2023-02-02'),
('Negombo', 'The Prestige', '08:00:00', '2023-02-03'),
('Negombo', 'The Prestige', '08:00:00', '2023-02-04'),
('Negombo', 'The Prestige', '08:00:00', '2023-02-05'),
('Negombo', 'The Prestige', '10:30:00', '2023-01-31'),
('Negombo', 'The Prestige', '10:30:00', '2023-02-02'),
('Negombo', 'The Prestige', '10:30:00', '2023-02-03'),
('Negombo', 'The Prestige', '10:30:00', '2023-02-04'),
('Negombo', 'The Prestige', '10:30:00', '2023-02-05'),
('Negombo', 'The Prestige', '13:30:00', '2023-01-31'),
('Negombo', 'The Prestige', '13:30:00', '2023-02-02'),
('Negombo', 'The Prestige', '13:30:00', '2023-02-03'),
('Negombo', 'The Prestige', '13:30:00', '2023-02-04'),
('Negombo', 'The Prestige', '13:30:00', '2023-02-05'),
('Negombo', 'The Prestige', '18:30:00', '2023-01-31'),
('Negombo', 'The Prestige', '18:30:00', '2023-02-02'),
('Negombo', 'The Prestige', '18:30:00', '2023-02-03'),
('Negombo', 'The Prestige', '18:30:00', '2023-02-04'),
('Negombo', 'The Prestige', '18:30:00', '2023-02-05'),
('Negombo', 'Top Gun: Maverick', '08:00:00', '2023-01-31'),
('Negombo', 'Top Gun: Maverick', '08:00:00', '2023-02-02'),
('Negombo', 'Top Gun: Maverick', '08:00:00', '2023-02-03'),
('Negombo', 'Top Gun: Maverick', '08:00:00', '2023-02-04'),
('Negombo', 'Top Gun: Maverick', '08:00:00', '2023-02-05'),
('Negombo', 'Top Gun: Maverick', '10:30:00', '2023-01-31'),
('Negombo', 'Top Gun: Maverick', '10:30:00', '2023-02-02'),
('Negombo', 'Top Gun: Maverick', '10:30:00', '2023-02-03'),
('Negombo', 'Top Gun: Maverick', '10:30:00', '2023-02-04'),
('Negombo', 'Top Gun: Maverick', '10:30:00', '2023-02-05'),
('Negombo', 'Top Gun: Maverick', '13:30:00', '2023-01-31'),
('Negombo', 'Top Gun: Maverick', '13:30:00', '2023-02-02'),
('Negombo', 'Top Gun: Maverick', '13:30:00', '2023-02-03'),
('Negombo', 'Top Gun: Maverick', '13:30:00', '2023-02-04'),
('Negombo', 'Top Gun: Maverick', '13:30:00', '2023-02-05'),
('Negombo', 'Top Gun: Maverick', '18:30:00', '2023-01-31'),
('Negombo', 'Top Gun: Maverick', '18:30:00', '2023-02-02'),
('Negombo', 'Top Gun: Maverick', '18:30:00', '2023-02-03'),
('Negombo', 'Top Gun: Maverick', '18:30:00', '2023-02-04'),
('Negombo', 'Top Gun: Maverick', '18:30:00', '2023-02-05'),
('Wellawatte', '1917', '08:00:00', '2023-01-31'),
('Wellawatte', '1917', '08:00:00', '2023-02-02'),
('Wellawatte', '1917', '08:00:00', '2023-02-03'),
('Wellawatte', '1917', '08:00:00', '2023-02-04'),
('Wellawatte', '1917', '08:00:00', '2023-02-05'),
('Wellawatte', '1917', '10:30:00', '2023-01-31'),
('Wellawatte', '1917', '10:30:00', '2023-02-02'),
('Wellawatte', '1917', '10:30:00', '2023-02-03'),
('Wellawatte', '1917', '10:30:00', '2023-02-04'),
('Wellawatte', '1917', '10:30:00', '2023-02-05'),
('Wellawatte', '1917', '13:30:00', '2023-01-31'),
('Wellawatte', '1917', '13:30:00', '2023-02-02'),
('Wellawatte', '1917', '13:30:00', '2023-02-03'),
('Wellawatte', '1917', '13:30:00', '2023-02-04'),
('Wellawatte', '1917', '13:30:00', '2023-02-05'),
('Wellawatte', '1917', '18:30:00', '2023-01-31'),
('Wellawatte', '1917', '18:30:00', '2023-02-02'),
('Wellawatte', '1917', '18:30:00', '2023-02-03'),
('Wellawatte', '1917', '18:30:00', '2023-02-04'),
('Wellawatte', '1917', '18:30:00', '2023-02-05'),
('Wellawatte', 'Edge of tomorrow', '08:00:00', '2023-01-31'),
('Wellawatte', 'Edge of tomorrow', '08:00:00', '2023-02-02'),
('Wellawatte', 'Edge of tomorrow', '08:00:00', '2023-02-03'),
('Wellawatte', 'Edge of tomorrow', '08:00:00', '2023-02-04'),
('Wellawatte', 'Edge of tomorrow', '08:00:00', '2023-02-05'),
('Wellawatte', 'Edge of tomorrow', '10:30:00', '2023-01-31'),
('Wellawatte', 'Edge of tomorrow', '10:30:00', '2023-02-02'),
('Wellawatte', 'Edge of tomorrow', '10:30:00', '2023-02-03'),
('Wellawatte', 'Edge of tomorrow', '10:30:00', '2023-02-04'),
('Wellawatte', 'Edge of tomorrow', '10:30:00', '2023-02-05'),
('Wellawatte', 'Edge of tomorrow', '13:30:00', '2023-01-31'),
('Wellawatte', 'Edge of tomorrow', '13:30:00', '2023-02-02'),
('Wellawatte', 'Edge of tomorrow', '13:30:00', '2023-02-03'),
('Wellawatte', 'Edge of tomorrow', '13:30:00', '2023-02-04'),
('Wellawatte', 'Edge of tomorrow', '13:30:00', '2023-02-05'),
('Wellawatte', 'Edge of tomorrow', '18:30:00', '2023-01-31'),
('Wellawatte', 'Edge of tomorrow', '18:30:00', '2023-02-02'),
('Wellawatte', 'Edge of tomorrow', '18:30:00', '2023-02-03'),
('Wellawatte', 'Edge of tomorrow', '18:30:00', '2023-02-04'),
('Wellawatte', 'Edge of tomorrow', '18:30:00', '2023-02-05'),
('Wellawatte', 'Insterstellar', '08:00:00', '2023-01-31'),
('Wellawatte', 'Insterstellar', '08:00:00', '2023-02-02'),
('Wellawatte', 'Insterstellar', '08:00:00', '2023-02-03'),
('Wellawatte', 'Insterstellar', '08:00:00', '2023-02-04'),
('Wellawatte', 'Insterstellar', '08:00:00', '2023-02-05'),
('Wellawatte', 'Insterstellar', '10:30:00', '2023-01-31'),
('Wellawatte', 'Insterstellar', '10:30:00', '2023-02-02'),
('Wellawatte', 'Insterstellar', '10:30:00', '2023-02-03'),
('Wellawatte', 'Insterstellar', '10:30:00', '2023-02-04'),
('Wellawatte', 'Insterstellar', '10:30:00', '2023-02-05'),
('Wellawatte', 'Insterstellar', '13:30:00', '2023-01-31'),
('Wellawatte', 'Insterstellar', '13:30:00', '2023-02-02'),
('Wellawatte', 'Insterstellar', '13:30:00', '2023-02-03'),
('Wellawatte', 'Insterstellar', '13:30:00', '2023-02-04'),
('Wellawatte', 'Insterstellar', '13:30:00', '2023-02-05'),
('Wellawatte', 'Insterstellar', '18:30:00', '2023-01-31'),
('Wellawatte', 'Insterstellar', '18:30:00', '2023-02-02'),
('Wellawatte', 'Insterstellar', '18:30:00', '2023-02-03'),
('Wellawatte', 'Insterstellar', '18:30:00', '2023-02-04'),
('Wellawatte', 'Insterstellar', '18:30:00', '2023-02-05'),
('Wellawatte', 'John Wick: Chapter 2', '08:00:00', '2023-01-31'),
('Wellawatte', 'John Wick: Chapter 2', '08:00:00', '2023-02-02'),
('Wellawatte', 'John Wick: Chapter 2', '08:00:00', '2023-02-03'),
('Wellawatte', 'John Wick: Chapter 2', '08:00:00', '2023-02-04'),
('Wellawatte', 'John Wick: Chapter 2', '08:00:00', '2023-02-05'),
('Wellawatte', 'John Wick: Chapter 2', '10:30:00', '2023-01-31'),
('Wellawatte', 'John Wick: Chapter 2', '10:30:00', '2023-02-02'),
('Wellawatte', 'John Wick: Chapter 2', '10:30:00', '2023-02-03'),
('Wellawatte', 'John Wick: Chapter 2', '10:30:00', '2023-02-04'),
('Wellawatte', 'John Wick: Chapter 2', '10:30:00', '2023-02-05'),
('Wellawatte', 'John Wick: Chapter 2', '13:30:00', '2023-01-31'),
('Wellawatte', 'John Wick: Chapter 2', '13:30:00', '2023-02-02'),
('Wellawatte', 'John Wick: Chapter 2', '13:30:00', '2023-02-03'),
('Wellawatte', 'John Wick: Chapter 2', '13:30:00', '2023-02-04'),
('Wellawatte', 'John Wick: Chapter 2', '13:30:00', '2023-02-05'),
('Wellawatte', 'John Wick: Chapter 2', '18:30:00', '2023-01-31'),
('Wellawatte', 'John Wick: Chapter 2', '18:30:00', '2023-02-02'),
('Wellawatte', 'John Wick: Chapter 2', '18:30:00', '2023-02-03'),
('Wellawatte', 'John Wick: Chapter 2', '18:30:00', '2023-02-04'),
('Wellawatte', 'John Wick: Chapter 2', '18:30:00', '2023-02-05'),
('Wellawatte', 'John Wick: Chapter 4', '08:00:00', '2023-01-31'),
('Wellawatte', 'John Wick: Chapter 4', '08:00:00', '2023-02-02'),
('Wellawatte', 'John Wick: Chapter 4', '08:00:00', '2023-02-03'),
('Wellawatte', 'John Wick: Chapter 4', '08:00:00', '2023-02-04'),
('Wellawatte', 'John Wick: Chapter 4', '08:00:00', '2023-02-05'),
('Wellawatte', 'John Wick: Chapter 4', '10:30:00', '2023-01-31'),
('Wellawatte', 'John Wick: Chapter 4', '10:30:00', '2023-02-02'),
('Wellawatte', 'John Wick: Chapter 4', '10:30:00', '2023-02-03'),
('Wellawatte', 'John Wick: Chapter 4', '10:30:00', '2023-02-04'),
('Wellawatte', 'John Wick: Chapter 4', '10:30:00', '2023-02-05'),
('Wellawatte', 'John Wick: Chapter 4', '13:30:00', '2023-01-31'),
('Wellawatte', 'John Wick: Chapter 4', '13:30:00', '2023-02-02'),
('Wellawatte', 'John Wick: Chapter 4', '13:30:00', '2023-02-03'),
('Wellawatte', 'John Wick: Chapter 4', '13:30:00', '2023-02-04'),
('Wellawatte', 'John Wick: Chapter 4', '13:30:00', '2023-02-05'),
('Wellawatte', 'John Wick: Chapter 4', '18:30:00', '2023-01-31'),
('Wellawatte', 'John Wick: Chapter 4', '18:30:00', '2023-02-02'),
('Wellawatte', 'John Wick: Chapter 4', '18:30:00', '2023-02-03'),
('Wellawatte', 'John Wick: Chapter 4', '18:30:00', '2023-02-04'),
('Wellawatte', 'John Wick: Chapter 4', '18:30:00', '2023-02-05'),
('Wellawatte', 'Man of Steel', '08:00:00', '2023-01-31'),
('Wellawatte', 'Man of Steel', '08:00:00', '2023-02-02'),
('Wellawatte', 'Man of Steel', '08:00:00', '2023-02-03'),
('Wellawatte', 'Man of Steel', '08:00:00', '2023-02-04'),
('Wellawatte', 'Man of Steel', '08:00:00', '2023-02-05'),
('Wellawatte', 'Man of Steel', '10:30:00', '2023-01-31'),
('Wellawatte', 'Man of Steel', '10:30:00', '2023-02-02'),
('Wellawatte', 'Man of Steel', '10:30:00', '2023-02-03'),
('Wellawatte', 'Man of Steel', '10:30:00', '2023-02-04'),
('Wellawatte', 'Man of Steel', '10:30:00', '2023-02-05'),
('Wellawatte', 'Man of Steel', '13:30:00', '2023-01-31'),
('Wellawatte', 'Man of Steel', '13:30:00', '2023-02-02'),
('Wellawatte', 'Man of Steel', '13:30:00', '2023-02-03'),
('Wellawatte', 'Man of Steel', '13:30:00', '2023-02-04'),
('Wellawatte', 'Man of Steel', '13:30:00', '2023-02-05'),
('Wellawatte', 'Man of Steel', '18:30:00', '2023-01-31'),
('Wellawatte', 'Man of Steel', '18:30:00', '2023-02-02'),
('Wellawatte', 'Man of Steel', '18:30:00', '2023-02-03'),
('Wellawatte', 'Man of Steel', '18:30:00', '2023-02-04'),
('Wellawatte', 'Man of Steel', '18:30:00', '2023-02-05'),
('Wellawatte', 'Oppenheimer', '08:00:00', '2023-01-31'),
('Wellawatte', 'Oppenheimer', '08:00:00', '2023-02-02'),
('Wellawatte', 'Oppenheimer', '08:00:00', '2023-02-03'),
('Wellawatte', 'Oppenheimer', '08:00:00', '2023-02-04'),
('Wellawatte', 'Oppenheimer', '08:00:00', '2023-02-05'),
('Wellawatte', 'Oppenheimer', '10:30:00', '2023-01-31'),
('Wellawatte', 'Oppenheimer', '10:30:00', '2023-02-02'),
('Wellawatte', 'Oppenheimer', '10:30:00', '2023-02-03'),
('Wellawatte', 'Oppenheimer', '10:30:00', '2023-02-04'),
('Wellawatte', 'Oppenheimer', '10:30:00', '2023-02-05'),
('Wellawatte', 'Oppenheimer', '13:30:00', '2023-01-31'),
('Wellawatte', 'Oppenheimer', '13:30:00', '2023-02-02'),
('Wellawatte', 'Oppenheimer', '13:30:00', '2023-02-03'),
('Wellawatte', 'Oppenheimer', '13:30:00', '2023-02-04'),
('Wellawatte', 'Oppenheimer', '13:30:00', '2023-02-05'),
('Wellawatte', 'Oppenheimer', '18:30:00', '2023-01-31'),
('Wellawatte', 'Oppenheimer', '18:30:00', '2023-02-02'),
('Wellawatte', 'Oppenheimer', '18:30:00', '2023-02-03'),
('Wellawatte', 'Oppenheimer', '18:30:00', '2023-02-04'),
('Wellawatte', 'Oppenheimer', '18:30:00', '2023-02-05'),
('Wellawatte', 'Revenge of the Sith', '08:00:00', '2023-01-31'),
('Wellawatte', 'Revenge of the Sith', '08:00:00', '2023-02-02'),
('Wellawatte', 'Revenge of the Sith', '08:00:00', '2023-02-03'),
('Wellawatte', 'Revenge of the Sith', '08:00:00', '2023-02-04'),
('Wellawatte', 'Revenge of the Sith', '08:00:00', '2023-02-05'),
('Wellawatte', 'Revenge of the Sith', '10:30:00', '2023-01-31'),
('Wellawatte', 'Revenge of the Sith', '10:30:00', '2023-02-02'),
('Wellawatte', 'Revenge of the Sith', '10:30:00', '2023-02-03'),
('Wellawatte', 'Revenge of the Sith', '10:30:00', '2023-02-04'),
('Wellawatte', 'Revenge of the Sith', '10:30:00', '2023-02-05'),
('Wellawatte', 'Revenge of the Sith', '13:30:00', '2023-01-31'),
('Wellawatte', 'Revenge of the Sith', '13:30:00', '2023-02-02'),
('Wellawatte', 'Revenge of the Sith', '13:30:00', '2023-02-03'),
('Wellawatte', 'Revenge of the Sith', '13:30:00', '2023-02-04'),
('Wellawatte', 'Revenge of the Sith', '13:30:00', '2023-02-05'),
('Wellawatte', 'Revenge of the Sith', '18:30:00', '2023-01-31'),
('Wellawatte', 'Revenge of the Sith', '18:30:00', '2023-02-02'),
('Wellawatte', 'Revenge of the Sith', '18:30:00', '2023-02-03'),
('Wellawatte', 'Revenge of the Sith', '18:30:00', '2023-02-04'),
('Wellawatte', 'Revenge of the Sith', '18:30:00', '2023-02-05'),
('Wellawatte', 'Saving Private Ryan', '08:00:00', '2023-01-31'),
('Wellawatte', 'Saving Private Ryan', '08:00:00', '2023-02-02'),
('Wellawatte', 'Saving Private Ryan', '08:00:00', '2023-02-03'),
('Wellawatte', 'Saving Private Ryan', '08:00:00', '2023-02-04'),
('Wellawatte', 'Saving Private Ryan', '08:00:00', '2023-02-05'),
('Wellawatte', 'Saving Private Ryan', '10:30:00', '2023-01-31'),
('Wellawatte', 'Saving Private Ryan', '10:30:00', '2023-02-02'),
('Wellawatte', 'Saving Private Ryan', '10:30:00', '2023-02-03'),
('Wellawatte', 'Saving Private Ryan', '10:30:00', '2023-02-04'),
('Wellawatte', 'Saving Private Ryan', '10:30:00', '2023-02-05'),
('Wellawatte', 'Saving Private Ryan', '13:30:00', '2023-01-31'),
('Wellawatte', 'Saving Private Ryan', '13:30:00', '2023-02-02'),
('Wellawatte', 'Saving Private Ryan', '13:30:00', '2023-02-03'),
('Wellawatte', 'Saving Private Ryan', '13:30:00', '2023-02-04'),
('Wellawatte', 'Saving Private Ryan', '13:30:00', '2023-02-05'),
('Wellawatte', 'Saving Private Ryan', '18:30:00', '2023-01-31'),
('Wellawatte', 'Saving Private Ryan', '18:30:00', '2023-02-02'),
('Wellawatte', 'Saving Private Ryan', '18:30:00', '2023-02-03'),
('Wellawatte', 'Saving Private Ryan', '18:30:00', '2023-02-04'),
('Wellawatte', 'Saving Private Ryan', '18:30:00', '2023-02-05'),
('Wellawatte', 'Terminator 2: Judgment Day', '08:00:00', '2023-01-31'),
('Wellawatte', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-02'),
('Wellawatte', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-03'),
('Wellawatte', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-04'),
('Wellawatte', 'Terminator 2: Judgment Day', '08:00:00', '2023-02-05'),
('Wellawatte', 'Terminator 2: Judgment Day', '10:30:00', '2023-01-31'),
('Wellawatte', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-02'),
('Wellawatte', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-03'),
('Wellawatte', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-04'),
('Wellawatte', 'Terminator 2: Judgment Day', '10:30:00', '2023-02-05');
INSERT INTO `theatre_timeschedule` (`theatre_name`, `movie_name`, `time`, `dates`) VALUES
('Wellawatte', 'Terminator 2: Judgment Day', '13:30:00', '2023-01-31'),
('Wellawatte', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-02'),
('Wellawatte', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-03'),
('Wellawatte', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-04'),
('Wellawatte', 'Terminator 2: Judgment Day', '13:30:00', '2023-02-05'),
('Wellawatte', 'Terminator 2: Judgment Day', '18:30:00', '2023-01-31'),
('Wellawatte', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-02'),
('Wellawatte', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-03'),
('Wellawatte', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-04'),
('Wellawatte', 'Terminator 2: Judgment Day', '18:30:00', '2023-02-05'),
('Wellawatte', 'The Dark Knight', '08:00:00', '2023-01-31'),
('Wellawatte', 'The Dark Knight', '08:00:00', '2023-02-02'),
('Wellawatte', 'The Dark Knight', '08:00:00', '2023-02-03'),
('Wellawatte', 'The Dark Knight', '08:00:00', '2023-02-04'),
('Wellawatte', 'The Dark Knight', '08:00:00', '2023-02-05'),
('Wellawatte', 'The Dark Knight', '10:30:00', '2023-01-31'),
('Wellawatte', 'The Dark Knight', '10:30:00', '2023-02-02'),
('Wellawatte', 'The Dark Knight', '10:30:00', '2023-02-03'),
('Wellawatte', 'The Dark Knight', '10:30:00', '2023-02-04'),
('Wellawatte', 'The Dark Knight', '10:30:00', '2023-02-05'),
('Wellawatte', 'The Dark Knight', '13:30:00', '2023-01-31'),
('Wellawatte', 'The Dark Knight', '13:30:00', '2023-02-02'),
('Wellawatte', 'The Dark Knight', '13:30:00', '2023-02-03'),
('Wellawatte', 'The Dark Knight', '13:30:00', '2023-02-04'),
('Wellawatte', 'The Dark Knight', '13:30:00', '2023-02-05'),
('Wellawatte', 'The Dark Knight', '18:30:00', '2023-01-31'),
('Wellawatte', 'The Dark Knight', '18:30:00', '2023-02-02'),
('Wellawatte', 'The Dark Knight', '18:30:00', '2023-02-03'),
('Wellawatte', 'The Dark Knight', '18:30:00', '2023-02-04'),
('Wellawatte', 'The Dark Knight', '18:30:00', '2023-02-05'),
('Wellawatte', 'The Empire Strikes Back', '08:00:00', '2023-01-31'),
('Wellawatte', 'The Empire Strikes Back', '08:00:00', '2023-02-02'),
('Wellawatte', 'The Empire Strikes Back', '08:00:00', '2023-02-03'),
('Wellawatte', 'The Empire Strikes Back', '08:00:00', '2023-02-04'),
('Wellawatte', 'The Empire Strikes Back', '08:00:00', '2023-02-05'),
('Wellawatte', 'The Empire Strikes Back', '10:30:00', '2023-01-31'),
('Wellawatte', 'The Empire Strikes Back', '10:30:00', '2023-02-02'),
('Wellawatte', 'The Empire Strikes Back', '10:30:00', '2023-02-03'),
('Wellawatte', 'The Empire Strikes Back', '10:30:00', '2023-02-04'),
('Wellawatte', 'The Empire Strikes Back', '10:30:00', '2023-02-05'),
('Wellawatte', 'The Empire Strikes Back', '13:30:00', '2023-01-31'),
('Wellawatte', 'The Empire Strikes Back', '13:30:00', '2023-02-02'),
('Wellawatte', 'The Empire Strikes Back', '13:30:00', '2023-02-03'),
('Wellawatte', 'The Empire Strikes Back', '13:30:00', '2023-02-04'),
('Wellawatte', 'The Empire Strikes Back', '13:30:00', '2023-02-05'),
('Wellawatte', 'The Empire Strikes Back', '18:30:00', '2023-01-31'),
('Wellawatte', 'The Empire Strikes Back', '18:30:00', '2023-02-02'),
('Wellawatte', 'The Empire Strikes Back', '18:30:00', '2023-02-03'),
('Wellawatte', 'The Empire Strikes Back', '18:30:00', '2023-02-04'),
('Wellawatte', 'The Empire Strikes Back', '18:30:00', '2023-02-05'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-01-31'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-02'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-03'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-04'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '08:00:00', '2023-02-05'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-01-31'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-02'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-03'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-04'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '10:30:00', '2023-02-05'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-01-31'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-02'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-03'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-04'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '13:30:00', '2023-02-05'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-01-31'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-02'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-03'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-04'),
('Wellawatte', 'The Lord of the Rings: The Return of the King', '18:30:00', '2023-02-05'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-01-31'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-02'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-03'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-04'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '08:00:00', '2023-02-05'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-01-31'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-02'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-03'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-04'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '10:30:00', '2023-02-05'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-01-31'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-02'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-03'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-04'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '13:30:00', '2023-02-05'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-01-31'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-02'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-03'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-04'),
('Wellawatte', 'The Lord of the Rings: The Two Towers', '18:30:00', '2023-02-05'),
('Wellawatte', 'The Prestige', '08:00:00', '2023-01-31'),
('Wellawatte', 'The Prestige', '08:00:00', '2023-02-02'),
('Wellawatte', 'The Prestige', '08:00:00', '2023-02-03'),
('Wellawatte', 'The Prestige', '08:00:00', '2023-02-04'),
('Wellawatte', 'The Prestige', '08:00:00', '2023-02-05'),
('Wellawatte', 'The Prestige', '10:30:00', '2023-01-31'),
('Wellawatte', 'The Prestige', '10:30:00', '2023-02-02'),
('Wellawatte', 'The Prestige', '10:30:00', '2023-02-03'),
('Wellawatte', 'The Prestige', '10:30:00', '2023-02-04'),
('Wellawatte', 'The Prestige', '10:30:00', '2023-02-05'),
('Wellawatte', 'The Prestige', '13:30:00', '2023-01-31'),
('Wellawatte', 'The Prestige', '13:30:00', '2023-02-02'),
('Wellawatte', 'The Prestige', '13:30:00', '2023-02-03'),
('Wellawatte', 'The Prestige', '13:30:00', '2023-02-04'),
('Wellawatte', 'The Prestige', '13:30:00', '2023-02-05'),
('Wellawatte', 'The Prestige', '18:30:00', '2023-01-31'),
('Wellawatte', 'The Prestige', '18:30:00', '2023-02-02'),
('Wellawatte', 'The Prestige', '18:30:00', '2023-02-03'),
('Wellawatte', 'The Prestige', '18:30:00', '2023-02-04'),
('Wellawatte', 'The Prestige', '18:30:00', '2023-02-05'),
('Wellawatte', 'Top Gun: Maverick', '08:00:00', '2023-01-31'),
('Wellawatte', 'Top Gun: Maverick', '08:00:00', '2023-02-02'),
('Wellawatte', 'Top Gun: Maverick', '08:00:00', '2023-02-03'),
('Wellawatte', 'Top Gun: Maverick', '08:00:00', '2023-02-04'),
('Wellawatte', 'Top Gun: Maverick', '08:00:00', '2023-02-05'),
('Wellawatte', 'Top Gun: Maverick', '10:30:00', '2023-01-31'),
('Wellawatte', 'Top Gun: Maverick', '10:30:00', '2023-02-02'),
('Wellawatte', 'Top Gun: Maverick', '10:30:00', '2023-02-03'),
('Wellawatte', 'Top Gun: Maverick', '10:30:00', '2023-02-04'),
('Wellawatte', 'Top Gun: Maverick', '10:30:00', '2023-02-05'),
('Wellawatte', 'Top Gun: Maverick', '13:30:00', '2023-01-31'),
('Wellawatte', 'Top Gun: Maverick', '13:30:00', '2023-02-02'),
('Wellawatte', 'Top Gun: Maverick', '13:30:00', '2023-02-03'),
('Wellawatte', 'Top Gun: Maverick', '13:30:00', '2023-02-04'),
('Wellawatte', 'Top Gun: Maverick', '13:30:00', '2023-02-05'),
('Wellawatte', 'Top Gun: Maverick', '18:30:00', '2023-01-31'),
('Wellawatte', 'Top Gun: Maverick', '18:30:00', '2023-02-02'),
('Wellawatte', 'Top Gun: Maverick', '18:30:00', '2023-02-03'),
('Wellawatte', 'Top Gun: Maverick', '18:30:00', '2023-02-04'),
('Wellawatte', 'Top Gun: Maverick', '18:30:00', '2023-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `trending_movies`
--

CREATE TABLE `trending_movies` (
  `id` int(11) NOT NULL,
  `trending_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trending_movies`
--

INSERT INTO `trending_movies` (`id`, `trending_order`) VALUES
(1, 1),
(2, 2),
(5, 3),
(6, 4),
(7, 5),
(8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_movies`
--

CREATE TABLE `upcoming_movies` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upcoming_movies`
--

INSERT INTO `upcoming_movies` (`id`) VALUES
(39),
(40);

-- --------------------------------------------------------

--
-- Table structure for table `wellawatte_seats`
--

CREATE TABLE `wellawatte_seats` (
  `seat_no` varchar(3) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `receipt_no` varchar(25) DEFAULT NULL,
  `timedate` datetime NOT NULL,
  `lock_unlock` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gampaha_seats`
--
ALTER TABLE `gampaha_seats`
  ADD PRIMARY KEY (`seat_no`,`movie`,`timedate`);

--
-- Indexes for table `latest_movies`
--
ALTER TABLE `latest_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `negombo_seats`
--
ALTER TABLE `negombo_seats`
  ADD PRIMARY KEY (`seat_no`,`movie`,`timedate`);

--
-- Indexes for table `now_showing`
--
ALTER TABLE `now_showing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theatre_details`
--
ALTER TABLE `theatre_details`
  ADD PRIMARY KEY (`tname`);

--
-- Indexes for table `theatre_timeschedule`
--
ALTER TABLE `theatre_timeschedule`
  ADD PRIMARY KEY (`theatre_name`,`movie_name`,`time`,`dates`);

--
-- Indexes for table `trending_movies`
--
ALTER TABLE `trending_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_movies`
--
ALTER TABLE `upcoming_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wellawatte_seats`
--
ALTER TABLE `wellawatte_seats`
  ADD PRIMARY KEY (`seat_no`,`movie`,`timedate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `latest_movies`
--
ALTER TABLE `latest_movies`
  ADD CONSTRAINT `latest_movies_ibfk_1` FOREIGN KEY (`id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `now_showing`
--
ALTER TABLE `now_showing`
  ADD CONSTRAINT `now_showing_ibfk_1` FOREIGN KEY (`id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `now_showing_ibfk_2` FOREIGN KEY (`id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `trending_movies`
--
ALTER TABLE `trending_movies`
  ADD CONSTRAINT `trending_movies_ibfk_1` FOREIGN KEY (`id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `upcoming_movies`
--
ALTER TABLE `upcoming_movies`
  ADD CONSTRAINT `upcoming_movies_ibfk_1` FOREIGN KEY (`id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
