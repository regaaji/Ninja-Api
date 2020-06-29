-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 29 Jun 2020 pada 11.38
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest_api_book`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sri Wintala Achmad', '2020-04-21 23:01:43', '0000-00-00 00:00:00'),
(2, 'Anom Achmad', '2020-04-26 01:49:41', '0000-00-00 00:00:00'),
(3, 'Akira Toriyama', '2020-04-26 01:58:38', '0000-00-00 00:00:00'),
(4, 'One & Yusuke Murata', '2020-04-26 02:07:26', '0000-00-00 00:00:00'),
(5, 'J.K Rowling', '2020-05-07 02:08:26', '0000-00-00 00:00:00'),
(7, 'njajal2', '2020-05-13 07:16:58', '0000-00-00 00:00:00'),
(8, 'tes123', '2020-05-15 03:13:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `genre` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `image`, `genre`, `author`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Harry Potter and the Goblet of Fire', 'Harry Potter and the Goblet of Fire is a fantasy book written by British author J. K. Rowling and the fourth novel in the Harry Potter series.', 'image-1588729112886.jpeg', 7, 1, 1, '2020-06-15 06:34:31', '0000-00-00 00:00:00'),
(4, 'The Immortal Life of Henrietta Lacks', 'The Immortal Life of Henrietta Lacks', 'image-1588727392701.jpeg', 7, 1, 1, '2020-05-13 09:13:18', '0000-00-00 00:00:00'),
(6, 'Demon Slayer', 'Demon Slayer: Kimetsu no Yaiba is a Japanese manga series written and illustrated by Koyoharu Got?ge. The story follows Tanjiro Kamado, a young boy who becomes a demon slayer after his family is slaughtered and his younger sister Nezuko is turned into a demon.', 'image-1588729370406.jpg', 7, 4, 1, '2020-06-15 00:53:45', '2020-04-23 05:48:01'),
(10, 'Anne of Green Gables 2', 'As soon as Anne Shirley arrives at the snug white farmhouse called Green Gables, she is sure she wants to stay forever . . . but will the Cuthberts send her back to to the orphanage? Anne knows she\\\'s not what they expected—a skinny girl with fiery red hair and a temper to match. If only she can convince them to let her stay, she\\\'ll try very hard not to keep rushing headlong into scrapes and blurting out the first thing that comes to her mind. Anne is not like anyone else, the Cuthberts agree; she is special—a girl with an enormous imagination. This orphan girl dreams of the day when she can call herself Anne of Green Gables', 'image-1588729566039.jpg', 6, 2, 2, '2020-05-15 07:31:21', '2020-04-29 22:11:30'),
(11, 'Adventure Time', 'Twelve- year-old Finn battles evil in the Land of Ooo. Assisted by his magical dog, Jake, Finn roams the Land of Ooo righting wrongs and battling evil. Usually that evil comes in the form of the Ice King, who is in search of a wife', 'image-1588729665356.jpg', 5, 1, 2, '2020-05-13 09:12:16', '2020-04-29 22:12:19'),
(12, 'Breaking Dawn', 'Breaking Dawn is the 2008 fourth and final novel in The Twilight Saga by American author Stephenie Meyer. Divided into three parts, the first and third sections are written from Bella Swan\\\'s perspective and the second is written from the perspective of Jacob Black.', 'image-1588729980149.jpg', 7, 4, 1, '2020-06-15 06:34:52', '0000-00-00 00:00:00'),
(13, 'Harry Potter and the Chamber of Secrets', 'Harry Potter and the Chamber of Secrets is a fantasy novel written by British author J. K. Rowling and the second novel in the Harry Potter series.', 'image-1588730119505.jpeg', 7, 2, 2, '2020-05-06 01:55:19', '0000-00-00 00:00:00'),
(15, 'The Tiger Rising', 'The Tiger Rising is a 2001 children\\\'s book written by Newbery Medal winning author Kate DiCamillo. It is about a 12-year-old named Rob Horton who finds a caged tiger in the center of the woods near his home. The book was a National Book Award Finalist.', 'image-1588730257123.jpg', 7, 3, 1, '2020-05-14 01:07:25', '0000-00-00 00:00:00'),
(16, 'New Moon', 'New Moon is a 2006 romantic fantasy novel by author Stephenie Meyer, and is the second novel in the Twilight series. The novel continues the story of Bella Swan and vampire Edward Cullen\\\'s relationship.', 'image-1588730381185.jpg', 6, 1, 2, '2020-06-08 03:38:54', '0000-00-00 00:00:00'),
(17, 'asas', 'sasas', 'image-1589334553866.png', 5, 1, 1, '2020-05-13 01:49:13', '0000-00-00 00:00:00'),
(18, 'asas', 'asas', 'image-1589169871448.png', 5, 1, 2, '2020-05-11 04:04:31', '0000-00-00 00:00:00'),
(20, 'njajal', 'asasas', 'image-1589350300233.png', 5, 1, 1, '2020-05-13 07:49:46', '0000-00-00 00:00:00'),
(21, 'njajal', 'sasas', 'image-1589771668401.png', 6, 1, 2, '2020-05-18 03:14:28', '0000-00-00 00:00:00'),
(22, 'tes', 'asas', 'image-1589773060532.png', 5, 1, 2, '2020-05-18 03:37:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `borrows`
--

CREATE TABLE `borrows` (
  `id_borrow` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `name_image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `borrows`
--

INSERT INTO `borrows` (`id_borrow`, `user_id`, `books_id`, `title`, `name_image`, `status`, `created_at`, `updated_at`) VALUES
(8, 15, 6, 'Demon Slayer', 'image-1588729370406.jpg', 2, '2020-05-13 09:59:35', '2020-06-07 09:21:39'),
(9, 15, 6, 'Demon Slayer', 'image-1588729370406.jpg', 2, '2020-05-14 05:40:54', '2020-05-14 06:24:39'),
(13, 15, 6, 'Demon Slayer', 'image-1588729370406.jpg', 2, '2020-05-15 01:35:47', '2020-05-15 01:36:57'),
(14, 15, 10, 'Anne of Green Gables 2', 'image-1588729566039.jpg', 2, '2020-05-15 01:36:41', '2020-05-17 07:31:20'),
(15, 12, 6, 'Demon Slayer', 'image-1588729370406.jpg', 2, '2020-05-15 01:37:36', '2020-05-17 00:48:14'),
(16, 18, 1, 'Harry Potter and the Goblet of Fire', 'image-1588729112886.jpeg', 2, '2020-05-18 03:31:55', '2020-06-15 00:53:11'),
(19, 18, 6, 'Demon Slayer', 'image-1588729370406.jpg', 2, '2020-06-07 09:47:13', '2020-06-15 00:52:50'),
(21, 20, 16, 'New Moon', 'image-1588730381185.jpg', 2, '2020-06-08 02:04:01', '2020-06-08 02:04:19'),
(22, 18, 6, 'Demon Slayer', 'image-1588729370406.jpg', 1, '2020-06-15 00:53:46', '0000-00-00 00:00:00'),
(23, 24, 1, 'Harry Potter and the Goblet of Fire', 'image-1588729112886.jpeg', 2, '2020-06-15 06:17:47', '2020-06-15 06:18:18'),
(24, 18, 1, 'Harry Potter and the Goblet of Fire', 'image-1588729112886.jpeg', 1, '2020-06-15 06:34:32', '0000-00-00 00:00:00'),
(25, 18, 12, 'Breaking Dawn', 'image-1588729980149.jpg', 1, '2020-06-15 06:34:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'chronicle', '2020-06-04 05:30:08', '0000-00-00 00:00:00'),
(6, 'education', '2020-05-13 01:55:21', '0000-00-00 00:00:00'),
(7, 'solace', '2020-05-15 01:40:22', '0000-00-00 00:00:00'),
(8, 'fantasy', '2020-05-13 01:58:10', '0000-00-00 00:00:00'),
(10, 'njajal4', '2020-05-15 03:13:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'User', '2020-04-27 04:37:16', '0000-00-00 00:00:00'),
(2, 'Admin', '2020-04-27 04:23:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statusbook`
--

CREATE TABLE `statusbook` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statusbook`
--

INSERT INTO `statusbook` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Unavailable', '2020-04-23 03:29:52', '0000-00-00 00:00:00'),
(2, 'Available', '2020-04-23 03:30:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `salt` text NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `salt`, `role`, `created_at`, `updated_at`) VALUES
(2, 'rohmawati', 'wati', '6c26f3084c551474dc1d488a2e447c02ec52d7c20e2e06234d102eefaaed0cfb0e5bef00f1c0e739e7f2c0f214bd283014b9c454edbdb85ad16c51ffa8f04531', 'be0d052413d5dfcee3', 1, '2020-04-23 23:54:31', '2020-04-23 23:54:31'),
(5, 'ito', 'ito', '719d7a5aca7cd6559c2445b19920e24f6382f5850c917a78d7f145e226202568a475a2dcb6d8f765ac4c9ddf80c82233bbc74f2ac5e0863cb66ff0a624bda36c', '97601983ce9667ed01', 2, '2020-04-25 05:14:47', '2020-04-25 05:14:47'),
(6, 'wahyu', 'wahyu', 'b0b192944e43fef05794ea93a2b30bcc21b7a0f574cf6510abe9bbb712bb2b90707a07668e99bfac253c0e08c4b1b6667fe4dc1763583c2c25c725b3abb2c3f5', '61e6d4fdbc7f8bd001', 1, '2020-04-27 06:53:56', '2020-04-27 06:53:56'),
(7, 'rini', 'rini', 'b0ccdc79f6cbbb99b689826be3297f59804b45e053ad9adcbf9dedd7cf1fc2b3f940051c664a1112e256eb2c9b4c8cebd66b83e95a5c45b1b46bd6de5c84aa88', 'b0bdd9a3118a1ba233', 1, '2020-04-27 08:23:20', '2020-04-27 08:23:20'),
(9, 'fira', 'fira', '920314c25d913c12d9434f4e87c68b9fdb66df87ce8d13310b687ecce2237094acb833f0633e109cab480f422161452196df067c371b9c3b12210f715c016259', 'a31047f6fbe1e8df7e', 1, '2020-04-30 09:39:12', '2020-04-30 09:39:12'),
(12, 'siti', 'siti', 'ac4cfbd0e67c6320606944772f2c648babb6f0fb3dabd8104907165d11d0552527aae25f7a287d4c3ceecbe4f8c7e97b2c44244ce9c75f062ed998534b294886', '3e3c51f0bc78549266', 1, '2020-05-09 05:55:46', '2020-05-09 05:55:46'),
(13, 'admin', 'rega', '1014d09f93944a6a777febe17aab47b5b77d760568409ed4ba5fc1bf06d5632a1db54e770e70b07391d90e676e71b0f4a797160a8e9574af8f9dda667e3fed8e', '8b130f0219f714b503', 2, '2020-05-09 06:03:15', '2020-05-09 06:03:15'),
(15, 'yati', 'yati', '49da1d7a450aa123fec627aad54e5de8dd779c02dfa5b8c537bb68b670c42266d00cfb25201f564326d9b839442a4cb0614a22c1fc5b2de33728eb3dc4dd21d2', '3275b74470fb8da4f0', 1, '2020-05-11 04:22:20', '2020-05-11 04:22:20'),
(16, 'tiya', 'tiya', '8e8a411f5325233137483d4cf378440efe20c6ad9601ef066be46d97c89f0ea48af160bea627dea8cfe6dd26b2bd9a1c4210e6b00d3106ce9599410ce86d5533', '5491d125f28790203b', 1, '2020-05-15 12:08:59', '2020-05-15 12:08:59'),
(18, 'agus', 'agus', '635d901bb9132857818785b63e01c984cc3c49dcc9eca55c5fe992fdea5c2285d26ca66337c26e8ef2ef8ce7647ffc1183f4d9362b9eeaba00781260b82de790', '9a89f20a7b42690bc6', 1, '2020-05-18 03:28:25', '2020-05-18 03:28:25'),
(20, 'Budi', 'budi', '5917e4ca3d80b73e1b31f687afb236b24f5ea28dcb2eb3ec0ff71b9584012ba07f6238cc327ba404f26c44b279ec0f4ccc123516dd1f1c5ae5c71b18fb890150', '09075b308e586d119e', 1, '2020-06-08 01:33:30', '2020-06-08 01:33:30'),
(22, 'Bagas', 'bagas', 'e10e87995dc17f3be1b1c7ec6692e49c335c63265c81669340e40e581c60453107becbd9d6bb905c85f077aca263ada95c3e0fd11df86025fb52dcc07271a3c4', 'f7a6beedd0232878bf', 1, '2020-06-08 10:37:25', '2020-06-08 10:37:25'),
(23, 'Robi', 'robi', '0c236fe9eb0a9b464f728a7ee782dfc95215a5c1ed1be8c114a42654566b6209405b6067a75dec2588d0cfe771420de03604d13dd35cdd29c4aedf0db70c4240', '9953a6bf9dd107fb68', 1, '2020-06-11 08:09:38', '2020-06-11 08:09:38'),
(24, 'nisa', 'nisa', 'eb2cd9adb5a80549eca707893dad5411bc4ae814f58cea093f309eedc4906e9cce1c6f19693a0458b789303f4f6b1f145bb6913e40736ee87eea77e66085d0a7', 'fc0388bcd2c577ad25', 1, '2020-06-15 06:15:43', '2020-06-15 06:15:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`id_borrow`);

--
-- Indeks untuk tabel `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `statusbook`
--
ALTER TABLE `statusbook`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `borrows`
--
ALTER TABLE `borrows`
  MODIFY `id_borrow` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `statusbook`
--
ALTER TABLE `statusbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
