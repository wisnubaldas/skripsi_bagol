-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2020 pada 12.53
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mvc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `couriers`
--

CREATE TABLE `couriers` (
  `id` int(100) UNSIGNED NOT NULL,
  `users_id` int(100) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `wrapping_message` text DEFAULT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `couriers`
--

INSERT INTO `couriers` (`id`, `users_id`, `name`, `wrapping_message`, `firstname`, `lastname`, `email`, `phone`) VALUES
(1, 1, 'Fathonah Dalima Padmasari', 'Non eveniet nemo quibusdam omnis et.', 'Virman', 'Ardianto', 'wmandasari@gmail.co.id', '+1415847938778'),
(2, 1, 'Maria Lestari', 'Molestias eaque id dolores et rerum voluptas.', 'Shania', 'Utama', 'sihotang.nurul@prayoga.tv', '+3133668446189'),
(3, 1, 'Eka Widiastuti', 'Qui enim vel et odio.', 'Malik', 'Natsir', 'qori.nasyiah@hutagalung.go.id', '+6273287027484'),
(4, 1, 'Nardi Eko Mangunsong', 'Sint labore non rerum repudiandae et.', 'Aurora', 'Budiyanto', 'dtampubolon@uyainah.org', '+9918955756110'),
(5, 1, 'Bakijan Gunarto', 'Magni dignissimos dolores dicta eum.', 'Yosef', 'Saputra', 'taufan.namaga@gmail.com', '+2656343055242'),
(6, 1, 'Cindy Yolanda', 'Dolorem reiciendis omnis expedita architecto et.', 'Tami', 'Wasita', 'widiastuti.indah@oktaviani.name', '+9815234556821'),
(7, 1, 'Lanang Suryono M.M.', 'Est explicabo ipsa autem.', 'Ajiman', 'Gunarto', 'lailasari.ella@pertiwi.org', '+3212986570365'),
(8, 1, 'Tirta Cakrabirawa Waluyo S.I.Kom', 'Enim ad qui voluptate aut.', 'Jabal', 'Saptono', 'vanesa22@halimah.sch.id', '+5598883050541'),
(9, 1, 'Tirta Saptono S.E.', 'Quos minima iste eligendi minima molestias.', 'Fitria', 'Haryanti', 'agus04@uyainah.go.id', '+5495228639868'),
(10, 1, 'Soleh Narpati', 'Qui et est provident omnis minus.', 'Diah', 'Utama', 'yhalim@gmail.co.id', '+1301875864433'),
(11, 1, 'Johan Megantara', 'Voluptatem est natus id qui.', 'Rika', 'Salahudin', 'padmasari.karta@gmail.com', '+6487816968715'),
(12, 1, 'Bahuwarna Anggabaya Prayoga S.T.', 'Doloribus voluptas in sed qui corporis.', 'Kuncara', 'Padmasari', 'harsanto.pranowo@gmail.co.id', '+6811654640250'),
(13, 1, 'Tania Ghaliyati Suryatmi M.Pd', 'Sit nihil et illo.', 'Fitria', 'Uwais', 'darimin.mayasari@rahayu.co', '+2254265255720'),
(14, 1, 'Daliono Januar', 'Officia aut accusantium aliquam ab et est vel.', 'Praba', 'Zulaika', 'aisyah38@yahoo.co.id', '+1245486471984'),
(15, 1, 'Saadat Siregar', 'Commodi minus error voluptate culpa.', 'Talia', 'Permadi', 'januar.elma@sitorus.com', '+7823333207577'),
(16, 1, 'Jail Capa Utama M.Farm', 'Maxime nemo error deleniti dolores qui sit.', 'Edi', 'Haryanti', 'umar.hartati@gmail.com', '+5686991990011'),
(17, 1, 'Mustika Habibi', 'Sunt aut nostrum unde porro ut eveniet.', 'Silvia', 'Pratiwi', 'qbudiman@yahoo.com', '+1681063844203'),
(18, 1, 'Jail Mangunsong', 'Odit numquam reprehenderit nemo.', 'Gabriella', 'Saputra', 'latika05@yahoo.com', '+2846126245094'),
(19, 1, 'Sarah Nasyiah S.E.', 'Qui earum sed culpa ea qui reprehenderit quam.', 'Vanya', 'Mardhiyah', 'iprayoga@riyanti.co.id', '+3604334028283'),
(20, 1, 'Kalim Uwais M.Kom.', 'Omnis nam vel eum qui hic doloribus sequi illum.', 'Muni', 'Situmorang', 'ifa.manullang@yahoo.com', '+9797621851408'),
(21, 1, 'Septi Ciaobella Mulyani', 'Neque nulla totam modi laudantium.', 'Sabrina', 'Nasyidah', 'januar.kairav@narpati.in', '+8328270479595'),
(22, 1, 'Martaka Hidayat', 'Repellat sit non consectetur quo soluta aliquam.', 'Siti', 'Lazuardi', 'halima.irawan@gmail.co.id', '+6169193715275'),
(23, 1, 'Farah Hartati S.Gz', 'Ducimus et ut repellendus tenetur illo.', 'Kezia', 'Hastuti', 'cmahendra@gmail.co.id', '+7319637708517'),
(24, 1, 'Farhunnisa Mandasari', 'Temporibus enim et a eos maxime totam iste.', 'Dalima', 'Wijayanti', 'marsito.farida@suartini.ac.id', '+3515910178781'),
(25, 1, 'Leo Kurniawan', 'Soluta ut sit natus quaerat facilis totam.', 'Anom', 'Siregar', 'rizki.novitasari@yahoo.com', '+2799299605440'),
(26, 1, 'Najwa Vera Kuswandari M.TI.', 'Quia illum aut totam ut et.', 'Raharja', 'Hariyah', 'swidiastuti@yulianti.biz.id', '+8346476398042'),
(27, 1, 'Cindy Kamila Maryati S.Psi', 'Officiis commodi consequatur labore ea in.', 'Atma', 'Mandasari', 'megantara.daliono@gmail.com', '+4249205694304'),
(28, 1, 'Gabriella Wastuti', 'Voluptatem iure vero fugiat qui est.', 'Daryani', 'Hassanah', 'halimah.makara@mardhiyah.co', '+9714348075195'),
(29, 1, 'Agnes Nasyidah', 'Est quam ipsa delectus aliquam id.', 'Julia', 'Uwais', 'keisha.widodo@gmail.co.id', '+4589918483465'),
(30, 1, 'Margana Emin Uwais S.Ked', 'Labore hic error molestias vero dolorem sed et.', 'Maria', 'Rahimah', 'wharyanti@kusumo.in', '+9573917590051'),
(31, 1, 'Edi Darmaji Hidayanto', 'Inventore voluptatem qui incidunt veritatis sit.', 'Cornelia', 'Mulyani', 'wijayanti.septi@putra.name', '+3206179563399'),
(32, 1, 'Novi Novitasari', 'Rerum ullam sint rerum distinctio.', 'Okta', 'Utama', 'galar02@gmail.com', '+7765353631785'),
(33, 1, 'Najam Taufan Pratama M.M.', 'Totam nulla eos eligendi saepe sed ratione magni.', 'Ade', 'Nashiruddin', 'karsa.uwais@kusmawati.web.id', '+1906730692621'),
(34, 1, 'Dinda Novitasari', 'Rem quidem aut vitae ullam.', 'Usyi', 'Hardiansyah', 'nsusanti@suryono.id', '+4964814142982'),
(35, 1, 'Balijan Januar S.Gz', 'Eligendi optio sed exercitationem similique.', 'Kartika', 'Wijaya', 'kezia44@yahoo.co.id', '+9209713294772'),
(36, 1, 'Purwa Saadat Situmorang', 'Eos laboriosam necessitatibus sint adipisci id.', 'Umi', 'Sudiati', 'carla.wijaya@gmail.co.id', '+6791557529467'),
(37, 1, 'Yani Ratih Palastri S.Kom', 'Hic eaque quisquam enim.', 'Cindy', 'Kuswoyo', 'sirait.margana@yahoo.co.id', '+8928503526743'),
(38, 1, 'Asmadi Galur Wacana S.Farm', 'Non maxime vero maxime assumenda eius qui.', 'Kasim', 'Nuraini', 'eli.novitasari@sihombing.org', '+5214021888988'),
(39, 1, 'Ami Aryani S.Pd', 'Eum aut a aperiam debitis doloremque est.', 'Cakrawangsa', 'Pradana', 'alika.wibowo@melani.name', '+7104141076123'),
(40, 1, 'Fitriani Sudiati', 'A eum alias ut deserunt quia non aperiam.', 'Eja', 'Astuti', 'firgantoro.akarsana@yahoo.co.id', '+5892820974869'),
(41, 1, 'Safina Yuliarti S.Pd', 'Non rerum voluptatem et voluptas et soluta.', 'Yance', 'Aryani', 'epratama@gmail.co.id', '+5504952567879'),
(42, 1, 'Hairyanto Firgantoro S.T.', 'Expedita qui voluptatem qui et.', 'Ana', 'Nuraini', 'spalastri@gmail.co.id', '+3781270220177'),
(43, 1, 'Soleh Wahyudin', 'Unde minus est soluta quisquam perferendis.', 'Widya', 'Sitorus', 'jelita.nurdiyanti@yahoo.com', '+3785473274214'),
(44, 1, 'Tedi Warji Mahendra S.Psi', 'Repellat dicta magni voluptate quidem et quis.', 'Marsito', 'Hartati', 'qusamah@wacana.co.id', '+5774155606210'),
(45, 1, 'Nova Kusmawati S.E.I', 'Qui asperiores quis voluptas culpa.', 'Atma', 'Sirait', 'martani73@gmail.com', '+8768343520322'),
(46, 1, 'Lala Rahayu S.Kom', 'Omnis odit adipisci sit quas earum eius.', 'Kartika', 'Haryanti', 'rahayu14@yahoo.co.id', '+4221008514830'),
(47, 1, 'Nugraha Damu Siregar', 'Consequuntur quia asperiores earum sit.', 'Maida', 'Sihombing', 'gangsar.zulaika@yahoo.co.id', '+9101223340226'),
(48, 1, 'Oliva Mila Astuti', 'Perspiciatis in atque et doloremque velit sed.', 'Puji', 'Yulianti', 'dewi66@laksita.my.id', '+7172840987884'),
(49, 1, 'Ciaobella Nurdiyanti M.TI.', 'Rem accusantium illum tempora ipsum qui et porro.', 'Widya', 'Sudiati', 'luyainah@palastri.name', '+7531002346700'),
(50, 1, 'Dipa Karya Waskita', 'Est magnam officia rem quia.', 'Oskar', 'Widiastuti', 'ysimbolon@setiawan.co.id', '+2617385902368'),
(51, 1, 'Dina Haryanti', 'Voluptatem id nisi minus aliquam fugit.', 'Teguh', 'Yuliarti', 'zulaika.vera@gmail.co.id', '+9305276157829'),
(52, 1, 'Ivan Dabukke S.T.', 'Ut et dignissimos ut.', 'Vino', 'Zulaika', 'zjailani@waskita.id', '+4200541119536'),
(53, 1, 'Fathonah Wijayanti', 'Omnis ad voluptatem reiciendis quidem minima ad.', 'Cornelia', 'Wastuti', 'yulia.pratiwi@namaga.in', '+3099063440961'),
(54, 1, 'Yessi Maryati', 'Est sed omnis est qui qui perspiciatis.', 'Paulin', 'Firmansyah', 'thariyah@marpaung.mil.id', '+5903713368517'),
(55, 1, 'Sari Anggraini', 'Quod facilis aliquid dolor soluta nesciunt.', 'Dimaz', 'Damanik', 'fusada@yahoo.com', '+5282543027342'),
(56, 1, 'Vanya Farida', 'Quis eligendi provident non corrupti eos quis.', 'Ade', 'Natsir', 'permadi.aisyah@marbun.tv', '+3420504284781'),
(57, 1, 'Ganda Firgantoro S.E.', 'Minima soluta adipisci iste.', 'Dewi', 'Mustofa', 'tfirgantoro@gmail.com', '+8918468246019'),
(58, 1, 'Nilam Puspita', 'Qui dolorem accusamus minima ut.', 'Warsa', 'Siregar', 'sgunarto@yahoo.com', '+5094643175596'),
(59, 1, 'Malika Ciaobella Halimah S.Ked', 'Est in iusto delectus facere praesentium ut.', 'Melinda', 'Adriansyah', 'diah.riyanti@gmail.com', '+7292278352558'),
(60, 1, 'Yuliana Yuniar', 'Deserunt ut sed repudiandae optio.', 'Clara', 'Suryatmi', 'dariati11@kuswandari.mil.id', '+5426943383584'),
(61, 1, 'Ayu Rika Hastuti', 'Et eos voluptatem quod vitae laudantium debitis.', 'Gara', 'Mansur', 'samiah.natsir@yahoo.com', '+2753794810141'),
(62, 1, 'Ana Wahyuni', 'Corporis et corrupti eum nostrum est aut dolor.', 'Dalimin', 'Januar', 'cornelia.latupono@yahoo.com', '+7792635271149'),
(63, 1, 'Uli Nurdiyanti', 'Debitis ea voluptas odit qui quaerat fuga.', 'Ibrahim', 'Mardhiyah', 'oliva.namaga@yahoo.com', '+8420023037287'),
(64, 1, 'Mulya Waskita', 'Rerum animi saepe sequi tempore quia praesentium.', 'Iriana', 'Utami', 'agustina.latika@gmail.com', '+9048878703115'),
(65, 1, 'Yessi Alika Nuraini', 'Est sunt natus at ipsa harum.', 'Makuta', 'Fujiati', 'marsudi45@nurdiyanti.web.id', '+8236395037386'),
(66, 1, 'Lidya Mandasari M.Ak', 'Est vitae et est.', 'Teddy', 'Hariyah', 'lusada@laksita.com', '+2961626610932'),
(67, 1, 'Daryani Narpati', 'Sit autem blanditiis id tempore.', 'Jelita', 'Saragih', 'zsafitri@gunarto.co.id', '+2304971610211'),
(68, 1, 'Kamila Yuniar', 'Nisi temporibus illum sed esse.', 'Galiono', 'Handayani', 'januar.eja@yahoo.co.id', '+1308507602044'),
(69, 1, 'Lili Putri Usamah', 'Laboriosam ex in pariatur vel doloremque.', 'Candrakanta', 'Ramadan', 'eman.lazuardi@gmail.co.id', '+9325856246331'),
(70, 1, 'Aslijan Pangestu', 'Est nesciunt reiciendis eaque.', 'Nugraha', 'Hutasoit', 'darmaji20@gmail.co.id', '+2743441404603'),
(71, 1, 'Emong Latif Wibisono', 'Fugiat numquam repellendus explicabo.', 'Mitra', 'Wulandari', 'santoso.padmi@yahoo.co.id', '+7056601636582'),
(72, 1, 'Vicky Kania Lestari S.T.', 'Neque placeat consequatur soluta ullam quidem id.', 'Zulfa', 'Hidayat', 'lutfan39@gmail.com', '+8561656944388'),
(73, 1, 'Rosman Mangunsong S.Sos', 'Autem mollitia molestiae ut minus eius est.', 'Zelaya', 'Dabukke', 'rwastuti@gmail.co.id', '+5216035697774'),
(74, 1, 'Titi Novitasari', 'Ut est repudiandae ex aspernatur alias hic.', 'Wawan', 'Puspita', 'cakrabuana79@wastuti.org', '+3274581050698'),
(75, 1, 'Daruna Prabowo Kusumo S.Kom', 'Voluptas nesciunt expedita aperiam dolorem.', 'Umi', 'Prastuti', 'dpalastri@wastuti.name', '+6475085788013'),
(76, 1, 'Karma Tarihoran', 'Vel expedita quidem non voluptates ut rerum.', 'Mala', 'Susanti', 'fwacana@prastuti.mil.id', '+4565509385136'),
(77, 1, 'Bakiadi Hutagalung', 'Quod est ex nisi beatae vel.', 'Mulyono', 'Farida', 'mala65@gmail.co.id', '+8789882648792'),
(78, 1, 'Fitria Purnawati', 'Adipisci consequatur vel minus.', 'Lala', 'Hakim', 'victoria.fujiati@mayasari.com', '+1057081403327'),
(79, 1, 'Padma Handayani S.Kom', 'Temporibus quod labore pariatur ut.', 'Tirta', 'Saefullah', 'kemal16@yahoo.com', '+2995200301944'),
(80, 1, 'Karna Narpati', 'Suscipit dolores atque et quo impedit ex.', 'Amalia', 'Permata', 'jaya.narpati@yahoo.com', '+1099286942739'),
(81, 1, 'Uchita Nurul Lestari S.Farm', 'Dicta dolor velit ea. Autem totam aut error sed.', 'Melinda', 'Suryono', 'harto.mardhiyah@suryatmi.com', '+1609091321786'),
(82, 1, 'Tari Puspita', 'Et illo voluptatem sit repellat.', 'Citra', 'Marbun', 'chassanah@gmail.com', '+2669669589507'),
(83, 1, 'Ina Widiastuti', 'Et nesciunt iusto exercitationem id.', 'Violet', 'Farida', 'purnawati.manah@maheswara.mil.id', '+2174559171230'),
(84, 1, 'Lasmono Halim', 'Est voluptatem officiis culpa tempora id.', 'Daniswara', 'Saptono', 'balamantri.hassanah@astuti.name', '+8605408242553'),
(85, 1, 'Johan Nalar Waluyo', 'Consequatur similique animi aut maiores deserunt.', 'Rahman', 'Wahyuni', 'eva.wastuti@gmail.com', '+3710038670013'),
(86, 1, 'Abyasa Saefullah', 'Quam veritatis voluptas nam.', 'Padma', 'Napitupulu', 'edison.farida@yahoo.co.id', '+8427725942447'),
(87, 1, 'Zelda Hasna Palastri', 'Est repellat molestiae itaque vitae.', 'Kania', 'Hassanah', 'uda60@yahoo.com', '+4970548825877'),
(88, 1, 'Nilam Utami', 'Aut ab sed veritatis odit.', 'Cager', 'Pudjiastuti', 'maryadi.lalita@gmail.co.id', '+5925215939190'),
(89, 1, 'Talia Lailasari', 'Occaecati ea labore delectus et dolor aspernatur.', 'Bagya', 'Mandasari', 'vivi.purwanti@melani.in', '+4410337830450'),
(90, 1, 'Gatot Pradipta', 'Eos cupiditate omnis dignissimos.', 'Akarsana', 'Narpati', 'mardhiyah.michelle@yahoo.co.id', '+8952463191930'),
(91, 1, 'Zaenab Ratih Anggraini', 'Quod in blanditiis et totam voluptatem autem.', 'Emong', 'Suartini', 'ahandayani@yahoo.co.id', '+4806177304054'),
(92, 1, 'Wulan Maida Mulyani S.Farm', 'Repellendus maxime iure quod.', 'Olivia', 'Zulkarnain', 'fprasetya@anggraini.co.id', '+7429086173900'),
(93, 1, 'Silvia Hassanah', 'Corrupti quos nihil inventore.', 'Panca', 'Simanjuntak', 'suartini.endra@haryanto.sch.id', '+3094110576580'),
(94, 1, 'Gasti Rahmawati', 'Rerum quidem voluptatum vitae qui doloribus.', 'Darimin', 'Usada', 'nilam.putra@yahoo.co.id', '+4010637629740'),
(95, 1, 'Kayun Jailani', 'Illum aliquid blanditiis sint qui quos qui.', 'Praba', 'Maheswara', 'pudjiastuti.salwa@sitompul.asia', '+1330648334746'),
(96, 1, 'Ganep Irawan', 'Quos laborum et molestiae ipsum vitae.', 'Anita', 'Setiawan', 'cindy23@gmail.co.id', '+9919632506598'),
(97, 1, 'Tirtayasa Yoga Latupono', 'Qui tenetur doloribus laborum quo a pariatur.', 'Maria', 'Laksmiwati', 'kemal.laksmiwati@gmail.co.id', '+1415368206802'),
(98, 1, 'Dimaz Winarno S.E.', 'Qui optio voluptatibus id omnis nisi illo et.', 'Luwar', 'Mulyani', 'paiman.maryati@yahoo.com', '+2560172480456'),
(99, 1, 'Jefri Widodo', 'Dolorem magnam aliquam itaque officia.', 'Upik', 'Hutagalung', 'yanggraini@gmail.co.id', '+3715848290129'),
(100, 1, 'Anom Hamzah Sinaga', 'Ad perspiciatis nulla illo eos similique minus.', 'Harsaya', 'Haryanto', 'nababan.bakidin@yahoo.co.id', '+7675321767004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `dob` datetime DEFAULT NULL,
  `email_address` varchar(96) NOT NULL,
  `default_address` text DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `newsletter` char(1) DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `ip_address` varchar(15) DEFAULT NULL,
  `credits` decimal(15,4) DEFAULT 0.0000,
  `date_last_logon` datetime DEFAULT NULL,
  `number_of_logons` int(5) DEFAULT NULL,
  `date_account_created` datetime DEFAULT NULL,
  `date_account_last_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `groups_id`, `gender`, `firstname`, `lastname`, `dob`, `email_address`, `default_address`, `telephone`, `fax`, `newsletter`, `status`, `ip_address`, `credits`, `date_last_logon`, `number_of_logons`, `date_account_created`, `date_account_last_modified`) VALUES
(1, 1, 1, 'f', 'Nabila', 'Melani', '2019-12-27 19:46:47', 'Nabila@gmail.co.id', 'Jl.Diponegoro, Ki. Abdul. Muis No. 408, Padangsidempuan 43858, SumSel', '+2667922789317', '0598 6378 6994', '1', 1, '250.8.233.157', '412502.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(2, 1, 1, 'f', 'Umay', 'Hutagalung', '2019-12-27 19:46:47', 'Umay@gmail.com', 'Jl.Jamika, Ki. Ujung No. 579, Subulussalam 14177, BaBel', '+4421884113286', '0393 0354 880', '1', 1, '181.9.181.80', '280793.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(3, 1, 1, 'f', 'Heryanto', 'Zulaika', '2019-12-27 19:46:47', 'Heryanto@yahoo.co.id', 'Jl.Kalimantan, Kpg. Kyai Mojo No. 471, Kendari 84560, PapBar', '+7384309137669', '(+62) 212 3631 9354', '1', 1, '249.218.139.121', '539416.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(4, 1, 1, 'f', 'Opan', 'Laksmiwati', '2019-12-27 19:46:47', 'Opan@yahoo.com', 'Jl.Tangkuban Perahu, Ki. Laksamana No. 488, Lhokseumawe 15163, DKI', '+6089000445743', '028 2343 684', '1', 1, '169.87.134.81', '801454.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(5, 1, 1, 'f', 'Teguh', 'Puspasari', '2019-12-27 19:46:47', 'Teguh@gmail.com', 'Jl.Teuku Umar, Jr. Ciwastra No. 477, Semarang 89270, KalTeng', '+7290018086237', '(+62) 542 8854 673', '1', 1, '152.141.215.87', '557313.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(6, 1, 1, 'f', 'Olga', 'Sitompul', '2019-12-27 19:46:47', 'Olga@yahoo.co.id', 'Jl.Soekarno Hatta, Kpg. Kyai Mojo No. 292, Manado 57986, Aceh', '+5338478876781', '(+62) 482 6869 930', '1', 1, '7.244.198.50', '720398.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(7, 1, 1, 'f', 'Lili', 'Astuti', '2019-12-27 19:46:47', 'Lili@yahoo.co.id', 'Jl.Karel S. Tubun, Gg. Diponegoro No. 704, Batam 80013, Bali', '+6303719062019', '0795 9765 1599', '1', 1, '80.111.62.195', '531361.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(8, 1, 1, 'm', 'Suci', 'Siregar', '2019-12-27 19:46:47', 'Suci@gmail.co.id', 'Jl.Gremet, Kpg. Wahidin No. 402, Blitar 44386, JaBar', '+9833646140308', '(+62) 809 7293 078', '1', 1, '16.161.212.79', '704139.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(9, 1, 1, 'f', 'Belinda', 'Sihombing', '2019-12-27 19:46:47', 'Belinda@gmail.co.id', 'Jl.Kartini, Ds. Wahid Hasyim No. 215, Administrasi Jakarta Utara 54802, SulSel', '+9867993512199', '(+62) 735 8774 110', '1', 1, '139.100.241.65', '249388.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(10, 1, 1, 'm', 'Emong', 'Oktaviani', '2019-12-27 19:46:47', 'Emong@yahoo.com', 'Jl.Bagonwoto , Psr. Tubagus Ismail No. 808, Ambon 95975, MalUt', '+4228592292930', '(+62) 532 4767 285', '1', 1, '148.248.226.174', '509230.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(11, 1, 1, 'm', 'Wira', 'Putra', '2019-12-27 19:46:47', 'Wira@gmail.co.id', 'Jl.Gatot Subroto, Dk. PHH. Mustofa No. 895, Bekasi 31926, DKI', '+6991942991970', '0315 9272 879', '1', 1, '162.103.26.198', '256256.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(12, 1, 1, 'm', 'Atma', 'Uyainah', '2019-12-27 19:46:47', 'Atma@gmail.com', 'Jl.Ujung, Dk. Bacang No. 648, Tangerang Selatan 61374, Lampung', '+8076049705674', '(+62) 967 1224 8412', '1', 1, '74.39.34.168', '389862.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(13, 1, 1, 'f', 'Gina', 'Oktaviani', '2019-12-27 19:46:47', 'Gina@yahoo.co.id', 'Jl.Jayawijaya, Kpg. Daan No. 411, Payakumbuh 53938, Jambi', '+2348753790171', '(+62) 254 6407 783', '1', 1, '120.165.62.229', '696551.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(14, 1, 1, 'f', 'Bella', 'Rahimah', '2019-12-27 19:46:47', 'Bella@yahoo.com', 'Jl.Baranang Siang Indah, Dk. Villa No. 516, Pagar Alam 30675, NTB', '+9125064173595', '0632 8430 6159', '1', 1, '232.232.223.25', '553093.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(15, 1, 1, 'm', 'Malika', 'Utama', '2019-12-27 19:46:47', 'Malika@gmail.co.id', 'Jl.Eka, Ki. Baranangsiang No. 838, Kediri 58241, PapBar', '+5906798995917', '0351 0685 982', '1', 1, '6.241.186.48', '479379.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(16, 1, 1, 'f', 'Argono', 'Aryani', '2019-12-27 19:46:47', 'Argono@yahoo.com', 'Jl.Suprapto, Ki. Pahlawan No. 656, Langsa 96745, PapBar', '+4616151131990', '027 2362 0790', '1', 1, '202.104.19.191', '108165.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(17, 1, 1, 'm', 'Jamalia', 'Sitompul', '2019-12-27 19:46:47', 'Jamalia@gmail.co.id', 'Jl.Abdul. Muis, Ki. Babadan No. 160, Pasuruan 83853, Lampung', '+3405725913041', '(+62) 26 0884 344', '1', 1, '239.229.45.30', '762075.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(18, 1, 1, 'm', 'Pranawa', 'Hassanah', '2019-12-27 19:46:47', 'Pranawa@yahoo.com', 'Jl.Rajawali Barat, Gg. Cikapayang No. 478, Tangerang Selatan 75753, NTB', '+1593234671067', '0832 5258 340', '1', 1, '164.42.64.117', '421778.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(19, 1, 1, 'm', 'Ade', 'Sitompul', '2019-12-27 19:46:47', 'Ade@yahoo.co.id', 'Jl.Padang, Ki. Perintis Kemerdekaan No. 462, Yogyakarta 71736, SulTeng', '+2811301858176', '0625 1297 267', '1', 1, '114.254.16.155', '249382.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(20, 1, 1, 'm', 'Damar', 'Tamba', '2019-12-27 19:46:47', 'Damar@gmail.com', 'Jl.Sugiono, Kpg. Sentot Alibasa No. 415, Pontianak 36847, KalBar', '+4707572875745', '(+62) 398 9383 7764', '1', 1, '33.93.24.93', '604057.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(21, 1, 1, 'f', 'Gamblang', 'Wulandari', '2019-12-27 19:46:47', 'Gamblang@yahoo.co.id', 'Jl.Camar, Jr. Gajah No. 534, Payakumbuh 15449, SulSel', '+7103617847342', '0534 7179 423', '1', 1, '110.53.176.18', '709170.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(22, 1, 1, 'm', 'Tari', 'Saefullah', '2019-12-27 19:46:47', 'Tari@gmail.co.id', 'Jl.Jend. A. Yani, Psr. Arifin No. 195, Bandar Lampung 56206, Jambi', '+2431670044601', '(+62) 430 6123 045', '1', 1, '194.55.85.48', '614988.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(23, 1, 1, 'f', 'Mahfud', 'Mansur', '2019-12-27 19:46:47', 'Mahfud@yahoo.co.id', 'Jl.Supono, Gg. Samanhudi No. 218, Subulussalam 49983, BaBel', '+8888529980038', '0879 0988 345', '1', 1, '235.154.157.165', '787779.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(24, 1, 1, 'm', 'Tantri', 'Marbun', '2019-12-27 19:46:47', 'Tantri@yahoo.co.id', 'Jl.Industri, Ds. Dipenogoro No. 132, Dumai 81128, JaTim', '+1199114312290', '0996 2326 342', '1', 1, '171.93.254.238', '424580.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(25, 1, 1, 'f', 'Ciaobella', 'Fujiati', '2019-12-27 19:46:47', 'Ciaobella@yahoo.com', 'Jl.Fajar, Ki. Babadan No. 899, Tebing Tinggi 74974, SulSel', '+3988272889857', '0876 724 498', '1', 1, '6.153.38.98', '221641.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(26, 1, 1, 'm', 'Garan', 'Padmasari', '2019-12-27 19:46:47', 'Garan@gmail.com', 'Jl.Katamso, Jr. Thamrin No. 720, Bandung 71768, BaBel', '+6627332385996', '0929 8302 8240', '1', 1, '121.41.246.22', '749412.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(27, 1, 1, 'f', 'Cahyo', 'Rajasa', '2019-12-27 19:46:47', 'Cahyo@yahoo.co.id', 'Jl.Bambon, Gg. Warga No. 189, Palembang 43355, KepR', '+7628060769710', '0726 3806 5511', '1', 1, '86.32.130.17', '728545.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(28, 1, 1, 'f', 'Yunita', 'Mayasari', '2019-12-27 19:46:47', 'Yunita@gmail.com', 'Jl.Suniaraja, Jln. Otista No. 236, Salatiga 67414, Maluku', '+1644429361065', '(+62) 473 3600 0435', '1', 1, '142.186.255.143', '652522.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(29, 1, 1, 'f', 'Artawan', 'Pranowo', '2019-12-27 19:46:47', 'Artawan@yahoo.co.id', 'Jl.Tambak, Kpg. Rajawali Timur No. 193, Manado 24362, SumSel', '+9087312187349', '0352 1437 643', '1', 1, '21.64.46.0', '780084.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(30, 1, 1, 'f', 'Hilda', 'Laksmiwati', '2019-12-27 19:46:47', 'Hilda@gmail.com', 'Jl.Banceng Pondok, Jr. Bakau Griya Utama No. 708, Jayapura 64462, Bengkulu', '+9174525975256', '0438 4243 423', '1', 1, '66.253.71.191', '374576.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(31, 1, 1, 'm', 'Rusman', 'Sudiati', '2019-12-27 19:46:47', 'Rusman@yahoo.com', 'Jl.Sampangan, Gg. Banda No. 271, Pekalongan 33850, SumBar', '+2797156545539', '(+62) 702 2019 4336', '1', 1, '39.91.255.63', '236966.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(32, 1, 1, 'm', 'Rika', 'Iswahyudi', '2019-12-27 19:46:47', 'Rika@yahoo.co.id', 'Jl.Basmol Raya, Jr. Padma No. 968, Tarakan 16940, SulSel', '+7885111703214', '0446 1308 660', '1', 1, '131.96.144.186', '378226.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(33, 1, 1, 'm', 'Septi', 'Yulianti', '2019-12-27 19:46:47', 'Septi@gmail.com', 'Jl.Achmad, Kpg. Umalas No. 745, Banjarbaru 65253, Jambi', '+2085762912202', '(+62) 847 3437 160', '1', 1, '82.40.77.131', '340656.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(34, 1, 1, 'm', 'Vanesa', 'Mandala', '2019-12-27 19:46:47', 'Vanesa@gmail.com', 'Jl.Abdul Muis, Kpg. Abdul. Muis No. 366, Sorong 87037, SumSel', '+4608591131853', '0759 2921 1828', '1', 1, '132.231.94.81', '251175.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(35, 1, 1, 'f', 'Ina', 'Melani', '2019-12-27 19:46:47', 'Ina@gmail.com', 'Jl.Jamika, Gg. Zamrud No. 133, Sungai Penuh 52725, JaTeng', '+9350959610597', '(+62) 28 0088 6478', '1', 1, '114.222.243.231', '630811.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(36, 1, 1, 'f', 'Kayun', 'Lestari', '2019-12-27 19:46:47', 'Kayun@gmail.com', 'Jl.Bappenas, Ds. Yoga No. 562, Bogor 72963, Papua', '+4103377944103', '(+62) 28 7885 199', '1', 1, '100.62.177.117', '469056.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(37, 1, 1, 'f', 'Prabowo', 'Handayani', '2019-12-27 19:46:47', 'Prabowo@yahoo.com', 'Jl.Imam, Ds. Flores No. 598, Binjai 55892, PapBar', '+7682548529873', '0595 2751 7104', '1', 1, '199.117.190.141', '648160.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(38, 1, 1, 'm', 'Salman', 'Oktaviani', '2019-12-27 19:46:47', 'Salman@gmail.co.id', 'Jl.Adisumarmo, Gg. Yos No. 542, Sorong 42936, KalTim', '+2639655715488', '(+62) 982 4363 2162', '1', 1, '121.235.88.80', '201004.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(39, 1, 1, 'm', 'Ami', 'Pangestu', '2019-12-27 19:46:47', 'Ami@yahoo.co.id', 'Jl.Baja Raya, Psr. Basuki Rahmat  No. 663, Malang 49385, Riau', '+8871715623470', '(+62) 668 4919 473', '1', 1, '11.221.194.179', '116612.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(40, 1, 1, 'f', 'Cindy', 'Tampubolon', '2019-12-27 19:46:47', 'Cindy@gmail.com', 'Jl.Moch. Toha, Jr. Babakan No. 515, Tegal 51063, SumBar', '+8548616521169', '(+62) 23 1311 359', '1', 1, '32.177.103.51', '566797.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(41, 1, 1, 'f', 'Aurora', 'Kurniawan', '2019-12-27 19:46:47', 'Aurora@gmail.com', 'Jl.Suniaraja, Ds. Ujung No. 138, Kupang 15189, SumUt', '+4469764820745', '0624 7104 2669', '1', 1, '45.181.153.213', '366684.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(42, 1, 1, 'f', 'Keisha', 'Rahayu', '2019-12-27 19:46:47', 'Keisha@yahoo.com', 'Jl.Tambak, Gg. Baranang No. 698, Palangka Raya 36136, Bali', '+8144628188398', '0370 6013 3740', '1', 1, '133.91.247.184', '144779.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(43, 1, 1, 'f', 'Lantar', 'Nasyiah', '2019-12-27 19:46:47', 'Lantar@gmail.co.id', 'Jl.BKR, Ki. Bhayangkara No. 418, Tasikmalaya 98923, MalUt', '+9658217995521', '(+62) 556 0989 978', '1', 1, '140.80.41.193', '884076.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(44, 1, 1, 'f', 'Icha', 'Zulaika', '2019-12-27 19:46:47', 'Icha@yahoo.co.id', 'Jl.Kalimantan, Kpg. Gajah No. 34, Pematangsiantar 68631, Jambi', '+6396298070643', '(+62) 617 0865 507', '1', 1, '217.135.132.73', '443802.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(45, 1, 1, 'm', 'Umaya', 'Padmasari', '2019-12-27 19:46:47', 'Umaya@yahoo.com', 'Jl.Juanda, Ki. Bank Dagang Negara No. 962, Ambon 72513, SumSel', '+6477343096238', '0552 5930 9072', '1', 1, '247.169.142.164', '864733.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(46, 1, 1, 'm', 'Karsa', 'Suryatmi', '2019-12-27 19:46:47', 'Karsa@yahoo.co.id', 'Jl.Setia Budi, Jln. Tambak No. 621, Serang 83476, SumBar', '+7561018006114', '0534 2936 5556', '1', 1, '54.140.227.65', '480183.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(47, 1, 1, 'f', 'Gatot', 'Prasasta', '2019-12-27 19:46:47', 'Gatot@yahoo.com', 'Jl.Sunaryo, Jln. Wahidin Sudirohusodo No. 154, Singkawang 10718, SumSel', '+3743257052841', '(+62) 989 9168 1015', '1', 1, '60.1.42.114', '554293.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(48, 1, 1, 'm', 'Janet', 'Putra', '2019-12-27 19:46:47', 'Janet@yahoo.co.id', 'Jl.B.Agam 1, Dk. Tubagus Ismail No. 292, Depok 25069, Bali', '+6304892356045', '(+62) 689 4102 080', '1', 1, '246.88.66.93', '287093.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(49, 1, 1, 'f', 'Panca', 'Nasyidah', '2019-12-27 19:46:47', 'Panca@yahoo.com', 'Jl.Mahakam, Ds. Ikan No. 874, Kendari 62607, MalUt', '+4557998054681', '(+62) 25 8681 0453', '1', 1, '192.241.82.29', '210219.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(50, 1, 1, 'm', 'Kartika', 'Permadi', '2019-12-27 19:46:47', 'Kartika@yahoo.co.id', 'Jl.Jagakarsa, Jr. Dago No. 261, Solok 68959, KalBar', '+7035370153462', '(+62) 389 4188 670', '1', 1, '205.226.70.144', '534239.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(51, 1, 1, 'f', 'Irma', 'Puspasari', '2019-12-27 19:46:47', 'Irma@gmail.com', 'Jl.Haji, Gg. Sentot Alibasa No. 413, Samarinda 89957, NTT', '+4627380601781', '(+62) 965 7361 0433', '1', 1, '130.148.153.223', '121495.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(52, 1, 1, 'f', 'Lili', 'Siregar', '2019-12-27 19:46:47', 'Lili@yahoo.com', 'Jl.Bahagia , Ki. Adisumarmo No. 162, Kediri 81534, SumBar', '+6665991249434', '(+62) 754 6944 232', '1', 1, '96.62.175.232', '141575.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(53, 1, 1, 'm', 'Galiono', 'Wacana', '2019-12-27 19:46:47', 'Galiono@gmail.co.id', 'Jl.Rumah Sakit, Dk. Sugiyopranoto No. 194, Batam 67520, KalSel', '+1418331739796', '(+62) 704 1459 810', '1', 1, '138.254.113.73', '210339.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(54, 1, 1, 'm', 'Nasab', 'Latupono', '2019-12-27 19:46:47', 'Nasab@gmail.com', 'Jl.Kebonjati, Psr. Eka No. 317, Bandar Lampung 56070, NTB', '+7845214428278', '(+62) 315 4146 892', '1', 1, '203.19.13.188', '323054.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(55, 1, 1, 'f', 'Raisa', 'Mandasari', '2019-12-27 19:46:47', 'Raisa@gmail.co.id', 'Jl.Dipatiukur, Ki. Suryo Pranoto No. 355, Bukittinggi 13157, JaTeng', '+7754048327912', '0456 1369 3301', '1', 1, '249.235.127.171', '780115.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(56, 1, 1, 'f', 'Kurnia', 'Wacana', '2019-12-27 19:46:47', 'Kurnia@yahoo.co.id', 'Jl.Moch. Ramdan, Kpg. Bagis Utama No. 940, Administrasi Jakarta Utara 56375, DKI', '+1782064218107', '(+62) 575 2127 9855', '1', 1, '220.74.129.139', '375492.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(57, 1, 1, 'm', 'Ana', 'Hasanah', '2019-12-27 19:46:47', 'Ana@yahoo.co.id', 'Jl.Baranang, Ki. Abdul Rahmat No. 641, Banda Aceh 81646, DIY', '+5008501298081', '(+62) 797 9520 580', '1', 1, '117.123.220.128', '384515.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(58, 1, 1, 'f', 'Wani', 'Usada', '2019-12-27 19:46:47', 'Wani@yahoo.co.id', 'Jl.Cikapayang, Psr. Baranang No. 173, Banjarmasin 62178, SulBar', '+1974964476658', '(+62) 640 7100 896', '1', 1, '29.134.143.183', '808491.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(59, 1, 1, 'm', 'Maria', 'Yolanda', '2019-12-27 19:46:47', 'Maria@gmail.co.id', 'Jl.Pasirkoja, Kpg. Baung No. 581, Yogyakarta 15093, Aceh', '+8876631515564', '(+62) 779 6677 683', '1', 1, '43.34.81.145', '575930.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(60, 1, 1, 'm', 'Zulfa', 'Pertiwi', '2019-12-27 19:46:47', 'Zulfa@gmail.com', 'Jl.Bank Dagang Negara, Ki. Jend. Sudirman No. 441, Payakumbuh 89486, JaTeng', '+5066528002127', '0872 8580 675', '1', 1, '66.66.154.164', '371732.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(61, 1, 1, 'm', 'Halima', 'Novitasari', '2019-12-27 19:46:47', 'Halima@yahoo.com', 'Jl.Jambu, Gg. Abdullah No. 246, Balikpapan 74167, PapBar', '+7311972973295', '(+62) 825 4373 7823', '1', 1, '77.35.197.140', '175527.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(62, 1, 1, 'f', 'Saka', 'Prakasa', '2019-12-27 19:46:47', 'Saka@yahoo.com', 'Jl.Lumban Tobing, Psr. Baiduri No. 626, Bima 77618, NTT', '+7924015686610', '(+62) 264 9383 9888', '1', 1, '151.243.16.142', '210254.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(63, 1, 1, 'm', 'Margana', 'Budiyanto', '2019-12-27 19:46:47', 'Margana@yahoo.co.id', 'Jl.Cut Nyak Dien, Gg. Baja No. 385, Bau-Bau 90094, DKI', '+1026252022546', '0912 9772 192', '1', 1, '91.101.80.132', '879749.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(64, 1, 1, 'f', 'Wirda', 'Natsir', '2019-12-27 19:46:47', 'Wirda@gmail.com', 'Jl.Bahagia, Dk. Ki Hajar Dewantara No. 211, Cilegon 13187, Gorontalo', '+8663986544517', '0743 4402 820', '1', 1, '1.226.190.63', '382186.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(65, 1, 1, 'f', 'Zamira', 'Setiawan', '2019-12-27 19:46:47', 'Zamira@gmail.co.id', 'Jl.Elang, Kpg. Bak Mandi No. 204, Tebing Tinggi 81446, Papua', '+8635679658447', '025 6727 742', '1', 1, '27.19.185.210', '841238.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(66, 1, 1, 'f', 'Suci', 'Uyainah', '2019-12-27 19:46:47', 'Suci@yahoo.co.id', 'Jl.Jayawijaya, Gg. Adisucipto No. 369, Pasuruan 66667, Bali', '+2877076157633', '(+62) 404 0597 728', '1', 1, '190.103.236.153', '479006.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(67, 1, 1, 'f', 'Hana', 'Sudiati', '2019-12-27 19:46:47', 'Hana@yahoo.com', 'Jl.Yos Sudarso, Jr. Agus Salim No. 165, Palu 64670, DKI', '+3572417983338', '(+62) 738 7893 4872', '1', 1, '58.245.240.108', '346888.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(68, 1, 1, 'm', 'Kayun', 'Hasanah', '2019-12-27 19:46:47', 'Kayun@yahoo.co.id', 'Jl.Otto, Psr. Jamika No. 909, Kediri 56665, SumUt', '+1403649708197', '(+62) 745 4799 826', '1', 1, '244.237.92.231', '102877.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(69, 1, 1, 'm', 'Harsanto', 'Thamrin', '2019-12-27 19:46:47', 'Harsanto@yahoo.co.id', 'Jl.Yoga, Gg. Baiduri No. 987, Balikpapan 75912, KalTim', '+8661253558412', '(+62) 546 2893 700', '1', 1, '69.30.185.108', '382969.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(70, 1, 1, 'f', 'Wulan', 'Purwanti', '2019-12-27 19:46:47', 'Wulan@gmail.com', 'Jl.Babadan, Psr. Sudirman No. 823, Administrasi Jakarta Utara 39293, JaTim', '+1334352877196', '0709 0919 255', '1', 1, '28.198.140.50', '388141.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(71, 1, 1, 'f', 'Narji', 'Jailani', '2019-12-27 19:46:47', 'Narji@gmail.com', 'Jl.Gambang, Ds. PHH. Mustofa No. 959, Kediri 59741, SulTra', '+8969295946169', '0608 3184 7231', '1', 1, '185.74.50.114', '493063.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(72, 1, 1, 'm', 'Wisnu', 'Suartini', '2019-12-27 19:46:47', 'Wisnu@yahoo.co.id', 'Jl.Cikutra Barat, Jr. Kyai Gede No. 794, Tual 44384, KalUt', '+4917667016165', '(+62) 522 3007 843', '1', 1, '99.149.125.223', '845152.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(73, 1, 1, 'f', 'Ulya', 'Hasanah', '2019-12-27 19:46:47', 'Ulya@gmail.com', 'Jl.Muwardi, Psr. Ketandan No. 197, Surakarta 91050, Lampung', '+4552819183579', '(+62) 29 9425 706', '1', 1, '81.10.2.165', '348251.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(74, 1, 1, 'm', 'Icha', 'Lailasari', '2019-12-27 19:46:47', 'Icha@gmail.com', 'Jl.Bazuka Raya, Ds. Haji No. 798, Subulussalam 53290, SulTeng', '+9898228795545', '029 0560 2140', '1', 1, '245.67.76.213', '242062.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(75, 1, 1, 'f', 'Suci', 'Padmasari', '2019-12-27 19:46:47', 'Suci@gmail.com', 'Jl.Banal, Jr. Ciwastra No. 472, Serang 28216, NTT', '+5910161844696', '0718 7724 397', '1', 1, '104.107.58.134', '824514.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(76, 1, 1, 'f', 'Ika', 'Yulianti', '2019-12-27 19:46:47', 'Ika@yahoo.co.id', 'Jl.Badak, Dk. Yos No. 286, Batu 94092, JaBar', '+4046492638793', '(+62) 897 5608 8089', '1', 1, '132.103.64.47', '156817.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(77, 1, 1, 'm', 'Kunthara', 'Mulyani', '2019-12-27 19:46:47', 'Kunthara@yahoo.co.id', 'Jl.Dipatiukur, Psr. Kalimalang No. 92, Kendari 51064, BaBel', '+6110974242888', '(+62) 746 4547 2950', '1', 1, '137.238.72.151', '647718.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(78, 1, 1, 'f', 'Anita', 'Kuswandari', '2019-12-27 19:46:47', 'Anita@gmail.com', 'Jl.Suryo Pranoto, Jr. Sunaryo No. 113, Sukabumi 88762, BaBel', '+2575688470024', '0825 611 743', '1', 1, '164.115.246.141', '215524.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(79, 1, 1, 'f', 'Garang', 'Kuswoyo', '2019-12-27 19:46:47', 'Garang@gmail.co.id', 'Jl.Sukabumi, Dk. Kartini No. 61, Pontianak 78670, PapBar', '+8851832783104', '(+62) 481 9665 190', '1', 1, '22.206.19.85', '311707.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(80, 1, 1, 'm', 'Catur', 'Pratiwi', '2019-12-27 19:46:47', 'Catur@gmail.com', 'Jl.Samanhudi, Ds. Babah No. 889, Batam 13497, Papua', '+8335569598128', '024 8575 8675', '1', 1, '181.196.7.234', '361492.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(81, 1, 1, 'm', 'Zulaikha', 'Farida', '2019-12-27 19:46:47', 'Zulaikha@gmail.com', 'Jl.Babadak, Ds. Sudiarto No. 617, Palangka Raya 67272, SulTeng', '+4994318350878', '(+62) 257 9824 8610', '1', 1, '32.183.227.4', '862206.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(82, 1, 1, 'f', 'Zalindra', 'Susanti', '2019-12-27 19:46:47', 'Zalindra@yahoo.com', 'Jl.Lada, Dk. Yohanes No. 584, Singkawang 13269, SumUt', '+1299376503484', '(+62) 319 2504 754', '1', 1, '12.65.35.28', '898461.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(83, 1, 1, 'f', 'Jarwa', 'Nashiruddin', '2019-12-27 19:46:47', 'Jarwa@gmail.co.id', 'Jl.B.Agam 1, Kpg. Gardujati No. 695, Pematangsiantar 83875, KepR', '+7612324845262', '(+62) 26 7394 218', '1', 1, '5.127.59.49', '405549.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(84, 1, 1, 'f', 'Raina', 'Mayasari', '2019-12-27 19:46:47', 'Raina@gmail.co.id', 'Jl.Moch. Yamin, Jln. Halim No. 721, Sungai Penuh 82610, Lampung', '+3147599911328', '(+62) 226 3941 916', '1', 1, '116.199.18.221', '124098.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(85, 1, 1, 'm', 'Aurora', 'Manullang', '2019-12-27 19:46:47', 'Aurora@yahoo.com', 'Jl.Bakaru, Psr. Hang No. 206, Padangsidempuan 52083, SulTra', '+7669203459418', '0747 1795 501', '1', 1, '42.122.110.212', '435738.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(86, 1, 1, 'f', 'Vanesa', 'Prakasa', '2019-12-27 19:46:47', 'Vanesa@gmail.co.id', 'Jl.Bakau, Ds. Sudiarto No. 427, Administrasi Jakarta Barat 27171, Jambi', '+4204059854090', '(+62) 26 1644 792', '1', 1, '115.111.165.192', '541266.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(87, 1, 1, 'm', 'Cayadi', 'Samosir', '2019-12-27 19:46:47', 'Cayadi@gmail.com', 'Jl.Bazuka Raya, Psr. Baranang Siang Indah No. 459, Blitar 84960, KalTeng', '+1115111937535', '0529 6390 6659', '1', 1, '242.2.145.49', '214761.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(88, 1, 1, 'm', 'Michelle', 'Widodo', '2019-12-27 19:46:47', 'Michelle@yahoo.com', 'Jl.Dipatiukur, Psr. Babadak No. 408, Solok 40793, Aceh', '+5810816021953', '0326 8721 925', '1', 1, '157.69.64.197', '502993.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(89, 1, 1, 'm', 'Raisa', 'Haryanto', '2019-12-27 19:46:47', 'Raisa@yahoo.com', 'Jl.Bambu, Psr. Sutarto No. 414, Kupang 58714, DKI', '+1826548565878', '(+62) 284 7835 4888', '1', 1, '120.166.101.147', '607992.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(90, 1, 1, 'm', 'Intan', 'Wastuti', '2019-12-27 19:46:47', 'Intan@yahoo.com', 'Jl.Tambun, Gg. Dago No. 318, Payakumbuh 25257, Gorontalo', '+3245336641661', '0626 2780 333', '1', 1, '28.195.152.209', '269495.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(91, 1, 1, 'f', 'Ayu', 'Hasanah', '2019-12-27 19:46:47', 'Ayu@yahoo.co.id', 'Jl.Wahidin Sudirohusodo, Ki. Babadak No. 867, Administrasi Jakarta Barat 91397, JaBar', '+2044843567207', '0745 7143 9655', '1', 1, '153.220.46.37', '457558.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(92, 1, 1, 'f', 'Asman', 'Purnawati', '2019-12-27 19:46:47', 'Asman@yahoo.com', 'Jl.Daan, Jln. Yosodipuro No. 575, Bengkulu 51715, Papua', '+3572541712515', '0533 8704 855', '1', 1, '105.252.221.72', '654723.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(93, 1, 1, 'm', 'Jarwadi', 'Sihotang', '2019-12-27 19:46:47', 'Jarwadi@gmail.co.id', 'Jl.Thamrin, Psr. Raya Setiabudhi No. 391, Ambon 16998, Banten', '+2221531015114', '0366 2256 269', '1', 1, '33.115.138.205', '734634.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(94, 1, 1, 'f', 'Paulin', 'Samosir', '2019-12-27 19:46:47', 'Paulin@yahoo.com', 'Jl.R.E. Martadinata, Ds. PHH. Mustofa No. 992, Bontang 80575, Bali', '+1070361720146', '(+62) 697 6243 3782', '1', 1, '193.47.183.161', '391015.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(95, 1, 1, 'f', 'Nasab', 'Siregar', '2019-12-27 19:46:47', 'Nasab@gmail.com', 'Jl.Babadan, Gg. Bakau No. 242, Mojokerto 55999, Riau', '+1764941625425', '0433 3144 748', '1', 1, '138.63.162.135', '163729.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(96, 1, 1, 'm', 'Radika', 'Zulkarnain', '2019-12-27 19:46:47', 'Radika@gmail.com', 'Jl.Bank Dagang Negara, Jln. Industri No. 713, Banjarmasin 12472, KalTeng', '+8809191307740', '(+62) 812 573 876', '1', 1, '168.194.122.169', '579485.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(97, 1, 1, 'm', 'Zamira', 'Hutasoit', '2019-12-27 19:46:47', 'Zamira@yahoo.co.id', 'Jl.Juanda, Jr. Kebangkitan Nasional No. 298, Pagar Alam 48248, Aceh', '+5619094624409', '0670 8161 112', '1', 1, '244.102.202.54', '112610.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(98, 1, 1, 'm', 'Sarah', 'Mansur', '2019-12-27 19:46:47', 'Sarah@yahoo.co.id', 'Jl.Wora Wari, Jr. Yos No. 321, Mojokerto 90023, SulUt', '+5846502951427', '(+62) 256 7331 7140', '1', 1, '141.46.166.131', '826626.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(99, 1, 1, 'f', 'Wakiman', 'Prayoga', '2019-12-27 19:46:47', 'Wakiman@yahoo.co.id', 'Jl.Lumban Tobing, Ki. Ki Hajar Dewantara No. 243, Sawahlunto 18143, Banten', '+7869460707494', '0522 0565 170', '1', 1, '71.98.122.236', '423905.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(100, 1, 1, 'm', 'Mahdi', 'Prayoga', '2019-12-27 19:46:47', 'Mahdi@yahoo.com', 'Jl.Flores, Ki. Cokroaminoto No. 67, Probolinggo 93041, Lampung', '+5979860360694', '(+62) 502 5379 383', '1', 1, '190.143.181.248', '355076.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` int(8) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(8) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20191130221650);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(100) UNSIGNED NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `customers_id` int(100) UNSIGNED NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_company` varchar(100) NOT NULL,
  `delivery_street_address` text DEFAULT NULL,
  `delivery_city` varchar(100) NOT NULL,
  `delivery_postcode` varchar(100) NOT NULL,
  `delivery_state` varchar(100) NOT NULL,
  `delivery_phone` varchar(100) NOT NULL,
  `billing_name` varchar(100) NOT NULL,
  `billing_company` varchar(100) NOT NULL,
  `billing_street_address` text DEFAULT NULL,
  `payment_method` text DEFAULT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `invoice_number`, `customers_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_phone`, `billing_name`, `billing_company`, `billing_street_address`, `payment_method`, `latitude`, `longitude`, `status`) VALUES
(1, 'INV-56137620191227', 26, 'Dirja Uwais S.E.', 'PD Budiman Januar', 'Jln. Basmol Raya No. 618, Balikpapan 64316, JaBar', 'Tarakan', '50087', 'Maluku Utara', '+9987281800488', 'Garang Firgantoro S.Gz', 'UD Jailani Tbk', 'Kpg. Hasanuddin No. 947, Sibolga 89056, SumBar', 'cash', '-6.131957', '106.776882', 'delivery'),
(2, 'INV-53932620191227', 68, 'Aslijan Vega Prakasa', 'Perum Siregar Tbk', 'Jr. Baranang No. 583, Tangerang 23845, Gorontalo', 'Ternate', '85767', 'Gorontalo', '+7490124431621', 'Cemani Suwarno S.E.I', 'PT Mangunsong Permadi Tbk', 'Kpg. Yos Sudarso No. 673, Palu 35594, Papua', 'credit', '-6.132596', '106.829484', 'delivery'),
(3, 'INV-80111220191227', 83, 'Jaeman Kemal Waskita S.Farm', 'PT Laksita', 'Ds. Fajar No. 245, Palopo 18707, SulUt', 'Tomohon', '72393', 'DI Yogyakarta', '+5541018138175', 'Upik Maulana', 'PD Haryanti Sitompul (Persero) Tbk', 'Psr. Wahid Hasyim No. 533, Ternate 53816, Gorontalo', 'cash', '-6.260098', '106.717518', 'complete'),
(4, 'INV-34913420191227', 19, 'Karja Pranowo', 'UD Saptono Tbk', 'Ki. Padma No. 109, Binjai 54145, SumBar', 'Bengkulu', '39294', 'Kalimantan Barat', '+8129018427964', 'Gawati Suryatmi', 'CV Kuswandari Santoso', 'Gg. M.T. Haryono No. 121, Yogyakarta 54071, SulUt', 'cash', '-6.19068', '106.895576', 'delivery'),
(5, 'INV-67076820191227', 66, 'Diana Wahyuni S.Sos', 'Perum Yolanda', 'Ds. Tambun No. 986, Tanjungbalai 24894, SulBar', 'Denpasar', '66290', 'Sulawesi Tengah', '+9909254556904', 'Titi Maya Kuswandari S.Ked', 'PD Winarno Tbk', 'Psr. Jayawijaya No. 391, Cimahi 32569, Riau', 'cash', '-6.187454', '106.735639', 'complete'),
(6, 'INV-54264220191227', 36, 'Syahrini Nuraini', 'UD Rajata Nuraini Tbk', 'Ki. Fajar No. 535, Lhokseumawe 19647, DIY', 'Lubuklinggau', '24165', 'DI Yogyakarta', '+1341220127393', 'Lulut Waluyo', 'UD Simbolon Nugroho', 'Jln. Umalas No. 824, Banjar 56862, NTB', 'cash', '-6.202314', '106.899108', 'complete'),
(7, 'INV-31425520191227', 79, 'Julia Puput Hartati', 'CV Habibi', 'Kpg. Pattimura No. 284, Kupang 70740, JaTeng', 'Administrasi Jakarta Pusat', '82136', 'Kalimantan Utara', '+3814334774384', 'Cakrabuana Hutapea', 'UD Megantara', 'Psr. Moch. Toha No. 321, Manado 33159, KalSel', 'cash', '-6.21495', '106.897077', 'pickup'),
(8, 'INV-69351320191227', 96, 'Kayun Utama', 'PT Sitompul (Persero) Tbk', 'Kpg. Yos Sudarso No. 334, Batu 18709, BaBel', 'Madiun', '95387', 'Sumatera Utara', '+6236169839099', 'Vanya Lailasari', 'PD Farida Suryono', 'Ki. Ketandan No. 572, Gorontalo 77829, JaTeng', 'cash', '-6.299615', '106.846953', 'complete'),
(9, 'INV-63464420191227', 1, 'Estiawan Marpaung', 'UD Wulandari Laksmiwati', 'Jr. Imam Bonjol No. 142, Probolinggo 43528, KepR', 'Bitung', '13651', 'Jambi', '+3559908208774', 'Tirta Sitorus', 'Perum Rajata Tbk', 'Psr. Zamrud No. 236, Salatiga 83291, Maluku', 'cash', '-6.26181', '106.778631', 'pickup'),
(10, 'INV-77252620191227', 17, 'Paramita Mulyani M.M.', 'UD Pranowo (Persero) Tbk', 'Jr. Gading No. 154, Sawahlunto 42477, SumBar', 'Balikpapan', '11622', 'DI Yogyakarta', '+6889021242726', 'Syahrini Zulaikha Yolanda S.IP', 'PD Permadi Hidayat Tbk', 'Kpg. Mahakam No. 61, Batu 24323, Riau', 'cash', '-6.125644', '106.892305', 'complete'),
(11, 'INV-43447620191227', 86, 'Ajimat Kamal Uwais', 'PD Mandala Tbk', 'Kpg. Pasteur No. 520, Ternate 71457, Bali', 'Semarang', '11783', 'Jawa Barat', '+2689133661069', 'Opan Dimas Setiawan', 'CV Laksita', 'Gg. Rajawali No. 388, Bandar Lampung 36808, Banten', 'cash', '-6.1453', '106.775102', 'pickup'),
(12, 'INV-54538920191227', 78, 'Natalia Novitasari', 'PD Pertiwi Tbk', 'Jln. Cikapayang No. 193, Magelang 94258, KalUt', 'Tual', '83961', 'Kalimantan Barat', '+5723432342719', 'Ghaliyati Winarsih', 'PD Pradana', 'Psr. Basket No. 474, Ternate 34986, KalTim', 'cash', '-6.225667', '106.757254', 'delivery'),
(13, 'INV-24793520191227', 32, 'Elisa Ophelia Rahmawati', 'CV Narpati (Persero) Tbk', 'Psr. Bah Jaya No. 14, Padang 29522, KalSel', 'Bandung', '42831', 'Kepulauan Riau', '+7993342044071', 'Latif Ardianto', 'PT Riyanti', 'Kpg. Hang No. 162, Mataram 65743, Jambi', 'cash', '-6.203262', '106.872441', 'delivery'),
(14, 'INV-7121220191227', 17, 'Citra Purwanti', 'CV Mandala Ardianto', 'Jr. Cemara No. 276, Manado 26041, KepR', 'Metro', '37860', 'Gorontalo', '+5011927943894', 'Rahayu Tira Susanti S.Ked', 'CV Hassanah', 'Kpg. Cihampelas No. 954, Samarinda 23583, Banten', 'credit', '-6.280546', '106.857996', 'pickup'),
(15, 'INV-75769720191227', 23, 'Argono Ibrani Kusumo', 'CV Dongoran Sihombing', 'Ds. Imam Bonjol No. 136, Pasuruan 64930, DKI', 'Sibolga', '72497', 'Nusa Tenggara Barat', '+2348962064995', 'Gabriella Hasanah M.Pd', 'PT Yuliarti Ardianto', 'Dk. Adisumarmo No. 864, Magelang 96549, Bali', 'credit', '-6.15259', '106.789422', 'pickup'),
(16, 'INV-59956720191227', 37, 'Nardi Hidayat', 'PD Maheswara Nurdiyanti', 'Ds. Bhayangkara No. 456, Tegal 51964, Riau', 'Serang', '11849', 'Maluku Utara', '+5347000721448', 'Gasti Ayu Rahayu S.Pt', 'UD Firgantoro Tbk', 'Gg. Fajar No. 124, Tangerang 78195, Jambi', 'credit', '-6.286366', '106.835928', 'delivery'),
(17, 'INV-80062820191227', 56, 'Rafid Mursinin Ardianto M.TI.', 'CV Nababan Laksmiwati', 'Jln. PHH. Mustofa No. 809, Mojokerto 41575, SulUt', 'Pekanbaru', '33334', 'Kalimantan Selatan', '+9736811645147', 'Gantar Jaga Hutasoit', 'PD Natsir Tbk', 'Ki. Ikan No. 182, Administrasi Jakarta Utara 17189, SumSel', 'credit', '-6.226076', '106.712395', 'complete'),
(18, 'INV-55769320191227', 43, 'Joko Natsir', 'UD Jailani Mandasari Tbk', 'Ki. Bakit  No. 678, Tangerang Selatan 62092, Papua', 'Surabaya', '27546', 'Banten', '+6041652277481', 'Dadap Sihotang', 'UD Kurniawan Hidayanto Tbk', 'Ki. Kiaracondong No. 57, Prabumulih 21495, KalUt', 'credit', '-6.244374', '106.828831', 'pickup'),
(19, 'INV-76807120191227', 56, 'Jaeman Pranowo', 'Perum Padmasari Nuraini (Persero) Tbk', 'Kpg. Sunaryo No. 81, Administrasi Jakarta Pusat 44913, NTT', 'Tebing Tinggi', '11604', 'Riau', '+3358496511623', 'Olivia Mutia Winarsih S.Ked', 'UD Usamah (Persero) Tbk', 'Dk. Basudewo No. 619, Serang 91288, PapBar', 'cash', '-6.282343', '106.860731', 'pickup'),
(20, 'INV-1783920191227', 28, 'Chelsea Natalia Yuliarti S.Pd', 'PD Mangunsong Anggraini (Persero) Tbk', 'Kpg. Samanhudi No. 846, Banda Aceh 85356, SumBar', 'Bekasi', '31600', 'Sumatera Selatan', '+7007486206977', 'Yulia Nilam Laksita', 'Perum Winarno Prastuti Tbk', 'Jln. Pasirkoja No. 215, Mataram 76893, NTT', 'cash', '-6.205126', '106.707938', 'delivery'),
(21, 'INV-85504820191227', 10, 'Genta Palastri', 'Perum Nugroho Usamah', 'Ds. Nakula No. 277, Pariaman 19867, SulBar', 'Banjarmasin', '24831', 'Nusa Tenggara Timur', '+2087838981714', 'Jayadi Manullang', 'CV Wijayanti Kuswandari (Persero) Tbk', 'Dk. Jend. A. Yani No. 724, Pariaman 38033, SulTra', 'cash', '-6.232065', '106.779917', 'pickup'),
(22, 'INV-38645820191227', 64, 'Galar Halim Saefullah', 'PT Kuswandari Tbk', 'Dk. Tambak No. 149, Tidore Kepulauan 22246, SumBar', 'Palopo', '66771', 'Bangka Belitung', '+5025887737031', 'Rahmat Bakiman Hutagalung S.Ked', 'PD Natsir', 'Ki. Pacuan Kuda No. 111, Tual 66063, DIY', 'cash', '-6.234493', '106.828658', 'pickup'),
(23, 'INV-2364520191227', 64, 'Yuni Zahra Prastuti', 'UD Nurdiyanti Pratiwi (Persero) Tbk', 'Ds. Bagonwoto  No. 274, Malang 42609, Papua', 'Kupang', '62600', 'Jawa Tengah', '+9760116723220', 'Kemba Tugiman Mustofa', 'CV Usamah Yolanda (Persero) Tbk', 'Psr. Merdeka No. 545, Prabumulih 29006, NTT', 'cash', '-6.160125', '106.836442', 'delivery'),
(24, 'INV-59537120191227', 50, 'Fitriani Hastuti', 'PT Budiman (Persero) Tbk', 'Gg. Wahidin Sudirohusodo No. 435, Singkawang 50743, DKI', 'Ternate', '13335', 'Sumatera Utara', '+4692089710214', 'Tania Maryati', 'CV Sinaga Fujiati (Persero) Tbk', 'Kpg. Dipatiukur No. 60, Bima 87538, KalUt', 'credit', '-6.165535', '106.715063', 'delivery'),
(25, 'INV-33386120191227', 80, 'Syahrini Oliva Puspasari', 'CV Sihotang Yolanda', 'Ds. BKR No. 168, Semarang 23845, Bali', 'Tarakan', '16767', 'Jawa Barat', '+4975921574580', 'Laksana Latupono', 'CV Hutapea (Persero) Tbk', 'Psr. Sutoyo No. 522, Singkawang 19764, KalSel', 'cash', '-6.246931', '106.847413', 'pickup'),
(26, 'INV-69971520191227', 63, 'Saka Hakim', 'Perum Prakasa Maulana', 'Kpg. Soekarno Hatta No. 293, Batam 71303, KalBar', 'Mataram', '90165', 'DI Yogyakarta', '+6893493575349', 'Mitra Utama', 'PT Usamah Tbk', 'Psr. Padang No. 603, Administrasi Jakarta Utara 91595, Bengkulu', 'cash', '-6.207424', '106.862378', 'complete'),
(27, 'INV-7286220191227', 98, 'Ella Nasyidah S.Pd', 'PD Budiman', 'Dk. Eka No. 734, Surakarta 13553, JaTim', 'Sukabumi', '82186', 'Nusa Tenggara Timur', '+8465264866324', 'Dipa Respati Sihombing M.TI.', 'CV Pertiwi', 'Kpg. Casablanca No. 492, Palopo 25693, KalSel', 'cash', '-6.134123', '106.732461', 'pickup'),
(28, 'INV-68663720191227', 45, 'Violet Wulandari', 'PT Rahimah Permata Tbk', 'Psr. Suryo No. 631, Pariaman 34415, Lampung', 'Bukittinggi', '89771', 'Maluku', '+3996223576074', 'Tami Karimah Fujiati', 'PT Suartini', 'Kpg. Ters. Kiaracondong No. 666, Pekanbaru 27178, MalUt', 'credit', '-6.2278', '106.799066', 'delivery'),
(29, 'INV-69213020191227', 16, 'Kezia Purnawati', 'UD Rahayu Tbk', 'Psr. Panjaitan No. 435, Padang 78416, JaTim', 'Banda Aceh', '48698', 'Banten', '+2390916304628', 'Raden Irnanto Prasetya M.Kom.', 'PT Saputra Tbk', 'Psr. Ujung No. 615, Surakarta 91565, Jambi', 'cash', '-6.289022', '106.710683', 'delivery'),
(30, 'INV-44804320191227', 89, 'Saka Yono Prasetya', 'UD Putra Waluyo Tbk', 'Jr. Cut Nyak Dien No. 805, Depok 60283, NTT', 'Sabang', '14380', 'Jawa Tengah', '+1019997336160', 'Kuncara Widodo', 'UD Laksita Palastri', 'Psr. Sampangan No. 806, Samarinda 14175, SulUt', 'cash', '-6.273515', '106.835823', 'delivery'),
(31, 'INV-80713620191227', 51, 'Harsana Prasetyo', 'PT Nashiruddin Tbk', 'Ds. Ir. H. Juanda No. 433, Serang 75142, SulTra', 'Makassar', '73775', 'Jambi', '+2557537580226', 'Edi Sitompul', 'CV Wastuti Namaga (Persero) Tbk', 'Kpg. Kalimantan No. 830, Langsa 56678, JaBar', 'cash', '-6.288424', '106.703754', 'complete'),
(32, 'INV-79943120191227', 15, 'Alambana Kusumo', 'UD Hassanah Tbk', 'Psr. Mahakam No. 42, Solok 53063, Jambi', 'Binjai', '49214', 'Kalimantan Utara', '+3773198453325', 'Kenari Pranowo', 'UD Winarsih Farida', 'Ki. Rajiman No. 588, Serang 22418, JaTim', 'credit', '-6.191435', '106.799213', 'complete'),
(33, 'INV-59594420191227', 62, 'Keisha Pratiwi S.Pd', 'Perum Putra Utami', 'Jr. Kali No. 276, Cirebon 31009, JaTim', 'Makassar', '12073', 'Bali', '+8504081751503', 'Ifa Aryani', 'Perum Kuswoyo (Persero) Tbk', 'Psr. Ekonomi No. 927, Tanjungbalai 47858, Maluku', 'credit', '-6.278667', '106.852427', 'pickup'),
(34, 'INV-59785720191227', 3, 'Ganep Prasetya', 'PT Nuraini', 'Dk. Raden Saleh No. 386, Gorontalo 47496, Bali', 'Ternate', '26799', 'Bengkulu', '+9231183875452', 'Hilda Anggraini S.E.', 'PD Nuraini', 'Kpg. Gading No. 428, Medan 25387, KalBar', 'credit', '-6.253309', '106.87933', 'complete'),
(35, 'INV-70156820191227', 73, 'Asirwanda Ridwan Suryono', 'PT Saptono Widodo', 'Dk. Siliwangi No. 178, Pangkal Pinang 17675, KalTeng', 'Sawahlunto', '68116', 'Papua Barat', '+4953955240524', 'Damu Irawan S.Sos', 'UD Safitri (Persero) Tbk', 'Ds. Bagas Pati No. 458, Probolinggo 16741, Jambi', 'cash', '-6.234267', '106.894998', 'pickup'),
(36, 'INV-29006820191227', 25, 'Janet Utami', 'PD Prabowo (Persero) Tbk', 'Jln. Reksoninten No. 635, Cimahi 71319, SulTra', 'Tegal', '64667', 'Lampung', '+4270159358181', 'Xanana Prasetyo', 'Perum Pangestu Nugroho', 'Jln. Rajawali Barat No. 905, Balikpapan 59487, Jambi', 'cash', '-6.223745', '106.72144', 'delivery'),
(37, 'INV-46276720191227', 22, 'Marsito Utama', 'PT Prayoga Prastuti', 'Dk. Kali No. 318, Bima 70707, JaTim', 'Tual', '76866', 'Papua Barat', '+9805068283851', 'Jail Wijaya', 'PT Wahyudin Nainggolan', 'Jr. Abdul Muis No. 645, Bandung 29605, Gorontalo', 'credit', '-6.174743', '106.7898', 'delivery'),
(38, 'INV-10251220191227', 68, 'Mutia Indah Lestari S.Pd', 'CV Hidayat Yulianti', 'Gg. Pasirkoja No. 679, Pariaman 37461, Papua', 'Payakumbuh', '62002', 'Sulawesi Tengah', '+6466749375939', 'Tasdik Rizki Januar S.Farm', 'UD Andriani Saputra Tbk', 'Jr. Bagas Pati No. 83, Banjarmasin 83553, NTB', 'cash', '-6.151315', '106.78891', 'complete'),
(39, 'INV-58599720191227', 71, 'Bakti Permadi', 'PT Sitorus Tbk', 'Kpg. Hang No. 161, Sorong 12893, SumSel', 'Kotamobagu', '86202', 'Bali', '+4215036897939', 'Edi Nainggolan', 'PD Pratama Wacana Tbk', 'Jln. Gambang No. 140, Tual 78922, SumUt', 'credit', '-6.207067', '106.732275', 'delivery'),
(40, 'INV-4460920191227', 64, 'Cornelia Fujiati', 'PD Rahmawati', 'Dk. Sukabumi No. 279, Cilegon 51069, SumSel', 'Sukabumi', '41901', 'Kalimantan Utara', '+9044242430370', 'Farhunnisa Faizah Andriani M.Kom.', 'PD Novitasari Namaga Tbk', 'Jr. Kyai Mojo No. 711, Kediri 92351, Maluku', 'cash', '-6.206115', '106.864732', 'delivery'),
(41, 'INV-58392920191227', 19, 'Jaka Saputra', 'PT Siregar Hartati Tbk', 'Jln. Gedebage Selatan No. 526, Tual 77213, Gorontalo', 'Langsa', '10527', 'Lampung', '+9784943208830', 'Eva Ratih Widiastuti S.Kom', 'UD Utami Prasetyo (Persero) Tbk', 'Kpg. Tentara Pelajar No. 762, Administrasi Jakarta Barat 75871, MalUt', 'credit', '-6.143227', '106.752711', 'complete'),
(42, 'INV-77350320191227', 96, 'Banara Wibowo', 'PT Purwanti Laksita (Persero) Tbk', 'Dk. Dr. Junjunan No. 516, Bengkulu 78122, DIY', 'Magelang', '28683', 'Sulawesi Utara', '+9014974820176', 'Bella Riyanti M.Farm', 'PD Hutapea', 'Ds. Abdul Rahmat No. 534, Banjarbaru 88225, Aceh', 'credit', '-6.271993', '106.729229', 'delivery'),
(43, 'INV-73980120191227', 91, 'Gamani Jailani S.Pt', 'CV Wulandari', 'Jr. Banceng Pondok No. 37, Palangka Raya 39942, SumUt', 'Salatiga', '50199', 'Banten', '+7612763068903', 'Tirtayasa Prasasta', 'PD Wasita Hastuti (Persero) Tbk', 'Psr. Yohanes No. 90, Bekasi 72638, MalUt', 'cash', '-6.160492', '106.822707', 'complete'),
(44, 'INV-47361320191227', 40, 'Faizah Prastuti', 'CV Kuswoyo Jailani', 'Jln. Raya Ujungberung No. 276, Bitung 32844, KepR', 'Surakarta', '56829', 'Kalimantan Timur', '+1515097675777', 'Cakrajiya Jaiman Suwarno', 'UD Aryani (Persero) Tbk', 'Ds. Zamrud No. 633, Subulussalam 97789, Bengkulu', 'cash', '-6.278913', '106.716401', 'pickup'),
(45, 'INV-33374220191227', 74, 'Keisha Farida', 'Perum Hutagalung (Persero) Tbk', 'Kpg. Sudirman No. 245, Pariaman 35994, KepR', 'Bontang', '13153', 'Kalimantan Selatan', '+7422015452612', 'Olga Mandala', 'Perum Rahayu', 'Jln. Imam No. 623, Administrasi Jakarta Utara 55557, KalBar', 'cash', '-6.223881', '106.778069', 'complete'),
(46, 'INV-26902820191227', 92, 'Alika Melani', 'Perum Susanti (Persero) Tbk', 'Ds. Suryo No. 102, Kendari 88841, JaTeng', 'Palembang', '54812', 'Sulawesi Tengah', '+9022185956215', 'Panji Hardiansyah', 'UD Hariyah Laksmiwati', 'Ds. Dr. Junjunan No. 270, Pekanbaru 67911, KalTim', 'cash', '-6.163267', '106.738116', 'complete'),
(47, 'INV-45828620191227', 30, 'Kurnia Nashiruddin S.Pt', 'PT Suryono', 'Jr. Suryo No. 281, Gunungsitoli 97776, DIY', 'Medan', '37167', 'Sulawesi Barat', '+5150211054051', 'Wulan Kiandra Nasyidah S.Sos', 'PT Sihombing Kuswandari', 'Dk. BKR No. 769, Yogyakarta 95442, DIY', 'credit', '-6.186759', '106.898109', 'pickup'),
(48, 'INV-76088620191227', 80, 'Cakrajiya Naradi Nainggolan M.Farm', 'CV Sihombing', 'Jr. Basuki Rahmat  No. 257, Depok 23604, Aceh', 'Subulussalam', '47611', 'Sulawesi Utara', '+9819895673989', 'Ega Gunawan', 'PD Wijayanti', 'Ds. Ters. Buah Batu No. 738, Makassar 55659, NTB', 'credit', '-6.213075', '106.782173', 'pickup'),
(49, 'INV-73323420191227', 87, 'Padmi Laksmiwati', 'CV Sudiati Utama', 'Ki. Warga No. 16, Kediri 26092, KalUt', 'Mojokerto', '26061', 'Sumatera Barat', '+7673467306748', 'Kemba Widodo S.Pd', 'PD Haryanto Tbk', 'Psr. Dewi Sartika No. 723, Palopo 14056, Maluku', 'credit', '-6.233964', '106.757334', 'complete'),
(50, 'INV-18586120191227', 50, 'Darmana Siregar S.E.I', 'PD Aryani Prabowo (Persero) Tbk', 'Psr. Basuki Rahmat  No. 845, Tual 46120, SulSel', 'Langsa', '56974', 'Bangka Belitung', '+4085707272917', 'Tirtayasa Johan Prayoga', 'CV Anggriawan', 'Dk. Cokroaminoto No. 251, Banjarmasin 30856, Jambi', 'cash', '-6.16336', '106.805578', 'complete'),
(51, 'INV-74197020191227', 39, 'Oman Mumpuni Saputra', 'PD Sirait Mayasari Tbk', 'Jln. Dahlia No. 974, Pasuruan 72646, NTT', 'Gunungsitoli', '74859', 'Maluku', '+9219966860221', 'Sabar Wahyudin S.E.I', 'PD Maulana Pangestu (Persero) Tbk', 'Dk. Krakatau No. 477, Bogor 68930, KalBar', 'cash', '-6.141146', '106.734294', 'complete'),
(52, 'INV-9337820191227', 48, 'Zulfa Suartini', 'PD Mandala Tbk', 'Ds. Rajawali No. 788, Pontianak 29645, SulTra', 'Sorong', '54001', 'Maluku Utara', '+8242458082466', 'Indah Purnawati', 'CV Palastri Mandasari', 'Jr. Baladewa No. 665, Bandung 84774, Bali', 'credit', '-6.210232', '106.853973', 'delivery'),
(53, 'INV-62080320191227', 14, 'Nadia Laksmiwati', 'UD Hutagalung Zulaika', 'Ki. Samanhudi No. 315, Gorontalo 58566, SulSel', 'Prabumulih', '26901', 'Bengkulu', '+7531032014706', 'Silvia Rahmawati', 'PT Mardhiyah Tbk', 'Psr. Elang No. 205, Bontang 10496, BaBel', 'credit', '-6.169709', '106.730412', 'pickup'),
(54, 'INV-63188820191227', 7, 'Budi Ajiman Sitompul', 'PT Tarihoran Sudiati Tbk', 'Jln. Samanhudi No. 739, Pasuruan 33268, MalUt', 'Jambi', '99276', 'Sulawesi Tenggara', '+4915345094756', 'Adinata Saptono', 'CV Prasetya (Persero) Tbk', 'Gg. Cihampelas No. 870, Jambi 43998, Lampung', 'cash', '-6.121001', '106.822906', 'delivery'),
(55, 'INV-40825920191227', 21, 'Leo Jabal Dongoran S.Sos', 'PD Narpati (Persero) Tbk', 'Jln. Raden No. 679, Ambon 57748, Bali', 'Tarakan', '66703', 'Jawa Tengah', '+3351937534912', 'Joko Wasita', 'UD Puspita Puspasari Tbk', 'Jr. Kiaracondong No. 46, Bima 17541, KepR', 'cash', '-6.194382', '106.771033', 'delivery'),
(56, 'INV-77758320191227', 50, 'Cinthia Zalindra Wijayanti S.Ked', 'PD Natsir (Persero) Tbk', 'Jr. Peta No. 467, Serang 78132, SulBar', 'Banjarmasin', '75220', 'Jawa Timur', '+4287251049372', 'Artawan Sakti Prasetya S.Pt', 'Perum Maryati', 'Ki. Banceng Pondok No. 930, Bengkulu 85706, Papua', 'cash', '-6.227139', '106.886699', 'complete'),
(57, 'INV-58472420191227', 13, 'Karna Hakim', 'Perum Padmasari (Persero) Tbk', 'Jln. Cikutra Timur No. 382, Tasikmalaya 55352, KepR', 'Ternate', '30953', 'Kalimantan Timur', '+5365385233829', 'Prabawa Prayoga', 'PT Permata Wahyuni', 'Ds. Kalimantan No. 905, Pematangsiantar 90986, KalUt', 'cash', '-6.27166', '106.763518', 'delivery'),
(58, 'INV-49204520191227', 31, 'Vicky Widya Pertiwi S.I.Kom', 'UD Mahendra (Persero) Tbk', 'Kpg. Tubagus Ismail No. 854, Depok 39158, Papua', 'Palu', '99091', 'Kalimantan Tengah', '+6637342597660', 'Balapati Pangestu', 'Perum Wijaya Pertiwi', 'Dk. Salatiga No. 924, Padangsidempuan 25822, DIY', 'credit', '-6.268125', '106.759603', 'pickup'),
(59, 'INV-58545620191227', 71, 'Cakrabirawa Prabowo S.Sos', 'PT Wijaya (Persero) Tbk', 'Jln. R.M. Said No. 378, Salatiga 76033, PapBar', 'Semarang', '54412', 'Jambi', '+4272091437851', 'Febi Olivia Yulianti', 'PT Nugroho Putra Tbk', 'Psr. Krakatau No. 168, Tarakan 47886, NTT', 'cash', '-6.135918', '106.713822', 'pickup'),
(60, 'INV-10594320191227', 27, 'Nasim Purwa Widodo S.Ked', 'PD Maheswara', 'Kpg. Perintis Kemerdekaan No. 186, Cimahi 22810, KepR', 'Bukittinggi', '36241', 'Sulawesi Barat', '+6553760930057', 'Padma Prastuti S.Pt', 'PD Pertiwi Kusmawati (Persero) Tbk', 'Dk. Bayan No. 12, Metro 69250, BaBel', 'credit', '-6.122017', '106.888565', 'delivery'),
(61, 'INV-54482820191227', 43, 'Febi Rahmawati M.Pd', 'CV Hidayanto', 'Jr. Bazuka Raya No. 528, Pekanbaru 40569, KepR', 'Tual', '35671', 'Papua Barat', '+2927668266025', 'Samsul Zulkarnain', 'UD Novitasari', 'Ki. Bara Tambar No. 869, Denpasar 91918, PapBar', 'cash', '-6.293582', '106.776769', 'pickup'),
(62, 'INV-74593820191227', 3, 'Jarwi Rajata M.M.', 'CV Wahyuni Mahendra (Persero) Tbk', 'Kpg. Achmad No. 566, Cilegon 84240, KalTeng', 'Mataram', '58988', 'Gorontalo', '+1115999931956', 'Respati Mustofa', 'PD Pratama Oktaviani', 'Gg. Halim No. 396, Kendari 36989, Lampung', 'cash', '-6.213618', '106.884532', 'pickup'),
(63, 'INV-55701120191227', 3, 'Endah Gina Lailasari', 'UD Fujiati Laksmiwati', 'Ds. Bass No. 326, Depok 73004, SulTeng', 'Manado', '90071', 'Jawa Timur', '+6155046796471', 'Utama Sihombing S.Psi', 'Perum Siregar', 'Psr. Gedebage Selatan No. 848, Sabang 17949, Gorontalo', 'cash', '-6.140122', '106.870666', 'complete'),
(64, 'INV-78768420191227', 31, 'Ana Laksita', 'PT Mardhiyah Ardianto', 'Ds. Taman No. 218, Denpasar 62301, KalBar', 'Cimahi', '39059', 'Kalimantan Timur', '+8380781591066', 'Damar Wibowo M.Farm', 'CV Jailani Tbk', 'Jr. Teuku Umar No. 412, Pangkal Pinang 17837, SulTra', 'credit', '-6.20523', '106.719515', 'complete'),
(65, 'INV-8861220191227', 88, 'Devi Permata S.Psi', 'PT Sihombing Hutapea Tbk', 'Psr. Bara Tambar No. 264, Jayapura 37873, Jambi', 'Malang', '50550', 'Kalimantan Barat', '+7803130620759', 'Paulin Hartati', 'UD Damanik', 'Kpg. Katamso No. 375, Bukittinggi 59891, KalBar', 'cash', '-6.285878', '106.818099', 'pickup'),
(66, 'INV-25090120191227', 18, 'Maida Ella Suryatmi M.Farm', 'PT Safitri', 'Ki. Gedebage Selatan No. 641, Pangkal Pinang 93383, BaBel', 'Tomohon', '58985', 'Papua', '+2039599571551', 'Gadang Situmorang', 'UD Agustina Usada', 'Psr. Bahagia No. 231, Cirebon 33009, JaBar', 'cash', '-6.145934', '106.796429', 'complete'),
(67, 'INV-21146220191227', 21, 'Leo Gunarto', 'UD Sihombing', 'Ds. Setiabudhi No. 667, Administrasi Jakarta Pusat 68338, KalUt', 'Dumai', '59510', 'Aceh', '+2418454741138', 'Raditya Galak Prayoga', 'PT Suryatmi Iswahyudi', 'Jr. Laksamana No. 359, Bengkulu 15006, Banten', 'cash', '-6.192123', '106.701805', 'pickup'),
(68, 'INV-32241920191227', 85, 'Cahyo Suryono', 'PD Winarsih', 'Jr. Yap Tjwan Bing No. 407, Parepare 99207, SulSel', 'Palopo', '28602', 'Bengkulu', '+9857095032741', 'Latika Wastuti', 'PT Purnawati Hutapea Tbk', 'Kpg. Bahagia  No. 744, Lubuklinggau 89719, Banten', 'credit', '-6.158425', '106.700496', 'delivery'),
(69, 'INV-70722820191227', 61, 'Ade Lintang Mayasari', 'UD Hakim (Persero) Tbk', 'Ki. Imam No. 224, Pontianak 89631, DKI', 'Dumai', '21708', 'Kalimantan Tengah', '+7622303707556', 'Sakura Purwanti', 'Perum Thamrin', 'Psr. Baan No. 334, Gunungsitoli 13794, Banten', 'credit', '-6.15649', '106.770202', 'delivery'),
(70, 'INV-62020020191227', 88, 'Mustofa Hutasoit', 'PD Winarsih', 'Jln. Moch. Ramdan No. 909, Sawahlunto 93230, DKI', 'Makassar', '94502', 'Jambi', '+1443527056686', 'Dina Sabrina Hastuti S.Kom', 'CV Yolanda Pertiwi Tbk', 'Ki. Suharso No. 861, Bima 58260, KepR', 'cash', '-6.164008', '106.71444', 'delivery'),
(71, 'INV-66485720191227', 60, 'Ulya Maimunah Haryanti S.Ked', 'Perum Ardianto Winarno', 'Psr. Siliwangi No. 27, Sawahlunto 27698, JaTim', 'Tual', '43861', 'Bali', '+1980613349772', 'Prabu Rama Wibowo M.Kom.', 'Perum Jailani (Persero) Tbk', 'Jr. Untung Suropati No. 858, Padangpanjang 15032, Maluku', 'cash', '-6.172674', '106.859008', 'delivery'),
(72, 'INV-87427120191227', 73, 'Faizah Pertiwi S.Kom', 'CV Budiyanto', 'Jln. Taman No. 360, Subulussalam 42383, JaTim', 'Sabang', '45821', 'Gorontalo', '+1637088309094', 'Novi Dewi Puspita S.E.', 'PD Kurniawan Wastuti Tbk', 'Kpg. B.Agam Dlm No. 99, Makassar 12046, JaTim', 'credit', '-6.29082', '106.878997', 'delivery'),
(73, 'INV-25928020191227', 26, 'Aurora Hasanah', 'PD Yolanda Habibi (Persero) Tbk', 'Kpg. Madrasah No. 11, Samarinda 15426, Jambi', 'Tanjung Pinang', '15387', 'Nusa Tenggara Barat', '+5554572841570', 'Fitriani Yuliarti', 'Perum Wibowo Melani (Persero) Tbk', 'Ds. Bahagia  No. 324, Bitung 41512, Lampung', 'credit', '-6.208667', '106.749141', 'complete'),
(74, 'INV-73537120191227', 62, 'Salwa Clara Palastri S.Gz', 'PT Pradipta Purnawati (Persero) Tbk', 'Gg. Haji No. 595, Tangerang 25968, KepR', 'Kotamobagu', '38534', 'Jambi', '+9102281394098', 'Puji Astuti', 'UD Kuswandari Tbk', 'Ds. Gatot Subroto No. 303, Tegal 46658, KalSel', 'cash', '-6.200551', '106.807995', 'delivery'),
(75, 'INV-59760320191227', 31, 'Laswi Sihotang', 'PD Padmasari', 'Kpg. Panjaitan No. 601, Administrasi Jakarta Timur 57194, JaTim', 'Tidore Kepulauan', '42176', 'Bengkulu', '+9489149130623', 'Jasmani Natsir S.Kom', 'UD Putra Tbk', 'Gg. Astana Anyar No. 102, Sorong 50737, Gorontalo', 'credit', '-6.174879', '106.717769', 'delivery'),
(76, 'INV-55859020191227', 91, 'Wasis Setiawan', 'UD Mustofa Santoso (Persero) Tbk', 'Ki. Cihampelas No. 336, Pekalongan 13911, Bengkulu', 'Depok', '27665', 'Kepulauan Riau', '+6347441765893', 'Daru Panca Sihotang M.TI.', 'PT Farida (Persero) Tbk', 'Jln. Bakau No. 4, Solok 91571, KalUt', 'credit', '-6.183375', '106.70402', 'complete'),
(77, 'INV-46074320191227', 59, 'Lalita Yolanda', 'Perum Napitupulu Puspita', 'Jr. Abdul No. 74, Bau-Bau 96880, BaBel', 'Tegal', '93131', 'Kalimantan Timur', '+7077552722917', 'Ihsan Wijaya', 'PT Riyanti Nainggolan (Persero) Tbk', 'Psr. Imam No. 341, Sabang 96651, KalTeng', 'cash', '-6.208395', '106.813952', 'pickup'),
(78, 'INV-20465220191227', 26, 'Anastasia Laksita', 'PD Hartati Narpati Tbk', 'Kpg. Untung Suropati No. 512, Binjai 38960, KepR', 'Pekanbaru', '33507', 'Sulawesi Utara', '+5270046270252', 'Martana Lanang Anggriawan S.E.I', 'PT Habibi (Persero) Tbk', 'Psr. Abang No. 725, Banjar 68826, KalTeng', 'cash', '-6.144435', '106.891005', 'delivery'),
(79, 'INV-48353720191227', 97, 'Cengkal Hairyanto Suwarno S.IP', 'CV Wijayanti Wijaya (Persero) Tbk', 'Ds. Pahlawan No. 261, Banda Aceh 44570, SumUt', 'Bogor', '84356', 'Sumatera Utara', '+2048323009160', 'Ina Rahmawati', 'PD Utama', 'Dk. BKR No. 574, Bukittinggi 60338, JaBar', 'cash', '-6.293989', '106.832318', 'pickup'),
(80, 'INV-69903920191227', 3, 'Gasti Susanti', 'CV Winarsih Rahimah', 'Psr. Dipenogoro No. 356, Jambi 93834, SulTeng', 'Padang', '59214', 'DI Yogyakarta', '+7978991636079', 'Queen Kasiyah Mandasari M.Ak', 'Perum Hutagalung', 'Psr. Moch. Toha No. 777, Pariaman 30046, Gorontalo', 'cash', '-6.126735', '106.863842', 'complete'),
(81, 'INV-1445920191227', 43, 'Hardi Haryanto S.IP', 'CV Waskita', 'Ki. Daan No. 491, Bandung 16653, SumUt', 'Tanjungbalai', '86586', 'Bangka Belitung', '+1054975965445', 'Titin Dian Wahyuni', 'Perum Melani', 'Ds. Jend. Sudirman No. 323, Tangerang 19702, KepR', 'credit', '-6.238888', '106.840227', 'pickup'),
(82, 'INV-75415120191227', 67, 'Perkasa Permadi', 'PT Mansur Tbk', 'Ki. Katamso No. 319, Mataram 68472, Banten', 'Medan', '85116', 'Kalimantan Timur', '+8636826399470', 'Ika Wijayanti', 'PD Maheswara (Persero) Tbk', 'Jr. Gading No. 961, Sabang 42609, JaBar', 'credit', '-6.152348', '106.844839', 'delivery'),
(83, 'INV-13456420191227', 66, 'Garan Siregar M.Farm', 'PT Uyainah Wastuti (Persero) Tbk', 'Jr. Agus Salim No. 981, Yogyakarta 56253, SulUt', 'Administrasi Jakarta Utara', '39806', 'Kalimantan Timur', '+2731470731803', 'Jasmin Lailasari S.Ked', 'PD Pradana', 'Gg. M.T. Haryono No. 619, Blitar 77042, KalSel', 'cash', '-6.184747', '106.837269', 'complete'),
(84, 'INV-72969120191227', 75, 'Dagel Budiman', 'PT Utama', 'Kpg. Suryo Pranoto No. 382, Tasikmalaya 81159, JaTeng', 'Pematangsiantar', '48869', 'Kalimantan Utara', '+4214069097960', 'Artanto Budiman', 'PD Hasanah Usada Tbk', 'Kpg. Ujung No. 749, Prabumulih 72434, SulTra', 'credit', '-6.176714', '106.877441', 'pickup'),
(85, 'INV-15221820191227', 76, 'Alika Shania Melani S.H.', 'CV Mardhiyah', 'Gg. Batako No. 1, Mojokerto 72738, Papua', 'Palangka Raya', '24686', 'Sumatera Barat', '+8617437223003', 'Ellis Wijayanti', 'Perum Marpaung (Persero) Tbk', 'Kpg. Bazuka Raya No. 323, Bekasi 23048, KalSel', 'credit', '-6.151253', '106.856269', 'complete'),
(86, 'INV-76927920191227', 30, 'Irfan Lamar Suryono S.E.', 'PT Marpaung Permata Tbk', 'Jln. B.Agam 1 No. 195, Balikpapan 67022, Riau', 'Administrasi Jakarta Selatan', '14525', 'Papua Barat', '+6488795323667', 'Yusuf Ardianto S.Farm', 'PD Saefullah Najmudin (Persero) Tbk', 'Ds. Rajawali Barat No. 888, Sabang 77047, KalUt', 'credit', '-6.143974', '106.756045', 'complete'),
(87, 'INV-8852920191227', 96, 'Keisha Fujiati', 'Perum Tarihoran Susanti (Persero) Tbk', 'Ki. Babadak No. 133, Subulussalam 12059, DIY', 'Lhokseumawe', '75442', 'Maluku', '+6683864524082', 'Gasti Andriani', 'Perum Narpati Rahimah (Persero) Tbk', 'Ds. Wora Wari No. 854, Malang 30443, SulBar', 'cash', '-6.210521', '106.862172', 'delivery'),
(88, 'INV-11608820191227', 44, 'Kiandra Dian Anggraini', 'PT Damanik (Persero) Tbk', 'Ki. Tentara Pelajar No. 358, Batu 42260, JaTim', 'Sabang', '26319', 'Sumatera Utara', '+3741682369409', 'Clara Calista Wijayanti', 'UD Andriani Situmorang', 'Jln. Baha No. 968, Pasuruan 70315, JaTeng', 'cash', '-6.167735', '106.801835', 'pickup'),
(89, 'INV-88779220191227', 88, 'Utama Adriansyah', 'Perum Maryati Mandala (Persero) Tbk', 'Psr. Bakau Griya Utama No. 523, Sorong 50231, NTT', 'Depok', '61610', 'Bali', '+1442106557936', 'Karja Cahyanto Haryanto S.Kom', 'CV Adriansyah Yuniar', 'Psr. Cemara No. 356, Bitung 91929, SumBar', 'cash', '-6.229369', '106.873569', 'complete'),
(90, 'INV-74104720191227', 47, 'Muni Suwarno', 'CV Widiastuti Agustina', 'Dk. Ujung No. 178, Prabumulih 37092, SulUt', 'Banda Aceh', '98790', 'Sulawesi Selatan', '+5888270761343', 'Kania Permata S.Pd', 'PD Safitri Oktaviani (Persero) Tbk', 'Jln. Rajawali Barat No. 211, Administrasi Jakarta Barat 89060, SumUt', 'credit', '-6.175827', '106.82121', 'delivery'),
(91, 'INV-69990420191227', 36, 'Rafi Prayoga', 'Perum Saptono Saptono', 'Ds. Bakit  No. 684, Tegal 17797, SulTeng', 'Bitung', '79359', 'Jawa Tengah', '+8537692007553', 'Yessi Puput Puspasari', 'CV Padmasari Sihombing Tbk', 'Kpg. Reksoninten No. 43, Solok 34475, Bengkulu', 'credit', '-6.146072', '106.866445', 'pickup'),
(92, 'INV-58555720191227', 71, 'Hasan Wasita S.E.', 'Perum Kurniawan Nurdiyanti Tbk', 'Gg. Salatiga No. 995, Bitung 90686, SumBar', 'Sungai Penuh', '30815', 'Maluku Utara', '+1724854500445', 'Kardi Iswahyudi', 'PT Prakasa Tbk', 'Jr. Ters. Pasir Koja No. 209, Sukabumi 54477, SumUt', 'credit', '-6.254836', '106.828594', 'complete'),
(93, 'INV-39309420191227', 99, 'Kasim Nugroho', 'PD Salahudin Tbk', 'Ki. Ters. Kiaracondong No. 29, Tanjung Pinang 16302, SumUt', 'Samarinda', '37071', 'Kepulauan Riau', '+6463840181982', 'Ismail Wira Kuswoyo S.Pt', 'PT Wijayanti Tbk', 'Jr. B.Agam Dlm No. 99, Batu 28289, Papua', 'credit', '-6.204618', '106.874561', 'pickup'),
(94, 'INV-48421620191227', 63, 'Ulva Septi Zulaika M.TI.', 'PD Halimah Latupono', 'Dk. Abdul Rahmat No. 500, Pangkal Pinang 35673, SumBar', 'Samarinda', '61591', 'Sumatera Barat', '+7394635933717', 'Latika Pudjiastuti', 'CV Hutapea Tbk', 'Gg. Mahakam No. 850, Yogyakarta 99259, Bali', 'cash', '-6.124681', '106.823497', 'pickup'),
(95, 'INV-13244620191227', 33, 'Victoria Rahimah', 'PD Utama Tbk', 'Jln. Babadak No. 331, Cilegon 59906, Papua', 'Yogyakarta', '37110', 'Banten', '+1585361435190', 'Septi Hariyah M.M.', 'PD Rahayu (Persero) Tbk', 'Ki. Ters. Buah Batu No. 280, Bandar Lampung 58887, SulUt', 'cash', '-6.19032', '106.851924', 'complete'),
(96, 'INV-73507220191227', 100, 'Budi Latupono', 'Perum Nuraini (Persero) Tbk', 'Jln. Ki Hajar Dewantara No. 460, Banda Aceh 49581, KepR', 'Batu', '70789', 'Sumatera Utara', '+7369543023756', 'Darmanto Reksa Prakasa', 'CV Kuswoyo Sitompul (Persero) Tbk', 'Ds. Sutarjo No. 41, Banda Aceh 73821, NTT', 'credit', '-6.297247', '106.781458', 'pickup'),
(97, 'INV-52580720191227', 63, 'Siti Widya Nurdiyanti', 'PT Nainggolan (Persero) Tbk', 'Dk. Bakti No. 205, Palopo 15444, SulTeng', 'Sawahlunto', '49152', 'Sumatera Utara', '+5160165462215', 'Karman Lazuardi M.Ak', 'PD Uyainah Nainggolan (Persero) Tbk', 'Jr. Ekonomi No. 293, Bandar Lampung 24127, Bali', 'credit', '-6.196877', '106.814541', 'delivery'),
(98, 'INV-13490520191227', 35, 'Belinda Kamaria Pratiwi S.E.', 'UD Pangestu Prasetyo Tbk', 'Ds. Tentara Pelajar No. 586, Padang 35597, JaBar', 'Gunungsitoli', '30512', 'Bangka Belitung', '+3664672895672', 'Luwes Widodo', 'UD Aryani Mulyani Tbk', 'Psr. Teuku Umar No. 382, Bau-Bau 63265, Lampung', 'cash', '-6.227075', '106.757202', 'delivery'),
(99, 'INV-1233120191227', 30, 'Warta Abyasa Saefullah', 'PD Haryanto Lailasari', 'Dk. Diponegoro No. 701, Bima 76764, JaTeng', 'Yogyakarta', '88477', 'Jawa Tengah', '+8741933488109', 'Limar Sihotang', 'Perum Handayani', 'Gg. Sam Ratulangi No. 334, Padang 45973, DIY', 'credit', '-6.243935', '106.72201', 'complete'),
(100, 'INV-85401720191227', 33, 'Cornelia Usada', 'PD Sudiati Hardiansyah', 'Kpg. Perintis Kemerdekaan No. 157, Tual 27090, NTB', 'Kediri', '94162', 'Riau', '+1966017258826', 'Yono Situmorang', 'PT Handayani Yolanda Tbk', 'Ds. Yos Sudarso No. 822, Salatiga 92575, KalTeng', 'credit', '-6.242193', '106.777261', 'pickup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_type` int(4) NOT NULL DEFAULT 0,
  `products_sku` varchar(64) DEFAULT NULL,
  `products_name` varchar(255) NOT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `products_tax` decimal(7,4) NOT NULL,
  `products_quantity` int(2) NOT NULL,
  `products_return_quantity` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(8) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `products_type` int(4) DEFAULT 0,
  `products_quantity` int(4) DEFAULT 1,
  `products_name` varchar(100) DEFAULT NULL,
  `products_price` varchar(15) NOT NULL,
  `products_sku` varchar(64) NOT NULL,
  `products_model` varchar(64) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(5) NOT NULL,
  `products_weight_class` int(11) NOT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT 0,
  `quantity_discount_groups_id` int(11) DEFAULT NULL,
  `quantity_unit_class` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `products_type`, `products_quantity`, `products_name`, `products_price`, `products_sku`, `products_model`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_class`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `quantity_discount_groups_id`, `quantity_unit_class`) VALUES
(1, 6, 7, 'iPhone 6 / 6 Plus', '6805', 'hrR8nflThDDaSXO', 'GoodPromotion549285', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '1', 0, 1, 4, 6579, 5841, NULL, 2),
(2, 9, 8, 'iPhone 5', '7893', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'CoolDiscount507873', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '8', 8, 1, 2, 5598, 1893, NULL, 2),
(3, 0, 2, 'iPhone SE', '5423', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'AmazingSale313355', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 8, 1, 9, 3978, 1342, NULL, 2),
(4, 5, 2, 'iPhone X', '1128', 'ejfjnRNInxh0363JC2WM', 'PremiumSavings166739', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 0, 1, 7, 1640, 4967, NULL, 2),
(5, 8, 4, 'iPhone 5', '5006', 'hHhDJaHCO', 'AmazingDeal512658', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '6', 4, 1, 3, 1651, 3851, NULL, 2),
(6, 9, 6, 'iPhone SE', '1439', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'GoodPromo280972', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 1, 1, 8, 8379, 4062, NULL, 2),
(7, 4, 5, 'iPhone 5C', '2743', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'IncrediblePromotion503392', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '0', 1, 1, 2, 8880, 1247, NULL, 2),
(8, 2, 4, 'iPhone', '8055', 'ejfjnRNInxh0363JC2WM', 'GoodDiscount142106', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '9', 3, 1, 0, 7170, 7252, NULL, 2),
(9, 1, 9, 'iPhone', '6807', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'AmazingSale143298', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '6', 8, 1, 2, 6022, 4302, NULL, 2),
(10, 8, 4, 'iPhone 4S', '8418', '05skEogwZlX7j6twhhXX', 'AmazingPromotion168361', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 8, 1, 5, 4882, 8973, NULL, 2),
(11, 8, 5, 'iPhone 7 / 7 Plus', '3599', 'm6aHiiHOc', 'AwesomeSavings958471', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 7, 1, 7, 4642, 4186, NULL, 2),
(12, 7, 2, 'iPhone 5C', '5948', 'ToFVWLzGTJhQxAaJlDDn', 'GoodDiscount741103', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '3', 3, 1, 0, 8959, 4003, NULL, 2),
(13, 3, 8, 'iPhone 5', '1739', 'PTIA6Ff3GBvGh3j', 'KillerPromo612139', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 9, 1, 1, 7200, 2085, NULL, 2),
(14, 1, 8, 'iPhone 7 / 7 Plus', '1040', 'VMTnd2mMQWvjbtNcZh7UIdULKb1mMo', 'GreatDiscount659918', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 5, 1, 4, 4482, 8600, NULL, 2),
(15, 3, 1, 'iPhone 5', '8131', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'KillerDeal281305', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '8', 5, 1, 3, 5263, 3881, NULL, 2),
(16, 1, 3, 'iPhone', '4865', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'AwesomePrice349658', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2', 1, 1, 0, 3758, 6061, NULL, 2),
(17, 5, 0, 'iPhone 5C', '2722', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'KillerPromotion909724', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 9, 1, 8, 7647, 4656, NULL, 2),
(18, 9, 6, 'iPhone 6 / 6 Plus', '4765', 'OezkV3nTii0sMK0', 'KillerSavings501264', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '1', 8, 1, 2, 6817, 7266, NULL, 2),
(19, 0, 3, 'iPhone 4S', '8414', 'OezkV3nTii0sMK0', 'PremiumPrice502029', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '1', 9, 1, 0, 7819, 8093, NULL, 2),
(20, 2, 1, 'iPhone 5C', '1933', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'SweetDiscount454806', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '1', 2, 1, 9, 8210, 4742, NULL, 2),
(21, 3, 3, 'iPhone X', '1129', '05skEogwZlX7j6twhhXX', 'KillerSavings414008', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 8, 1, 9, 7734, 8670, NULL, 2),
(22, 2, 6, 'iPhone 4S', '2135', 'hHhDJaHCO', 'IncredibleSavings568471', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '6', 5, 1, 1, 1112, 3704, NULL, 2),
(23, 0, 1, 'iPhone X', '2356', 'Kl2ZroV9a', 'AmazingPrice353238', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '3', 5, 1, 5, 3617, 8597, NULL, 2),
(24, 2, 5, 'iPhone X', '5162', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'CoolPromo955770', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2', 9, 1, 9, 5502, 4620, NULL, 2),
(25, 4, 4, 'iPhone 8 / 8 Plus', '7372', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'AwesomeCode894133', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '6', 9, 1, 3, 1220, 7750, NULL, 2),
(26, 7, 4, 'iPhone 4', '1423', 'NjGU0z33pgE4sTEED7VR', 'GreatPromo137041', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '3', 6, 1, 2, 6458, 8165, NULL, 2),
(27, 7, 6, 'iPhone SE', '1000', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'PremiumSavings119471', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 3, 1, 1, 3901, 8745, NULL, 2),
(28, 2, 3, 'iPhone 5S', '5306', 'ejfjnRNInxh0363JC2WM', 'CoolDiscount813311', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2', 2, 1, 0, 1840, 2780, NULL, 2),
(29, 6, 8, 'iPhone', '8999', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'CoolCode687179', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '8', 0, 1, 4, 4798, 4201, NULL, 2),
(30, 5, 6, 'iPhone 6S / 6S Plus', '5758', 'SJMZOmtU0csrv4R', 'StellarDiscount751496', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 7, 1, 8, 8714, 7291, NULL, 2),
(31, 7, 7, 'iPhone 7 / 7 Plus', '3270', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'AwesomePrice929592', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '1', 8, 1, 2, 2158, 7147, NULL, 2),
(32, 1, 0, 'iPhone', '8809', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'GreatCode982179', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 3, 1, 6, 4328, 5109, NULL, 2),
(33, 4, 7, 'iPhone 8 / 8 Plus', '4405', 'PTIA6Ff3GBvGh3j', 'GreatSale876138', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 6, 1, 2, 7275, 5766, NULL, 2),
(34, 9, 4, 'iPhone 5S', '1611', 'OezkV3nTii0sMK0', 'GoodPrice982448', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '3', 0, 1, 9, 6375, 4473, NULL, 2),
(35, 6, 6, 'iPhone 8 / 8 Plus', '5389', '05skEogwZlX7j6twhhXX', 'KillerPromotion784288', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '0', 8, 1, 5, 3910, 4219, NULL, 2),
(36, 3, 3, 'iPhone', '7115', 'ToFVWLzGTJhQxAaJlDDn', 'GoodPromo738360', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '8', 0, 1, 7, 1571, 8777, NULL, 2),
(37, 3, 7, 'iPhone 3GS', '1523', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'GreatSale261688', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2', 2, 1, 6, 7914, 4979, NULL, 2),
(38, 8, 0, 'iPhone 3G', '5809', 'xC36G3Xy4n2Fu90keaW96c1Hw5QBJX', 'PremiumSavings128244', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 6, 1, 5, 1094, 3619, NULL, 2),
(39, 6, 9, 'iPhone X', '3325', 'SJMZOmtU0csrv4R', 'CoolDeal486993', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 3, 1, 4, 6262, 3050, NULL, 2),
(40, 7, 1, 'iPhone', '2968', 'm6aHiiHOc', 'StellarPromotion524102', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '1', 0, 1, 1, 6653, 6837, NULL, 2),
(41, 7, 1, 'iPhone SE', '4954', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'StellarSale751967', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '8', 3, 1, 0, 7622, 4256, NULL, 2),
(42, 2, 9, 'iPhone 7 / 7 Plus', '8908', 'T6UuMUTani3VGY4vXGia', 'CoolDiscount871640', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '1', 8, 1, 6, 8570, 6381, NULL, 2),
(43, 9, 4, 'iPhone 5', '7681', 'OezkV3nTii0sMK0', 'SweetPromotion236691', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '1', 2, 1, 9, 6331, 1850, NULL, 2),
(44, 3, 8, 'iPhone 6S / 6S Plus', '6895', 'm6aHiiHOc', 'IncrediblePrice911761', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2', 9, 1, 0, 4324, 6571, NULL, 2),
(45, 8, 9, 'iPhone 7 / 7 Plus', '5300', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'AmazingSavings549309', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2', 8, 1, 8, 1839, 4861, NULL, 2),
(46, 4, 8, 'iPhone 5C', '2276', 'T6UuMUTani3VGY4vXGia', 'CoolSavings619237', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 5, 1, 1, 4041, 6992, NULL, 2),
(47, 5, 6, 'iPhone 4S', '8002', 'ejfjnRNInxh0363JC2WM', 'CoolSale711056', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '8', 3, 1, 8, 4178, 3773, NULL, 2),
(48, 0, 3, 'iPhone 3GS', '3736', 'Kl2ZroV9a', 'PremiumSale901436', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '1', 8, 1, 9, 5686, 5017, NULL, 2),
(49, 8, 4, 'iPhone X', '3221', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'StellarDeal504089', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 8, 1, 0, 6903, 7031, NULL, 2),
(50, 1, 8, 'iPhone SE', '8242', 'NjGU0z33pgE4sTEED7VR', 'StellarSavings295539', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '8', 5, 1, 3, 8306, 3533, NULL, 2),
(51, 3, 8, 'iPhone 3G', '3509', 'm6aHiiHOc', 'SweetDiscount190323', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '9', 8, 1, 3, 1686, 4857, NULL, 2),
(52, 8, 0, 'iPhone 4S', '8308', 'Kl2ZroV9a', 'GreatSale705928', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '0', 1, 1, 5, 6498, 2338, NULL, 2),
(53, 7, 5, 'iPhone 4', '6577', 'ToFVWLzGTJhQxAaJlDDn', 'KillerCode371245', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2', 2, 1, 8, 5647, 1734, NULL, 2),
(54, 0, 7, 'iPhone 4S', '1498', 'OezkV3nTii0sMK0', 'CoolPromo950041', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '9', 2, 1, 8, 6056, 7776, NULL, 2),
(55, 0, 3, 'iPhone 3G', '4295', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'AmazingCode940870', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 7, 1, 6, 3464, 3007, NULL, 2),
(56, 9, 5, 'iPhone 7 / 7 Plus', '8479', 'ejfjnRNInxh0363JC2WM', 'PremiumDeal985747', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 5, 1, 5, 1710, 8590, NULL, 2),
(57, 1, 7, 'iPhone 4S', '8647', 'hHhDJaHCO', 'AwesomeSavings607355', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 6, 1, 8, 8236, 6163, NULL, 2),
(58, 9, 6, 'iPhone 6 / 6 Plus', '1713', '05skEogwZlX7j6twhhXX', 'AwesomePromo281045', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 9, 1, 9, 4704, 2478, NULL, 2),
(59, 4, 2, 'iPhone', '1996', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'GoodDeal296001', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '9', 9, 1, 7, 1780, 5888, NULL, 2),
(60, 0, 7, 'iPhone 6 / 6 Plus', '1482', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'AmazingDeal668922', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '0', 4, 1, 5, 3421, 2768, NULL, 2),
(61, 6, 6, 'iPhone 8 / 8 Plus', '8114', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'GreatDeal798541', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2', 5, 1, 1, 2546, 4316, NULL, 2),
(62, 1, 6, 'iPhone 6 / 6 Plus', '3777', 'NjGU0z33pgE4sTEED7VR', 'AmazingSavings672531', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2', 6, 1, 6, 7746, 1010, NULL, 2),
(63, 8, 4, 'iPhone 7 / 7 Plus', '2913', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'AmazingPrice618409', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 5, 1, 9, 2148, 3529, NULL, 2),
(64, 3, 8, 'iPhone X', '5053', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'AwesomeDiscount637404', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '0', 5, 1, 4, 8203, 8288, NULL, 2),
(65, 1, 3, 'iPhone 8 / 8 Plus', '1603', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'GoodPrice969171', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 8, 1, 0, 6350, 1830, NULL, 2),
(66, 4, 1, 'iPhone', '2417', 'Kl2ZroV9a', 'CoolCode816355', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 6, 1, 9, 5818, 1391, NULL, 2),
(67, 5, 1, 'iPhone 6S / 6S Plus', '7752', 'ToFVWLzGTJhQxAaJlDDn', 'PremiumPromotion867993', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '1', 0, 1, 3, 4858, 1097, NULL, 2),
(68, 9, 4, 'iPhone X', '1497', 'VMTnd2mMQWvjbtNcZh7UIdULKb1mMo', 'KillerDiscount929040', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 9, 1, 9, 8623, 1344, NULL, 2),
(69, 9, 5, 'iPhone 4S', '3622', 'm6aHiiHOc', 'CoolDiscount876360', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2', 6, 1, 1, 7949, 8291, NULL, 2),
(70, 5, 1, 'iPhone 6 / 6 Plus', '6062', 'm6aHiiHOc', 'GoodDeal747214', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '3', 6, 1, 8, 7729, 6907, NULL, 2),
(71, 7, 3, 'iPhone 3GS', '5534', 'SJMZOmtU0csrv4R', 'StellarPromo246074', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 8, 1, 2, 1196, 4884, NULL, 2),
(72, 9, 3, 'iPhone X', '8944', 'xC36G3Xy4n2Fu90keaW96c1Hw5QBJX', 'GoodCode907251', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 4, 1, 5, 4897, 4415, NULL, 2),
(73, 2, 3, 'iPhone 5S', '6305', 'T6UuMUTani3VGY4vXGia', 'GreatPromotion327717', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 6, 1, 7, 4216, 6580, NULL, 2),
(74, 7, 7, 'iPhone 8 / 8 Plus', '2165', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'AmazingSale719412', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '3', 7, 1, 2, 1613, 1760, NULL, 2),
(75, 2, 9, 'iPhone 8 / 8 Plus', '1361', '05skEogwZlX7j6twhhXX', 'SpecialCode552744', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 5, 1, 5, 1157, 3115, NULL, 2),
(76, 0, 6, 'iPhone 3G', '6488', 'xC36G3Xy4n2Fu90keaW96c1Hw5QBJX', 'AwesomeCode577166', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 0, 1, 9, 2309, 2667, NULL, 2),
(77, 0, 8, 'iPhone 4', '7265', 'VMTnd2mMQWvjbtNcZh7UIdULKb1mMo', 'SpecialCode905959', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 8, 1, 6, 7181, 8865, NULL, 2),
(78, 3, 7, 'iPhone 6S / 6S Plus', '7275', 'NjGU0z33pgE4sTEED7VR', 'SweetPrice760126', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '0', 4, 1, 5, 4068, 5844, NULL, 2),
(79, 4, 5, 'iPhone 4', '7038', 'NjGU0z33pgE4sTEED7VR', 'IncredibleDiscount743230', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '6', 3, 1, 6, 4534, 7323, NULL, 2),
(80, 1, 4, 'iPhone X', '7621', 'm6aHiiHOc', 'GreatCode495546', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '9', 7, 1, 3, 6010, 2766, NULL, 2),
(81, 4, 6, 'iPhone 6 / 6 Plus', '2155', 'm6aHiiHOc', 'StellarCode986481', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 1, 1, 6, 2415, 4896, NULL, 2),
(82, 8, 8, 'iPhone 6S / 6S Plus', '6823', 'Kl2ZroV9a', 'CoolPromotion861165', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '6', 4, 1, 3, 3062, 3120, NULL, 2),
(83, 4, 2, 'iPhone 3GS', '4697', 'ToFVWLzGTJhQxAaJlDDn', 'IncrediblePrice419158', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '7', 4, 1, 8, 8128, 2773, NULL, 2),
(84, 4, 8, 'iPhone 5', '5841', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'GreatPrice373899', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '6', 0, 1, 1, 6080, 8810, NULL, 2),
(85, 4, 8, 'iPhone X', '7659', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'StellarDeal832541', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '3', 8, 1, 7, 5014, 3190, NULL, 2),
(86, 6, 0, 'iPhone 5C', '5949', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'StellarDeal940704', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '6', 8, 1, 4, 5323, 4974, NULL, 2),
(87, 0, 6, 'iPhone 5C', '1959', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'AmazingDiscount894458', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '9', 5, 1, 7, 5548, 8630, NULL, 2),
(88, 2, 0, 'iPhone', '5926', 'SJMZOmtU0csrv4R', 'AwesomePromo151402', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '3', 2, 1, 6, 4721, 7649, NULL, 2),
(89, 8, 9, 'iPhone SE', '8402', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'SpecialSale739480', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '8', 4, 1, 8, 5713, 1428, NULL, 2),
(90, 5, 9, 'iPhone 4', '6179', 'hHhDJaHCO', 'SweetCode934858', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '4', 1, 1, 6, 2249, 6263, NULL, 2),
(91, 5, 6, 'iPhone 3G', '4169', 'ejfjnRNInxh0363JC2WM', 'SpecialDeal413155', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '1', 4, 1, 5, 8942, 7516, NULL, 2),
(92, 4, 8, 'iPhone 6 / 6 Plus', '8643', 'xC36G3Xy4n2Fu90keaW96c1Hw5QBJX', 'SpecialPrice890014', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 3, 1, 9, 5823, 5813, NULL, 2),
(93, 6, 1, 'iPhone 3G', '3691', 'NjGU0z33pgE4sTEED7VR', 'StellarSavings182022', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '9', 1, 1, 8, 3400, 6705, NULL, 2),
(94, 9, 0, 'iPhone 5S', '1659', 'ejfjnRNInxh0363JC2WM', 'SpecialCode528605', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '0', 2, 1, 1, 3507, 2546, NULL, 2),
(95, 9, 3, 'iPhone 3G', '3666', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'StellarPromo775553', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '5', 2, 1, 8, 1940, 7269, NULL, 2),
(96, 3, 0, 'iPhone', '6193', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'AmazingSale698618', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '9', 4, 1, 7, 8322, 2769, NULL, 2),
(97, 8, 5, 'iPhone 4S', '3630', 'VMTnd2mMQWvjbtNcZh7UIdULKb1mMo', 'SweetPrice468727', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '8', 1, 1, 8, 6599, 5802, NULL, 2),
(98, 9, 1, 'iPhone 5C', '1449', 'm6aHiiHOc', 'IncrediblePromo536986', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '0', 0, 1, 5, 5409, 4955, NULL, 2),
(99, 4, 0, 'iPhone', '2214', 'xC36G3Xy4n2Fu90keaW96c1Hw5QBJX', 'SpecialDeal999195', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '8', 3, 1, 8, 4773, 6091, NULL, 2),
(100, 5, 3, 'iPhone', '6801', 'm6aHiiHOc', 'SweetPrice534763', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '2019-12-27 19:46:47', '3', 4, 1, 2, 1793, 4806, NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `quota_gases`
--

CREATE TABLE `quota_gases` (
  `id` int(100) UNSIGNED NOT NULL,
  `tgl` date NOT NULL,
  `composisi` int(100) UNSIGNED NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `ket` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `quota_gases`
--

INSERT INTO `quota_gases` (`id`, `tgl`, `composisi`, `satuan`, `ket`, `status`) VALUES
(1, '2019-12-14', 142, 'KG', 'dasdasdasdasdasdasd', NULL),
(2, '2019-11-14', 316, 'KG', 'dasdasdasdasdasdasd', NULL),
(3, '2019-10-14', 270, 'KG', 'dasdasdasdasdasdasd', NULL),
(4, '2019-09-14', 307, 'KG', 'dasdasdasdasdasdasd', NULL),
(5, '2019-08-14', 148, 'KG', 'dasdasdasdasdasdasd', NULL),
(6, '2019-07-14', 188, 'KG', 'dasdasdasdasdasdasd', NULL),
(7, '2019-06-14', 434, 'KG', 'dasdasdasdasdasdasd', NULL),
(8, '2019-05-14', 170, 'KG', 'dasdasdasdasdasdasd', NULL),
(9, '2019-04-14', 206, 'KG', 'dasdasdasdasdasdasd', NULL),
(10, '2019-03-14', 236, 'KG', 'dasdasdasdasdasdasd', NULL),
(11, '2019-02-14', 480, 'KG', 'dasdasdasdasdasdasd', NULL),
(12, '2019-01-14', 181, 'KG', 'dasdasdasdasdasdasd', NULL),
(13, '2018-12-14', 102, 'KG', 'dasdasdasdasdasdasd', NULL),
(14, '2018-11-14', 356, 'KG', 'dasdasdasdasdasdasd', NULL),
(15, '2018-10-14', 116, 'KG', 'dasdasdasdasdasdasd', NULL),
(16, '2018-09-14', 495, 'KG', 'dasdasdasdasdasdasd', NULL),
(17, '2018-08-14', 449, 'KG', 'dasdasdasdasdasdasd', NULL),
(18, '2018-07-14', 425, 'KG', 'dasdasdasdasdasdasd', NULL),
(19, '2018-06-14', 430, 'KG', 'dasdasdasdasdasdasd', NULL),
(20, '2018-05-14', 478, 'KG', 'dasdasdasdasdasdasd', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedules`
--

CREATE TABLE `schedules` (
  `id` int(100) UNSIGNED NOT NULL,
  `tgl_schedules` date NOT NULL,
  `tgl_pickup` date NOT NULL,
  `transport` varchar(100) NOT NULL,
  `jml_tabung` varchar(100) NOT NULL,
  `ket` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(8) UNSIGNED NOT NULL,
  `first_name` varchar(65) NOT NULL,
  `last_name` varchar(65) NOT NULL,
  `username` varchar(22) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'user',
  `remember_token` varchar(128) NOT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `verified` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `gender`, `email`, `password`, `role`, `remember_token`, `active`, `verified`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin', 'm', 'admin@admin.com', '$2y$10$wbfoNBXzVkAlAgnAxQTwXeHpdpLmQxHkBOYK6E.aOwh/MyfezkHju', 'admin', '', 1, 1, '2019-12-28 01:46:44', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(8) UNSIGNED NOT NULL,
  `user_id` int(8) UNSIGNED NOT NULL,
  `category_id` int(8) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_permissions_categories`
--

CREATE TABLE `user_permissions_categories` (
  `id` int(8) UNSIGNED NOT NULL,
  `name` varchar(65) NOT NULL,
  `parent_id` int(8) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_id` (`customers_id`);

--
-- Indeks untuk tabel `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indeks untuk tabel `quota_gases`
--
ALTER TABLE `quota_gases`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `user_permissions_categories`
--
ALTER TABLE `user_permissions_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `quota_gases`
--
ALTER TABLE `quota_gases`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_permissions_categories`
--
ALTER TABLE `user_permissions_categories`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_permissions_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `user_permissions_categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_permissions_categories`
--
ALTER TABLE `user_permissions_categories`
  ADD CONSTRAINT `user_permissions_categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `user_permissions_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
