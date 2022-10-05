-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 03:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaravel`
--

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
(3, '2022_03_17_111228_create_tbl_admin_table', 1),
(4, '2022_03_18_035817_create_tbl_category_product', 1),
(5, '2022_03_18_050658_create_tbl_category_product', 2),
(6, '2022_03_19_075436_create_tbl_brand_product', 3),
(7, '2022_03_19_095505_create_tbl_product', 4),
(8, '2022_03_22_083544_create_tbl_customer', 5),
(9, '2022_03_22_091440_create_tbl_shipping', 6),
(10, '2022_03_22_170908_create_tbl_payment', 7),
(11, '2022_03_22_172848_create_tbl_payment', 8),
(12, '2022_03_22_173023_create_tbl_order', 9),
(13, '2022_03_22_173525_create_tbl_order_details', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '738dcda4f94e14f7987518a1f667a116', 'Nhan', '0523761212', '2022-02-26 14:31:15', '2022-03-17 17:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(5, 'Gucci', 'Không cần phải nói quá nhiều về Gucci, khi đây là thương hiệu liên tiếp lọt vào top những thương hiệu thời trang nổi tiếng toàn địa cầu. Thành lập vào năm 1921 với tên đầy đủ là Guccio Gucci, hãng nhanh chóng định hình về là thương hiệu xa xỉ về may mặc và phụ kiện.', 0, NULL, NULL),
(6, 'DKNY', 'Những thương hiệu thời trang nổi tiếng của Mỹ luôn nhận được sự đón nhận nồng nhiệt ở mọi quốc gia khác. Một trong số đó phải kể đến cái tên DKNY với nguồn cảm hứng từ thành phố New York danh giá được thể hiện qua nhiều sản phẩm do hãng sản xuất.', 0, NULL, NULL),
(7, 'Salvatore Ferragamo', 'Dù nằm trong danh sách của những nhãn hiệu thời trang nổi tiếng toàn cầu trong mặt hàng giày, nhưng đằng sau hãng Salvatore Ferragamo lại là câu chuyện buồn. Tên thương hiệu này cũng chính là tên của người sáng lập đã qua đời vào năm 1960 trước khi thấy hãng trở nên thành công.', 0, NULL, NULL),
(8, 'Balenciaga', 'Khi nhắc đến các hãng thương hiệu thời trang nổi tiếng mà thiếu đi Balenciaga chắc chắn sẽ là thiếu sót lớn. Với lịch sử hình thành hơn 100 năm tuổi, hãng trở thành thương hiệu đến từ Tây Ban Nha xa xỉ bậc nhất thế giới hiện nay.', 0, NULL, NULL),
(9, 'Kenzo', 'Sẽ ra sao nếu có thương hiệu kết hợp được văn hóa lãng mạn, lịch lãm của Pháp với vẻ đẹp hoài cổ, truyền thống của Nhật Bản. Tưởng chừng như là hai trường phái khác nhau, nhưng Kenzo lại là thương hiệu thời trang nổi tiếng có thể làm được một cách hoàn hảo.', 0, NULL, NULL),
(10, 'Louis Vuitton', 'Liên tục nằm trong top thương hiệu thời trang nổi tiếng nhất thế giới với doanh thu cao ngất ngưỡng, Louis Vuitton hay còn gọi là LV được tạo nên bởi bậc thầy thiên tài trong thiết kế. Thậm chí, nhiều người còn gắn mác nhà phát minh cho ông vì những sự sáng tạo vượt thời đại.', 0, NULL, NULL),
(11, 'Giorgio Armani', 'Các nhà thiết kế người Ý chưa bao giờ khiến cả thế giới thất vọng. Với sự ra đời Giorgio Armani vào năm 1975, dù không quá lâu đời như các tên tuổi khác nhưng đây vẫn là thương hiệu thời trang nổi tiếng xa xỉ, với mọi sản phẩm đều có độ tỉ mỉ chi tiết rất cao.', 0, NULL, NULL),
(12, 'Calvin Klein', 'Là thương hiệu quá đỗi quen thuộc với nhiều tín đồ thời trang. Đặc biệt, khác với những cái tên trước đây, Calvin Klein lại có nhiều sản phẩm giá tốt không quá đắt đỏ. Ngay từ những ngày đầu thành lập, hãng nhanh chóng bán được 200.000 cặp quần jean bán ra chỉ trong 1 tuần.', 0, NULL, NULL),
(13, 'Nike', 'Nike là một thương hiệu chuyên về loại giày sneaker.', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(11, 'T-shirt', 'Chất liệu vải mềm mỏng thoáng mát, phù hợp ở mọi lứa tuổi', 0, NULL, NULL),
(12, 'Áo khoác nam', 'Áo khoác dành cho nam', 0, NULL, NULL),
(13, 'Áo khoác nữ', 'Áo dành cho nữ', 0, NULL, NULL),
(14, 'Quần jean nam', 'Quần jean nam', 0, NULL, NULL),
(15, 'Quần tây', 'Quần tây', 0, NULL, NULL),
(16, 'Giày', 'giày', 0, NULL, NULL),
(17, 'Túi xách', 'Túi xách', 0, NULL, NULL),
(18, 'Ví', 'ví', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(3, 'Gấu', 'gau@gamil.com', 'e10adc3949ba59abbe56e057f20f883e', '025648321', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 3, 8, 3, '4,331,800.00', 'Đang chờ xử lý', NULL, NULL),
(2, 3, 8, 4, '4,331,800.00', 'Đang chờ xử lý', NULL, NULL),
(3, 3, 8, 5, '4,331,800.00', 'Đang chờ xử lý', NULL, NULL),
(4, 3, 8, 6, '4,331,800.00', 'Đang chờ xử lý', NULL, NULL),
(5, 3, 8, 7, '4,331,800.00', 'Đang chờ xử lý', NULL, NULL),
(6, 3, 8, 8, '0.00', 'Đang chờ xử lý', NULL, NULL),
(7, 3, 9, 9, '88,000,000.00', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 4, 33, 'Demo', '1790000', 2, NULL, NULL),
(2, 5, 33, 'Demo', '1790000', 2, NULL, NULL),
(3, 7, 36, 'Nike Kwondo 1', '20000000', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Đang chờ xử lý', NULL, NULL),
(2, '1', 'Đang chờ xử lý', NULL, NULL),
(3, '1', 'Đang chờ xử lý', NULL, NULL),
(4, '1', 'Đang chờ xử lý', NULL, NULL),
(5, '1', 'Đang chờ xử lý', NULL, NULL),
(6, '1', 'Đang chờ xử lý', NULL, NULL),
(7, '2', 'Đang chờ xử lý', NULL, NULL),
(8, '2', 'Đang chờ xử lý', NULL, NULL),
(9, '1', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `product_name`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(36, 16, 'Nike Kwondo 1', 13, 'Phần lưỡi giày là điểm đặc biệt của đôi giày khi được in logo bao trùm lên cả hệ thống dây buộc và có thể tháo rời dễ dàng. Điều này giúp người dùng có thể linh hoạt sử dụng đôi giày trong nhiều hoàn cảnh hay nhu cầu mục đích khác nhau. Ngoài ra, phần lưỡi giày của mẫu  Kwondo 1 còn nổi trội với sự trang trí bất đối xứng. Một bên được trang trí logo của Peaceminusone và bên còn lại là logo của Nike. Khi lật lưỡi giày lên bạn sẽ thấy được seri của phiên bản được ghi cẩn thận bên trong.', 'Ngày 3/12, mẫu giày Nike Kwondo 1, đánh dấu cái bắt tay thứ 2 giữa trưởng nhóm Bigbang G-Dragon và thương hiệu giày hàng đầu thế giới Nike đã chính thức được phát hành. Do là phiên bản giới hạn, các khách hàng chỉ có 30 phút đăng ký mua giày thông qua hệ thống Nike SNKRS nên rất nhiều người đành ngậm ngùi vì bỏ lỡ mẫu giày mới.', '20000000', 'nike41.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(1, 'sam', 'bình thạnh', '072347213', 'sam@gmail.com', 'sdsjaidjskdljflkja', NULL, NULL),
(2, 'Gấu', 'bình thạnh', '0472435423', 'gau@gmail.com', 'sađá', NULL, NULL),
(3, 'Gấu', 'bình thạnh', '0472435423', 'gau@gmail.com', 'ádfadsf', NULL, NULL),
(4, 'Gấu', 'bình thạnh', '0472435423', 'gau@gmail.com', 'áđá', NULL, NULL),
(5, 'Gấu', 'bình thạnh', '0472435423', 'gau@gmail.com', 'gadsfádfádf', NULL, NULL),
(6, 'Gấu', 'bình thạnh', '0472435423', 'gau@gmail.com', 'sdfsdfds', NULL, NULL),
(7, 'Gấu', 'bình thạnh', '0472435423', 'gau@gmail.com', 'dsfádfádf', NULL, NULL),
(8, 'Gấu', 'bình thạnh', '0472435423', 'gau@gmail.com', 'áhdkád', NULL, NULL),
(9, 'Gấu', 'bình thạnh', '0472435423', 'gau@gmail.com', 'dsfasdfasd', NULL, NULL);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
