-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2023 pada 16.25
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sibook`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookmark`
--

CREATE TABLE `bookmark` (
  `id_bookmark` int(5) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_book` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id_book` int(10) NOT NULL,
  `book_name` varchar(500) NOT NULL,
  `author` varchar(200) NOT NULL,
  `book_desc` varchar(1000) NOT NULL,
  `book_img` varchar(1000) NOT NULL,
  `book_file` varchar(1000) NOT NULL,
  `id_cat` int(100) DEFAULT NULL,
  `book_keywords` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id_book`, `book_name`, `author`, `book_desc`, `book_img`, `book_file`, `id_cat`, `book_keywords`) VALUES
(1, 'Pengantar Manajemen', 'Priyono', 'Buku Pengantar Manajemen ini terdiri atas\r\nenam bab, cakupan materi yang dibahas meliputi\r\nSejarah dan teori Manajemen, Kerangka kerja\r\nMSDM, Organisasi, Kepemimpinan, Manajemen\r\nStrategik, Motivasi. Selain dalam bentuk cetak\r\n(hardcopy), buku Pengantar Manajemen ini juga\r\ntersedia dalam bentuk E-book.\r\nBuku Pengantar Manajemen ini sangat menarik\r\nuntuk dibaca oleh pendidik, mahasiswa maupun\r\nmasyarakat, karena menggunakan tata\r\nbahasa yang mudah dipahami. Semakin banyak\r\nbuku yang layak dan perlu kita baca, maka\r\npengetahuan akan semakin berkembang serta\r\nkita menjadi semakin cerdas dalam arti yang luas.', '1_cover pengantar manaj priyono.png', '1_Pengantar Manajemen by Priyono.pdf', 2, 'ebook pengantar manajemen priyono'),
(2, 'USING INFORMATION Technology, Eleventh Edition', 'BRIAN K. WILLIAMS, STACEY C. SAWYER ', 'A Practical Introduction to Computers & Communications.', '2_cover book UIT.png', '2_Using Information Technology A Practical Introduction to Computers.pdf', 1, 'ebook USING INFORMATION Technology Eleventh Edition BRIAN K. WILLIAMS STACEY C. SAWYER'),
(3, 'Pemrograman Modular: Prosedur & Fungsi', 'Aditya Rizki Yudiantika, M.Eng.', 'Pemrograman modular pada C++\r\nKelebihan pemrograman modular\r\nPengertian, notasi, dan pemanggilan prosedur\r\nPengertian, notasi, dan pemanggilan fungsi\r\nContoh prosedur dan fungsi pada C++\r\nJenis-jenis fungsi pada C++', '3_cover ppt pemro modul.png', '3_Pemrograman Modular Prosedur & Fungsi.pdf', 5, 'ebook PPT Pemrograman modular pada C++ '),
(4, 'Dasar-dasar Algoritma', 'ENDANG SUGIHARTI', 'Dasar-dasar algoritma bahasa pemrograman', '4_cover ppt dasar-dasar algo.png', '4_Dasar-dasar Algoritma 2020.pdf', 5, 'PPT dasar-dasar algoritma bahasa pemrograman'),
(5, 'Fungsi dan Rekursi', 'Endang Sugiharti', 'Fungsi dan rekursi dalam bahasa pemrograman C++', '5_cover ppt fungsi dan rekursi.png', '5_Fungsi dan Rekursi 2020.pdf', 5, 'PPT Fungsi dan Rekursi Bahasa Pemrograman C++'),
(6, 'Introduction to Business', 'Jeff Madura', 'Ebook pengantar bisnis', '6_cover book intro to business.png', '6_Introduction to Business.pdf', 3, 'ebook pengantar bisnis introduction to business jeff madura'),
(7, 'Basis Data (database)', 'Edi Sugiarto, S.Kom, M.Kom', 'Konsep-konsep basis data', '7_cover ppt basis data edi.png', '7_Konsep-konsep Basis Data EDI.pdf', 4, 'PPT konsep basis data database Edi Sugiarto'),
(8, 'Konsep Sistem Operasi', 'Imam Muiz', 'Buku yang membantu untuk mempelajari konsep-konsep dari mata kuliah Sistem Operasi', '8_cover book konsep so imam muiz.png', '8_Konsep Sistem Operasi.pdf', 6, 'ebook konsep sistem operasi imam muiz'),
(9, 'Pengantar Matematika Diskrit', 'RINALDI MUNIR', 'Bahan ajar pengantar matematika diskrit', '9_cover ppt pengantar matdis rinaldi.png', '9_Pengantar Matematika Diskrit (2015).pdf', 7, 'PPT bahan ajar pengantar matematika diskrit rinaldi munir'),
(10, 'Module 2: Basic Switch and End Device Configuration', 'Cisco Introduction to Networks v7.0 (ITN)', 'Implement initial settings including passwords, IP addressing, and default gateway parameters on a network switch and end devices.', '10_cover ppt module 2 basic switch cisco.png', '10_Module 2 - Basic Switch and End Device Configuration.pdf', 8, 'PPT Module 2: Basic Switch and End Device Configuration Cisco Introduction to Networks v7.0 (ITN)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id_cat` int(100) NOT NULL,
  `nama_cat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id_cat`, `nama_cat`) VALUES
(1, 'teknologi informasi'),
(2, 'manajamen'),
(3, 'bisnis'),
(4, 'basis data'),
(5, 'pemrograman'),
(6, 'sistem operasi'),
(7, 'matematika'),
(8, 'jaringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `id_user` int(10) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `id_review` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_book` int(10) NOT NULL,
  `like_dislike` int(1) NOT NULL,
  `review` varchar(255) NOT NULL,
  `report` int(1) NOT NULL,
  `report_desc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`id_review`, `id_user`, `id_book`, `like_dislike`, `review`, `report`, `report_desc`) VALUES
(1, 1, 1, 1, 'sangat helpful untuk yang baru mulai belajar manajemen, suka!', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_info`
--

CREATE TABLE `user_info` (
  `id_user` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_info`
--

INSERT INTO `user_info` (`id_user`, `nama`, `email`, `password`, `role`) VALUES
(1, 'yaemiko', 'yaemiko111@gmail.com', 'yaemiko111', 'user'),
(2, 'kazuha', 'kaedeharakazuha@gmail.com', 'kazuhaaa', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `views`
--

CREATE TABLE `views` (
  `id_view` int(255) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_book` int(10) NOT NULL,
  `download` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `views`
--

INSERT INTO `views` (`id_view`, `id_user`, `id_book`, `download`) VALUES
(1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`id_bookmark`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_book` (`id_book`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indeks untuk tabel `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_book` (`id_book`);

--
-- Indeks untuk tabel `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `views`
--
ALTER TABLE `views`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_book` (`id_book`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `id_bookmark` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id_cat` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bookmark`
--
ALTER TABLE `bookmark`
  ADD CONSTRAINT `bookmark_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user_info` (`id_user`),
  ADD CONSTRAINT `bookmark_ibfk_2` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`);

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `category` (`id_cat`);

--
-- Ketidakleluasaan untuk tabel `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user_info` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user_info` (`id_user`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user_info` (`id_user`),
  ADD CONSTRAINT `review_ibfk_3` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`);

--
-- Ketidakleluasaan untuk tabel `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user_info` (`id_user`),
  ADD CONSTRAINT `views_ibfk_2` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
