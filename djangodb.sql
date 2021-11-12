-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2021 at 07:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ANIC` varchar(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Dob` date NOT NULL,
  `ContactNumber` int(11) NOT NULL,
  `Section` varchar(25) NOT NULL,
  `Designation` varchar(25) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ANIC`, `FirstName`, `LastName`, `Address`, `Dob`, `ContactNumber`, `Section`, `Designation`, `Email`, `Password`) VALUES
('951202131V', 'Sajith', 'Wijithamuni', '34, Galnawa, Koturupe', '1997-11-01', 771234591, 'Administration', 'Manager', 'sajithw@yahoo.com', 'sajith');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add book', 7, 'add_book'),
(26, 'Can change book', 7, 'change_book'),
(27, 'Can delete book', 7, 'delete_book'),
(28, 'Can view book', 7, 'view_book'),
(29, 'Can add reservation', 8, 'add_reservation'),
(30, 'Can change reservation', 8, 'change_reservation'),
(31, 'Can delete reservation', 8, 'delete_reservation'),
(32, 'Can view reservation', 8, 'view_reservation'),
(33, 'Can add tag', 9, 'add_tag'),
(34, 'Can change tag', 9, 'change_tag'),
(35, 'Can delete tag', 9, 'delete_tag'),
(36, 'Can view tag', 9, 'view_tag');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$byH1BVnbrXEHkRZHyIykJH$g1BfVPMO7uzAB9fC2qgnJ7B6PVtpJgcHr4sRG1ZBGc0=', '2021-11-09 06:10:09.000000', 1, 'hashan', 'Hashan', 'Senaratne', 'hashan.senaratne@gmail.com', 1, 1, '2021-11-09 06:09:43.000000'),
(17, 'pbkdf2_sha256$180000$bInG4tTFB6fF$wKOQw5OmAsLWoJsbPb8/IfJ83WDe9Zhf4qcDpG5dPOs=', '2021-11-11 16:27:09.000000', 1, 'menaka', 'Hashan', 'Senaratne', 'hashan@gmail.com', 1, 1, '2021-11-10 12:18:24.000000'),
(18, 'pbkdf2_sha256$260000$40HDSUGpsNLayyhSCmQYRf$buSF6XmqHXdtCtdTGL1dBG+tzDjQ8tIUMM6AQXKDFqQ=', '2021-11-12 18:07:10.281222', 0, 'adam98', 'Adam', 'Levine', 'adam@gmail.com', 0, 1, '2021-11-10 18:05:56.236304'),
(19, 'pbkdf2_sha256$180000$6i08U1oQXsZv$1iYDafAEOWvBH0fNiujFwA3Fa6mJX8iXCmYjvuU5RRM=', '2021-11-11 07:10:40.165733', 0, 'prbs97', 'Prabhasha', 'Midellawala', 'prabs@gmail.com', 0, 1, '2021-11-11 07:10:28.136410');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-11-10 12:21:33.797234', '16', 'adam98', 3, '', 4, 17),
(2, '2021-11-10 12:21:42.239152', '11', 'deniya45', 3, '', 4, 17),
(3, '2021-11-10 12:21:47.415505', '10', 'dennis@gmail.com', 3, '', 4, 17),
(4, '2021-11-10 12:21:52.603436', '9', 'dsvd', 3, '', 4, 17),
(5, '2021-11-10 12:21:57.051877', '14', 'dvav', 3, '', 4, 17),
(6, '2021-11-10 12:22:01.358110', '3', 'ericivy', 3, '', 4, 17),
(7, '2021-11-10 12:22:06.662906', '13', 'fgrfgbvf', 3, '', 4, 17),
(8, '2021-11-10 12:22:17.204838', '15', 'hashan1998', 3, '', 4, 17),
(9, '2021-11-10 12:22:22.651947', '12', 'hyu123', 3, '', 4, 17),
(10, '2021-11-10 12:22:28.059802', '2', 'jayani', 3, '', 4, 17),
(11, '2021-11-10 12:22:33.269420', '7', 'janani95', 3, '', 4, 17),
(12, '2021-11-10 12:22:39.557017', '8', 'krishan88', 3, '', 4, 17),
(13, '2021-11-10 12:22:48.274969', '4', 'timivy', 3, '', 4, 17),
(14, '2021-11-10 12:22:53.147337', '5', 'timivytr', 3, '', 4, 17),
(15, '2021-11-10 12:23:03.685174', '6', 'timivytrg', 3, '', 4, 17),
(16, '2021-11-10 13:16:27.256902', '1', 'book object (1)', 1, '[{\"added\": {}}]', 7, 17),
(17, '2021-11-10 13:53:23.120288', '2', 'Harry Potter and the Philosopher\'s Stone', 1, '[{\"added\": {}}]', 7, 17),
(18, '2021-11-10 13:55:27.482432', '3', 'Harry Potter and the Chamber of Secrets', 1, '[{\"added\": {}}]', 7, 17),
(19, '2021-11-10 17:22:48.132233', '1', 'reservation object (1)', 1, '[{\"added\": {}}]', 8, 17),
(20, '2021-11-11 05:29:08.927277', '3', 'Harry Potter and the Chamber of Secrets', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 17),
(21, '2021-11-11 05:29:13.933613', '2', 'Harry Potter and the Philosopher\'s Stone', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 17),
(22, '2021-11-11 07:57:30.282520', '3', 'Harry Potter and the Chamber of Secrets', 2, '[]', 7, 17),
(23, '2021-11-11 11:37:17.803763', '3', 'Harry Potter and the Chamber of Secrets', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 17),
(24, '2021-11-11 11:43:19.117206', '3', 'Harry Potter and the Chamber of Secrets', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 17),
(25, '2021-11-11 18:12:38.225941', '4', 'Matilda', 1, '[{\"added\": {}}]', 7, 17),
(26, '2021-11-11 18:13:17.726003', '5', 'Doctors and Friends', 1, '[{\"added\": {}}]', 7, 17),
(27, '2021-11-11 18:16:31.231374', '6', 'The Romantic', 1, '[{\"added\": {}}]', 7, 17),
(28, '2021-11-11 18:17:21.591078', '7', 'Dune', 1, '[{\"added\": {}}]', 7, 17),
(29, '2021-11-11 18:18:03.149967', '8', 'The Giver', 1, '[{\"added\": {}}]', 7, 17),
(30, '2021-11-11 18:19:43.494108', '9', 'Gone Girl', 1, '[{\"added\": {}}]', 7, 17),
(31, '2021-11-11 18:20:34.383062', '10', 'The Book Thief', 1, '[{\"added\": {}}]', 7, 17),
(32, '2021-11-11 18:21:07.485909', '11', 'House of Leaves', 1, '[{\"added\": {}}]', 7, 17),
(33, '2021-11-11 18:21:43.085003', '12', 'Bemoved', 1, '[{\"added\": {}}]', 7, 17),
(34, '2021-11-11 18:23:03.862229', '13', 'The Wish', 1, '[{\"added\": {}}]', 7, 17),
(35, '2021-11-11 18:24:00.509327', '14', 'The Virginian', 1, '[{\"added\": {}}]', 7, 17),
(36, '2021-11-11 18:24:47.205581', '15', 'Trail of lightning', 1, '[{\"added\": {}}]', 7, 17),
(37, '2021-11-11 18:25:22.565453', '16', 'Lee Child', 1, '[{\"added\": {}}]', 7, 17),
(38, '2021-11-11 18:26:07.038431', '17', 'Dracula', 1, '[{\"added\": {}}]', 7, 17),
(39, '2021-11-11 18:27:49.568668', '18', 'Wolf Hall', 1, '[{\"added\": {}}]', 7, 17),
(40, '2021-11-11 18:29:07.620315', '19', 'The woman in white', 1, '[{\"added\": {}}]', 7, 17),
(41, '2021-11-11 18:29:35.149306', '20', 'The time machine', 1, '[{\"added\": {}}]', 7, 17),
(42, '2021-11-11 18:30:03.189649', '21', 'Life of Pi', 1, '[{\"added\": {}}]', 7, 17),
(43, '2021-11-11 18:31:12.720061', '1', 'hashan', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 17),
(44, '2021-11-11 18:31:40.373197', '17', 'menaka', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 17);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'matrixlms', 'book'),
(8, 'matrixlms', 'reservation'),
(9, 'matrixlms', 'tag'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-06 18:33:29.845385'),
(2, 'auth', '0001_initial', '2021-11-06 18:33:43.176520'),
(3, 'admin', '0001_initial', '2021-11-06 18:33:47.045751'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-06 18:33:47.168424'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-06 18:33:47.252202'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-06 18:33:48.376195'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-06 18:33:49.635826'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-06 18:33:49.805374'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-06 18:33:49.866210'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-06 18:33:50.882494'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-06 18:33:50.959288'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-06 18:33:51.012147'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-06 18:33:51.177705'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-06 18:33:51.521783'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-06 18:33:51.709283'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-06 18:33:51.777101'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-06 18:33:52.091261'),
(18, 'sessions', '0001_initial', '2021-11-06 18:33:53.095577'),
(19, 'matrixlms', '0001_initial', '2021-11-10 12:48:43.030099'),
(20, 'matrixlms', '0002_auto_20211110_1823', '2021-11-10 12:54:06.193247'),
(21, 'matrixlms', '0003_book_description', '2021-11-10 12:56:25.451146'),
(22, 'matrixlms', '0004_alter_book_description', '2021-11-10 13:02:09.836785'),
(23, 'matrixlms', '0005_alter_book_description', '2021-11-10 13:04:33.270457'),
(24, 'matrixlms', '0006_rename_categoty_book_category', '2021-11-10 13:34:04.256288'),
(25, 'matrixlms', '0007_auto_20211110_1925', '2021-11-10 13:56:06.794633'),
(26, 'matrixlms', '0008_reservation_book', '2021-11-10 17:07:03.765148'),
(27, 'matrixlms', '0009_auto_20211110_2243', '2021-11-10 17:13:17.939505'),
(28, 'matrixlms', '0010_auto_20211110_2246', '2021-11-10 17:17:17.266326'),
(29, 'matrixlms', '0011_auto_20211111_1057', '2021-11-11 05:27:43.067895'),
(30, 'matrixlms', '0012_auto_20211111_1937', '2021-11-11 14:07:57.944931');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7gij95p3pgxl58sbthae7ojnhozbctgh', '.eJxVjMsOwiAQRf-FtSE8WgZcuvcbyAwDUjU0Ke3K-O_apAvd3nPOfYmI21rj1vMSJxZnoUGcfkfC9MhtJ3zHdptlmtu6TCR3RR60y-vM-Xk53L-Dir1-a-e4KE6GggLGXMYhoGU1oNEUtLEZHJAnp0sKY_ZKlWK1hxQIwSYD4v0BGSs4PA:1mks6z:0KWjHcI9PIkT9pq5-h1oopq_6U2t50q7GkIaEIXnYPY', '2021-11-24 18:14:17.219125'),
('rth48yc5nxoah31py2aqnqulbiom4y18', '.eJxVjs0OwiAQhN-FsyFst8DWo_c-gTENhcVWDST9ORnfXUh60Ot8M1_mLQa3b9Owr7wMcxBnASROv-Ho_JNTJeHh0j1Ln9O2zKOsFXnQVfY58OtydP8Ek1unsmbyGoHQoFVGWdJsKESNHcaWwWokUtBEzS2AM8HYrmtGLLlii2hckVZd_XgFun2-4cY6nA:1mlaxC:166Yhy9YGIkhyaJ9_ATx13JL8TaabxZ7fOMm5wqEt8U', '2021-11-26 18:07:10.323471'),
('s2tgpwilndiigz3ondk500tkma5fm38b', 'OGQ0NGJjYTllMTYwZjY0YWQwMzMyNzczMGY2Y2M0MDg0ZmIyY2QyYzp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGFlNTc1Y2YxNjU2NjY4NjMyMDA0YjhmMmY0YTExYzdiNjIxNTAyZiJ9', '2021-11-25 16:27:09.607982'),
('sj5w8442ypr3caqul2gqb5mxcn04j3fn', 'eyJlbWFpbCI6bnVsbCwicGFzc3dvcmQiOiJhcyIsImxvZ2luYXMiOiIxIn0:1mjS3q:IzFHz6oHrlFCJKYo6T5ItQvoXOGawdoJLWdkwXVP6Q8', '2021-11-20 20:13:10.383807');

-- --------------------------------------------------------

--
-- Table structure for table `matrixlms_auth_user`
--

CREATE TABLE `matrixlms_auth_user` (
  `id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `matrixlms_book`
--

CREATE TABLE `matrixlms_book` (
  `id` int(11) NOT NULL,
  `isbn` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `date_added` datetime(6) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matrixlms_book`
--

INSERT INTO `matrixlms_book` (`id`, `isbn`, `name`, `author`, `category`, `date_added`, `description`, `status`) VALUES
(2, '9780747532743', 'Harry Potter and the Philosopher\'s Stone', 'J. K. Rowling', 'Fantasy', '2021-11-10 13:53:23.119053', 'Adaptation of the first of J.K. Rowling\'s popular children\'s novels about Harry Potter, a boy who learns on his eleventh birthday that he is the orphaned son of two powerful wizards and possesses unique magical powers of his own. He is summoned from his life as an unwanted child to become a student at Hogwarts, an English boarding school for wizards. There, he meets several friends who become his closest allies and help him discover the truth about his parents\' mysterious deaths.', 'Available'),
(3, '9780747538486', 'Harry Potter and the Chamber of Secrets', 'J. K. Rowling', 'Fantasy', '2021-11-10 13:55:27.481375', 'The second instalment of boy wizard Harry Potter\'s adventures at Hogwarts School of Witchcraft and Wizardry, based on the novel by JK Rowling. A mysterious elf tells Harry to expect trouble during his second year at Hogwarts, but nothing can prepare him for trees that fight back, flying cars, spiders that talk and deadly warnings written in blood on the walls of the school.', 'Available'),
(4, '9781984836106', 'Matilda', 'Rolad Dha', 'Fantasy', '2021-11-11 18:12:38.224740', 'Matilda is a sweet, exceptional young girl, but her parents think she’s just a nuisance. She expects school to be different, but there she has to face Miss Trunchbull, a kid-hating terror of a headmistress.  When Matilda is attacked by the Trunchbull, she suddenly discovers she has a remarkable power with which to fight back. It will take superhuman genius to give Miss Trunchbull what she deserves, and Matilda may be just the one to do it!', 'Available'),
(5, '9781984802866', 'Doctors and Friends', 'Kinmery Martin', 'Literary Fiction', '2021-11-11 18:13:17.724555', 'Three female doctors and friends remind the reader of the heart-wrenching tragedies and impossible choices that make such a cast not only heroic but human', 'Available'),
(6, '9780006392262', 'The Romantic', 'Barbara Gowdy', 'Romance', '2021-11-11 18:16:31.229694', 'Not long after Louise Kirk\'s mother vanishes, the Righters and their adopted son, Abel, move in across the street, and Louise falls furiously in love. Skillfully interweaving the stories of Abel and Louise at different ages, The Romantic is a powerful exploration of the many incarnations of love and loss.', 'Available'),
(7, '9789006394262', 'Dune', 'Frank Herbet', 'Science Fiction', '2021-11-11 18:17:21.588561', 'Dune is the story of the boy Paul Atreides, who would become the mysterious man known as Muad\'dib. He would avenge the traitorous plot against his noble family—and would bring to fruition humankind\'s most ancient and unattainable dream.', 'Available'),
(8, '9489786394262', 'The Giver', 'Lois Lowry', 'Dystopian', '2021-11-11 18:18:03.146600', 'onas\'s world is perfect. Everything is under control. There is no war or fear of pain. There are no choices. Every person is assigned a role in the community. When Jonas turns 12 he is singled out to receive special training from The Giver.', 'Available'),
(9, '9089776394262', 'Gone Girl', 'Gillian Flyn', 'Thriller', '2021-11-11 18:19:43.492480', 'Under mounting pressure from the police and the media as well as Amy’s fiercely doting parents the town golden boy parades an endless series of lies, deceits, and inappropriate behavior. Nick is oddly evasive, and he’s definitely bitter but is he really a killer?', 'Available'),
(10, '9981344836106', 'The Book Thief', 'Markus Zusak', 'Historical', '2021-11-11 18:20:34.379115', '1939. Nazi Germany. The country is holding its breath. Death has never been busier.Liesel, a nine-year-old girl, is living with a foster family on Himmel Street. Her parents have been taken away to a concentration camp. Liesel steals books. This is her story and the story of the inhabitants of her street when the bombs begin to fall.', 'Available'),
(11, '9981344836187', 'House of Leaves', 'Mark Z.Danielewski', 'Horror', '2021-11-11 18:21:07.484099', 'Photojournalist Will Navidson nor his companion Karen Green was prepared to face the consequences of that impossibility, until the day their two little children wandered off and their voices eerily began to return another story  of creature darkness, of an ever-growing abyss behind a closet door, and of that unholy growl which soon enough would tear through their walls and consume all their dreams.', 'Available'),
(12, '9881322236187', 'Bemoved', 'Toni Morisson', 'Magical Realism', '2021-11-11 18:21:43.082432', 'It is the mid-1800s and as slavery looks to be coming to an end, Sethe is haunted by the violent trauma it wrought on her former enslaved life at Sweet Home, Kentucky. Her dead baby daughter, whose tombstone bears the single word, Beloved, returns as a spectre to punish her mother, but also to elicit her love', 'Available'),
(13, '9678906392262', 'The Wish', 'Diane Pershing', 'Romance', '2021-11-11 18:23:03.859023', 'Things were not turning out the way Gerri expected. This time, injury-free Gerri found herself spending time with rugged rancher Des Quinlan. This time, Gerri and Des shared intimate conversations-and a sizzling kiss! And this time, Gerri would end up with the man of her dreams...but which man?', 'Available'),
(14, '9787784836106', 'The Virginian', 'Owen Wister', 'Western', '2021-11-11 18:24:00.506597', 'In The Virginian, the protagonist is an unnamed young cowboy working in a Wyoming ranch. He displays all the good qualities of a Western hero, being physically strong, morally brave and with a good heart. The beginning of the narrative shows the Virginian', 'Available'),
(15, '9687784896100', 'Trail of lightning', 'Rebecca  Roanhorse', 'Speculative Fiction', '2021-11-11 18:24:47.202808', 'Protagonist Maggie Hoskie is talking to a couple whose daughter was stolen by a monster. The girl’s mother asks Maggie if she can save their child. Maggie responds only that she can find her, a distinction the desperate and grieving woman recognizes.', 'Available'),
(16, '9487784856100', 'Lee Child', 'Andrew Child', 'Thriller', '2021-11-11 18:25:22.563216', 'Reacher goes where he wants, when he wants. That morning he was heading west, walking under the merciless desert sun until he comes upon a curious scene. A Jeep has crashed into the only tree for miles around. A woman is slumped over the wheel.', 'Available'),
(17, '9487765456100', 'Dracula', 'Bram Stoker', 'Horror', '2021-11-11 18:26:07.035838', 'Dracula is a novel the primary source, the novel the original and the first publication of Dracula. Now everyone can estimate, compare and understand from where and when still very popular epic with the name of the same name began.', 'Available'),
(18, '9887755456100', 'Wolf Hall', 'Hillary Mantel', 'Historical', '2021-11-11 18:27:49.567251', 'Wolf Hall is that very rare thing: a truly great English novel, one that explores the intersection of individual psychology and wider politics. With a vast array of characters, and richly overflowing with incident, it peels back history to show us Tudor England as a half-made society, moulding itself with great passion and suffering and courage.', 'Available'),
(19, '9945305456104', 'The woman in white', 'Fred Trippet', 'Mystery', '2021-11-11 18:29:07.618735', 'She might have murdered her former classmate and best friend. Greg believes her innocent and takes it upon himself to prove it, but he\'s in a minority. The police, Mel\'s therapist, and even her mother think she\'s violent and unstable, capable at least of murder. They\'re all right, of course. But did she really kill her old friend?', 'Available'),
(20, '9589836394081', 'The time machine', 'H. G. Wells', 'Dystopian', '2021-11-11 18:29:35.147567', 'The Time Traveler\'s theory  is that the two groups are the evolutionary ancestors of the leisure class and working classes. But after some run ins with the Morlocks he discovers an awful secret that will force him to revise his theories once again.', 'Available'),
(21, '9679836394011', 'Life of Pi', 'Yann Martel', 'Magical Realism', '2021-11-11 18:30:03.185310', 'After the tragic sinking of a cargo ship, a solitary lifeboat remains bobbing on the wild, blue Pacific. The only survivors from the wreck are a  boy named Pi, a hyena, a zebra (with a broken leg), a female orang-utan—and a  Royal Bengal tiger.', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `matrixlms_reservation`
--

CREATE TABLE `matrixlms_reservation` (
  `id` int(11) NOT NULL,
  `reservation_date` date DEFAULT NULL,
  `closed_date` date DEFAULT NULL,
  `book_id_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matrixlms_reservation`
--

INSERT INTO `matrixlms_reservation` (`id`, `reservation_date`, `closed_date`, `book_id_id`, `user_id`, `status`) VALUES
(1, '2021-11-01', '2021-11-25', 8, 18, ''),
(2, NULL, NULL, 5, 5, ''),
(3, '2021-11-03', '2021-11-17', 8, 18, '');

-- --------------------------------------------------------

--
-- Table structure for table `matrixlms_tag`
--

CREATE TABLE `matrixlms_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MNIC` varchar(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Dob` date NOT NULL,
  `ContactNumber` int(13) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MNIC`, `FirstName`, `LastName`, `Dob`, `ContactNumber`, `Address`, `Email`, `Password`) VALUES
('956781213V', 'Rochana', 'Chathuranga', '1998-11-01', 771234567, 'No 24, Galahaboda, Mathara.', 'roch@gmail.com', 'roch');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ANIC`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `matrixlms_auth_user`
--
ALTER TABLE `matrixlms_auth_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrixlms_book`
--
ALTER TABLE `matrixlms_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrixlms_reservation`
--
ALTER TABLE `matrixlms_reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matrixlms_reservation_book_id_b702c446_fk` (`book_id_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `matrixlms_tag`
--
ALTER TABLE `matrixlms_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MNIC`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `matrixlms_book`
--
ALTER TABLE `matrixlms_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `matrixlms_reservation`
--
ALTER TABLE `matrixlms_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `matrixlms_tag`
--
ALTER TABLE `matrixlms_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `matrixlms_reservation`
--
ALTER TABLE `matrixlms_reservation`
  ADD CONSTRAINT `matrixlms_reservation_book_id_id_e2f768a6_fk_matrixlms_book_id` FOREIGN KEY (`book_id_id`) REFERENCES `matrixlms_book` (`id`),
  ADD CONSTRAINT `matrixlms_reservation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `matrixlms_book` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
