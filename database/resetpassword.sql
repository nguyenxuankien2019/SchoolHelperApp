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
-- Cấu trúc bảng cho bảng `resetpassword`
--

CREATE TABLE `resetpassword` (
  `idemail` int(11) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `resetpassword`
--

INSERT INTO `resetpassword` (`idemail`, `email`) VALUES
(11, 'testschoolhelper@gmail.com'),
(12, 'kien'),
(13, 'kine'),
(14, 'kien'),
(15, 'Ã¡dasdasdasd'),
(16, 'iiiii'),
(17, 'adu'),
(18, 'Ã¡dasd'),
(19, 'kien@mail.com'),
(20, 'kien@gmail.com'),
(21, 'kien@gmail.com'),
(22, 'kien@gmail.com'),
(23, ''),
(24, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `resetpassword`
--
ALTER TABLE `resetpassword`
  ADD PRIMARY KEY (`idemail`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `resetpassword`
--
ALTER TABLE `resetpassword`
  MODIFY `idemail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
