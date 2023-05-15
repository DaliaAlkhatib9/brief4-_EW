-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 04:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewelry_db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `total_price` varchar(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `product_price` float NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `product_image`, `total_price`, `qty`, `product_price`, `product_code`, `date_created`) VALUES
(5, '1', '5', '0', 3, 3500, '', '2023-05-10 20:34:21'),
(0, 'rings', 'image/img3.jpg', '150', 1, 150, 'p1400', '2023-05-14 18:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `cat-1`
--

CREATE TABLE `cat-1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `no.` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `prodect_img` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cat-1`
--

INSERT INTO `cat-1` (`id`, `name`, `color`, `no.`, `type`, `prodect_img`, `price`) VALUES
(1, 'sunglasses1', 'black,white', 1000, 'for man', 'images/img1.png', 15),
(3, 'sunglasses3', 'black', 2000, '', 'images/img2.png', 10),
(4, 'sunglasses4', 'blue', 700, '', 'images/img3.png', 18),
(5, 'sunglasses5', 'brawn', 900, '', 'images/img4.png', 13);

-- --------------------------------------------------------

--
-- Table structure for table `cat-2`
--

CREATE TABLE `cat-2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `no.` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cat-2`
--

INSERT INTO `cat-2` (`id`, `name`, `color`, `no.`, `type`, `product_image`, `price`) VALUES
(1, 'ring 1', 'white', 750, 'gold', 'images/img5.png', 40),
(2, 'ring2', 'yellwe', 800, 'falso', 'images/img6.png', 8),
(4, 'ring4', 'white', 750, 'selver', 'images/img7.png', 28),
(5, 'ring5', 'colors', 1000, 'cristal', 'images/img8.png', 19);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name_categories` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_categories`, `description`, `date_created`) VALUES
(1, 'Rings', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur scelerisque eget ante eu laoreet. Duis a rutrum eros. Duis maximus varius ipsum eu maximus. Proin et feugiat felis, non sodales erat. Nunc porta diam sit amet diam tincidunt, eleifend volutpat erat tristique. Integer vitae ex nec dolor tempus rutrum vel sed nulla. Nam elit enim, placerat vel lectus quis, facilisis sollicitudin velit. Vivamus blandit lectus vitae libero facilisis, vitae bibendum arcu consequat. Duis viverra interdum molestie. Vivamus mattis auctor velit.</span>															', '0000-00-00 00:00:00'),
(2, 'Necklace', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Duis quis felis sit amet odio convallis ullamcorper vel sed eros. Donec leo magna, tincidunt non ipsum quis, semper convallis eros. Nam et lectus vitae est mollis facilisis sit amet vitae metus. Aliquam sagittis ligula non vulputate consequat. Pellentesque non eleifend dolor, ac facilisis velit. Aenean pulvinar eget lorem et dictum. Nulla et sollicitudin eros. Donec eu tortor ac nibh tincidunt gravida id in nisl. Nam auctor ultrices justo et fermentum. Quisque quis risus libero. Aliquam porttitor ante vel sem fringilla suscipit. Nulla ac tempus velit. Sed laoreet vestibulum rutrum. Proin tellus erat, fermentum imperdiet feugiat non, vestibulum at velit. Proin orci lectus, mattis vel ultricies id, iaculis et nunc.</span>															', '0000-00-00 00:00:00'),
(3, 'Price', 'lorem', '0000-00-00 00:00:00'),
(4, '', '', '0000-00-00 00:00:00'),
(5, '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

CREATE TABLE `colours` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `color` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`id`, `product_id`, `color`, `date_created`) VALUES
(1, 2, 'Silver', '2020-11-12 13:00:31'),
(2, 2, 'Gold', '2020-11-12 13:00:31'),
(3, 3, '', '2020-11-12 13:36:42'),
(4, 4, 'Silver', '2020-11-12 13:49:10'),
(5, 5, '', '2020-11-12 13:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `products` varchar(1) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pmod` varchar(255) NOT NULL,
  `amount_paid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `delivery_address`, `products`, `phone`, `pmod`, `amount_paid`) VALUES
(2, 'xGglucIwb4tL7vWm', '2', 'Sample Address', '3', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `colour_id` int(30) NOT NULL,
  `size_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `colour_id`, `size_id`, `qty`, `price`, `date_created`) VALUES
(3, 2, 2, 1, 4, 2, 3500, '2020-11-12 15:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `product_price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `product_image` text NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_discount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `product_price`, `date_created`, `product_image`, `product_qty`, `product_discount`) VALUES
(7, 'ring', 'p1200', 120, '2023-05-12 20:44:14', 'image\\img1.jpg', 1, 0),
(8, 'Glamorous Zinc', 'p1300', 130, '2023-05-12 20:44:14', 'image/img2.jpg', 1, 0),
(9, 'rings', 'p1400', 150, '2023-05-12 20:46:54', 'image/img3.jpg', 1, 0),
(10, ' detailing jewelry ', 'p1600', 110, '2023-05-12 22:00:47', 'image/img13.jpg', 1, 0),
(11, 'cube necklace', 'p1600', 140, '2023-05-12 22:00:47', 'image/img5.jpg', 1, 0),
(14, 'Rhinestone beaded bracelet', 'p1800', 150, '2023-05-12 22:04:32', 'image/img7.jpg', 1, 0),
(15, 'bracelet', 'p1900', 190, '2023-05-12 22:04:32', 'image/img6.jpg', 1, 0),
(16, 'Rhinestone beaded bracelet', 'p1800', 150, '2023-05-12 22:04:38', 'image/img8.jpg', 1, 0),
(17, 'sunglasses1', '112', 15, '2023-05-14 10:50:23', 'image/sun14.jpg', 0, 0),
(18, 'sunglasses3', '123', 10, '2023-05-14 10:50:23', 'images/img4.png', 0, 0),
(19, 'styleclasster sunglass', 'p1908', 1500, '2023-05-14 18:50:17', 'image/sun9.jpg', 1, 140),
(27, 'sunglass', '', 40, '2023-05-14 10:57:10', 'image/sun12.jpg', 0, 0),
(28, 'ring2', '', 8, '2023-05-14 10:57:10', 'images/img6.png', 0, 0),
(29, 'ring4', '', 28, '2023-05-14 10:58:58', 'images/img7.png', 0, 0),
(30, 'ring5', '', 19, '2023-05-14 10:58:58', 'image/ring2.jpg', 0, 0),
(31, 'Duble Rings', 'p789', 123, '2023-05-14 18:55:06', 'image/ring.jpg', 1, 119);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(30) NOT NULL,
  `size` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2= users',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `contact`, `address`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(4, 'mohammad taha', '0787134930', 'ammman', 'test@gmail.com', '123456789', 1, 'nnnn.webp', '2023-05-13 03:58:18'),
(5, 'ahmad', '0787812345', 'alsalt', 'ahmad111@gmail.com', '123456123', 2, 'nnnn.wepb', '2023-05-13 04:01:49'),
(6, 'mohammad taha', '0787134930', 'ammman', 'mohammad222@gmail.com', '123456123', 2, 'nnnn.webp', '2023-05-13 04:04:33'),
(7, '', '', '', '', '', 2, '', '2023-05-13 04:08:41'),
(8, 'mohammd', '0787134930', 'ammman', 'ah123@gmail.com', '123456123', 2, 'nnnn.webp', '2023-05-13 08:00:26'),
(9, 'mohammd', '0787134930', 'ammman', 'ah1234@gmail.com', '123456123', 2, 'mmmm.jpg', '2023-05-13 08:08:34'),
(10, 'mohammd', '0787134930', 'ammman', 'ah12345@gmail.com', '123456123', 2, 'mmmm.jpg', '2023-05-13 08:12:17'),
(11, 'mohammad taha', '0787134930', 'ammman', 'mohammad2242@gmail.com', '123456123', 2, 'mmmm.jpg', '2023-05-13 08:13:40'),
(12, 'mohammd', '0787134930', 'ammman', 'ah1243@gmail.com', '123456123', 2, 'mmmm.jpg', '2023-05-13 08:18:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat-1`
--
ALTER TABLE `cat-1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat-2`
--
ALTER TABLE `cat-2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat-1`
--
ALTER TABLE `cat-1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cat-2`
--
ALTER TABLE `cat-2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
