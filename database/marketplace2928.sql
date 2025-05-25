-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2025 at 08:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketplace2928`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'rifan@gmail.com', '7d2db28175256c46ee0ffc0c63d810d6729e9fc3', 'Rifan M.T.');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `isi_artikel` text NOT NULL,
  `foto_artikel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `foto_artikel`) VALUES
(1, 'Sejarah Kain Katun Beserta manfaatnya', '<p>Mukena mewah bahan Santorini Silk Premium, yang lembut dan dingin di kulit. &nbsp;Menggunakan bahan yang ringan namun tidak mudah terbang ketika digunakan dan tidak menimbulkan bunyi kresek kresek. Mukena dewasa dengan size jumbo<br />\r\nJahitan halus, rapih standar butik. Produk dikemas dengan rapih dan wangi. Mukena dilengkapi dengan wadahnya yang cantik dan kecil sehingga mudah dibawa kemanapun.</p>\r\n\r\n<p>Mukena cocok untuk daily, travelling, seserahan ataupun hadiah ustzah atau guru.</p>\r\n\r\n<p>size&nbsp;<br />\r\nAtasan<br />\r\nPD 126 cm<br />\r\nPB 137 cm<br />\r\nLubang muka bisa di adjust menggunakan resleting berkualitas yang tidak mudah rusak<br />\r\nBagian risleting terlapisi kain sehingga tidak menimbulkan gatal pada wajah.</p>\r\n\r\n<p>Bawahan<br />\r\nPanjang rok 124cm<br />\r\nLIngkar &nbsp;rok 70 cm - melar sampai 145cm<br />\r\nMenggunakan karet yang tidak mudah kendor. &nbsp;</p>\r\n\r\n<p>*note (Harap dicuci terlebih dahulu sebelum digunakan), cuci manual sangat di sarankan agar produk awet.</p>\r\n', 'row-4-column-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `foto_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `foto_kategori`) VALUES
(1, 'fashion wanita', 'furina.jpg'),
(2, 'sparepart motor', 'sparepart.jpg'),
(4, 'new buat dihapus', 'row-1-column-1.png'),
(5, 'BLADE', 'row-3-column-1.png'),
(7, 'testing edit gir', 'download.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `email_member` varchar(100) NOT NULL,
  `password_member` varchar(100) NOT NULL,
  `nama_member` varchar(100) NOT NULL,
  `alamat_member` text NOT NULL,
  `wa_member` varchar(50) NOT NULL,
  `kode_distrik_member` varchar(10) NOT NULL,
  `nama_distrik_member` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `email_member`, `password_member`, `nama_member`, `alamat_member`, `wa_member`, `kode_distrik_member`, `nama_distrik_member`) VALUES
(1, 'selina@amikom.ac.id', 'b6793c71b59d3bb253e9336f0c11f70dace19e50', 'Selina Rifan Aulia', 'Purwomartani Kalasan Sleman', '081234567890', '512', 'Sleman'),
(2, 'lanesra@amikom.ac.id', 'a5375c7f48244c8f4876ee6f97bbda4d91fe1665', 'Lanesra', 'Arjawinangun Cirebon', '081328921993', '419', 'Cirebon');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL,
  `deskripsi_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_member`, `id_kategori`, `nama_produk`, `harga_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(1, 1, 1, 'Hijab segi empat pink', 90000, 'Screenshot_(472).png', 'Assalamualaikum. Sebelum membeli, mohon untuk membaca deskripsi produk terlebih dahulu! Karena produk yg kami jual sesuai dengan deskripsi ya ?\r\n\r\nReady stock siap kirim!\r\n\r\nAlesha voal menggunakan bahan voal Arabian Original import memiliki karakteristik flowly, ringan, nyaman dan mudah diatur. \r\n\r\nHijab dijahit lipit kecil dengan benang yang senada. Jahitan rapih dan rapat sehingga jahitan tidak mudah terlepas. \r\n\r\nUkuran hijab 120cm, ukuran hijab sebelum dipotong adalah 124 x 124. Jadi InsyaAllah ukuran tidak kurang dari 120cm. Kami menjahit sesuai dengan serat benangnya sehingga hasilnya presisi dan tidak bergelombang.\r\n\r\n\r\nDisclaimer.\r\nProduk yg di foto adalah benar produk yg kami jual, kami mengusahakan untuk menampilkan foto produk yg sesuai dengan aslinya. Warna bisa berbeda sedikit karena pengaruh device yg berbeda. Oleh karena itu apabila ingin melihat gambar yg lain, bisa hubungi kami via chat. \r\nSilahkan diorder ❤'),
(2, 1, 1, 'Mukena Travel Dewasa Silky', 200000, 'Screenshot_2025-05-14_144854.png', 'Mukena mewah bahan Santorini Silk Premium, yang lembut dan dingin di kulit.  Menggunakan bahan yang ringan namun tidak mudah terbang ketika digunakan dan tidak menimbulkan bunyi kresek kresek. Mukena dewasa dengan size jumbo\r\nJahitan halus, rapih standar butik. Produk dikemas dengan rapih dan wangi. Mukena dilengkapi dengan wadahnya yang cantik dan kecil sehingga mudah dibawa kemanapun.\r\n\r\nMukena cocok untuk daily, travelling, seserahan ataupun hadiah ustzah atau guru.\r\n\r\nsize \r\nAtasan\r\nPD 126 cm\r\nPB 137 cm\r\nLubang muka bisa di adjust menggunakan resleting berkualitas yang tidak mudah rusak\r\nBagian risleting terlapisi kain sehingga tidak menimbulkan gatal pada wajah.\r\n\r\nBawahan\r\nPanjang rok 124cm\r\nLIngkar  rok 70 cm - melar sampai 145cm\r\nMenggunakan karet yang tidak mudah kendor.  \r\n\r\n*note (Harap dicuci terlebih dahulu sebelum digunakan), cuci manual sangat di sarankan agar produk awet.'),
(4, 1, 2, 'gir yeay', 696969, 'download.jpg', 'lerolero part 2'),
(5, 1, 1, 'Meja lesehan', 450000, 'Screenshot_2025-05-18_135754.png', 'Meja makan lesehan dengan panjang 80cm dan lebar 40cm');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `caption_slider` text NOT NULL,
  `foto_slider` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `caption_slider`, `foto_slider`) VALUES
(1, 'New Arrival at Our Marketplace', 'row-4-column-1.png'),
(2, 'Banyak Pilihan warna tersedia', 'row-2-column-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL DEFAULT current_timestamp(),
  `belanja_transaksi` int(11) NOT NULL,
  `status_transaksi` enum('pesan','lunas','batal','dikirim','selesai') NOT NULL DEFAULT 'pesan',
  `ongkir_transaksi` int(11) NOT NULL,
  `total_transaksi` int(11) NOT NULL,
  `bayar_transaksi` int(11) NOT NULL,
  `distrik_pengirim` varchar(255) NOT NULL,
  `nama_pengirim` varchar(100) NOT NULL,
  `wa_pengirim` varchar(50) NOT NULL,
  `alamat_pengirim` text NOT NULL,
  `distrik_penerima` varchar(255) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `wa_penerima` varchar(50) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `nama_ekspedisi` varchar(100) NOT NULL,
  `layanan_ekspedisi` varchar(100) NOT NULL,
  `estimasi_ekspedisi` varchar(50) NOT NULL,
  `berat_ekspedisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_member_beli`, `id_member_jual`, `tanggal_transaksi`, `belanja_transaksi`, `status_transaksi`, `ongkir_transaksi`, `total_transaksi`, `bayar_transaksi`, `distrik_pengirim`, `nama_pengirim`, `wa_pengirim`, `alamat_pengirim`, `distrik_penerima`, `nama_penerima`, `wa_penerima`, `alamat_penerima`, `nama_ekspedisi`, `layanan_ekspedisi`, `estimasi_ekspedisi`, `berat_ekspedisi`) VALUES
(1, 1, 2, '2025-03-11 08:07:45', 100000, 'pesan', 20000, 120000, 120000, 'Bantul', 'Lanesra', '081234567890', 'Bambanglipuro No 12 Bantul', 'Sleman', 'Arif Nur Rohman', '081328921993', 'Purwomartani RT 4 Kalasan Sleman', 'JNE', 'Kilat', '1 Hari', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_beli` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_produk`, `nama_beli`, `harga_beli`, `jumlah_beli`) VALUES
(1, 1, 1, 'Hijab Segi Empat', 50000, 1),
(2, 1, 2, 'Mukena', 50000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
