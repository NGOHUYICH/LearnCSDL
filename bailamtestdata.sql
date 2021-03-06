-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.25 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table bailamtestdata.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `mdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Khach Hang';

-- Dumping data for table bailamtestdata.customers: ~0 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `name`, `address`, `email`, `cdate`, `mdate`) VALUES
	(1, 'NGO HUY ICH', 'HA NOI', 'ngoich08@gmail.com', '2021-06-16', '2021-06-16'),
	(2, 'ONG VAN THANH', 'BAC GIANG', 'thanhov@gmail.com', '2021-06-16', '2021-06-16'),
	(3, 'MAI NGOC TUYEN', 'THANH HOA', 'tuyenth@gmail.com', '2021-06-16', '2021-06-16'),
	(4, 'Phạm Nhật Vượng', 'LAI CHAU', 'vuongpn@gmail.com', '2021-07-16', '2021-06-16'),
	(5, 'Nguyễn Thị Phương Thảo', 'TUYEN QUANG', 'phuongthao@gmail.com', '2021-07-16', '2021-06-16'),
	(6, 'Đoàn Nguyên Đức', 'HA GIANG', 'nguyenduc@gmail.com', '2021-07-16', '2021-06-16'),
	(7, 'Đặng Lê Nguyên Vũ', 'BAC NINH', 'nguyenvu@gmail.com', '2021-07-16', '2021-06-16'),
	(8, 'Hoài Linh', 'THAI NGUYEN', 'hoalinh@gmail.com', '2021-08-16', '2021-06-16'),
	(9, 'Ánh Viên', 'SON LA', 'anhvien@gmail.com', '2021-08-16', '2021-06-16'),
	(10, 'Ngô Bảo Châu', 'BAC KAN', 'baochau@gmail.com', '2021-08-16', '2021-06-16'),
	(11, 'Đàm Vĩnh Hưng', 'PHU THO', 'damvinhhung@gmail.com', '2021-08-16', '2021-06-16'),
	(12, 'Sơn Tùng M-TP', 'HA NAM', 'sontung@gmail.com', '2021-09-16', '2021-06-16'),
	(13, 'Khởi My', 'NAM DINH', 'khoimy@gmail.com', '2021-09-16', '2021-06-16'),
	(14, 'Trấn Thành', 'NINH BINH', 'tranthanh@gmail.com', '2021-09-16', '2021-06-16'),
	(15, 'Đông Nhi', 'HAI DUONG', 'dongnhi@gmail.com', '2021-09-16', '2021-06-16'),
	(16, 'Mỹ Tâm', 'HAI PHONG', 'mytam@gmail.com', '2021-09-16', '2021-06-16'),
	(17, 'Mai Kiều Liên', 'QUANG NAM', 'kieulien@gmail.com', '2021-09-16', '2021-06-16'),
	(18, 'Phạm Thị Việt Nga', 'QUANG NGAI', 'vietnga@gmail.com', '2021-10-16', '2021-06-16'),
	(19, 'Hồ Hùng Anh', 'BINH DINH', 'hotunganh@gmail.com', '2021-10-16', '2021-06-16'),
	(20, 'Nguyễn Đăng Quang', 'BINH DUONG', 'nguyendangquang@gmail.com', '2021-10-16', '2021-06-16'),
	(21, 'Nguyễn Văn Đạt', 'HCM', 'nguyenvandat@gmail.com', '2021-10-16', '2021-06-16'),
	(22, 'Nguyễn Đức Thụy', 'NGHE AN', 'duchuy@gmail.com', '2021-11-16', '2021-06-16'),
	(23, 'Hồ Xuân Năng', 'LONG AN', 'xuannang@gmail.com', '2021-11-16', '2021-06-16'),
	(24, 'Nguyễn Hiếu Liêm', 'HUE', 'hieulien@gmail.com', '2021-12-16', '2021-06-16'),
	(25, 'Đặng Khắc Vỹ', 'KON TUM', 'khacvy@gmail.com', '2021-12-16', '2021-06-16');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table bailamtestdata.invoices
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `mdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__customers` (`customer_id`),
  CONSTRAINT `FK__customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Hoa Don';

-- Dumping data for table bailamtestdata.invoices: ~0 rows (approximately)
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` (`id`, `date`, `customer_id`, `cdate`, `mdate`) VALUES
	(1, '2021-06-16', 9, '2021-06-16', '2021-06-16'),
	(2, '2021-06-16', 11, '2021-06-16', '2021-06-16'),
	(3, '2021-07-16', 7, '2021-07-16', '2021-06-16'),
	(4, '2021-07-16', 19, '2021-07-16', '2021-06-16'),
	(5, '2021-07-16', 24, '2021-07-16', '2021-06-16'),
	(6, '2021-07-16', 23, '2021-07-16', '2021-06-16'),
	(7, '2021-07-16', 24, '2021-07-16', '2021-06-16'),
	(8, '2021-07-16', 2, '2021-07-16', '2021-06-16'),
	(9, '2021-08-16', 25, '2021-08-16', '2021-06-16'),
	(10, '2021-08-16', 15, '2021-08-16', '2021-06-16'),
	(11, '2021-08-16', 2, '2021-08-16', '2021-06-16'),
	(12, '2021-08-16', 4, '2021-08-16', '2021-06-16'),
	(13, '2021-08-16', 18, '2021-08-16', '2021-06-16'),
	(14, '2021-08-16', 2, '2021-08-16', '2021-06-16'),
	(15, '2021-08-16', 9, '2021-08-16', '2021-06-16'),
	(16, '2021-08-16', 5, '2021-08-16', '2021-06-16'),
	(17, '2021-09-16', 12, '2021-09-16', '2021-06-16'),
	(18, '2021-09-16', 24, '2021-09-16', '2021-06-16'),
	(19, '2021-09-16', 13, '2021-09-16', '2021-06-16'),
	(20, '2021-09-16', 24, '2021-09-16', '2021-06-16'),
	(21, '2021-09-16', 10, '2021-09-16', '2021-06-16'),
	(22, '2021-09-16', 10, '2021-09-16', '2021-06-16'),
	(23, '2021-09-16', 3, '2021-09-16', '2021-06-16'),
	(24, '2021-09-16', 23, '2021-09-16', '2021-06-16'),
	(25, '2021-09-16', 2, '2021-09-16', '2021-06-16'),
	(26, '2021-09-16', 4, '2021-09-16', '2021-06-16'),
	(27, '2021-10-06', 5, '2021-10-06', '2021-06-16'),
	(28, '2021-10-06', 11, '2021-10-06', '2021-06-16'),
	(29, '2021-10-06', 2, '2021-10-06', '2021-06-16'),
	(30, '2021-10-06', 2, '2021-10-06', '2021-06-16'),
	(31, '2021-06-16', 2, '2021-06-16', '2021-06-16'),
	(32, '2021-10-06', 25, '2021-10-06', '2021-06-16'),
	(33, '2021-10-06', 25, '2021-10-06', '2021-06-16'),
	(34, '2021-10-06', 11, '2021-10-06', '2021-06-16'),
	(35, '2021-10-06', 25, '2021-10-06', '2021-06-16'),
	(36, '2021-10-06', 6, '2021-10-06', '2021-06-16'),
	(37, '2021-10-06', 15, '2021-10-06', '2021-06-16'),
	(38, '2021-10-06', 23, '2021-10-06', '2021-06-16'),
	(39, '2021-10-06', 6, '2021-10-06', '2021-06-16'),
	(40, '2021-11-16', 25, '2021-11-16', '2021-06-16'),
	(41, '2021-11-16', 25, '2021-11-16', '2021-06-16'),
	(42, '2021-11-16', 12, '2021-11-16', '2021-06-16'),
	(43, '2021-11-16', 1, '2021-11-16', '2021-06-16'),
	(44, '2021-12-16', 11, '2021-12-16', '2021-06-16'),
	(45, '2021-12-16', 19, '2021-12-16', '2021-06-16'),
	(46, '2021-12-16', 15, '2021-12-16', '2021-06-16'),
	(47, '2020-12-16', 6, '2021-12-16', '2021-06-16'),
	(48, '2022-03-16', 1, '2022-03-16', '2022-03-16'),
	(49, '2022-03-16', 1, '2022-03-16', '2022-03-16');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;

-- Dumping structure for table bailamtestdata.invoice_lines
CREATE TABLE IF NOT EXISTS `invoice_lines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__invoices` (`invoice_id`),
  KEY `FK_invoice_lines_products` (`product_id`),
  CONSTRAINT `FK__invoices` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  CONSTRAINT `FK_invoice_lines_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Hoa Don Line';

-- Dumping data for table bailamtestdata.invoice_lines: ~0 rows (approximately)
/*!40000 ALTER TABLE `invoice_lines` DISABLE KEYS */;
INSERT INTO `invoice_lines` (`id`, `invoice_id`, `product_id`, `qty`, `unit_price`) VALUES
	(1, 1, 12, 1, 100000),
	(2, 2, 3, 5, 90000),
	(3, 3, 4, 3, 90000),
	(4, 4, 5, 2, 80000),
	(5, 5, 7, 5, 80000),
	(6, 6, 8, 10, 80000),
	(7, 7, 9, 4, 80000),
	(8, 8, 10, 3, 80000),
	(9, 9, 12, 5, 80000),
	(10, 10, 11, 6, 80000),
	(11, 11, 6, 3, 90000),
	(12, 12, 8, 2, 90000),
	(13, 13, 9, 5, 90000),
	(14, 14, 10, 7, 100000),
	(15, 15, 11, 8, 100000),
	(16, 16, 9, 9, 100000),
	(17, 17, 3, 10, 100000),
	(18, 18, 2, 11, 100000),
	(19, 19, 2, 14, 100000),
	(20, 20, 5, 16, 90000),
	(21, 21, 6, 19, 90000),
	(22, 22, 8, 10, 90000),
	(23, 23, 9, 5, 80000),
	(24, 24, 6, 5, 80000),
	(25, 25, 7, 6, 80000),
	(26, 26, 8, 7, 50000),
	(27, 27, 5, 8, 50000),
	(28, 28, 5, 10, 50000),
	(29, 29, 4, 11, 50000),
	(30, 30, 3, 12, 50000),
	(31, 31, 3, 14, 50000),
	(32, 32, 4, 11, 50000),
	(33, 33, 6, 5, 50000),
	(34, 34, 8, 6, 10000),
	(35, 35, 9, 7, 50000),
	(36, 36, 10, 8, 70000),
	(37, 37, 11, 9, 70000),
	(38, 38, 12, 3, 80000),
	(39, 39, 15, 2, 70000),
	(40, 40, 11, 3, 70000),
	(41, 41, 14, 4, 70000),
	(42, 42, 7, 5, 70000),
	(43, 43, 8, 6, 70000),
	(44, 44, 13, 7, 70000),
	(45, 45, 10, 8, 70000),
	(46, 46, 10, 9, 70000),
	(47, 47, 13, 10, 10000),
	(48, 48, 10, 10, 30000),
	(49, 49, 10, 10, 40000);
/*!40000 ALTER TABLE `invoice_lines` ENABLE KEYS */;

-- Dumping structure for table bailamtestdata.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `mdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='San Pham';

-- Dumping data for table bailamtestdata.products: ~0 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `qty`, `price`, `cdate`, `mdate`) VALUES
	(1, 'Banh mi', 100, 20000, '2021-06-16', '2021-06-16'),
	(2, 'Banh gao', 120, 15000, '2021-07-16', '2021-06-16'),
	(3, 'Banh da', 100, 50000, '2021-06-16', '2021-06-16'),
	(4, 'Bánh su kem', 20, 150000, '2021-07-16', '2021-06-16'),
	(5, 'Cupcake', 40, 40000, '2021-06-16', '2021-06-16'),
	(6, 'Bánh rán Dorayaki', 10, 34000, '2021-06-16', '2021-06-16'),
	(7, 'Muffin', 5, 26000, '2021-07-16', '2021-06-16'),
	(8, 'Pancake', 23, 78000, '2021-06-16', '2021-06-16'),
	(9, 'Tiramisu', 32, 200000, '2021-06-16', '2021-06-16'),
	(10, 'Bánh gato', 14, 18700, '2021-05-16', '2021-06-16'),
	(11, 'Cheesecake', 44, 160000, '2021-06-16', '2021-06-16'),
	(12, ' Bánh ngọt Donut', 16, 40000, '2021-05-16', '2021-06-16'),
	(13, 'Bánh bông lan trứng muối', 24, 23000, '2021-06-16', '2021-06-16'),
	(14, 'Bánh Pizza', 36, 35000, '2021-08-16', '2021-06-16'),
	(15, 'Bánh ngải Chi Lăng', 21, 12000, '2021-08-16', '2021-06-16'),
	(16, 'Bánh mứt trái cây', 10, 10000, '2021-09-16', '2021-06-16');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
