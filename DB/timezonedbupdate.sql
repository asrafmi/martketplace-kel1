-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for member_timezone
CREATE DATABASE IF NOT EXISTS `member_timezone` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `member_timezone`;

-- Dumping structure for table member_timezone.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_nama` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table member_timezone.admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
	(9, 'Ardhan', 'admin', '3030aaea323e7bb2af333cea46843128', '1151456242_maxresdefault.jpg');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table member_timezone.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_nama` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_hp` varchar(20) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table member_timezone.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_email`, `customer_hp`, `customer_alamat`, `customer_password`) VALUES
	(9, 'Ardhan Ardiansyah', 'ardhanardiansyahardana@gmail.com', '0895422142063', 'JL Griya Bandung Asri 2 blok h5 no 16', 'e579188272198e313f45db5ffa3c565c'),
	(10, 'TEST', 'testingaja@gmail.com', '02482949', 'jl rr', '64f89a83bfcd631aae6f0ec54f15e52b'),
	(11, 'BAHAN COBAAN', 'testingaja2@gmail.com', '353456356', 'jl rr', 'ad57484016654da87125db86f4227ea3');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table member_timezone.invoice
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_tanggal` date NOT NULL,
  `invoice_customer` int(11) NOT NULL,
  `invoice_nama` varchar(255) NOT NULL,
  `invoice_hp` varchar(255) NOT NULL,
  `invoice_alamat` text NOT NULL,
  `invoice_provinsi` varchar(255) NOT NULL,
  `invoice_kabupaten` varchar(255) NOT NULL,
  `invoice_kurir` varchar(255) NOT NULL,
  `invoice_berat` int(11) NOT NULL,
  `invoice_ongkir` int(11) NOT NULL,
  `invoice_total_bayar` int(11) NOT NULL,
  `invoice_status` int(11) NOT NULL,
  `invoice_resi` varchar(255) NOT NULL,
  `invoice_bukti` text NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table member_timezone.invoice: ~2 rows (approximately)
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`invoice_id`, `invoice_tanggal`, `invoice_customer`, `invoice_nama`, `invoice_hp`, `invoice_alamat`, `invoice_provinsi`, `invoice_kabupaten`, `invoice_kurir`, `invoice_berat`, `invoice_ongkir`, `invoice_total_bayar`, `invoice_status`, `invoice_resi`, `invoice_bukti`) VALUES
	(10, '2021-11-26', 9, 'Ardhan Ardiansyah', '0895422142063', 'jl griya bandung asri 2 blok h5 no 16', 'Jawa Barat', '', ' - ', 1, 0, 835000, 4, '', '1165898084.jpg'),
	(11, '2021-11-26', 9, 'Ardhan Ardiansyah', '0895422142063', 'JL Griya', 'Kepulauan Riau', 'Batam', 'TIKI - ONS', 1, 47000, 190300, 0, '', ''),
	(12, '2022-05-15', 10, 'BAHAN COBAAN', '08', '9ROO', '', '', ' - ', 1, 0, 735100, 1, '', '18193687.png');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

-- Dumping structure for table member_timezone.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(255) NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table member_timezone.kategori: ~8 rows (approximately)
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
	(1, 'Tidak Berkategori'),
	(3, 'Valorant'),
	(4, 'Counter Strike: Global Offensive'),
	(5, 'Creative Destruction'),
	(6, 'League Of Legends'),
	(7, 'Overwatch'),
	(8, 'Steam'),
	(9, 'World Of Warcraft');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- Dumping structure for table member_timezone.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `produk_id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_nama` varchar(255) NOT NULL,
  `produk_kategori` int(11) NOT NULL,
  `produk_harga` int(11) NOT NULL,
  `produk_keterangan` text NOT NULL,
  `produk_jumlah` int(11) NOT NULL,
  `produk_berat` int(11) NOT NULL,
  `produk_foto1` varchar(255) DEFAULT NULL,
  `produk_foto2` varchar(255) DEFAULT NULL,
  `produk_foto3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`produk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Dumping data for table member_timezone.produk: ~9 rows (approximately)
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` (`produk_id`, `produk_nama`, `produk_kategori`, `produk_harga`, `produk_keterangan`, `produk_jumlah`, `produk_berat`, `produk_foto1`, `produk_foto2`, `produk_foto3`) VALUES
	(14, '8150 Points Valorant', 3, 835000, '<p>\r\n\r\n</p><div><div><div><div><div><div>\r\n\r\nHai kak selamat datang di Toko kami ^_^\r\n\r\n<br></div></div></div></div></div></div><div><br></div><div>\r\n\r\nData yang diperlukan untuk Proses :&nbsp;</div><div>RIOT ID :......(Bukan username &amp; bukan nickname)</div><div><br></div><div>\r\n\r\nPerhatian :\r\n\r\n<br></div><div><ul><li>\r\n\r\nKesalahan menuliskan data (RIOT ID) bukan tanggung jawab kami..\r\n\r\n<br></li><li>\r\n\r\nKesalahan menuliskan data (RIOT ID) bukan tanggung jawab kami..\r\n\r\n<br></li><li>\r\n\r\nProses apabila lancar 1-5 Menit\r\n\r\n<br></li><li>\r\n\r\nJangan lupa konfirmasi "Selesai" apabila diamond sudah masuk...\r\n\r\n<br></li></ul></div><p></p>', 90, 1, '1362242035_9e34514a71c580b3da2c17314609804958e6b52e2eb09c7280308e7a045d4dbc_thumb.jpg', '1170899742_ks1cj6yf1of2ifhgz3nwqi_thumbnail.jpg', ''),
	(15, '8250 Points Valorant', 3, 819900, '<p>\r\n\r\n</p><div><div><div><div><div><div>Hai kak selamat datang di Toko kami ^_^\r\n\r\n<br></div></div></div></div></div></div><div><br></div><div>\r\n\r\nData yang diperlukan untuk Proses : </div><div>RIOT ID :......(Bukan username &amp; bukan nickname)</div><div><br></div><div>\r\n\r\nPerhatian :\r\n\r\n<br></div><div><ul><li>\r\n\r\nKesalahan menuliskan data (RIOT ID) bukan tanggung jawab kami..\r\n\r\n<br></li><li>\r\n\r\nKesalahan menuliskan data (RIOT ID) bukan tanggung jawab kami..\r\n\r\n<br></li><li>\r\n\r\nProses apabila lancar 1-5 Menit\r\n\r\n<br></li><li>\r\n\r\nJangan lupa konfirmasi "Selesai" apabila diamond sudah masuk...</li></ul></div>\r\n\r\n<br><p></p>', 4, 1, '656193757_yhl4zsbyq90l8i94329x7_thumbnail.jpg', '656193757_ks1cj6yf1of2ifhgz3nwqi_thumbnail.jpg', ''),
	(16, '9200 Points Valorant', 3, 1100000, '<p>\r\n\r\n</p><div><div><div><div><div><div>Hai kak selamat datang di Toko kami ^_^\r\n\r\n<br></div></div></div></div></div></div><div><br></div><div>\r\n\r\nData yang diperlukan untuk Proses : </div><div>RIOT ID :......(Bukan username &amp; bukan nickname)</div><div><br></div><div>\r\n\r\nPerhatian :\r\n\r\n<br></div><div><ul><li>\r\n\r\nKesalahan menuliskan data (RIOT ID) bukan tanggung jawab kami..\r\n\r\n<br></li><li>\r\n\r\nKesalahan menuliskan data (RIOT ID) bukan tanggung jawab kami..\r\n\r\n<br></li><li>\r\n\r\nProses apabila lancar 1-5 Menit\r\n\r\n<br></li><li>\r\n\r\nJangan lupa konfirmasi "Selesai" apabila diamond sudah masuk...</li></ul></div>\r\n\r\n<br><p></p>', 1, 1, '2135830424_gqclkt686iee93vqbugtdq_thumbnail.jpg', '2135830424_ks1cj6yf1of2ifhgz3nwqi_thumbnail.jpg', ''),
	(17, 'AK-47 | Frontside Misty (Field-Tested) ', 4, 155000, '<p>\r\n\r\nDeskripsi Item:&nbsp;</p><p>Float 0.20 low float</p><p>&nbsp;Full sticker liquid holo rmr 2020 4x&nbsp;</p><p>-&nbsp;</p><p>Barang premium!!\r\n\r\n<br></p>', 100, 1, '280123534_z4onnr2wtna7az0tqkrhk_thumbnail.jpg', '', ''),
	(18, 'AK-47 | Bloodsport (Field-Tested)', 4, 535000, '<p>\r\n\r\nDeskripsi Item:</p><p>&nbsp;SUPER LOW FLOAT!!&nbsp;</p><p>Float 0.20\r\nMulus banget!!&nbsp;</p><p>Barang Premium\r\n\r\n<br></p>', 30, 1, '762148273_4z6wchvxsuakjx9zclcga_thumbnail.jpg', '', ''),
	(19, 'Music Kit StatTrak | bbnoS u mad', 4, 110000, '<p>\r\n\r\n<b>StatTrak™ Music Kit | bbno$, u mad!</b>\r\n\r\n<br></p>', 1, 1, '1906744700_5op88bzuqgnf1oj058hpru_thumbnail.png', '', ''),
	(20, 'USD $10', 6, 143300, '<p>\r\n\r\nRiot Access LoL</p><p>&nbsp;Nominal: 10 USD&nbsp;</p><p>Server: North America&nbsp;</p><p>Bisa diconvert ke Riot Points game2 dari Riot Games&nbsp;</p><p>Pengiriman Instant, langsung terkirim setelah pembayaran berhasil\r\n\r\n<br></p>', 25, 1, '735556568_nzxiy4hicq9kgt74jty0u_thumbnail.jpg', '', ''),
	(21, 'USD $50', 6, 735100, '<p>\r\n\r\n\r\n\r\nBrand: Riot Games</p><p>&nbsp;Type: Digital Code&nbsp;</p><p>Valid Locations: United States\r\nLevel-up your League of Legends experience!&nbsp;</p><p>&nbsp;The perfect gift for anyone who plays League of Legends—whether they’re new to the game or seasoned pros&nbsp;</p><p>Unlocks in-game currency that can be used to purchase Champions, Skins, Emotes, and more...\r\nGift cards are only valid on the North American (NA) server\r\n\r\n\r\n\r\n<br></p>', 40, 1, '1975432142_ugbimnhd9kbbgq7ea02mk_thumbnail.jpg', '', ''),
	(22, 'IDR 120.000', 8, 124000, '<p>\r\n\r\nKode 100% Legal (authorized reseller resmi)\r\n\r\n<br></p><p>\r\n\r\nTidak ada expired, bisa digunakan kapanpun\r\n\r\n<br></p><p><br></p><p>\r\n\r\nCara redeem steam wallet:\r\n\r\n<br></p><p></p><ol><li>\r\n\r\nBuka halaman : <a target="_blank" rel="nofollow" href="https://store.steampowered.com/account/redeemwalletcode">https://store.steampowered.com/account/redeemwalletcode</a>&nbsp;<br></li><li>\r\n\r\nLogin id steam anda&nbsp;<br></li><li>\r\n\r\nInput kode yang sudah anda dapatkan di kolom steam wallet code&nbsp;<br></li><li>\r\n\r\nKlik continue&nbsp;</li><li>&nbsp;\r\n\r\n\r\nSelesai, saldo steam anda sudah bertambah.\r\n\r\n<br></li></ol><p></p>', 150, 1, '388293388_cb13bc341052ebb0f51a9f9cf405136024f943ca348326f3f6b14c505a97e7df_thumb.jpg', '', '');
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;

-- Dumping structure for table member_timezone.transaksi
CREATE TABLE IF NOT EXISTS `transaksi` (
  `transaksi_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksi_invoice` int(11) NOT NULL,
  `transaksi_produk` int(11) NOT NULL,
  `transaksi_jumlah` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  PRIMARY KEY (`transaksi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- Dumping data for table member_timezone.transaksi: ~10 rows (approximately)
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` (`transaksi_id`, `transaksi_invoice`, `transaksi_produk`, `transaksi_jumlah`, `transaksi_harga`) VALUES
	(1, 0, 3, 1, 120000),
	(2, 0, 1, 1, 1234),
	(3, 0, 3, 1, 120000),
	(4, 0, 1, 1, 1234),
	(5, 1, 3, 1, 120000),
	(6, 1, 1, 1, 1234),
	(9, 3, 3, 1, 120000),
	(10, 4, 4, 1, 123000),
	(21, 10, 14, 1, 835000),
	(22, 11, 20, 1, 143300),
	(23, 12, 21, 1, 735100);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
