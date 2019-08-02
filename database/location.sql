-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 01, 2019 lúc 12:43 PM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `schoolhelper`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `location`
--

CREATE TABLE `location` (
  `idlocation` int(11) NOT NULL,
  `latmap` varchar(250) NOT NULL,
  `longmap` varchar(250) NOT NULL,
  `stay` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `location`
--

INSERT INTO `location` (`idlocation`, `latmap`, `longmap`, `stay`) VALUES
(1, '10.787719', '106.681282', 'Home'),
(2, '10.789193', '106.682216', 'Home'),
(3, '10.787719', '106.681282', 'Foods'),
(4, '10.790091', '106.679574', 'Foods'),
(5, '10.789284', '106.682590', 'Home'),
(6, '10.796454', '106.683554', 'Work'),
(7, '10.789441', '106.685417', 'Work'),
(8, '10.788977', '106.682415', 'Work'),
(9, '10.792594', '106.681764', 'Foods'),
(10, '10.790453', '106.680102', 'Foods');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`idlocation`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `location`
--
ALTER TABLE `location`
  MODIFY `idlocation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
