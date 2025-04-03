-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2025 at 02:04 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mohinhhungthinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:3;', 1743689003),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1743689003;', 1743689003),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1743685186),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1743685186;', 1743685186);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `introductions`
--

CREATE TABLE `introductions` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `introductions`
--

INSERT INTO `introductions` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<p>Công ty Mô hình kiến trúc được ra đời với mục tiêu phát triển ngành mô hình xây dựng – mô hình kiến trúc, một lĩnh vực còn khá mới mẻ tại Việt Nam. Mô hình không chỉ giúp chủ đầu tư có cái nhìn trực quan và tổng quát về công trình của mình, mà còn là một công cụ thu hút đầu tư rất hiệu quả.</p><p>Với đội ngũ chuyên gia có hơn 10 năm kinh nghiệm trong ngành, Mô hình kiến trúc nhận thấy những chuyển biến rõ rệt trong nhận thức của giới xây dựng hiện nay. Việc tạo dựng mô hình đã trở thành nhu cầu thiết yếu của nhiều công ty trước khi thực hiện bất kỳ công trình nào.</p><p>Mô hình kiến trúc là chuyên gia trong lĩnh vực nghiên cứu và sản xuất mô hình xây dựng – mô hình kiến trúc. Trong bối cảnh thị trường Việt Nam còn mới mẻ và chưa xác định được mức giá chung, chúng tôi là đơn vị tiên phong đưa ra bảng giá mô hình chi tiết, cung cấp cho khách hàng thông tin đầy đủ nhất trước khi quyết định.</p><p>Từng thành viên của Mô hình kiến trúc đã, đang và sẽ luôn nỗ lực để tạo nên những sản phẩm đại diện cho “Sự kết hợp hoàn hảo giữa Nghệ thuật &amp; Kỹ thuật” – hai yếu tố tạo nên giá trị cốt lõi của ngành mô hình và cũng là điều chúng tôi tâm niệm.</p><p>Chúng tôi cam kết đem lại cho khách hàng sự hài lòng để cùng phát triển và sẽ không ngừng nỗ lực để quý vị luôn an tâm nghĩ đến Mô hình kiến trúc như lựa chọn đầu tiên cho mọi giải pháp mô hình.</p>', '2025-04-03 13:44:15', '2025-04-03 13:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_03_195928_add_custom_fields_to_users_table', 2),
(5, '2025_04_03_195929_add_avatar_url_to_users_table', 2),
(6, '2025_04_03_200156_create_introductions_table', 3),
(7, '2025_04_03_200444_create_project_categories_table', 4),
(8, '2025_04_03_200648_create_projects_table', 5),
(9, '2025_04_03_200826_create_slides_table', 6),
(10, '2025_04_03_201016_create_product_categories_table', 7),
(11, '2025_04_03_201430_create_products_table', 8),
(12, '2025_04_03_201623_create_services_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `category_id`, `images`, `short_desc`, `description`, `created_at`, `updated_at`) VALUES
(1, 'NHÀ HOMESTAY 01', 'nha-homestay-01', 1, '[\"01JQXXJKG3SM815QKMZ494GF11.png\",\"01JQXXJKG6AXTFQ9ZCHM5HNTEN.png\",\"01JQXXJKGF5G5CCQ5QCVERGVCH.png\",\"01JQXXJKGJABY0DBD7963Q746M.png\"]', 'NHÀ HOMESTAY 01', '<p><strong>Mã sản phẩm:</strong> <strong>HT 01</strong></p><p><strong>Số lượng tồn:</strong> 2</p><p><strong>Kích thước mẫu: </strong>3,6*3,6*3,7 cm</p><p><strong>Tỉ lệ: </strong>&nbsp;1/200</p><p><strong>Chất liệu: </strong>&nbsp;Mica Đài Loan</p><p><strong>Xuất xứ: </strong>&nbsp;SX tại Công ty TNHH Thiết Kế xây Dựng Arttech</p>', '2025-04-03 13:31:17', '2025-04-03 13:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mô Hình Nhà Ở', '2025-04-03 13:24:13', '2025-04-03 13:24:13'),
(2, 'Mô Hình Công Trình Công Cộng', '2025-04-03 13:24:24', '2025-04-03 13:24:24'),
(3, 'Mô Hình Cảnh Quan', '2025-04-03 13:24:29', '2025-04-03 13:24:29'),
(4, 'Mô Hình Kết Cấu', '2025-04-03 13:24:35', '2025-04-03 13:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `banner`, `images`, `title`, `category_id`, `short_desc`, `content`, `created_at`, `updated_at`) VALUES
(1, '01JQXXVWFP3KM0SQVGKRA4PZ5M.png', '[\"01JQXXVWFWBT2MWAHTFZRR9SWM.jpg\",\"01JQXXVWFX24P5J3G6PZS3VZDN.jpg\",\"01JQXXVWFZ24TM1P3HF5P6KS5F.jpg\",\"01JQXXVWG0ZG0H7JNAM9STVD39.jpg\",\"01JQXXVWG22FEM21FF1AD5NSFZ.jpg\",\"01JQXZ3DME6K88Y1K21GS8KZNS.jpg\"]', 'NHÀ MÁY LS CABLE & SYSTEM', 3, 'Kích thước: 1400mm x 1200mm - Tỷ lệ: 1/500\n', '<p>Kích thước: 1400mm x 1200mm - Tỷ lệ: 1/500</p><p>Công trình hoàn thành vào năm 2024: Mô hình này được kết hợp giữa thủ công và in 3D Resin cho nên trong rất tinh sảo và sắc nét.</p>', '2025-04-03 13:36:21', '2025-04-03 13:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nhà phố', '2025-04-03 13:31:52', '2025-04-03 13:31:52'),
(2, 'Biệt thự', '2025-04-03 13:31:57', '2025-04-03 13:31:57'),
(3, 'Nhà máy', '2025-04-03 13:32:01', '2025-04-03 13:32:01'),
(4, 'Khu đô thị', '2025-04-03 13:32:10', '2025-04-03 13:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `banner`, `title`, `slug`, `short_desc`, `content`, `created_at`, `updated_at`) VALUES
(1, '01JQXY7QB620VA6V28M6EP85V0.jpg', 'Dịch Vụ Vận Chuyển Mô Hình Kiến Trúc – Sa Bàn Dự Án Bất Động Sản Tại TPHCM', 'dich-vu-van-chuyen-mo-hinh-kien-truc-sa-ban-du-an-bat-dong-san-tai-tphcm', ' đơn vị vận chuyển mô hình kiến trúc chuyên nghiệp uy tín tại TP HCM. Với kinh nghiệm thực hiện dịch vụ vận chuyển mô hình kiến trúc lớn nhỏ tại HCM. Kết hợp tinh thần làm việc tích cực, hỗ trợ nhiệt tình đối tác gần xa. Chúng tôi luôn sẵn sàng tinh thần. Đầy đủ năng lực để giúp bạn vận chuyển sa bàn mô hình kiến trúc an toàn nhất. Liên hệ ngay 0918.139.379 [ZALO] để được tư vấn phương án vận chuyển sa bàn chi tiết nhất.', '<p>Chào mừng bạn đến với dịch vụ vận chuyển mô hình kiến trúc hàng đầu tại TPHCM! Chúng tôi chuyên cung cấp các giải pháp vận chuyển mô hình kiến trúc và sa bàn dự án bất động sản, đảm bảo an toàn và hiệu quả cho từng sản phẩm của bạn.</p><p>Tại Sao Chọn Chúng Tôi?</p><ol><li><strong>Chất Lượng Đảm Bảo</strong><br> Chúng tôi cam kết vận chuyển mô hình với sự cẩn thận, đảm bảo không bị hư hại trong quá trình di chuyển. Đội ngũ nhân viên chuyên nghiệp sẽ xử lý từng chi tiết nhỏ nhất để bảo vệ sản phẩm của bạn.</li><li><strong>Dịch Vụ Tận Tâm</strong><br> Chúng tôi hiểu rằng mô hình kiến trúc là tâm huyết của bạn. Vì vậy, chúng tôi luôn sẵn sàng lắng nghe và đáp ứng nhanh chóng các yêu cầu đặc biệt của khách hàng.</li><li><strong>Đội Ngũ Chuyên Nghiệp</strong><br> Đội ngũ nhân viên của chúng tôi có nhiều năm kinh nghiệm trong lĩnh vực vận chuyển và lắp đặt mô hình. Chúng tôi tự tin mang đến dịch vụ tốt nhất cho bạn.</li><li><strong>Giá Cả Cạnh Tranh</strong><br> Chúng tôi cung cấp dịch vụ với mức giá hợp lý, đảm bảo bạn nhận được giá trị tốt nhất cho khoản đầu tư của mình.</li><li><strong>Thời Gian Vận Chuyển Nhanh Chóng</strong><br> Chúng tôi cam kết thực hiện giao hàng đúng hẹn, giúp bạn tiết kiệm thời gian và nhanh chóng đưa sản phẩm đến tay khách hàng.</li></ol><p>Liên Hệ Với Chúng Tôi</p><p>Nếu bạn đang tìm kiếm một dịch vụ vận chuyển mô hình kiến trúc uy tín tại TPHCM, đừng ngần ngại liên hệ với chúng tôi ngay hôm nay! Chúng tôi sẽ tư vấn và hỗ trợ bạn tận tình để đảm bảo sản phẩm của bạn được vận chuyển an toàn và hiệu quả nhất.</p><p><strong>Hotline:</strong> [Số điện thoại]<br> <strong>Email:</strong> [Địa chỉ email]<br> <strong>Địa chỉ:</strong> [Địa chỉ công ty]</p><p>Hãy để chúng tôi cùng bạn hiện thực hóa những ý tưởng kiến trúc tuyệt vời!</p>', '2025-04-03 13:42:49', '2025-04-03 13:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1D6Pnk2hGDj8qpEHuJXqyvdC6hbemLYOmJT7PxUb', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiSkw2YmMzUUREdHFLbktWYzdxQ09send1ckRzZWdUU0dXeUIzOUlEdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9pbnRyb2R1Y3Rpb25zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQ1S0xHZDQvblZ6bDY5bS9PamtCMlJ1UnBwWkRsV2QucDVPeWsxaERZOWI2Wi92VFBBdnBINiI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1743689020);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, '01JQXY8BYFKAWRAC0H0EV9QCJF.png', '#', '2025-04-03 13:43:10', '2025-04-03 13:43:10'),
(2, '01JQXY8JCC7ECR9DNVXJBCJ8V7.png', '#', '2025-04-03 13:43:17', '2025-04-03 13:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_fields` json DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `custom_fields`, `avatar_url`) VALUES
(1, 'tranlehuyhoang@gmail.com', 'tranlehuyhoang@gmail.com', NULL, '$2y$12$G4hx5NNwSYXbb2kGPLQxx.mUTrIQZPO/KI6/ofBlncr2xBr06soOW', NULL, '2025-03-28 01:16:28', '2025-03-28 01:16:28', NULL, NULL),
(2, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$5KLGd4/nVzl69m/OjkB2RuRppZDlWd.p5Oyk1hDY9b6Z/vTPAvpH6', NULL, '2025-03-28 08:17:04', '2025-03-28 08:17:04', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `introductions`
--
ALTER TABLE `introductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_category_id_foreign` (`category_id`);

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `introductions`
--
ALTER TABLE `introductions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `project_categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
