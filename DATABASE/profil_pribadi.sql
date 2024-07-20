-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2024 at 07:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profil_pribadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `kode` int(11) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `konten` text DEFAULT NULL,
  `tgl_posting` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`kode`, `kategori`, `judul`, `konten`, `tgl_posting`, `user`, `status`, `gambar`) VALUES
(57, 'Webinar', 'Webinar Study Independen', '<p>Selamat datang di webinar &#39;MongoDB Fundamentals: Mastering the Basics for Effective Database Management&#39;! Temukan dasar-dasar MongoDB dari instalasi hingga operasi CRUD, kueri data, keamanan, dan strategi backup. Cocok untuk pengembang yang ingin menguasai pengelolaan basis data dengan MongoDB. Bergabunglah dan tingkatkan keterampilan Anda dalam mengelola basis data dengan efisien!</p>\r\n\r\n<p>Narasumber :<br />\r\nJOHANTINUS.S<br />\r\nMahasiswa MSIB BISA AI Academy Batch 6</p>\r\n\r\n<p>Waktu :<br />\r\nJumat, 31 Mei 2024<br />\r\n15.30 - 17.30 WIB</p>\r\n\r\n<p>Link Pendaftaran Webinar :<br />\r\nhttps://tampil.id/event/detail/VGtSUmVVNTNQVDA9&nbsp;</p>\r\n', '2024-05-25', 'Johan', 'Aktif', 'SAMPLE.png'),
(59, 'Database', 'Membuat Database Menggunakan Cassandra Dengan Tool Docker Di Kali Linux', '<p><strong>Bagian : 1 Menginstall Docker</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Untuk pertama kali kita harus menginstall docker dengan perintah &agrave; sudo apt install -y docker.io.</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img alt=\"\" src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra1.jpg\" style=\"height:122px; width:522px\" /></p>\r\n\r\n<p><strong>Bagian : 2 Meminta hak akses</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Selanjutnya meminta hak akses sebagai superuser pada system kali linux dengan perintah &agrave; sudo su -</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra2.jpg\" style=\"height:55px; width:408px\" /></p>\r\n\r\n<p><strong>Bagian 3 : Menampilkan gambar pada docker</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Selanjutnya kita coba melihat daftar gambar pada docker yang ada di system kita dengan menuliskan perintah &agrave; docker images.</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra3.jpg\" style=\"height:90px; width:602px\" /></p>\r\n\r\n<p><strong>Bagian 4 : Mengunduh gambar docker yang berisi installasi cassandra</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Mengunduh (mengambil) gambar Docker yang berisi perangkat lunak Cassandra dari Docker Hub ke dalam mesin lokal Anda, dengan perintah &agrave; docker pull Cassandra.</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra4.jpg\" style=\"height:113px; width:602px\" /></p>\r\n\r\n<p><strong>Bagian 5 : membuat perintah </strong><strong>&agrave;</strong><strong> docker run -d --name johan_cassandra -p 9042:9042 &nbsp;&nbsp;cassandra:latest.</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Perintah docker run digunakan untuk menjalankan sebuah container dalam latar belakang (-d), dengan memberi nama pada container sebagai &#39;johan_cassandra&#39; (--name johan_cassandra) dan meneruskan port 9042 dari host ke dalam container (-p 9042:9042), menggunakan gambar Docker &#39;cassandra&#39; dengan tag &#39;latest&#39;, yang merupakan versi terbaru.</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra5.jpg\" style=\"height:70px; width:602px\" /></p>\r\n\r\n<p><strong>Bagian 6 : Menampilkan daftar container</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Selanjutnya menampilkan daftar container yang sedang berjalan di mesin Docker dengan menuliskan perintah &agrave; docker ps.</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra6.jpg\" style=\"height:48px; width:602px\" /></p>\r\n\r\n<p><strong>Bagian 7 : Membuka shell bash didalam container docker.</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Selanjutnya membuka shell Bash di dalam container Docker yang memiliki ID atau nama &quot;c24a5e092bc1&quot;, sehingga kita dapat berinteraksi langsung dengan lingkungan di dalam container tersebut. Dengan perintah &agrave; docker exec -it c24a5e092bc1 bash.</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra7.jpg\" style=\"height:72px; width:550px\" /></p>\r\n\r\n<p><strong>Bagian 8 : Interaksi dengan Cassandra menggunakan CQL.</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Selanjutnya masuk ke antarmuka baris perintah yang memungkinkan kita untuk mengeksekusi perintah-perintah CQL untuk membuat, mengelola, dan mengambil data dari sebuah cluster Cassandra yang terhubung. Dengan menuliskan perintah &agrave; cqlsh.</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra8.jpg\" style=\"height:73px; width:602px\" /></p>\r\n\r\n<p><strong>Bagian 9 : membuat keyspace baru.</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Selanjutnya membuat keyspace baru dengan nama &quot;elearning_keyspace&quot; menggunakan strategi replikasi sederhana dengan faktor replikasi satu. Dengan perintah &agrave; CREATE KEYSPACE elearning_keyspace WITH replication {&#39;class&#39;: &#39;SimpleStrategy&#39;, &#39;replication_factor&#39;: 1};.</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra9.jpg\" style=\"height:22px; width:602px\" /></p>\r\n\r\n<p><strong>Bagian 10 : Berali ke&nbsp; keyspace yang baru dibuat.</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Selanjutnya supaya enak kita memanipulasi data pada database kita maka kita harus masuk dulu kedalam keyspace tersebut dengan menuliskan perintah &agrave; USE elearning_keyspace.</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra10.jpg\" style=\"height:27px; width:439px\" /></p>\r\n\r\n<p><strong>Bagian 11 : membuat 5 buah table baru dalam elearning_keyspace.</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Selanjut kita membuat tabel baru dengan nama table yaitu : tabel siswa, tabel guru, tabel mata_pelajaran , tabel kelas, dan tabel nilai dengan menuliskan perintah &agrave; CREATE TABLE nama_keyspace.nama table( nama kolom data type data).</p>\r\n\r\n<p style=\"margin-left:36.0pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra11.jpg\" style=\"height:117px; width:562px\" /></p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra12.jpg\" style=\"height:96px; width:551px\" /></p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra13.jpg\" style=\"height:79px; width:602px\" /></p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra14.jpg\" style=\"height:133px; width:602px\" /></p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra15.jpg\" style=\"height:86px; width:601px\" /></p>\r\n\r\n<p><strong>Bagian 12 : mengisi data ke dalam tabel.</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra16.jpg\" style=\"height:51px; width:553px\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra17.jpg\" style=\"height:37px; width:552px\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra18.jpg\" style=\"height:42px; width:552px\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra19.jpg\" style=\"height:58px; width:537px\" /></p>\r\n\r\n<p><strong>Bagian 12 : menampilkan tabel dari keyspace.</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra20.jpg\" style=\"height:389px; width:544px\" /></strong></p>\r\n\r\n<p><strong>Bagian 12 : melakukan update data pada tabel.</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Update data pada tabel guru dengan mengganti nama guru </strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:72.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra21.jpg\" style=\"height:26px; width:489px\" /><strong><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra22.jpg\" style=\"height:116px; width:520px\" /></strong></p>\r\n\r\n<p style=\"margin-left:72.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra23.jpg\" style=\"height:20px; width:489px\" /><strong><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra24.jpg\" style=\"height:73px; width:522px\" /></strong></p>\r\n\r\n<ul>\r\n	<li><strong>Update data pada tabel siswa dengan menambah satu pada umur dari id_siswa </strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:72.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra25.jpg\" style=\"height:26px; width:490px\" /><strong><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cassandra21.jpg\" style=\"height:87px; width:524px\" /></strong></p>\r\n\r\n<p style=\"margin-left:72.0pt\"><strong><img src=\"file:///C:/Users/sapum/AppData/Local/Temp/msohtmlclip1/01/clip_image043.png\" style=\"height:10px; width:531px\" /></strong></p>\r\n\r\n<p style=\"margin-left:72.0pt\"><img src=\"file:///C:/Users/sapum/AppData/Local/Temp/msohtmlclip1/01/clip_image044.png\" style=\"height:22px; width:490px\" /><strong><img src=\"file:///C:/Users/sapum/AppData/Local/Temp/msohtmlclip1/01/clip_image045.png\" style=\"height:90px; width:508px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2024-05-24', 'johan', 'aktif', 'johan_cassandra.png'),
(61, 'Cyber Security', 'Cyber Security Essential Dengan Kali Linux', '<p><strong>Task Deskription</strong></p>\r\n\r\n<p>Lakukan pengumpulan informasi di kali linux menggunakan tools yang ada untuk mencari tahu DNS, lokasi server, sub-domain, versi php, jenis database, ip address, cms, dsbg.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bagian : 1 Untuk pertama kali kita update system </strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">Untuk pertama kali kita harus mengupdate system dengan perintah &agrave; sudo apt update &amp;&amp; &nbsp;sudo apt ugrade</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/WhatsApp%20Image%202024-05-31%20at%2022.54.34_88e21e59.jpg\" style=\"height:38px; width:431px\" /></p>\r\n\r\n<p><strong>Bagian : 2 Installasi tools yang dibutuhkan </strong></p>\r\n\r\n<ul>\r\n	<li><strong>Dnsenum </strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:72.0pt\">Sebagai alat untuk melakukan enumerasi DNS, yaitu proses mencari informasi DNS terkait sebuah domain.</p>\r\n\r\n<ul>\r\n	<li><strong>Sublist3r </strong>&agrave;Untuk enumerasi sub-domain.</li>\r\n	<li><strong>WhatWeb</strong> &agrave; Untuk mengidentifikasi versi PHP dan teknologi web lainnya.</li>\r\n	<li><strong>Nmap </strong>&agrave; Untuk memeriksa lokasi server dan IP address.</li>\r\n	<li><strong>Sqlmap</strong> &agrave;&nbsp; Untuk melakukan serangan SQL injection.</li>\r\n	<li><strong>Wpscan </strong>&agrave; Untuk mendeteksi kelemahan pada situs web WordPress.</li>\r\n	<li><strong>Joomscan</strong> &agrave; Untuk mendeteksi kelemahan pada situs web Joomla.</li>\r\n</ul>\r\n\r\n<p><strong>Bagian 3 : pengumpulan informasi </strong></p>\r\n\r\n<p style=\"margin-left:39.0pt\">Sekarang, kita akan melakukan pengumpulan informasi menggunakan tools yang telah diinstal, dan target kita yaitu web:&nbsp; itp.ac.id</p>\r\n\r\n<ul>\r\n	<li><strong>DNS Enumeration</strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:72.0pt\">Gunakan dnsenum untuk mengumpulkan informasi DNS dari domain tertentu.</p>\r\n\r\n<p style=\"margin-left:72.0pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:72.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cyber1.jpg\" style=\"height:336px; width:549px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Lokasi Server dan IP Address</strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:72.0pt\">Gunakan Nmap untuk memeriksa lokasi server dan IP address.</p>\r\n\r\n<p style=\"margin-left:72.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cyber2.jpg\" style=\"height:229px; width:550px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Sub-Domain Enumeration</strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:72.0pt\">Gunakan Sublist3r untuk mengumpulkan daftar sub-domain dari domain tertentu.</p>\r\n\r\n<p style=\"margin-left:72.0pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:72.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cyber3.jpg\" style=\"height:430px; width:544px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Versi PHP</strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:72.0pt\">Gunakan WhatWeb untuk mengidentifikasi versi PHP dan teknologi web lainnya.</p>\r\n\r\n<p style=\"margin-left:72.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cyber4.jpg\" style=\"height:121px; width:500px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Jenis Database</strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:72.0pt\">Gunakan Sqlmap untuk melakukan serangan SQL injection dan mendapatkan informasi tentang database yang digunakan.</p>\r\n\r\n<p style=\"margin-left:72.0pt\"><img src=\"/Portofolio_johan/admin/ckeditor/kcfinder/upload/images/cyber5.jpg\" style=\"height:304px; width:543px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kesimpulan </strong></p>\r\n\r\n<p>Pengumpulan informasi adalah langkah penting dalam proses penetrasi tes dan evaluasi keamanan. Dengan menggunakan berbagai tools yang disediakan oleh Kali Linux, kita dapat mengumpulkan informasi yang dibutuhkan untuk memahami infrastruktur dan kelemahan potensial dalam sebuah sistem.Dalam tutorial ini, kita menggunakan beberapa tools yang umum digunakan untuk pengumpulan informasi, seperti dnsenum untuk enumerasi DNS, Nmap untuk memeriksa lokasi server dan IP address, dan WhatWeb untuk mengidentifikasi versi PHP dan teknologi web lainnya.Selain itu, kita juga menggunakan tools seperti Sublist3r untuk enumerasi sub-domain, Sqlmap untuk melakukan serangan SQL injection. Dengan melakukan langkah-langkah ini secara sistematis, kita dapat mengumpulkan informasi yang komprehensif tentang sistem target, yang dapat membantu kita dalam menentukan strategi penetrasi dan mengidentifikasi potensi celah keamanan.</p>\r\n', '2024-06-01', 'Johan', 'aktif', 'post_cyber-security-essential-dengan-kali-linux.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bulan`
--

CREATE TABLE `tbl_bulan` (
  `kode` int(11) NOT NULL,
  `uraian` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `kode` int(11) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `konten` text DEFAULT NULL,
  `tgl_posting` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `data_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_folio`
--

CREATE TABLE `tbl_folio` (
  `kode` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_folio`
--

INSERT INTO `tbl_folio` (`kode`, `nama`, `alamat`, `gambar`) VALUES
(13, 'Projek portofolio pribadi', 'website ini saya buat pakai HTML, CSS, JAVASCRIPT, BOOTSTRAP, MYSQL, PHP', 'web_portofolio.jpg'),
(14, 'Web Open trip Mentawai milik CV. KABITAT', 'website ini saya buat pakai HTML, CSS, JAVASCRIPT, BOOTSTRAP, MYSQL, PHP', 'project_web-kabitat.jpg'),
(15, 'Web Elearning sebagai TA mhs bp 20', 'website ini saya buat pakai HTML, CSS, JAVASCRIPT, BOOTSTRAP, MYSQL, PHP', 'web_elearning-milik-mahasiawa-sem8.jpg'),
(16, 'web sistem informasi hidayatullah', 'website ini saya buat pakai HTML, CSS, JAVASCRIPT, BOOTSTRAP, MYSQL, PHP', 'web_hidatatullah.jpg'),
(17, 'Portofolio', 'website ini saya buat pakai HTML, CSS, JAVASCRIPT, BOOTSTRAP, MYSQL, PHP', 'porto.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jabatan`
--

CREATE TABLE `tbl_jabatan` (
  `kode` int(11) NOT NULL,
  `uraian` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_jabatan`
--

INSERT INTO `tbl_jabatan` (`kode`, `uraian`) VALUES
(4, 'Web Programming'),
(7, 'Cyber Security');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal_solat`
--

CREATE TABLE `tbl_jadwal_solat` (
  `kode` int(11) NOT NULL,
  `uraian` varchar(30) DEFAULT NULL,
  `jadwal` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_jadwal_solat`
--

INSERT INTO `tbl_jadwal_solat` (`kode`, `uraian`, `jadwal`) VALUES
(20, 'OFFICE WORD 2009', '90'),
(21, 'HTML', '90'),
(22, 'CSS', '90'),
(23, 'JAVASCRIPT', '90'),
(24, 'PHP', '90'),
(25, 'MYSQL', '80'),
(26, 'BOOTSTRAP', '90'),
(27, 'VUE.JS', '90'),
(28, 'EXPRESS.JS', '90'),
(29, 'AJAX', '90'),
(30, 'MongoDB', '90');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profil`
--

CREATE TABLE `tbl_profil` (
  `kode` int(11) NOT NULL DEFAULT 1,
  `sejarah` text DEFAULT NULL,
  `jadwal` text DEFAULT NULL,
  `visi_misi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_profil`
--

INSERT INTO `tbl_profil` (`kode`, `sejarah`, `jadwal`, `visi_misi`) VALUES
(1, '', '<p style=\"text-align:justify\"><strong>SAYA KULIAH DI INSTITUT TEKNOLOGI PADANG</strong><br />\r\ndengan jurusan Teknik Informatika</p>\r\n\r\n<p style=\"text-align:justify\"><strong>ALUMNI 2021</strong></p>\r\n', '<p><strong>Saya Johantinus.S, mahasiswa semester 5 program studi Teknik Informatika (S1) Institut Teknologi Padang angkatan tahun 2021. Memiliki pengalaman organisasi diantaranya GMNI cabang Padang, Komunitas Tangan Baik Sumatera Barat, dan IMPEDESMA . Saya memiliki minat tinggi di bidang pemrograman.sekalipun program yang saya buat error, tetapi saya selalu berusaha untuk menyelesaikan permasalahan tersebut sampai ketemu solusinya sehingga saya memiliki kepuasan tersendiri .</strong></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `kode` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`kode`, `user_name`, `password`, `nama`) VALUES
(8, 'admin', '7fedcb034ecf9df4be8c1ea13362053b', 'johan sapumaijat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_bulan`
--
ALTER TABLE `tbl_bulan`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_folio`
--
ALTER TABLE `tbl_folio`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_jadwal_solat`
--
ALTER TABLE `tbl_jadwal_solat`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_bulan`
--
ALTER TABLE `tbl_bulan`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_folio`
--
ALTER TABLE `tbl_folio`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_jadwal_solat`
--
ALTER TABLE `tbl_jadwal_solat`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
