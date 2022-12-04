-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2020 pada 19.32
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penyakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(7) NOT NULL,
  `kode` varchar(7) NOT NULL,
  `gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kode`, `gejala`) VALUES
(1, 'G001', 'Demam'),
(2, 'G002', 'Pilek'),
(3, 'G003', 'Batuk (dengan & tanpa dahak)'),
(4, 'G004', 'Lemas'),
(5, 'G005', 'Kehilangan Rasa dan Bau'),
(6, 'G006', 'Sakit tenggorokan'),
(7, 'G007', 'Sakit Kepala');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id` int(7) NOT NULL,
  `penyakit` varchar(50) DEFAULT NULL,
  `definisi` longtext NOT NULL,
  `penyebab` longtext NOT NULL,
  `pengendalian_teknis` varchar(200) NOT NULL,
  `pengendalian_kimia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id`, `penyakit`, `definisi`, `penyebab`, `pengendalian_teknis`, `pengendalian_kimia`) VALUES
-- (1, 'COVID-19', 'Memiliki 4 Jenis sekaligus yang terdifinisi COVID-19', 'virus COVID-19', 'SEGERA KE RUMAH SAKIT', '-'),
-- (2, 'Bukan Covid', 'Ciri - Ciri COVID-19', 'Virus', 'Segera ke Klinik dan membeli Obat', '-'),
-- (3, 'Batuk', 'Ciri - Ciri COVID-19', 'Virus', 'Segera ke Klinik dan membeli Obat', '-'),
-- (4, 'Bersin', 'Bukan Ciri - Ciri COVID-19', 'Virus', 'Segera ke Klinik dan membeli Obat', '-'),
-- (5, 'Kehilangan Rasa dan Bau', 'Ciri - Ciri COVID-19', 'Virus', 'Segera ke Klinik dan membeli Obat', '-'),
-- (6, 'Pilek', 'Bukan Ciri - Ciri COVID-19', 'Virus', 'Segera ke Klinik dan membeli Obat', '-'),
-- (7, 'Sesak Nafas', 'Ciri - Ciri COVID-19', 'Paru - Paru', 'Segera ke Klinik dan membeli Obat', '-'),
-- (8, 'Kemungkinan COVID-19', 'Memiliki 3 Jenis sekaligus yang terdifinisi COVID-19', 'virus COVID-19', 'SEGERA KE RUMAH SAKIT', '-'),
-- (9, 'Bukan Covid', 'Memiliki 1 Jenis sekaligus yang terdifinisi COVID-19', 'virus', 'Segera ke klinik untuk membeli obat', '-'),
-- (10, 'Batuk', 'Memiliki 1 Jenis sekaligus yang terdifinisi COVID-19', 'virus', 'Segera ke klinik untuk membeli obat', '-'),
-- (11, 'Kehilangan Rasa dan Bau', 'Memiliki 1 Jenis sekaligus yang terdifinisi COVID-19', 'virus', 'Segera ke klinik untuk membeli obat', '-');
(1, 'Demam', 'Bukan Covid-19 jika yang dirasakan hanya demam (diatas 37°C).',' Infeksi dalam tubuh (bakteri / virus), kelelahan', 'Istirahat, minum obat demam', '-'),
(2, 'Flu', 'Bukan Covid-19. Jika hanya Pilek (hidung tersumbat) merupakan salah satu gejala utama penyakit Flu.',' Udara dingin, udara kotor, virus influenza', 'Istirahat, minum obat flu, kompress', '-'),
(3, 'Batuk', 'Bukan Covid-19 jika hanya Batuk.',' Radang tenggorokan, panas dalam, infeksi tenggorokan, bakteri', 'Istirahat, minum obat batuk, minum air hangat', '-'),
(4, 'Kelelahan', 'Bukan Covid-19 jika hanya lelah.',' Kelelahan', 'Perbanyak Istirahat, dan Minum Air Putih', '-'),
(5, 'Flu', 'Bukan Covid-19 jika hanya kehilangan bau tapi memungkinkan menjadi penyakit flu bila tidak segera ditangani.',' Virus influenza, penciuman terganggu', 'Istirahat, minum obat flu', '-'),
(6, 'Panas Dalam', 'Bukan Covid-19 jika hanya sakit tenggorokan melainkan panas dalam segera ditangani jika tidak maka akan menjadi radang tenggorokkan.',' Kurang minum air, infeksi tenggorokan, makan berminyak', 'Perbanyak minum air putih dan larutan penyegar.', '-'),
(7, 'Sakit Kepala', 'Bukan Covid-19 jika hanya sakit kepala segera perbanyak istirahat.',' Stress, kurang tidur, pemicu saraf tak lazim', 'Minum obat sakit kepala,dan Perbanyak istirahat', '-'),
(12, 'Covid-19', '4 Gejala yang berbeda, Demam + Pilek + Lemas + Kehilangan rasa dan bau + Sakit kepala, merupakan gejala utama dari Covid-19.',' Virus covid 19', 'Minum antivirus, vitamin, dan antibiotik', '-'),
(13, 'Covid-19', 'Gejala utama covid-19 dimana sebuah gejala hampir dialami.',' Virus covid 19', 'Minum antivirus, vitamin, dan antibiotik', '-'),
(14, 'Kemungkinan Covid', 'Gejala demam dan kehilangan penciuman merupakan sebuah gejala yang memiliki kemungkinan Covid-19. Sebaiknya melakukan diagnosa ulang pada halaman sebelumnya untuk memastikan lebih lanjut. ',' Virus, bakteri, jamur', 'Kompres, minum obat dan vitamin', '-'),
(15, 'Panas dalam', 'Bukan Covid-19 jika hanya batuk dan sakit tenggorokan melainkan panas dalam segera ditangani jika tidak dapat menjadi radang tenggorokkan.',' Radang tenggorokan, panas dalam, infeksi tenggorokan, bakteri', 'Istirahat, minum obat batuk, minum air hangat', '-'),
(16, 'Panas Dalam', 'Bukan Covid-19. Gejala yang dialami merupakan gejala utama panas dalam melainkan panas dalam segera ditangani jika tidak dapat menjadi radang tenggorokkan.',' Radang tenggorokan, panas dalam, infeksi tenggorokan, bakteri', 'Istirahat, minum obat batuk, minum air hangat', '-'),
(21, 'Covid-19', '4 gejala yang berbeda, Pilek + Lemas + Hilang penciuman + Sakit Kepala',' Virus, bakteri, rendah imun', 'Minum antivirus, vitamin, dan antibiotik', '-'),
(22, 'Covid-19', '4 gejala yang berbeda, Pilek + Lemas + Hilang penciuman + Sakit Tenggorokkan',' Virus, bakteri, panas dalam', 'Minum antivirus, antibiotik, vitamin, dan istirahat cukuo', '-'),
(23, 'Kemungkinan Covid-19', '3 Gejala berbeda, kehilangan rasa bau, sakit tenggorokan dan sakit kepala',' Migrain, stress, virus', 'Minum obat, vitamin, dan istirahat cukup', '-'),
(24, 'Kemungkinan Covid-19', '3 gejala berbeda, Lemas, kehilangan penciuman dan sakit kepala',' Stress, panas dalam, virus flu', 'Minum vitamin, obat flu, dan minum air hangat', '-'),
(25, 'Kemungkinan Covid-19', '4 Gejala berbeda, pilek, batuk, kehilangan dan penciuman serta Sakit Kepala merupakan gejala utama Covid-19',' Virus, bakteri, jamur', 'Istirahat yang cukup, minum vitamin, antibiotik', '-'),
(26, 'Demam', 'Bukan Covid-19 jika yang dirasakan hanya demam (diatas 37°C)',' Infeksi dalam tubuh (bakteri / virus), kelelahan', 'Istirahat, minum obat demam', '-'),
(27, 'Flu', 'Bukan Covid-19. Jika hanya Pilek (hidung tersumbat) merupakan salah satu gejala utama penyakit Flu',' Udara dingin, udara kotor, virus influenza', 'Istirahat, minum obat flu, kompress', '-'),
(28, 'Batuk', 'Bukan Covid-19 jika hanya Batuk',' Radang tenggorokan, panas dalam, infeksi tenggorokan, bakteri', 'Istirahat, minum obat batuk, minum air hangat', '-'),
(29, 'Kelelahan', 'Bukan Covid-19 jika hanya lelah',' Kelelahan', 'Perbanyak Istirahat, dan Minum Air Putih', '-'),
(30, 'Flu', 'Bukan Covid-19 jika hanya kehilangan bau tapi memungkinkan menjadi penyakit flu bila tidak segera ditangani.',' Virus influenza, penciuman terganggu', 'Istirahat, minum obat flu', '-'),
(31, 'Panas Dalam', 'Bukan Covid-19 jika hanya sakit tenggorokan melainkan panas dalam segera ditangani jika tidak maka akan menjadi radang tenggorokkan.',' Kurang minum air, infeksi tenggorokan, makan berminyak', 'Perbanyak minum air putih dan larutan penyegar.', '-'),
(32, 'Sakit Kepala', 'Bukan Covid-19 jika hanya sakit kepala segera perbanyak istirahat.',' Stress, kurang tidur, pemicu saraf tak lazim', 'Minum obat sakit kepala,dan Perbanyak istirahat', '-');
-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rule`
--

CREATE TABLE `tb_rule` (
  `id` int(7) NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL,
  `G016` tinyint(1) DEFAULT NULL,
  `G017` tinyint(1) DEFAULT NULL,
  `G018` tinyint(1) DEFAULT NULL,
  `G019` tinyint(1) DEFAULT NULL,
  `G020` tinyint(1) DEFAULT NULL,
  `G021` tinyint(1) DEFAULT NULL,
  `G022` tinyint(1) DEFAULT NULL,
  `G023` tinyint(1) DEFAULT NULL,
  `G024` tinyint(1) DEFAULT NULL,
  `G025` tinyint(1) DEFAULT NULL,
  `G026` tinyint(1) DEFAULT NULL,
  `G027` tinyint(1) DEFAULT NULL,
  `G028` tinyint(1) DEFAULT NULL,
  `G029` tinyint(1) DEFAULT NULL,
  `G030` tinyint(1) DEFAULT NULL,
  `G031` tinyint(1) DEFAULT NULL,
  `G032` tinyint(1) DEFAULT NULL
  
  -- `G026` tinyint(1) DEFAULT NULL,
  -- `G027` tinyint(1) DEFAULT NULL,
  -- `G028` tinyint(1) DEFAULT NULL,
  -- `G029` tinyint(1) DEFAULT NULL,
  -- `G030` tinyint(1) DEFAULT NULL,
  -- `G031` tinyint(1) DEFAULT NULL,
  -- `G032` tinyint(1) DEFAULT NULL,
  -- `G033` tinyint(1) DEFAULT NULL,
  -- `G034` tinyint(1) DEFAULT NULL,
  -- `G035` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_rule`
--

-- INSERT INTO `tb_rule` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`, `G012`, `G013`, `G014`, `G015`, `G016`, `G017`, `G018`, `G019`, `G020`, `G021`, `G022`, `G023`, `G024`, `G025`, `G026`, `G027`, `G028`, `G029`, `G030`, `G031`, `G032`, `G033`, `G034`, `G035`) VALUES
-- (1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (4, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (7, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (9, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (10, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (11, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (12, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (13, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (14, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (15, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (16, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (17, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (18, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (19, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (20, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (21, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (22, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (23, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (24, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- (25, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `tb_rule` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 1, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 1, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 1, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 1, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 1, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 1, 0),
(12, 1, 1, 0, 1, 1, 0, 1, 0),
(13, 1, 1, 0, 1, 1, 1, 1, 0),
(14, 1, 0, 0, 0, 1, 0, 0, 0),
(15, 0, 0, 1, 0, 0, 1, 0, 0),
(16, 0, 0, 1, 0, 0, 1, 1, 0),
(21, 0, 1, 0, 1, 1, 0, 1, 0),
(22, 0, 1, 0, 1, 1, 1, 0, 0),
(23, 0, 0, 0, 0, 1, 1, 1, 0),
(24, 0, 0, 0, 1, 1, 0, 1, 0),
(25, 0, 1, 1, 0, 1, 0, 1, 0),
(26, 1, 0, 0, 0, 0, 0, 0, 0),
(27, 0, 1, 0, 0, 0, 0, 0, 0),
(28, 0, 0, 1, 0, 0, 0, 0, 0),
(29, 0, 0, 0, 1, 0, 0, 0, 0),
(30, 0, 0, 0, 0, 1, 0, 0, 0),
(31, 0, 0, 0, 0, 0, 1, 0, 0),
(32, 0, 0, 0, 0, 0, 0, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indeks untuk tabel `tb_rule`
--
ALTER TABLE `tb_rule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `tb_rule`
--
ALTER TABLE `tb_rule`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD CONSTRAINT `tb_penyakit_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
