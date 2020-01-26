-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jan 2020 pada 14.53
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
  `company` varchar(255) DEFAULT NULL,
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

INSERT INTO `customers` (`id`, `user_id`, `groups_id`, `company`, `gender`, `firstname`, `lastname`, `dob`, `email_address`, `default_address`, `telephone`, `fax`, `newsletter`, `status`, `ip_address`, `credits`, `date_last_logon`, `number_of_logons`, `date_account_created`, `date_account_last_modified`) VALUES
(1, 1, 1, 'PD Budiman Januar', 'f', 'Nabila', 'Melani', '2019-12-27 19:46:47', 'Nabila@gmail.co.id', 'Jl.Diponegoro, Ki. Abdul. Muis No. 408, Padangsidempuan 43858, SumSel', '+2667922789317', '0598 6378 6994', '1', 1, '250.8.233.157', '412502.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(2, 1, 1, 'Perum Siregar Tbk', 'f', 'Umay', 'Hutagalung', '2019-12-27 19:46:47', 'Umay@gmail.com', 'Jl.Jamika, Ki. Ujung No. 579, Subulussalam 14177, BaBel', '+4421884113286', '0393 0354 880', '1', 1, '181.9.181.80', '280793.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(3, 1, 1, 'PT Laksita', 'f', 'Heryanto', 'Zulaika', '2019-12-27 19:46:47', 'Heryanto@yahoo.co.id', 'Jl.Kalimantan, Kpg. Kyai Mojo No. 471, Kendari 84560, PapBar', '+7384309137669', '(+62) 212 3631 9354', '1', 1, '249.218.139.121', '539416.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(4, 1, 1, 'UD Saptono Tbk', 'f', 'Opan', 'Laksmiwati', '2019-12-27 19:46:47', 'Opan@yahoo.com', 'Jl.Tangkuban Perahu, Ki. Laksamana No. 488, Lhokseumawe 15163, DKI', '+6089000445743', '028 2343 684', '1', 1, '169.87.134.81', '801454.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(5, 1, 1, 'Perum Yolanda', 'f', 'Teguh', 'Puspasari', '2019-12-27 19:46:47', 'Teguh@gmail.com', 'Jl.Teuku Umar, Jr. Ciwastra No. 477, Semarang 89270, KalTeng', '+7290018086237', '(+62) 542 8854 673', '1', 1, '152.141.215.87', '557313.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(6, 1, 1, 'UD Rajata Nuraini Tbk', 'f', 'Olga', 'Sitompul', '2019-12-27 19:46:47', 'Olga@yahoo.co.id', 'Jl.Soekarno Hatta, Kpg. Kyai Mojo No. 292, Manado 57986, Aceh', '+5338478876781', '(+62) 482 6869 930', '1', 1, '7.244.198.50', '720398.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(7, 1, 1, 'CV Habibi', 'f', 'Lili', 'Astuti', '2019-12-27 19:46:47', 'Lili@yahoo.co.id', 'Jl.Karel S. Tubun, Gg. Diponegoro No. 704, Batam 80013, Bali', '+6303719062019', '0795 9765 1599', '1', 1, '80.111.62.195', '531361.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(8, 1, 1, 'PT Sitompul (Persero) Tbk', 'm', 'Suci', 'Siregar', '2019-12-27 19:46:47', 'Suci@gmail.co.id', 'Jl.Gremet, Kpg. Wahidin No. 402, Blitar 44386, JaBar', '+9833646140308', '(+62) 809 7293 078', '1', 1, '16.161.212.79', '704139.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(9, 1, 1, 'UD Wulandari Laksmiwati', 'f', 'Belinda', 'Sihombing', '2019-12-27 19:46:47', 'Belinda@gmail.co.id', 'Jl.Kartini, Ds. Wahid Hasyim No. 215, Administrasi Jakarta Utara 54802, SulSel', '+9867993512199', '(+62) 735 8774 110', '1', 1, '139.100.241.65', '249388.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(10, 1, 1, 'UD Pranowo (Persero) Tbk', 'm', 'Emong', 'Oktaviani', '2019-12-27 19:46:47', 'Emong@yahoo.com', 'Jl.Bagonwoto , Psr. Tubagus Ismail No. 808, Ambon 95975, MalUt', '+4228592292930', '(+62) 532 4767 285', '1', 1, '148.248.226.174', '509230.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(11, 1, 1, 'PD Mandala Tbk', 'm', 'Wira', 'Putra', '2019-12-27 19:46:47', 'Wira@gmail.co.id', 'Jl.Gatot Subroto, Dk. PHH. Mustofa No. 895, Bekasi 31926, DKI', '+6991942991970', '0315 9272 879', '1', 1, '162.103.26.198', '256256.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(12, 1, 1, 'PD Pertiwi Tbk', 'm', 'Atma', 'Uyainah', '2019-12-27 19:46:47', 'Atma@gmail.com', 'Jl.Ujung, Dk. Bacang No. 648, Tangerang Selatan 61374, Lampung', '+8076049705674', '(+62) 967 1224 8412', '1', 1, '74.39.34.168', '389862.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(13, 1, 1, 'CV Narpati (Persero) Tbk', 'f', 'Gina', 'Oktaviani', '2019-12-27 19:46:47', 'Gina@yahoo.co.id', 'Jl.Jayawijaya, Kpg. Daan No. 411, Payakumbuh 53938, Jambi', '+2348753790171', '(+62) 254 6407 783', '1', 1, '120.165.62.229', '696551.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(14, 1, 1, 'CV Mandala Ardianto', 'f', 'Bella', 'Rahimah', '2019-12-27 19:46:47', 'Bella@yahoo.com', 'Jl.Baranang Siang Indah, Dk. Villa No. 516, Pagar Alam 30675, NTB', '+9125064173595', '0632 8430 6159', '1', 1, '232.232.223.25', '553093.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(15, 1, 1, 'CV Dongoran Sihombing', 'm', 'Malika', 'Utama', '2019-12-27 19:46:47', 'Malika@gmail.co.id', 'Jl.Eka, Ki. Baranangsiang No. 838, Kediri 58241, PapBar', '+5906798995917', '0351 0685 982', '1', 1, '6.241.186.48', '479379.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(16, 1, 1, 'PD Maheswara Nurdiyanti', 'f', 'Argono', 'Aryani', '2019-12-27 19:46:47', 'Argono@yahoo.com', 'Jl.Suprapto, Ki. Pahlawan No. 656, Langsa 96745, PapBar', '+4616151131990', '027 2362 0790', '1', 1, '202.104.19.191', '108165.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(17, 1, 1, 'CV Nababan Laksmiwati', 'm', 'Jamalia', 'Sitompul', '2019-12-27 19:46:47', 'Jamalia@gmail.co.id', 'Jl.Abdul. Muis, Ki. Babadan No. 160, Pasuruan 83853, Lampung', '+3405725913041', '(+62) 26 0884 344', '1', 1, '239.229.45.30', '762075.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(18, 1, 1, 'UD Jailani Mandasari Tbk', 'm', 'Pranawa', 'Hassanah', '2019-12-27 19:46:47', 'Pranawa@yahoo.com', 'Jl.Rajawali Barat, Gg. Cikapayang No. 478, Tangerang Selatan 75753, NTB', '+1593234671067', '0832 5258 340', '1', 1, '164.42.64.117', '421778.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(19, 1, 1, 'Perum Padmasari Nuraini (Persero) Tbk', 'm', 'Ade', 'Sitompul', '2019-12-27 19:46:47', 'Ade@yahoo.co.id', 'Jl.Padang, Ki. Perintis Kemerdekaan No. 462, Yogyakarta 71736, SulTeng', '+2811301858176', '0625 1297 267', '1', 1, '114.254.16.155', '249382.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47'),
(20, 1, 1, 'PD Mangunsong Anggraini (Persero) Tbk', 'm', 'Damar', 'Tamba', '2019-12-27 19:46:47', 'Damar@gmail.com', 'Jl.Sugiono, Kpg. Sentot Alibasa No. 415, Pontianak 36847, KalBar', '+4707572875745', '(+62) 398 9383 7764', '1', 1, '33.93.24.93', '604057.0000', '2019-12-27 19:46:47', 1, '2019-12-27 19:46:47', '2019-12-27 19:46:47');

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
  `status` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT current_timestamp(6),
  `updated_at` datetime(6) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `invoice_number`, `customers_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_phone`, `billing_name`, `billing_company`, `billing_street_address`, `payment_method`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`, `date`) VALUES
(3, 'INV/5633821012020-174215', 1, 'wisnu', 'PT jasa belekok', 'jl. cemara ujung gg 8 blok i rt 02 rw 01 kel tugu utara', 'jakarta utara ', '14260', '', '123456789', 'baldas', 'kacrtutv', 'jl doang', 'cash', '-6.1201933', '106.9151148', 'complete', '2020-01-21 23:45:07.883242', '2020-01-22 17:17:36.000000', '2020-01-22'),
(4, 'INV/7378422012020-151747', 1, 'budiman', 'budiman pt', 'kampung rambutan', 'jakarta selatan', '14260', '', '1233123123', 'bud', 'bbb', 'busd', 'cash', '-6.3051125', '106.8738909', 'delivery', '2020-01-22 21:19:14.942162', '2020-01-22 17:17:36.000000', '2020-01-22'),
(5, 'INV/6624322012020-162818', 1, 'ok', 'ok', 'ok', 'jakarta barat', '1', '', '1980809', 'ok', 'ok', 'ok', 'cash', '-6.219234699999999', '106.8659825', 'delivery', '2020-01-22 22:29:00.772913', '2020-01-22 17:17:36.000000', '2020-01-22');

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
(1, 'Admin', 'Admin', 'admin', 'm', 'admin@admin.com', '7dd12f3a9afa0282a575b8ef99dea2a0c1becb51', 'admin', '', 1, 1, '2019-12-28 01:46:44', NULL);

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
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

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
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
