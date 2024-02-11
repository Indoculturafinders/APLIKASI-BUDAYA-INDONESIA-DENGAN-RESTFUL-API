-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2024 at 07:26 AM
-- Server version: 10.6.16-MariaDB-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indocult_indoculturafinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `img`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Baju Adat', 'https://images.unsplash.com/photo-1591874117225-24d80a0776d4?q=80&w=1476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Menampilkan berbagai jenis pakaian adat tradisional dari berbagai daerah, mencerminkan kekayaan warisan budaya dalam berbusana.', NULL, '2023-11-15 21:24:10'),
(2, 'Makanan', 'https://images.unsplash.com/photo-1562607635-4608ff48a859?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Menjelajahi ragam kuliner tradisional dari berbagai provinsi, menawarkan cita rasa unik dan keanekaragaman bahan lokal.', NULL, '2023-11-16 17:50:46'),
(3, 'Rumah Adat', 'https://images.unsplash.com/photo-1665772352497-da21adf51b77?q=80&w=1631&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Temukan keindahan dan keunikannya di sini, menampilkan rumah-rumah tradisional yang mencerminkan arsitektur dan budaya lokal.', NULL, NULL),
(4, 'Tarian Adat', 'https://images.unsplash.com/photo-1531887258403-d9de47af4170?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Menyajikan tarian-tarian khas daerah, setiap gerakan memperlihatkan sejarah dan makna mendalam dari suatu komunitas.', NULL, NULL),
(8, 'Upacara Adat', 'https://images.unsplash.com/photo-1667133000547-36edda79f81d?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Explore tradisi dan upacara keagamaan atau adat istiadat yang memperkaya kehidupan masyarakat, menampilkan kekayaan nilai dan keyakinan.', '2023-11-15 20:44:00', '2023-11-15 20:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `cultures`
--

CREATE TABLE `cultures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cultures`
--

INSERT INTO `cultures` (`id`, `province_id`, `category_id`, `name`, `img`, `video`, `desc`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Tari Jaipong', 'https://cdnwpedutorenews.gramedia.net/wp-content/uploads/2021/09/29212602/tari-jaipong.jpg', 'https://www.youtube.com/embed/4EOeWTB5t7U?si=bw9LoBJqYWd33u-x', 'Tari jaipong merupakan tarian khas jawa barat', NULL, NULL),
(3, 4, 4, 'Tari Det Pok Mbui', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Tari_Det_Pok_Mbui.jpg/640px-Tari_Det_Pok_Mbui.jpg', '', 'Tari Det Pok Mbui merupakan tarian adat khas merauke', NULL, NULL),
(4, 1, 1, 'Kebaya', 'https://ds393qgzrxwzn.cloudfront.net/resize/m500x500/cat1/img/images/0/V080TbSyL4.jpg', 'https://www.youtube.com/embed/Tr-uEIBJ6M0?si=ZXuJD8vBIf0IFo5B', 'Menurut sejarah, kemunculan kebaya di Indonesia bermula pada sekitar abad ke-15 atau ke-16. Sebutan \"Kebaya\" merupakan kata yang berasal dari \"Abaya\" yang artinya jubah atau pakaian.', '2023-11-13 22:28:13', '2023-11-13 22:47:24'),
(5, 1, 8, 'Seren Taun', 'https://radarkuningan.disway.id/upload/4d1d71540088c0c8b35362edbaabf5a7.jpg', 'https://www.youtube.com/embed/dL1oX88H4_Y?si=q6Fzvj9f9F5SL9uf', 'Upacara seren taun adalah ungkapan syukur dan doÔÇÖa masyarakat sunda atas suka duka yang mereka alami terutama di bidang pertanian selama setahun yang telah berlalu dan tahun yang akan datang. Seren taun dilaksanakan setiap tanggal 22 Bulan Rayagung sebagai bulan terakhir dalam perhitungan kalender sunda. Selain ritual-ritual yang bersifat sakral, digelar juga kesenian dan hiburan. Dengan kata lain kegiatan ini merupakan hubungan antara manusia dengan tuhan, dan juga dengan sesama mahluk atau alam baik lewat kegiatan kesenian, pendidikan, dan sosial budaya.', NULL, NULL),
(6, 1, 3, 'Badak Heuay', 'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01gf0aw07p97qe15hsspre47hy.png', 'https://www.youtube.com/embed/KU5kyfMgAUI?si=9PY9pHy7XlkQ2k9P', 'Rumah Adat Sunda Badak Heuay sebagai rumah adat Sunda yang banyak dijumpai di Sukabumi. Penamaannya sendiri diambil dari bentuk atapnya yang sangat mirip dengan badak menguap. Rumah adat Sunda Badak Heuay ini terbuat dari bahan dasar kayu untuk bagian dinding dan lantainya. Sementara pada bagian atapnya dibuat dari genteng tanah liat. Bagian atap ini juga terbagi menjadi dua bagian yaitu dan atap kecil yang lebih tinggi dan atap besar yang menaungi bagian belakang rumah. Perbedaan dua atap ini kemudian membuat bagian atas rumah Badak Heuay tidak terlihat simetris.', NULL, NULL),
(7, 5, 2, 'Laksan', 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/06/17/Kuah-laksan-298015914.jpg', 'https://www.youtube.com/embed/FigNVDc6y1A?si=9fjuUheUCm9xd2zo', 'Laksan Palembang adalah makanan berkuah santan merah yang terbuat dari campuran ikan yang dihaluskan dengan tepung sagu dibentuk oval dan kemudian dipotong secara sejajar. Bentuknya menyerupai pempek lenjer, namun lebih kecil dengan ketebalan sekitar 1 hingga 1,5 cm. Namun, terdapat perbedaan utama, yaitu laksan tidak dihidangkan dengan cuko berwarna hitam seperti pempek, melainkan dengan kuah santan yang lezat.', '2023-11-16 17:24:18', '2023-11-16 17:24:18'),
(8, 5, 1, 'Aesan Paksangko', 'https://blog-static.mamikos.com/wp-content/uploads/2023/01/Berikut-Penjelasan-Lengkap-Seputar-Pakaian-Adat-Palembang.jpg', 'https://www.youtube.com/embed/ud4uNR63X0I?si=nnIacKoyebLbuuKV', 'Aesan berasal dari bahasa Palembang yang berarti hiasan. Sedangkan, Paksangkong berasal dari dua kata yaitu pak dan sangkong. Pak artinya delapan dan Sangkong yang berarti dewa. Pakaian adat Aesan Paksangkong memang terlihat sangat mewah, dengan dominan warna merah dan emas. Pakaian laki-laki terdiri dari beberapa bagian, yaitu dari bagian atas, tengah, hingga bawah. Sama halnya dengan pakaian yang dikenalkan oleh mempelai perempuan.', '2023-11-16 17:43:39', '2023-11-16 17:43:39'),
(10, 5, 4, 'Tari Tanggai', 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/03/20/WhatsApp-Image-2023-03-20-at-220942-1-2573582996.jpeg', 'https://www.youtube.com/embed/IfdA7JhLlh0?si=tmAv88pp-s-8A2n3', 'Tari tanggai merupakan salah satu tarian tradisional yang berasal dari Palembang dan berkembang di seluruh Sumatra selatan.  Pada abad ke-5 Masehi, tari tanggai merupakan tari persembahan terhadap dewa siwa dengan  menbawa sesajian yang berisi buah dan beranekan ragam bunga,karena ini berfungsi sebagai tari persembahan pengantar sesajian maka tari tanggai pada zaman dahulu di katagorikan tarian yang sakral. Disebut tari tanggai karena setiap penarinya menggunakan property(alat)tanggai di delapan jari (kecuali jempol). Tari tanggai adalah tari yang memakai Tanggai dengan mengutamakan kelentikan. Abad 17 (1600) zaman belanda mendirikan Kesultanan Palembang Darussalam, zaman Gadis Pingitan. Sultannya mengharamkan Gadis/ Perempuan menari, sehingga seluruh pertunjukan diperankan oleh laki-laki. Demang , Pesirah, Depati adalah nama Jabatan yg diberikan oleh belanda, kemudian Belanda tertarik dengan tari yang memakai tanggai. Memasuki tahun 1920 Tari Tanggai digunakan untuk mencari jodoh oleh para orang tua di Palembang atau disebut Rasan Tuo.', '2023-11-16 18:01:40', '2023-11-16 18:01:40'),
(11, 5, 3, 'Limas', 'https://wonderfulimage.s3-id-jkt-1.kilatstorage.id/1622118118-rumah_limas-2-medium.jpg', 'https://www.youtube.com/embed/HYlSp4NsGR0?si=Jb1GNApUtauoD1dy', 'Rumah Limas adalah rumah tradisional berbentuk limas yang dibuat dengan gaya panggung. Bangunan khas daerah Palembang ini dibangun bertingkat. Kumpulan tingkat-tingkatnya disebut masyarakat sebagai Bengkalis yang memiliki makna tersendiri. Rumah ini sering digunakan sebagai tempat pesta pernikahan dan acara adat. Hampir seluruh bagian dari Rumah Limas terbentuk dari kayu. Pemilihan kayu dilakukan bukan tanpa sebab, namun menyesuaikan dengan karakter kayu dan kepercayaan masyarakat di Sumatera Selatan. Uniknya, jenis kayu-kayu yang digunakan merupakan kayu unggulan dan dikabarkan hanya tumbuh subur di daerah yang beribukota di Palembang.', '2023-11-16 18:02:52', '2023-11-16 18:02:52'),
(19, 1, 2, 'Dodol Garut', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Dodol_Garut_Cihampelas_Bandung.JPG/1200px-Dodol_Garut_Cihampelas_Bandung.JPG', 'https://www.youtube.com/embed/UoO1Gd9zo4s?si=izd3YTH6nj7GeZ1K', 'Dodol Garut, salah satu kuliner tradisional Jawa Barat yang sangat populer, umumnya memiliki bentuk memanjang atau bulat dengan tekstur lembut dan cita rasa manis. Makanan ini sering dihidangkan sebagai camilan khas di daerah Jawa Barat, terutama di sekitar Garut, Tasik, dan Bandung. Industri dodol Garut mulai berkembang sejak tahun 1926, dengan Ibu Karsinah menjadi tokoh kunci dalam meningkatkan popularitasnya sebagai pengusaha yang memulai usaha dodol Garut. Dodol ini terbuat dari campuran santan, tepung ketan, parutan kelapa, dan gula merah. Proses pembuatannya melibatkan pencampuran tepung ketan, parutan kelapa, santan, gula merah, dan sedikit garam yang kemudian dipanaskan. Setelah adonan mengental, gula pasir ditambahkan, dan proses merebus dilanjutkan hingga adonan mencapai konsistensi yang diinginkan. Adonan kemudian dituangkan ke dalam loyang yang telah diolesi minyak goreng, lalu didiamkan hingga dodol mengeras.', '2023-12-14 07:49:43', '2023-12-14 07:49:43'),
(20, 5, 8, 'Sedekah Rame', 'https://img.inews.co.id/media/1200/files/inews_new/2022/11/24/upacara_adar_sedekah_rame.jpg', 'https://www.youtube.com/embed/7lPPRHLU6dM?si=5_20q59MB2_JEL_A', 'Sedekah Rame merupakan salah satu upacara tradisional Melayu Lahat yang menetap di daerah Sumatera Selatan. Disebut demikian, karena kegiatan dalam upacara itu diselenggarakan secara bersama-sama oleh masyarakat setempat, terutama bagi para anggotanya yang memiliki lahan persawahan. Nama upacara tersebut apabila diterjemahkan ke dalam bahasa Indonesia umum sepadan dengan \"Sedekah bersama-sama\". Upacara ini utamanya diselenggarakan oleh para petani dalam rangka kegiatan pertanian, mulai dari penyiangan sawah, pembibitan, dan penanaman sampai panen. Upacara ini dilakukan di daerah Sumatera Selatan yang bernama Tanah Badahe Setue yang letaknya berada di tengah-tengah sawah dengan cara membakar menyan, membuat ritual kepada roh, dan menyalahkan api unggun. Maksud dan tujuan upacara ini ialah agar masyarakat memperoleh perlindungan dari Tuhan Yang Maha Esa atas tanaman yang mereka tanam. Upacara ini juga dilaksanakan dengan satu harapan agar para petani memperoleh hasil panen yang lebih baik dan lebih banyak. Upacara ini merupakan ucapara yang sangat terkenal dikalangan petani, secara khusus di Sumatera Selatan.', '2023-12-14 08:08:15', '2023-12-14 08:08:15'),
(21, 2, 8, 'Naik Dango', 'https://majalahmataborneonews.com/wp-content/uploads/2021/04/IMG-20210427-WA0154.jpg', 'https://www.youtube.com/embed/hXHC8L-V1mA?si=16GXzq5lKhtmcrIo', 'Upacara adat Naik Dango atau Gawai Dayak adalah suatu tradisi masyarakat Kalimantan Barat, khususnya suku Dayak Kanayatn, yang dilakukan di sejumlah daerah seperti Kabupaten Landak, Kabupaten Pontianak, hingga Kabupaten Sanggau. Meskipun Gawai Dayak tidak dapat dianggap sebagai peristiwa budaya yang sepenuhnya tradisional, baik dari segi lokasi pelaksanaan maupun kontennya, namun merupakan perkembangan lanjutan dari pergelaran seni tradisional suku Dayak. Naik Dango, bagian dari upacara adat ini, adalah ritual ungkapan rasa syukur kepada Nek Jubata atau Sang Pencipta atas hasil panen melimpah, khususnya padi. Setiap tahun, upacara ini diadakan secara rutin setelah masa panen. Upacara adat Naik Dango dicirikan oleh tindakan menyimpan seikat padi hasil panen dalam dango (lumbung padi) oleh kepala keluarga masyarakat Dayak yang beraktivitas bercocok tanam. Padi yang disimpan dalam Dango kemudian digunakan sebagai benih untuk penanaman bersama, sementara sisanya dijadikan cadangan pangan untuk masa-masa sulit. Acara ini selanjutnya melibatkan proses menimang padi dan diakhiri dengan pemberkatan padi oleh ketua adat.', '2023-12-14 08:37:46', '2023-12-14 08:37:46'),
(22, 6, 8, 'Peusijuek', 'https://dialeksis.com/images/web/2022/07/WhatsApp-Image-2022-07-23-at-00.22.00.jpeg', 'https://www.youtube.com/embed/dV5jBHCbVNg?si=ubAtbHuv05NTyb99', 'Peusijuek merupakan suatu upacara adat yang masih berlangsung dalam budaya masyarakat Aceh hingga saat ini. Tradisi ini dilakukan dalam berbagai kegiatan adat sehari-hari di Aceh, seperti memulai usaha, menyelesaikan persengketaan, mengatasi musibah, merayakan kelulusan, mendirikan rumah baru, memberangkatkan atau menyambut kepulangan haji, serta berbagai peristiwa lainnya. Di kalangan masyarakat pedesaan Aceh, peusijuek dianggap sebagai prosesi adat yang umum dilakukan, bahkan untuk hal-hal kecil seperti membeli kendaraan baru atau menabur benih padi di sawah. Namun, di lingkungan perkotaan yang lebih modern, tradisi peusijuek cenderung terbatas pada kegiatan adat tertentu, seperti dalam upacara perkawinan. Ritual peusijuek ini menyerupai tradisi tepung tawar dalam budaya Melayu. Dalam konteks Aceh, pelaksanaan peusijuek melibatkan tokoh agama dan adat yang dihormati di tengah masyarakat. Para pelaku peusijuek untuk kaum lelaki biasanya adalah tokoh agama seperti Teungku (Ustadz), sementara bagi kaum wanita adalah Ummi atau seorang wanita yang dihormati di masyarakat. Partisipan yang melakukan peusijuek biasanya memiliki pemahaman dan pengetahuan yang baik tentang hukum agama, karena upacara ini melibatkan doa-doa untuk keselamatan dan kesejahteraan bersama sesuai dengan ajaran Islam yang umumnya dianut oleh masyarakat Aceh.', '2023-12-14 16:25:20', '2023-12-14 16:25:20'),
(23, 7, 8, 'Tabuik', 'https://indonesiakaya.com/wp-content/uploads/2020/10/LP-PI-05-HEADPHOTO-MENGHAYATI.jpg', 'https://www.youtube.com/embed/DcMeUXLCO84?si=qXsUMxNar5lmgi2v', 'Festival Tabuik merupakan bagian dari cara masyarakat secara tahunan merayakan tradisi Tabuik. Ketika upacara adat ini diakui oleh pemerintah sebagai elemen berharga dalam kehidupan bangsa, festival Tabuik juga menjadi bagian tak terpisahkan dari Indonesia. Festival Tabuik telah menjadi bagian integral selama puluhan tahun, dengan sejarahnya yang dapat ditelusuri hingga abad ke-19 Masehi. Saat ini, festival Tabuik tidak hanya menjadi bagian dari warisan budaya lokal, tetapi juga telah menjadi daya tarik pariwisata daerah. Festival ini diselenggarakan sebagai rangkaian peristiwa untuk menghormati dan merayakan hari wafatnya Husain bin Ali, cucu Nabi Muhammad SAW. Perayaan ini tetap dijadwalkan pada tanggal 10 Muharram, sesuai dengan peringatan wafatnya Husain bin Ali dalam pertempuran di Karbala.', '2023-12-14 16:29:50', '2023-12-14 16:29:50'),
(24, 8, 8, 'Balimau Kasai', 'https://www.riauonline.co.id/foto/bank/images2/Mandi-Balimau-Kasai.jpg', 'https://www.youtube.com/embed/TnnDStsadXk?si=Q80ZO-UQWdySCHdK', 'Balimau Kasai, merupakan upacara tradisional yang memiliki makna khusus bagi masyarakat Kampar di Provinsi Riau sebagai bentuk penyambutan bulan suci Ramadan. Tradisi ini biasanya diadakan sehari sebelum bulan puasa dimulai. Selain sebagai ekspresi rasa syukur dan kegembiraan menyambut Ramadan, upacara tradisional ini juga dianggap sebagai simbol penyucian dan pembersihan diri. Balimau merujuk pada mandi dengan menggunakan air yang dicampur dengan jeruk, yang dikenal sebagai limau di masyarakat setempat. Jeruk yang umumnya digunakan mencakup jeruk purut, jeruk nipis, dan jeruk kapas. Sementara itu, kasai mengacu pada wangian yang digunakan ketika berkeramas. Bagi masyarakat Kampar, kasai diyakini memiliki kemampuan mengusir perasaan dengki sebelum memasuki bulan puasa. Tradisi membersihkan diri atau mandi menjelang Ramadan tidak hanya ditemukan di Kampar. Meskipun di sana dikenal sebagai Balimau Kasai, di Kota Pelalawan, tradisi serupa dikenal dengan nama Balimau Kasai Potang Mamogang. Di Sumatera Barat, ada istilah yang hampir mirip, yaitu Mandi Balimau. Di Kota Pelalawan, tambahan kata \"potang mamogong\" menunjukkan waktu pelaksanaan acara yang menjelang petang. Tradisi Balimau Kasai di Kampar diyakini sudah berlangsung selama berabad-abad, bermula dari kebiasaan Raja Pelalawan saat daerah ini masih di bawah kekuasaan kerajaan. Meskipun ada pandangan bahwa tradisi ini mungkin berasal dari Sumatera Barat, masyarakat Kampar melihat Balimau Kasai sebagai warisan campuran Hindu-Islam yang sudah ada sejak masa pemerintahan Kerajaan Muara Takus.', '2023-12-14 16:33:56', '2023-12-14 16:33:56'),
(25, 9, 8, 'Besale', 'https://hutanharapan.id/wp-content/uploads/2018/10/IMG_0047.jpg', 'https://www.youtube.com/embed/PxMkPOOvztE?si=0Br9a2BG7AVzPDtd', 'Besale merupakan suatu upacara pengobatan yang dilakukan oleh Suku Anak Dalam Batin 9 di Desa Nyogan Segandi, Kabupaten Muaro Jambi, dan Desa Sengkawang, Kabupaten Batanghari, Provinsi Jambi. Upacara ini dipimpin oleh Pak Kubung (Tumenggung Kubung), dan tradisinya juga dilakukan di bawah pimpinan yang serupa di Desa Sengkawang. Ritual Besale umumnya dimulai dengan persiapan alat-alat pendukung, termasuk kemenyan, balai, dan bertih (bunga dari beras kering yang ditumbuk). Dalam pelaksanaannya, seorang dukun akan membacakan mantera, didampingi oleh seorang pengiring yang disebut pembayun. Upacara Besale telah ada sejak masyarakat Rimba berada di daerah tersebut, dan hingga kini, tradisi ini tetap dijalankan oleh mereka. Proses Besale mencakup dukun yang membacakan mantera sambil berkeliling pemutari balei yang tergantung. Dalam perjalanan tersebut, dukun didampingi oleh pembayun. Selama prosesi ini, mereka menciptakan suasana trance atau menyatunya dukun dengan roh leluhur mereka. Setelah mencapai tahap ini, pengobatan dimulai sebagai bagian integral dari upacara Besale.', '2023-12-14 16:41:02', '2023-12-14 16:41:02'),
(26, 11, 8, 'Tabot', 'https://www.konteks.co.id/wp-content/uploads/2023/03/Tabot-Tradisi-Menyambut-Tahun-Baru-Islam.png', 'https://www.youtube.com/embed/X20CXR7hkV8?si=r5IEHH8idOpbbVap', 'Upacara tradisional yang dikenal dengan nama \"Tabot\" atau sering disebut \"Tabut,\" dan di beberapa wilayah di Sumatera Barat dikenal sebagai \"Tabui,\" merupakan sebuah upacara berkabung dalam tradisi Kaum Syi’ah. Upacara ini telah tumbuh dan berkembang di sebagian masyarakat Kota Bengkulu dan akhirnya diakui sebagai sebuah upacara tradisional bagi orang-orang Bengkulu, baik dari kalangan kaum Syi’ah maupun oleh seluruh masyarakat Melayu Bengkulu. Dengan demikian, Upacara Tabot menjadi bagian dari tradisi suku Melayu Bengkulu. Seperti dijelaskan sebelumnya, nama \"Tabut\" berasal dari bahasa Arab, yaitu \"Tabut,\" yang secara harfiah berarti Kotak Kayu atau peti. Konon, dalam kepercayaan kaum Bani Israil pada masa itu, kehadiran Tabut ini di tangan pemimpin mereka dianggap membawa keberuntungan, sedangkan kehilangannya dapat mendatangkan kesialan. Di Bengkulu, upacara Tabot ini merupakan ritual berkabung atas gugurnya Syaid Agung Husein Bin Ali Bin Abi Thalib, salah satu cucu Nabi Muhammad SAW. Inti dari upacara ini adalah untuk mengenang usaha dan perjuangan para pemimpin Syi’ah dan pengikutnya yang berupaya mengumpulkan bagian-bagian jenazah Husein. Setelah semua bagian tubuhnya terkumpul, jenazah tersebut diarak dan dimakamkan di Padang Karbala. Upacara ini berlangsung selama 10 hari, mulai dari tanggal 1 hingga 10 Muharram. Tahap-tahap dari upacara Tabot melibatkan Mengambil Tanah, Duduk Penja, Menjara, Meradai, Arak Penja, Arak Serban, Gam (periode berkabung), Arak Gedang, serta Tabot Terbuang.', '2023-12-14 16:48:54', '2023-12-14 16:48:54'),
(27, 12, 8, 'Begawi', 'https://travellingindonesia.com/wp-content/uploads/2022/05/Lampung_-_Dengan_perlahan_tiap_peserta_upacara_adat_memasuki_lokasi_upacara_-_IE.jpg', 'https://www.youtube.com/embed/nIyrZMhuSlo?si=-U0kXJKnJ8_Aq35P', 'Begawi atau Gawi merupakan suatu perayaan yang menandai hasil kerja adat dalam komunitas masyarakat Lampung. Salah satu aspek yang sangat penting dalam perayaan ini adalah Begawi Cakak Pepadun. Begawi Cakak Pepadun hanya dilakukan oleh masyarakat etnis Lampung yang berasal dari kelompok adat Lampung Pepadun. Istilah \"Pepadun\" sendiri merujuk pada salah satu perangkat yang digunakan dalam Begawi, yaitu singgasana kayu yang melambangkan status sosial dalam keluarga. Pada singgasana ini, gelar adat diberikan setelah seseorang yang ingin meningkatkan statusnya memberikan uang dan menyembelih kerbau sejumlah tertentu (biasanya 2 kerbau atau lebih, dengan mahar sekitar 400 jutaan atau lebih, bergantung pada permintaan dari pihak perempuan. Meskipun demikian, rata-rata adat Lampung Pepadun, khususnya di wilayah Kota Bumi atau Blambangan Lampung Utara, menetapkan mahar sebesar itu). Begawi dapat diartikan sebagai \"suatu pekerjaan\" atau \"membuat gawi.\" Bagi masyarakat Lampung Pepadun, Begawi Cakak Pepadun dianggap sebagai kewajiban yang harus dilakukan oleh seseorang sebelum mendapatkan hak untuk menduduki posisi penyimbang dalam lembaga perwatin adat. Upacara Begawi Cakak Pepadun juga mencerminkan perbedaan budaya antara masyarakat Lampung Pepadun di wilayah tengah dan Lampung Saibatin di daerah pesisir Lampung. Upacara adat ini, yang melibatkan pemberian gelar atau juluk adok, menjadi ciri khas dari adat Lampung Pepadun. Setiap individu memiliki kesempatan untuk meningkatkan status adatnya dengan melakukan upacara ini, yang melibatkan pembayaran sejumlah uang (dau) dan hewan ternak kerbau. Besarnya uang dan jumlah kerbau yang harus diserahkan tergantung pada seberapa tinggi tingkat peningkatan status adat yang diinginkan. Semakin tinggi status adat yang diinginkan, semakin besar pula uang dan jumlah kerbau yang harus diserahkan.', '2023-12-14 16:52:41', '2023-12-14 16:52:41'),
(28, 13, 8, 'Nganggung', 'https://i0.wp.com/negerilaskarpelangi.com/wp-content/uploads/2019/05/IMG-20190502-WA0155.jpg?fit=1280%2C716&ssl=1', 'https://www.youtube.com/embed/XB7Y9eDaBfM?si=qbW065GCaUuPw_6A', 'Nganggung adalah sebuah tradisi yang tetap melekat dalam kehidupan masyarakat Kota Pangkalpinang. Tradisi ini melibatkan membawa makanan lengkap dari setiap rumah penduduk ke lokasi pertemuan besar. Dikenal juga sebagai Sepintu Sedulang, artinya setiap rumah (satu pintu) menyumbangkan satu dulang (wadah seng atau kuningan) berisi makanan lengkap seperti lauk pauk, kue, dan buah-buahan, yang ditutup dengan tudung saji berwarna merah dan bermotif. Nganggung biasanya diadakan dalam konteks upacara keagamaan umat Muslim, seperti Maulid Nabi Muhammad SAW, Nisfu Sya’ban, Muharram, Idul Fitri, dan Idul Adha. Lokasi pelaksanaan biasanya di masjid, surau, atau langgar, dengan rangkaian acara yang dimulai dari pembacaan doa dan ceramah agama yang sesuai dengan tema nganggung. Tradisi nganggung bukan hanya sekadar membawa makanan, tetapi juga mencerminkan semangat gotong-royong antarwarga. Melalui tradisi ini, diharapkan dapat mempererat tali silaturahmi antarpenduduk, sehingga terwujud kerukunan dan kedamaian dalam masyarakat.', '2023-12-14 16:57:18', '2023-12-14 16:57:18'),
(29, 14, 8, 'Tepuk Tepung Tawar', 'https://www.goodnewsfromindonesia.id/uploads/images/2022/06/1616182022-shutterstock_201334f3520.jpg', 'https://www.youtube.com/embed/Q3yGFTJoky0?si=xL3jY3cHjHqPkKXt', 'Budaya masyarakat Riau, khususnya tradisi tepuk tepung tawar, merupakan bagian penting dari kehidupan masyarakat Melayu di wilayah tersebut. Tradisi ini dijalankan sebagai bentuk ungkapan syukur kepada Allah SWT atas segala nikmat yang diterima, termasuk kesehatan, rezeki, dan berbagai nikmat lainnya. Sehari-hari, masyarakat ini mengakrabi dan mempraktikkan bahasa, adat, serta kebudayaan Melayu. Riau dikenal kaya akan adat dan tradisi, salah satunya adalah tradisi \'tepuk tepung tawar\'. Tepuk tepung tawar adalah suatu upacara adat dalam budaya Melayu Riau yang merupakan warisan dari para raja terdahulu. Upacara ini dianggap sebagai bentuk persembahan syukur atas pemenuhan keinginan atau usaha, baik terkait dengan manusia maupun benda. Pelaksanaan tepuk tepung tawar umumnya terjadi dalam berbagai acara seperti pernikahan, pindah rumah, memakai kendaraan baru, khitanan, dan acara sakral lainnya yang menjadi ungkapan kegembiraan bagi mereka yang mengadakan acara. Masyarakat Suku Melayu memiliki pepatah yang menyatakan bahwa suatu acara tidak dianggap sah sebelum melibatkan ritual tepuk tepung tawar.', '2023-12-14 17:05:13', '2023-12-14 17:05:13'),
(30, 15, 8, 'Palang Pintu', 'https://voinews.id/indonesian/media/k2/items/cache/0f8a517c876e581e314b3c9b529d3fc4_XL.jpg', 'https://www.youtube.com/embed/ZgTDzTFSvGs?si=3l4ED4F2fd-s3uiM', 'Palang Pintu adalah bagian dari upacara pernikahan tradisional masyarakat Betawi yang menggabungkan seni beladiri dan seni sastra pantun. Dalam tradisi ini, jawara yang mewakili mempelai laki-laki dan perempuan akan saling menunjukkan keahlian dalam gerakan silat sambil melontarkan pantun satu sama lain. Setelah menampilkan beberapa gerakan silat dan bertukar pantun, barulah rombongan mempelai pria diperbolehkan masuk ke area rumah mempelai perempuan untuk melanjutkan rangkaian acara pernikahan. Palang pintu menjadi simbol ujian yang harus dihadapi mempelai laki-laki untuk mendapatkan restu pihak perempuan. Jawara dari daerah asal mempelai pria harus mampu mengungguli jawara yang berasal dari daerah tempat tinggal mempelai perempuan. Ini sesuai dengan prakteknya di mana rombongan mempelai laki-laki harus melewati rintangan dan tantangan yang diberikan oleh pihak perempuan. Sementara itu, pertukaran pantun diartikan sebagai bentuk diplomasi. Palang Pintu juga memiliki peran dalam mempererat hubungan antarkampung dan antarkeluarga.', '2023-12-14 17:07:59', '2023-12-14 17:07:59'),
(31, 16, 8, 'Wetonan', 'https://cdnwpedutorenews.gramedia.net/wp-content/uploads/2022/07/16210421/upacara-jawa.webp', 'https://www.youtube.com/embed/cPa-o5bfk0Q?si=Z8FnsjtBF8Knjjgx', 'Upacara Wetonan, juga dikenal dengan nama wedalan, merupakan tradisi adat yang masih dijaga keberlanjutannya, terutama di kalangan suku Jawa dan menjadi populer di daerah Jawa Tengah, Jawa Timur, dan Daerah Istimewa Yogyakarta. Wetonan memiliki makna kelahiran, di mana upacara ini merayakan kedatangan seseorang ke dunia. Peringatan ini bertujuan untuk mendoakan keselamatan, panjang umur, dan berkah bagi bayi yang baru lahir. Ungkapan \"Slametan iki kanggo dongakne wong sing di ton; i ben slamet, waras, pinter lan opo wae sing dilakoni iso lancar\" memiliki arti bahwa slametan wetonan digelar dengan tujuan untuk memohon kepada Tuhan Yang Maha Esa agar memberikan keselamatan, kesehatan, kecerdasan, dan kelancaran dalam menjalani kehidupan bagi orang yang sedang merayakan hari lahirnya. Secara umum, slametan ini diadakan sebagai doa untuk menciptakan kondisi sejahtera, tenteram, dan bebas dari hambatan atau gangguan, baik yang tampak maupun yang tidak tampak, sehingga menciptakan suatu keadaan yang disebut sebagai slamet atau aman dalam bahasa Jawa.', '2023-12-14 17:14:47', '2023-12-14 17:14:47'),
(32, 17, 8, 'Grebeg Maulud', 'https://asset.kompas.com/crops/fUzkmKpIjAPHEUq31vPIwKVtJmM=/0x0:998x665/750x500/data/photo/2019/10/18/5da9992e07cf7.jpg', 'https://www.youtube.com/embed/XW6ZbR2Q_bk?si=OKX3lf4x87Z81Bg3', 'Grebeg Maulud adalah kegiatan yang diadakan secara berkala dengan tujuan untuk memperingati dan merayakan hari kelahiran Nabi Muhammad SAW. Kata \"Grebeg\" sendiri berasal dari \"gemebreg,\" yang mengandung makna kehingar-bingar atau keramaian. Istilah ini mencerminkan suasana gaduh dan ramai saat perayaan Grebeg, terutama dalam persaingan untuk memperoleh gunungan yang akan dibagikan kepada masyarakat. Gunungan sendiri dibuat menyerupai gunung dan merupakan hasil bumi dari Yogyakarta. Masyarakat Yogyakarta dan sekitarnya bersemangat memperebutkan gunungan ini karena meyakini bahwa memperoleh hasil bumi dari gunungan saat Grebeg Maulud akan membawa keberkahan, kemakmuran, dan ketenangan. Kepercayaan seperti ini mencerminkan bahwa tradisi Islam kejawen masih tetap erat terkait dengan kehidupan masyarakat Yogyakarta.', '2023-12-14 17:19:03', '2023-12-14 17:19:03'),
(33, 2, 1, 'King Baba', 'https://img.inews.co.id/media/600/files/networks/2022/08/23/4cb36_baju-adat.jpeg', 'https://www.youtube.com/embed/L4p4sTGFMOI?si=Bb3DDx2wMSb0LnaO', 'King Baba adalah istilah untuk pakaian adat yang dipakai oleh laki-laki dari suku Dayak. Meskipun desainnya mirip dengan pakaian tradisional perempuan, King Baba memiliki desain yang lebih sederhana. Keunikan King Baba terletak pada bahan pembuatannya, yang berasal dari kulit kayu yang telah dipipihkan dan diberi nama \"King Baba,\" diambil dari tanaman ampuro atau kayu kapuo, tumbuhan endemik khas Kalimantan yang kaya serat. Proses pembuatan King Baba melibatkan pemukulan kulit kayu dengan palu dalam air untuk memisahkan seratnya. Setelah kulit kayu lentur, seratnya dijemur dan dihias dengan corak etnik khas Dayak menggunakan pewarna alami dari alam. Nama \"King Baba\" sendiri diambil dari bahasa Dayak, dengan \"king\" berarti pakaian dan \"baba\" berarti laki-laki. Selain pembuatan baju, aksesoris seperti ikat kepala juga menggunakan bahan yang sama. Ikat kepala dihiasi dengan bulu burung Enggan Gading, memberikan kesan gagah pada penggunanya. Bagian baju King Baba dihiasi dengan manik-manik, tanpa lengan, dan tambahan aksesoris berupa mandau, senjata tradisional Dayak.', '2023-12-14 17:24:10', '2023-12-14 17:24:10'),
(34, 3, 1, 'Wolimomo', 'https://asset.kompas.com/crops/Ni1ZAW4AWiqzibrUDxiPnGnKl2c=/0x0:800x533/750x500/data/photo/2023/09/07/64f90c4f14781.jpg', 'https://www.youtube.com/embed/5J8832zwlMk?si=H32cbt60Ds4CpsBi', 'Wolimomo adalah pakaian adat kebesaran yang dikenakan oleh perempuan Gorontalo dalam berbagai upacara adat yang memiliki makna sakral. Pada dasarnya, Wolimomo dipakai dalam tiga peristiwa penting dalam kehidupan perempuan Gorontalo. Pertama, dalam upacara adat Mome\'ati (Be\'at atau Bai\'at), yang merupakan ritual untuk anak perempuan saat memasuki usia remaja dan akil baligh. Kedua, dalam upacara adat Akaji, yang merupakan serangkaian upacara pernikahan bagi mempelai perempuan. Ketiga, dalam upacara adat Molontalo (Raba Puru atau Menyentuh Perut), yang dilakukan oleh perempuan yang sedang mengandung pada bulan ke-7 kehamilan. Wolimomo juga digunakan dalam upacara adat Mome\'ati (Be\'at atau Bai\'at) untuk anak perempuan saat memasuki usia remaja dan akil baligh. Sebagai pasangan dari Wolimomo, terdapat pakaian adat laki-laki Gorontalo yang disebut Payunga.', '2023-12-14 17:28:03', '2023-12-14 17:28:03'),
(35, 4, 1, 'Koteka', 'https://asset.kompas.com/crops/U_BC65gY_x9uH0ECWgc4sDG5kRE=/0x0:720x480/750x500/data/photo/2022/08/28/630af3330ec01.jpg', 'https://www.youtube.com/embed/PtFKYuVCi0o?si=b6-bzZ34ka_OOHYE', 'Koteka, merupakan komponen dari busana adat Papua yang berfungsi untuk menyembunyikan area genital pada pria asli Papua, sementara area tubuh lainnya dibiarkan terbuka, hampir menyerupai telanjang. Secara literal, Koteka diartikan sebagai jenis pakaian dan juga dikenal dengan sebutan horim atau bobbe. Pembuatan Koteka melibatkan penggunaan kulit labu air yang sudah dibersihkan dari biji dan buahnya. Labu air yang dipilih biasanya sudah mencapai kematangan karena labu yang telah tua memiliki tekstur yang keras dan tahan lama setelah dikeringkan. Labu tua ini ditanam dalam pasir atau tanah dan kemudian diolah melalui proses pembakaran untuk memudahkan pengeluaran biji dan buahnya. Setelah proses itu berhasil, labu dikeringkan secara alami dengan menjemurnya di atas perapian. Koteka memiliki bentuk panjang seperti selongsong dengan ujung yang meruncing seperti kerucut atau batang buah wortel. Pada ujungnya, Koteka dihiasi dengan bulu ayam hutan atau bulu burung. Koteka dikenakan pada area vital pria dan agar tetap pada posisinya, tali disematkan di sisi kiri dan kanannya sehingga Koteka dapat melilit pinggang penggunanya. Pria yang masih bujang mengenakan Koteka dengan posisi tegak lurus ke atas, sementara yang sudah menikah atau memiliki status sosial tinggi mengenakannya dengan posisi miring ke kanan, menggambarkan kejantanan dan kedudukan sosial yang tinggi.', '2023-12-14 17:32:29', '2023-12-14 17:32:29'),
(36, 6, 1, 'Ulee Balang', 'https://o-cdn-cas.sirclocdn.com/parenting/images/86189413_124798575717947_73191936.width-800.format-webp.webp', 'https://www.youtube.com/embed/c0KBQvVuQn0?si=9you7M2CjkWnFR_p', 'Pakaian adat Ulee Balang pada mulanya hanya dipakai oleh keluarga raja. Namun kini, busana tersebut dijadikan sebagai pakaian adat tradisional Aceh. Terdapat dua nama atau istilah dalam pakaian adat Ulee Balang, yaitu Linto Baro untuk pakaian adat laki-laki dan Daro Baro untuk pakaian perempuan.', '2023-12-14 17:43:47', '2023-12-14 17:43:47'),
(37, 7, 1, 'Bundo Kanduang', 'https://asset.kompas.com/crops/YPVX4nlz3jijVB1Ho_BBlBqm18w=/0x0:780x390/750x500/data/photo/2013/07/16/1303510TourDeSingkarak201370782366-preview780x390.jpg', 'https://www.youtube.com/embed/aWYPI-bodcQ?si=6faDM-bwEy6pHggu', 'Berdasarkan informasi yang dikutip dari buku Adat dan Tradisi Sumatera Barat karya Sailatus Salwa dan Siti Nur Halizah, pakaian tradisional Bundo Kanduang juga dikenal sebagai Limpapeh Rumah Nan Gadang, mengacu pada istilah yang merujuk pada tiang tengah pada bangunan rumah adat Sumatera Barat. Busana ini terdiri dari tingkolok sebagai penutup kepala, baju kurung, kain selempang, kain sarung, serta perhiasan berupa kalung dan anting. Ciri khas Bundo Kanduang terletak pada tingkolok yang memiliki bentuk runcing dan bercabang seperti tanduk kerbau. Tingkolok ini digunakan sebagai simbol perempuan yang menjadi pemilik rumah gadang. Bundo Kanduang merupakan pakaian adat khas Minangkabau yang dipakai oleh wanita yang telah menikah. Pada masa lampau, masyarakat Minangkabau membagi wilayah adat menjadi tiga, yang dikenal sebagai Luhak Nan Tigo. Dalam perkembangannya, setiap wilayah adat memiliki variasi busana adat yang khas. Luhak Nan Tuo mencakup Sungayang, Padang Magek, Batipuah, Batusangkar, dan Lintau Buo. Luhak Nan Tangah melibatkan Matua, Maninjau, Bayua, Kuari Limo, Jorong, dan Koto Gadang. Sementara itu, Luhak Nan Bungsu mencakup Payakumbuh dan Koto nan Ampek. Wilayah adat Luhak Rantau mencakup Solok, Pariaman, Padang, dan Painan.', '2023-12-14 17:49:51', '2023-12-14 17:49:51'),
(38, 8, 1, 'Kurung Cekak Musang', 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/02/18/melayu-cekak-musang-1061546655.jpg', 'https://www.youtube.com/embed/PIweUqpCqzo?si=xjvuEUG9QaV1Ya_M', 'Pakaian Cekak Musang terdiri dari baju, celana, kain, serta songkok atau tanjak. Desain baju hampir mirip dengan baju teluk belanga, dengan perbedaan bahwa lehernya tidak berkerah, memiliki satu kancing di bagian depan, dan bagian depannya terbuka hingga sekitar lima jari dari leher untuk memudahkan pemakaian. Baju ini memiliki lengan lebar dan dilengkapi dengan satu kocek di bagian atas kiri serta dua kocek di bagian bawah kiri dan kanan. Terkadang, Baju Cekak Musang juga dikenal sebagai Baju Kurung Tulang Belut. Kain yang digunakan untuk baju ini dapat diikat sebagai kain samping yang mencapai sedikit di bawah lutut. Orang yang lebih tua biasanya mengenakan kain tanpa celana panjang, kemudian mengenakan baju di atas kain. Pakaian ini sering digunakan untuk pertemuan setengah resmi, acara kekeluargaan, atau kenduri. Pilihan warna disesuaikan dengan selera pemakai, namun disarankan agar tidak terlalu berwarna mencolok atau bermotif bunga. Selain itu, warna dan jenis kain untuk baju dan celana sebaiknya seragam.', '2023-12-14 17:54:23', '2023-12-14 17:54:23'),
(71, 4, 3, 'aaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaaaaa', 'aaaaaaaaaaa', '2024-02-02 10:18:48', '2024-02-02 10:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_12_074021_create_categories_table', 1),
(6, '2023_11_12_074025_create_provinces_table', 1),
(7, '2023_11_12_074031_create_cultures_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Jawa Barat (Bandung)', NULL, NULL),
(2, 'Kalimantan Barat (Pontianak)', NULL, NULL),
(3, 'Gorontalo (Gorontalo)', NULL, NULL),
(4, 'Papua Selatan (Merauke)', NULL, NULL),
(5, 'Sumatera Selatan (Palembang)', NULL, NULL),
(6, 'Aceh (Banda Aceh)', '2023-11-18 01:56:20', '2023-11-18 01:56:41'),
(7, 'Sumatera Barat (Padang)', NULL, NULL),
(8, 'Riau (Pekanbaru)', '2023-12-14 14:29:54', NULL),
(9, 'Jambi (Jambi)', '2023-12-14 14:29:54', NULL),
(11, 'Bengkulu (Bengkulu)', '2023-12-14 14:32:17', NULL),
(12, 'Lampung (Bandar Lampung)', '2023-12-14 14:32:17', NULL),
(13, 'Kepulauan Bangka Belitung (Pangkalpinang)', '2023-12-14 14:32:17', NULL),
(14, 'Kepulauan Riau (Tanjungpinang)', '2023-12-14 14:32:17', NULL),
(15, 'DKI Jakarta (Jakarta)', '2023-12-14 14:32:17', NULL),
(16, 'Jawa Tengah (Semarang)', '2023-12-14 14:32:17', NULL),
(17, 'DI Yogyakarta (Yogyakarta)', '2023-12-14 14:32:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` bigint(56) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cultures`
--
ALTER TABLE `cultures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cultures_province_id_foreign` (`province_id`),
  ADD KEY `cultures_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cultures`
--
ALTER TABLE `cultures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `username` bigint(56) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cultures`
--
ALTER TABLE `cultures`
  ADD CONSTRAINT `cultures_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `cultures_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
