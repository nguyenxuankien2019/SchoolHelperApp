-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2018 lúc 04:42 PM
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
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `idsinhvien` int(11) NOT NULL,
  `svhinh` text NOT NULL,
  `svten` varchar(255) NOT NULL,
  `svblock` varchar(255) NOT NULL,
  `svcode` varchar(255) NOT NULL,
  `svcourse` varchar(255) NOT NULL,
  `svstatus` varchar(255) NOT NULL,
  `svphone` varchar(50) NOT NULL,
  `svemail` varchar(255) NOT NULL,
  `svaddress` varchar(255) NOT NULL,
  `svspecialized` varchar(255) NOT NULL,
  `svstart` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`idsinhvien`, `svhinh`, `svten`, `svblock`, `svcode`, `svcourse`, `svstatus`, `svphone`, `svemail`, `svaddress`, `svspecialized`, `svstart`) VALUES
(1, 'http://www.evolllution.com/wp-content/uploads/2013/07/Busy-Student.jpg', 'NGUYEN DUC THANH TAM', 'FALL 2018', 'PS00000', '6', 'HDI', '00300001212', 'abc@fpt.edu.vn', 'Nam ky khoi nghia, Q3, TP.HCM', 'Mobile', '30/12/2017');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`idsinhvien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `idsinhvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
