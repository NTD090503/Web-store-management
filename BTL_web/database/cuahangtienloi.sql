-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 06, 2024 lúc 06:52 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cuahangtienloi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `ten_slider` varchar(255) NOT NULL,
  `anh_slider` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id_slider`, `ten_slider`, `anh_slider`, `type`) VALUES
(7, 'slide image123', 'slide2.jpg', '0'),
(8, 'slide gg', 'slide3.jpg', '0'),
(9, 'slide image', 'slide3.jpg', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbinhluan`
--

CREATE TABLE `tblbinhluan` (
  `id_binhluan` int(11) NOT NULL,
  `binhluan_ten` varchar(30) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `blog_id` int(2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblbinhluan`
--

INSERT INTO `tblbinhluan` (`id_binhluan`, `binhluan_ten`, `id_sanpham`, `blog_id`, `date`) VALUES
(1, 'Trần Ngọc', 1, 1, '2023-10-17'),
(2, 'NT', 1, 0, '2023-10-17'),
(3, 'TT23', 27, 0, '2023-10-18'),
(4, '', 25, 0, '2023-10-30'),
(5, 'An', 25, 0, '2023-10-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblkhachhang`
--

CREATE TABLE `tblkhachhang` (
  `id_khachhang` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblkhachhang`
--

INSERT INTO `tblkhachhang` (`id_khachhang`, `id_taikhoan`, `ten`, `diachi`, `sdt`, `email`) VALUES
(1, 2, 'Tràn Ngọc', 'Hà Nội', '9999', 'tt@rr'),
(2, 4, 'ádfg', 'sdsfgbhngbdfvdcs', '852637496', 'abcd@gmail.com'),
(3, 8, 'ádfghjkl', 'adàghjhjkjmhngbfds', '897645368976', 'kjhgfds@gmail.com'),
(4, 10, 'sdafgh', 'wertyuik', '8945612', 'sadfgh@gmail.com'),
(5, 13, 'SI', 'Vĩnh Phúc', '02837373733', 'trngoc003@gmail.com'),
(6, 14, 'Ngoc', 'dsfghjk', '8945612', 'utt@gmail.com'),
(7, 15, 'Trannn', '2', '2', 'tavanmanh1111@gmail.com'),
(8, 16, 'Daiiii', '1', '11111111111', 'tranvanngoc180403@gmail.com'),
(9, 17, '7iii', 'i', '9', 'ty@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnhanvien`
--

CREATE TABLE `tblnhanvien` (
  `id_nhanvien` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `chamcong` int(11) NOT NULL,
  `luong` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblnhanvien`
--

INSERT INTO `tblnhanvien` (`id_nhanvien`, `id_taikhoan`, `ten`, `email`, `pass`, `sdt`, `diachi`, `chamcong`, `luong`) VALUES
(1, 2, 'dgfhgjh', 'sdfghj@gmail.com', '852', '987645321', 'sdffghgjghkjljhgf', 0, 0),
(2, 5, 'qưẻtyui', 'abc12345678@gmail.com', '9999', '852963741', 'sdfghjkljhgfdf', 0, 0),
(3, 6, 'ádfghjkl', 'addddd@gmail.com', '963', '852963741', 'gdhfjghkhljkgdgf', 0, 0),
(4, 7, 'qưẻtyui', 'qqqqqqqqaaa@gmail.com', '852741', '7986319985', 'ádfj,mngscsdvfgbngb', 0, 0),
(5, 9, 'sdffgghhj', 'sdfghj@gmail.com', '852', '789456123', 'dádfsfgfhgjhm', 0, 0),
(6, 11, 'qwe', 'admin@gmail.com', '1', '852096374', 'dsfghjk', 0, 0),
(7, 12, 'cô giáo', 'cogiao@gmail.com', '852', '85296', 'cóadasd', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsanpham`
--

CREATE TABLE `tblsanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `loaisp_id` int(11) NOT NULL,
  `giasp` float NOT NULL,
  `khuyenmai` float NOT NULL,
  `anhsp` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `chitiet_sp` text NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblsanpham`
--

INSERT INTO `tblsanpham` (`id_sanpham`, `tensp`, `loaisp_id`, `giasp`, `khuyenmai`, `anhsp`, `soluong`, `chitiet_sp`, `tinhtrang`) VALUES
(6, 'Bộ thìa đũa', 31, 80000, 10, 'BoThiaDua.jpeg', 100, '<p>Bộ th&igrave;a đũa cao cấp</p>\r\n', 1),
(7, 'Chén bát sứ Fruit', 31, 40000, 10, 'ChenBatSu.jpeg', 30, '<p>Ch&eacute;n b&aacute;t sứ cao cấp</p>\r\n', 1),
(8, 'Nước lọc', 28, 4000, 10, 'BoThuocKeCapy.jpeg', 30, '<p>Chai lớn 200ml</p>\r\n', 1),
(9, 'Ba chỉ bò Mỹ', 89, 1000000, 20, 'ba chỉ bò.png', 60, '<p>Được chăn nu&ocirc;i theo c&ocirc;ng nghệ Mỹ</p>\r\n', 1),
(10, 'Tôm viên thả lẩu', 89, 20000, 12, 'tôm viên thả lẩu.jpg', 30, '<p>Ngon bổ rẻ</p>\r\n', 1),
(11, 'Bò viên thả lẩu', 89, 400000, 15, 'bò thả lẩu.png', 35, '<p>Ngon nhức n&aacute;ch</p>\r\n', 1),
(12, 'Táo Mỹ', 94, 600000, 10, 'táo.jpg', 50, '<p>Sạch ngon&nbsp;</p>\r\n', 1),
(14, 'Pinattsu', 95, 20000, 10, 'đậu phộng.jpg', 20, '<p>Gi&ograve;n thơm</p>\r\n', 1),
(15, 'Bim Bim Swing', 95, 4000, 10, 'snack.png', 60, '<p>Ngon</p>\r\n', 1),
(16, 'Xúc xich', 79, 20000, 10, 'xúc xích.jpg', 30, '<p>Ngon</p>\r\n', 1),
(17, 'Mỳ KoKoMi', 75, 20000, 12, 'mid cocomi.jpg', 100, '<p>Giai gi&ograve;n</p>\r\n', 1),
(18, 'Miến sườn heo', 75, 20000, 10, 'miến sườn heo.jpg', 30, '<p>Rẻ</p>\r\n', 1),
(19, 'Cam đường', 94, 20000, 10, 'cam.jpg', 30, '<p>Si&ecirc;u sạch</p>\r\n', 1),
(20, 'Bánh socola', 96, 400000, 12, 'kẹo socola.jpg', 30, '<p>ngon</p>\r\n', 1),
(21, 'Hộp bánh orio', 96, 400000, 12, '10303879-thumb-1.png', 100, '<p>Rẻ bất ngờ</p>\r\n', 1),
(22, 'Rượu Chivas', 31, 400000, 10, 'Chivas18.jpg', 30, '<p>Thơm ngon đậm vị</p>\r\n', 1),
(23, 'Rượu gạo', 31, 1000000, 15, 'rượu nút lá chuối.jpg', 30, '<p>Ngon thơm</p>\r\n', 1),
(24, 'Kiwi New zeeland', 94, 400000, 15, 'kiwi new zealand.jpg', 30, '<p>Ngon bổ rẻ</p>\r\n', 1),
(25, 'Ớt ngọt xanh', 93, 20000, 12, 'ớt ngọt xanh.jpg', 60, '<p>Si&ecirc;u sạch</p>\r\n', 1),
(26, 'Giò lụa đông lạnh', 79, 400000, 10, 'giò lụa đông lạnh.jpg', 30, '<p>Thơm ngon</p>\r\n', 1),
(27, 'Rau cải mầm', 93, 500000, 25, 'rau mầm cải ngọt.jpg', 40, '<p>Sạch</p>\r\n', 1),
(28, 'cá đông lạnh', 79, 400000, 12, 'cá đông lạnh.jpg', 30, '<p>Gi&aacute; rẻ</p>\r\n', 1),
(29, 'Bánh gạo Nhật', 96, 400000, 15, 'bánh gạo ichi.png', 30, '<p>Gi&ograve;n</p>\r\n', 1),
(30, 'Xoài sấy dẻo', 95, 1000000, 20, 'xoài sấy dẻo.jpg', 30, '<p>Dai dẻo ngọt</p>\r\n', 1),
(31, 'Tôm bóc sẵn', 79, 1000000, 15, 'tôm bóc sẵn đông lạnh.jpg', 30, '<p>Ngon</p>\r\n', 1),
(34, 'Lương khô', 101, 24000, 2, 'LuongKho.jpeg', 34, '<p>tttt</p>\r\n', 1),
(38, 'Ngũ cốc', 101, 23888, 5, 'NguCoc.jpg', 32, '', 1),
(39, 'Mỳ KoKoMi', 75, 5000, 10, 'KoKoMi.jpeg', 111, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltk`
--

CREATE TABLE `tbltk` (
  `id_taikhoan` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `quyen` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltk`
--

INSERT INTO `tbltk` (`id_taikhoan`, `ten`, `email`, `pass`, `sdt`, `quyen`, `diachi`) VALUES
(1, 'dai   ', 'dai@gmail.com', '1', '123', 'giám đốc', 'hanoi'),
(4, 'ádfg', 'abcd@gmail.com', '852', '852637496', '', 'sdsfgbhngbdfvdcs'),
(7, 'qưẻtyui', 'qqqqqqqqaaa@gmail.com', '852741', '7986319985', 'Nhânviên', 'ádfj,mngscsdvfgbngb'),
(10, 'sdafgh', 'sadfgh@gmail.com', '852', '8945612', '', 'wertyuik'),
(11, 'qwe', 'admin@gmail.com', '1', '852096374', 'Nhânviên', 'dsfghjk'),
(12, 'cô giáo', 'cogiao@gmail.com', '852', '85296', 'Nhânviên', 'cóadasd'),
(13, 'SI', 'trngoc003@gmail.com', '1', '02837373733', '', 'Vĩnh Phúc'),
(14, 'Ngoc', 'utt@gmail.com', '1', '8945612', '', 'dsfghjk'),
(15, 'Trannn', 'tavanmanh1111@gmail.com', '2', '2', '', '2'),
(16, 'Daiiii', 'tranvanngoc180403@gmail.com', '1', '11111111111', '', '1'),
(17, '7iii', 'ty@gmail.com', '9', '9', '', 'i');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `sanpham_anh` varchar(255) NOT NULL,
  `session_idA` varchar(255) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `sanpham_tieude` varchar(255) NOT NULL,
  `sanpham_gia` float NOT NULL,
  `quantitys` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `ten_danhmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `ten_danhmuc`) VALUES
(16, 'Rau-củ quả'),
(18, 'Đồ khô'),
(24, 'Đồ uống'),
(25, 'Đồ đông lạnh'),
(35, 'Đồ ăn vặt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `cartA_id` int(11) NOT NULL,
  `sanpham_anh` varchar(255) NOT NULL,
  `session_idA` varchar(255) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `sanpham_tieude` varchar(255) NOT NULL,
  `sanpham_gia` float NOT NULL,
  `quantitys` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`cartA_id`, `sanpham_anh`, `session_idA`, `sanpham_id`, `sanpham_tieude`, `sanpham_gia`, `quantitys`) VALUES
(1, 'bialontiger.jpg', 'o4r78o32rpe57cn9037i8feg9n', 10, 'Bia lon tiger', 200000, 10),
(2, 'bialontiger.jpg', 'o4r78o32rpe57cn9037i8feg9n', 10, 'Bia lon', 200000, 10),
(3, 'bialontiger.jpg', 'o4r78o32rpe57cn9037i8feg9n', 10, 'Bia lon', 200000, 10),
(4, 'bialontiger.jpg', 'o4r78o32rpe57cn9037i8feg9n', 10, 'bia lon tiger', 2138430, 7),
(5, 'bia heinekeen.jpg', 'laprq4kmreoi7cel30g8369bk4', 7, 'Bia henikeen', 400000, 1),
(6, 'KoKoMi.jpeg', '4kelspahs2b874k48sj5n4dg9v', 39, 'Mỳ KoKoMi', 5000, 1),
(7, 'rau mầm cải ngọt.jpg', '4kelspahs2b874k48sj5n4dg9v', 27, 'Rau cải mầm', 500000, 1),
(8, 'miến sườn heo.jpg', '4kelspahs2b874k48sj5n4dg9v', 18, 'Miến sườn heo', 20000, 1),
(9, 'mid cocomi.jpg', '4kelspahs2b874k48sj5n4dg9v', 17, 'Mỳ KoKoMi', 20000, 1),
(10, 'táo.jpg', '4kelspahs2b874k48sj5n4dg9v', 12, 'Táo Mỹ', 600000, 1),
(11, 'miến sườn heo.jpg', '02tnlh8clnsj8is6kr14shb1os', 18, 'Miến sườn heo', 20000, 1),
(12, 'KoKoMi.jpeg', '02tnlh8clnsj8is6kr14shb1os', 39, 'Mỳ KoKoMi', 5000, 1),
(13, 'kẹo socola.jpg', 'ojr0am5lsku5aer6igrqqnb74r', 20, 'Bánh socola', 400000, 1),
(14, 'LuongKho.jpeg', 'ojr0am5lsku5aer6igrqqnb74r', 34, 'Lương khô', 24000, 1),
(15, 'KoKoMi.jpeg', 'ojr0am5lsku5aer6igrqqnb74r', 39, 'Mỳ KoKoMi', 5000, 1),
(16, 'cam.jpg', 'ojr0am5lsku5aer6igrqqnb74r', 19, 'Cam đường', 20000, 1),
(17, 'rau mầm cải ngọt.jpg', 'ojr0am5lsku5aer6igrqqnb74r', 27, 'Rau cải mầm', 500000, 1),
(18, 'LuongKho.jpeg', 'ojr0am5lsku5aer6igrqqnb74r', 34, 'Lương khô', 24000, 1),
(19, 'táo.jpg', 'ojr0am5lsku5aer6igrqqnb74r', 12, 'Táo Mỹ', 600000, 1),
(20, 'KoKoMi.jpeg', 'ojr0am5lsku5aer6igrqqnb74r', 39, 'Mỳ KoKoMi', 5000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoadon`
--

CREATE TABLE `tbl_hoadon` (
  `id_hoadon` int(11) NOT NULL,
  `madonhang` varchar(50) NOT NULL,
  `tongtien` float NOT NULL,
  `date_thongke` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_hoadon`
--

INSERT INTO `tbl_hoadon` (`id_hoadon`, `madonhang`, `tongtien`, `date_thongke`) VALUES
(1, '1', 35000000, '2023-10-17'),
(2, '2', 35400000, '2022-10-11'),
(9, 'o4r78o32', 14969000, '2023-10-18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loai_sp`
--

CREATE TABLE `tbl_loai_sp` (
  `id_loaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loai_sp`
--

INSERT INTO `tbl_loai_sp` (`id_loaisp`, `tenloaisp`, `id_danhmuc`) VALUES
(28, 'Nước ngọt', 24),
(31, 'Bia-rượu', 24),
(75, 'Mỳ tôm', 18),
(79, 'Thịt đông lạnh', 25),
(89, 'Đồ thả lẩu', 25),
(93, 'Rau củ', 16),
(94, 'Hoa quả', 16),
(95, 'Quẩy', 35),
(96, 'Bánh kẹo', 35),
(101, 'Ngũ cốc', 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `code_oder` varchar(255) NOT NULL,
  `session_idA` varchar(255) DEFAULT NULL,
  `register_id` int(11) NOT NULL,
  `giaohang` varchar(255) NOT NULL,
  `thanhtoan` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `code_oder`, `session_idA`, `register_id`, `giaohang`, `thanhtoan`, `order_date`, `status`) VALUES
(1, 'abcdtest', 'abcd123', 12, 'Chuyển phát nhanh', 'tienmat', '2023-10-12', '1'),
(2, 'abcdtest2', 'bgfr231', 12, 'Chuyển phát nhanh', 'tienmat', '2023-10-12', '0'),
(3, 'abcdtest2', 'abcd12343', 12, 'Chuyển phát nhanh', 'tienmat', '2023-10-12', '2'),
(4, 'o4r78o32', 'o4r78o32rpe57cn9037i8feg9n', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2023-10-18', '2'),
(5, 'o4r78o32', 'o4r78o32rpe57cn9037i8feg9n', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2023-10-18', '2'),
(6, 'o4r78o32', 'o4r78o32rpe57cn9037i8feg9n', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2023-10-18', '2'),
(7, 'o4r78o32', 'o4r78o32rpe57cn9037i8feg9n', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2023-10-18', '2'),
(8, 'laprq4km', 'laprq4kmreoi7cel30g8369bk4', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2023-10-19', '1'),
(9, '4kelspah', '4kelspahs2b874k48sj5n4dg9v', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2023-12-25', '1'),
(10, '4kelspah', '4kelspahs2b874k48sj5n4dg9v', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2023-12-25', '1'),
(11, '4kelspah', '4kelspahs2b874k48sj5n4dg9v', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2023-12-25', '1'),
(12, '4kelspah', '4kelspahs2b874k48sj5n4dg9v', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2023-12-25', '1'),
(13, '4kelspah', '4kelspahs2b874k48sj5n4dg9v', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2023-12-25', '1'),
(14, '02tnlh8c', '02tnlh8clnsj8is6kr14shb1os', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2023-12-31', '1'),
(15, '02tnlh8c', '02tnlh8clnsj8is6kr14shb1os', 21, 'Giao hàng chuyển phát nhanh', 'VNPAY', '2023-12-31', '1'),
(16, 'ojr0am5l', 'ojr0am5lsku5aer6igrqqnb74r', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-02', '1'),
(17, 'ojr0am5l', 'ojr0am5lsku5aer6igrqqnb74r', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-02', '1'),
(18, 'ojr0am5l', 'ojr0am5lsku5aer6igrqqnb74r', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-02', '1'),
(19, 'ojr0am5l', 'ojr0am5lsku5aer6igrqqnb74r', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-02', '1'),
(20, 'ojr0am5l', 'ojr0am5lsku5aer6igrqqnb74r', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-02', '1'),
(21, 'kt5qidrt', 'kt5qidrtl8am9b3thcp6c9k3ln', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-19', '1'),
(22, 'kt5qidrt', 'kt5qidrtl8am9b3thcp6c9k3ln', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-19', '1'),
(23, 'kt5qidrt', 'kt5qidrtl8am9b3thcp6c9k3ln', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-19', '1'),
(24, 'kt5qidrt', 'kt5qidrtl8am9b3thcp6c9k3ln', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-19', '1'),
(25, 'kt5qidrt', 'kt5qidrtl8am9b3thcp6c9k3ln', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-19', '1'),
(26, 'kt5qidrt', 'kt5qidrtl8am9b3thcp6c9k3ln', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-19', '1'),
(27, 'kt5qidrt', 'kt5qidrtl8am9b3thcp6c9k3ln', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-19', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_vnpay`
--

CREATE TABLE `tbl_vnpay` (
  `id_vnpay` int(11) NOT NULL,
  `vnp_amount` float NOT NULL,
  `vnp_bankCode` varchar(255) NOT NULL,
  `vnp_banktranno` varchar(255) NOT NULL,
  `vnp_cardtype` varchar(255) NOT NULL,
  `vnp_orderinfo` varchar(255) NOT NULL,
  `vnp_paydate` date NOT NULL,
  `vnp_tmncode` varchar(255) NOT NULL,
  `vnp_transactionno` varchar(255) NOT NULL,
  `code_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Chỉ mục cho bảng `tblbinhluan`
--
ALTER TABLE `tblbinhluan`
  ADD PRIMARY KEY (`id_binhluan`);

--
-- Chỉ mục cho bảng `tblkhachhang`
--
ALTER TABLE `tblkhachhang`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Chỉ mục cho bảng `tblnhanvien`
--
ALTER TABLE `tblnhanvien`
  ADD PRIMARY KEY (`id_nhanvien`);

--
-- Chỉ mục cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbltk`
--
ALTER TABLE `tbltk`
  ADD PRIMARY KEY (`id_taikhoan`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`cartA_id`);

--
-- Chỉ mục cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Chỉ mục cho bảng `tbl_loai_sp`
--
ALTER TABLE `tbl_loai_sp`
  ADD PRIMARY KEY (`id_loaisp`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  ADD PRIMARY KEY (`id_vnpay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tblbinhluan`
--
ALTER TABLE `tblbinhluan`
  MODIFY `id_binhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tblkhachhang`
--
ALTER TABLE `tblkhachhang`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tblnhanvien`
--
ALTER TABLE `tblnhanvien`
  MODIFY `id_nhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `tbltk`
--
ALTER TABLE `tbltk`
  MODIFY `id_taikhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `cartA_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  MODIFY `id_hoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_loai_sp`
--
ALTER TABLE `tbl_loai_sp`
  MODIFY `id_loaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  MODIFY `id_vnpay` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
