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
(5, 'Gucci', 'Kh??ng c???n ph???i n??i qu?? nhi???u v??? Gucci, khi ????y l?? th????ng hi???u li??n ti???p l???t v??o top nh???ng th????ng hi???u th???i trang n???i ti???ng to??n ?????a c???u. Th??nh l???p v??o n??m 1921 v???i t??n ?????y ????? l?? Guccio Gucci, h??ng nhanh ch??ng ?????nh h??nh v??? l?? th????ng hi???u xa x??? v??? may m???c v?? ph??? ki???n.', 0, NULL, NULL),
(6, 'DKNY', 'Nh???ng th????ng hi???u th???i trang n???i ti???ng c???a M??? lu??n nh???n ???????c s??? ????n nh???n n???ng nhi???t ??? m???i qu???c gia kh??c. M???t trong s??? ???? ph???i k??? ?????n c??i t??n DKNY v???i ngu???n c???m h???ng t??? th??nh ph??? New York danh gi?? ???????c th??? hi???n qua nhi???u s???n ph???m do h??ng s???n xu???t.', 0, NULL, NULL),
(7, 'Salvatore Ferragamo', 'D?? n???m trong danh s??ch c???a nh???ng nh??n hi???u th???i trang n???i ti???ng to??n c???u trong m???t h??ng gi??y, nh??ng ?????ng sau h??ng Salvatore Ferragamo l???i l?? c??u chuy???n bu???n. T??n th????ng hi???u n??y c??ng ch??nh l?? t??n c???a ng?????i s??ng l???p ???? qua ?????i v??o n??m 1960 tr?????c khi th???y h??ng tr??? n??n th??nh c??ng.', 0, NULL, NULL),
(8, 'Balenciaga', 'Khi nh???c ?????n c??c h??ng th????ng hi???u th???i trang n???i ti???ng m?? thi???u ??i Balenciaga ch???c ch???n s??? l?? thi???u s??t l???n. V???i l???ch s??? h??nh th??nh h??n 100 n??m tu???i, h??ng tr??? th??nh th????ng hi???u ?????n t??? T??y Ban Nha xa x??? b???c nh???t th??? gi???i hi???n nay.', 0, NULL, NULL),
(9, 'Kenzo', 'S??? ra sao n???u c?? th????ng hi???u k???t h???p ???????c v??n h??a l??ng m???n, l???ch l??m c???a Ph??p v???i v??? ?????p ho??i c???, truy???n th???ng c???a Nh???t B???n. T?????ng ch???ng nh?? l?? hai tr?????ng ph??i kh??c nhau, nh??ng Kenzo l???i l?? th????ng hi???u th???i trang n???i ti???ng c?? th??? l??m ???????c m???t c??ch ho??n h???o.', 0, NULL, NULL),
(10, 'Louis Vuitton', 'Li??n t???c n???m trong top th????ng hi???u th???i trang n???i ti???ng nh???t th??? gi???i v???i doanh thu cao ng???t ng?????ng, Louis Vuitton hay c??n g???i l?? LV ???????c t???o n??n b???i b???c th???y thi??n t??i trong thi???t k???. Th???m ch??, nhi???u ng?????i c??n g???n m??c nh?? ph??t minh cho ??ng v?? nh???ng s??? s??ng t???o v?????t th???i ?????i.', 0, NULL, NULL),
(11, 'Giorgio Armani', 'C??c nh?? thi???t k??? ng?????i ?? ch??a bao gi??? khi???n c??? th??? gi???i th???t v???ng. V???i s??? ra ?????i Giorgio Armani v??o n??m 1975, d?? kh??ng qu?? l??u ?????i nh?? c??c t??n tu???i kh??c nh??ng ????y v???n l?? th????ng hi???u th???i trang n???i ti???ng xa x???, v???i m???i s???n ph???m ?????u c?? ????? t??? m??? chi ti???t r???t cao.', 0, NULL, NULL),
(12, 'Calvin Klein', 'L?? th????ng hi???u qu?? ?????i quen thu???c v???i nhi???u t??n ????? th???i trang. ?????c bi???t, kh??c v???i nh???ng c??i t??n tr?????c ????y, Calvin Klein l???i c?? nhi???u s???n ph???m gi?? t???t kh??ng qu?? ?????t ?????. Ngay t??? nh???ng ng??y ?????u th??nh l???p, h??ng nhanh ch??ng b??n ???????c 200.000 c???p qu???n jean b??n ra ch??? trong 1 tu???n.', 0, NULL, NULL),
(13, 'Nike', 'Nike l?? m???t th????ng hi???u chuy??n v??? lo???i gi??y sneaker.', 0, NULL, NULL);

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
(11, 'T-shirt', 'Ch???t li???u v???i m???m m???ng tho??ng m??t, ph?? h???p ??? m???i l???a tu???i', 0, NULL, NULL),
(12, '??o kho??c nam', '??o kho??c d??nh cho nam', 0, NULL, NULL),
(13, '??o kho??c n???', '??o d??nh cho n???', 0, NULL, NULL),
(14, 'Qu???n jean nam', 'Qu???n jean nam', 0, NULL, NULL),
(15, 'Qu???n t??y', 'Qu???n t??y', 0, NULL, NULL),
(16, 'Gi??y', 'gi??y', 0, NULL, NULL),
(17, 'T??i x??ch', 'T??i x??ch', 0, NULL, NULL),
(18, 'V??', 'v??', 0, NULL, NULL);

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
(3, 'G???u', 'gau@gamil.com', 'e10adc3949ba59abbe56e057f20f883e', '025648321', NULL, NULL);

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
(1, 3, 8, 3, '4,331,800.00', '??ang ch??? x??? l??', NULL, NULL),
(2, 3, 8, 4, '4,331,800.00', '??ang ch??? x??? l??', NULL, NULL),
(3, 3, 8, 5, '4,331,800.00', '??ang ch??? x??? l??', NULL, NULL),
(4, 3, 8, 6, '4,331,800.00', '??ang ch??? x??? l??', NULL, NULL),
(5, 3, 8, 7, '4,331,800.00', '??ang ch??? x??? l??', NULL, NULL),
(6, 3, 8, 8, '0.00', '??ang ch??? x??? l??', NULL, NULL),
(7, 3, 9, 9, '88,000,000.00', '??ang ch??? x??? l??', NULL, NULL);

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
(1, '1', '??ang ch??? x??? l??', NULL, NULL),
(2, '1', '??ang ch??? x??? l??', NULL, NULL),
(3, '1', '??ang ch??? x??? l??', NULL, NULL),
(4, '1', '??ang ch??? x??? l??', NULL, NULL),
(5, '1', '??ang ch??? x??? l??', NULL, NULL),
(6, '1', '??ang ch??? x??? l??', NULL, NULL),
(7, '2', '??ang ch??? x??? l??', NULL, NULL),
(8, '2', '??ang ch??? x??? l??', NULL, NULL),
(9, '1', '??ang ch??? x??? l??', NULL, NULL);

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
(36, 16, 'Nike Kwondo 1', 13, 'Ph???n l?????i gi??y l?? ??i???m ?????c bi???t c???a ????i gi??y khi ???????c in logo bao tr??m l??n c??? h??? th???ng d??y bu???c v?? c?? th??? th??o r???i d??? d??ng. ??i???u n??y gi??p ng?????i d??ng c?? th??? linh ho???t s??? d???ng ????i gi??y trong nhi???u ho??n c???nh hay nhu c???u m???c ????ch kh??c nhau. Ngo??i ra, ph???n l?????i gi??y c???a m???u  Kwondo 1 c??n n???i tr???i v???i s??? trang tr?? b???t ?????i x???ng. M???t b??n ???????c trang tr?? logo c???a Peaceminusone v?? b??n c??n l???i l?? logo c???a Nike. Khi l???t l?????i gi??y l??n b???n s??? th???y ???????c seri c???a phi??n b???n ???????c ghi c???n th???n b??n trong.', 'Ng??y 3/12, m???u gi??y Nike Kwondo 1, ????nh d???u c??i b???t tay th??? 2 gi???a tr?????ng nh??m Bigbang G-Dragon v?? th????ng hi???u gi??y h??ng ?????u th??? gi???i Nike ???? ch??nh th???c ???????c ph??t h??nh. Do l?? phi??n b???n gi???i h???n, c??c kh??ch h??ng ch??? c?? 30 ph??t ????ng k?? mua gi??y th??ng qua h??? th???ng Nike SNKRS n??n r???t nhi???u ng?????i ????nh ng???m ng??i v?? b??? l??? m???u gi??y m???i.', '20000000', 'nike41.jpg', 0, NULL, NULL);

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
(1, 'sam', 'b??nh th???nh', '072347213', 'sam@gmail.com', 'sdsjaidjskdljflkja', NULL, NULL),
(2, 'G???u', 'b??nh th???nh', '0472435423', 'gau@gmail.com', 'sa????', NULL, NULL),
(3, 'G???u', 'b??nh th???nh', '0472435423', 'gau@gmail.com', '??dfadsf', NULL, NULL),
(4, 'G???u', 'b??nh th???nh', '0472435423', 'gau@gmail.com', '??????', NULL, NULL),
(5, 'G???u', 'b??nh th???nh', '0472435423', 'gau@gmail.com', 'gadsf??df??df', NULL, NULL),
(6, 'G???u', 'b??nh th???nh', '0472435423', 'gau@gmail.com', 'sdfsdfds', NULL, NULL),
(7, 'G???u', 'b??nh th???nh', '0472435423', 'gau@gmail.com', 'dsf??df??df', NULL, NULL),
(8, 'G???u', 'b??nh th???nh', '0472435423', 'gau@gmail.com', '??hdk??d', NULL, NULL),
(9, 'G???u', 'b??nh th???nh', '0472435423', 'gau@gmail.com', 'dsfasdfasd', NULL, NULL);

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
