-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 27, 2024 at 03:33 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_api_passport`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

CREATE TABLE `dosens` (
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `umur`, `alamat`, `kota`, `kelas`, `jurusan`, `created_at`, `updated_at`) VALUES
('G.231.21.0171', 'Egy kurnmiawan OK 1', 5, 'Semarang ok', 'Semarang 1', 'Sore 9', 'TI 9', '2024-06-27 06:24:31', '2024-06-27 06:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `matkuls`
--

CREATE TABLE `matkuls` (
  `kode_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_sks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matkuls`
--

INSERT INTO `matkuls` (`kode_mk`, `nama_mk`, `jumlah_sks`, `created_at`, `updated_at`) VALUES
('USM002', 'Jaringan Terapan Lanjutan', '5', '2024-06-27 06:08:15', '2024-06-27 06:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_25_165532_create_mahasiswas_table', 1),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(9, '2016_06_01_000004_create_oauth_clients_table', 2),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(11, '2024_06_25_170543_create_mahasiswa_table', 3),
(12, '2024_06_26_144849_create_dosens_table', 4),
(13, '2024_06_26_144905_create_matkuls_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0157a2b94678d41f9b17940af0ca5e9c5f3844b5adb0396ea221fcb4ac07e49d40a98947c64e57a6', 2, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 07:46:30', '2024-06-26 07:46:30', '2025-06-26 14:46:30'),
('0607e0e9f22bd1c061303b71b8c6b76af875452044f3727a5b637bdacaa2c6f0bbb76261870f5301', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:20:26', '2024-06-25 11:20:26', '2025-06-25 18:20:26'),
('085274dac714999d7216e793cd9931854f167bea947ef90092c2124abfa244831c889794292fb686', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:26:16', '2024-06-25 11:26:16', '2025-06-25 18:26:16'),
('0b712f0bf46f31bfb4bbf8cb0c307d5eac144b79f6e00fc51a8a06e192dc236a19b08f96b8bc3204', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 10:17:44', '2024-06-25 10:17:44', '2025-06-25 17:17:44'),
('0c5c9bd45611219e1888267fa8478c0260e413199d7be80a4a57920f87602ea5ef90cbd13e1237d7', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:24:45', '2024-06-25 11:24:45', '2025-06-25 18:24:45'),
('1be48b0d19fd895585e0383c6866fb095874942760b0c753d2b3c2cb6d25104b2a16a66008669407', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:24:02', '2024-06-25 11:24:02', '2025-06-25 18:24:02'),
('1e95083b32f1e2d46d378d4de607cac7505af4bcfcb95dcafe332ea316a9aeae02f86a09b5cd7ced', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 11:40:55', '2024-06-26 11:40:55', '2025-06-26 18:40:55'),
('21008a6ffb0c0528c3974a5db82ec0b1f4f5bddab775527eead6d9d267b459988a1138daef7deb01', 3, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 12:09:22', '2024-06-26 12:09:22', '2025-06-26 19:09:22'),
('25b4335f0703b131c0a638861ddf742f1860dd2ab4aceb1433f502d0d05ac7db7d261eff47837f6d', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:21:19', '2024-06-25 11:21:19', '2025-06-25 18:21:19'),
('29eee1eb1fcf733b16949f6fcd991c821a96a48abec99a5a869682098ae3cf320fa0e58c84812997', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 06:41:42', '2024-06-26 06:41:42', '2025-06-26 13:41:42'),
('2dc7063c7cacfa3e352a13c513ffcaa8150440565be4f59e1a648d7a21206f0b6758c1ff11cf2ed4', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:21:42', '2024-06-25 11:21:42', '2025-06-25 18:21:42'),
('2e3a42d690ec03a0090fdeb3ce397bea78a8adbc3d24a160ae2c64e98dc826807aa05cd71051df37', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:23:41', '2024-06-25 11:23:41', '2025-06-25 18:23:41'),
('2f0137428e6945fa2b9aa396f6f5cc1314e1e8ae1be2098c4e3b8770ed0ab002d5b74c6538f0efbc', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:32:25', '2024-06-25 11:32:25', '2025-06-25 18:32:25'),
('2f609edfc381fbec8aa7de66901ccb1186ae9ffaca3ce5f774f63945bdf4df7146cab4c7f516d05d', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:25:57', '2024-06-25 11:25:57', '2025-06-25 18:25:57'),
('38694cfa1b973b75de7ba45a5679d622945e257c8734b97425b2a55b37bc890ff8aaacb8ee6c4ec8', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:21:44', '2024-06-25 11:21:44', '2025-06-25 18:21:44'),
('3b469bbb63722b549d7bd85cdcd552436a276e040a31530c0c46e420e0f68a7ecfb544fc15b90f56', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:22:38', '2024-06-25 11:22:38', '2025-06-25 18:22:38'),
('553ed2f6e90084af8790348d518c055ffdaf3e326337f61ba07d3605d34ec282c69ab588a460886b', 3, 1, 'LaravelPassportToken', '[]', 0, '2024-06-27 06:20:21', '2024-06-27 06:20:21', '2025-06-27 13:20:21'),
('617c2d05b62d029539d89a58ff2c01303b60fbb5a85e9c4dc7457a968ef87f43e32b48075f75cbed', 3, 1, 'LaravelPassportToken', '[]', 0, '2024-06-27 02:41:04', '2024-06-27 02:41:04', '2025-06-27 09:41:04'),
('6f11354ee75d22c6bf537d5695c91442ce48c61f6691d81e511701324bca6335e5ce1b40362d07e8', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:21:52', '2024-06-25 11:21:52', '2025-06-25 18:21:52'),
('6f4a94d895a28b1479df0ec697a35ba3178e7f9ff3edb15239eda87aba587bcf0b1d5080d93e3769', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 07:46:50', '2024-06-26 07:46:50', '2025-06-26 14:46:50'),
('6fd1276ec1b45d3ef71a580441936a8c0dc421028a4abbdef8aec79cb04b7e50eebb9ea2583a178c', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 11:36:56', '2024-06-26 11:36:56', '2025-06-26 18:36:56'),
('7222667b3d021e6fa75cbf75dcf680187afcad79cbb0d4b3aa496b7df26f83b5671889ed8f8f60ec', 3, 1, 'LaravelPassportToken', '[]', 0, '2024-06-27 05:18:17', '2024-06-27 05:18:17', '2025-06-27 12:18:17'),
('83b2d706c113711556db07c24a9a69eb05f265f7a17b249e34a1c9788fca2d5288d71930e8149d73', 3, 1, 'LaravelPassportToken', '[]', 0, '2024-06-27 03:22:30', '2024-06-27 03:22:30', '2025-06-27 10:22:30'),
('8a05609f45cb15c9df8bee2a94c63542c6ab95538ee8cdc73137ff53826e8e70c003f81afd546f0e', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 10:16:45', '2024-06-25 10:16:45', '2025-06-25 17:16:45'),
('8fe443515948d3d30699da99ba2e81a5615dea60a51a6e4a9c356ac19dfd17efb91bc8d3a794fe1d', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 06:30:55', '2024-06-26 06:30:55', '2025-06-26 13:30:55'),
('94370123edffa16aa7a99a00b8145cafae0a5d0793c196aea49b071a9a7bcf26b254ae9f5563dcab', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:24:13', '2024-06-25 11:24:13', '2025-06-25 18:24:13'),
('9508643a907e47c5fb09471301afad7ff5aa608e72353dfea1b1b60270b4bf57379931ba3a7916e6', 3, 1, 'LaravelPassportToken', '[]', 0, '2024-06-27 03:22:29', '2024-06-27 03:22:29', '2025-06-27 10:22:29'),
('97b48b79669ce96c32080eb3088270cb84285f24beaf2cc98483da1eb78688f55080e3fcd25c6520', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:19:10', '2024-06-25 11:19:10', '2025-06-25 18:19:10'),
('9c111940b856b9a1e211166354829d9d56fc78f9422b045afd049aa5647d2a5919a32bfc78b54cb2', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 11:34:59', '2024-06-26 11:34:59', '2025-06-26 18:34:59'),
('a0cd564468aead38f678492bab5c571577f993340a66e071741826d47e3e3061390dbf81c996298a', 3, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 12:09:41', '2024-06-26 12:09:41', '2025-06-26 19:09:41'),
('a904db888683101799c9ea06ce1a0432bfac23eec34fd7f56d3c1bcd92ea4b1a901aa33f55a63f33', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:28:31', '2024-06-25 11:28:31', '2025-06-25 18:28:31'),
('ab057a9f53a20536218922e2305e6becf89390fc24e9d212574afa991e37822a13cac3c53896435f', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:32:27', '2024-06-25 11:32:27', '2025-06-25 18:32:27'),
('affa0fed8be1d6d8147c4ed6970f9bdcf8fb77a926e68b456dc2999e275db08af6e1118e94452a78', 2, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 07:46:42', '2024-06-26 07:46:42', '2025-06-26 14:46:42'),
('ba55ab06b1d22c9e5beb7541dac25c71cbe7588453021404f0711f52328d63dbaf3c8afa58762879', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:21:59', '2024-06-25 11:21:59', '2025-06-25 18:21:59'),
('bbbb5b9c17c77423e4abd3bbc77502e80f3f35de575a94106dc421b99c7c7798152e5b513acdb149', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 11:41:25', '2024-06-26 11:41:25', '2025-06-26 18:41:25'),
('bc91f4f96e5f8c12d25d4cfa0d3660e0630f41564eed00b260cee6bbbaf4ea728ebfa4edbf89f2e4', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 10:36:39', '2024-06-25 10:36:39', '2025-06-25 17:36:39'),
('c38b3e06ec321f96fb96160910a4d52b987151edf08e5d3e0c9b3a5f3af137cfe7b1764984fd9921', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:20:14', '2024-06-25 11:20:14', '2025-06-25 18:20:14'),
('c426ed18f5abeb624e3062557ebdccd114bfe12acdb9c9d5385df93c3c9b6818494c63dc43018dfd', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:25:59', '2024-06-25 11:25:59', '2025-06-25 18:25:59'),
('c43653c1400bb609b885a0fbe8610a6b939c56154d5414c8accfa106a4b3d339a33c5ea88632b15b', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:22:58', '2024-06-25 11:22:58', '2025-06-25 18:22:58'),
('c67e0bdf72d903e28761445805dc26c65125bbe6a29728ca2ad32dcb84655c9ae8ec066f904b239f', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:24:48', '2024-06-25 11:24:48', '2025-06-25 18:24:48'),
('c7cdc4e9db7b07222971b410c6ba8016608016ae4e435c86b6e4d3008d311623d49a8a5eeb8ee2c6', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-26 11:35:56', '2024-06-26 11:35:56', '2025-06-26 18:35:56'),
('cbfd19c38b3bb91690fe8cf7d43585e9f32e7778fabc96c1f23e07d034516a2b72518867e8c970e3', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:23:11', '2024-06-25 11:23:11', '2025-06-25 18:23:11'),
('d9c35788cde51936eb833cc11d25900f910cd812baa240888fe0a5124fe1fb0bc40d5df7c9dbc3cd', 1, 1, 'LaravelPassportToken', '[]', 0, '2024-06-25 11:19:57', '2024-06-25 11:19:57', '2025-06-25 18:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'TJQ4t6wgq6M4ieHGUdOIiQCdd6kDMS6IYcRiq2M8', NULL, 'http://localhost', 1, 0, 0, '2024-06-25 09:58:06', '2024-06-25 09:58:06'),
(2, NULL, 'Laravel Password Grant Client', 'LqIhmLnpjDsmUobtWGyDFhscuecZza9NImXkbDmz', 'users', 'http://localhost', 0, 1, 0, '2024-06-25 09:58:06', '2024-06-25 09:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-06-25 09:58:06', '2024-06-25 09:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'testuser@example.com', NULL, '$2y$10$CCgP4.GWxy8714ppv02xBuw6YmTBXgVIcm/l2bWCS1RXl1zZ2hZWi', NULL, '2024-06-25 10:16:45', '2024-06-25 10:16:45'),
(2, 'Test User Admin', 'testuser2@example.com', NULL, '$2y$10$QYb5bg6DqypVTgM7UJS05u2J2g8n79EWqkBVmzptkMVfN7OmT.Hla', NULL, '2024-06-26 07:46:30', '2024-06-26 07:46:30'),
(3, 'Test User Admin3', 'testuser3@example.com', NULL, '$2y$10$mKM2e1kO5nmvKhMQRcqpAux3HH888QERh6D5cA1BVM9DBWHIrtChS', NULL, '2024-06-26 12:09:22', '2024-06-26 12:09:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `matkuls`
--
ALTER TABLE `matkuls`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
