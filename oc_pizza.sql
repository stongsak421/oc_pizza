-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2018 at 12:47 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oc pizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `creditcard_info`
--

CREATE TABLE `creditcard_info` (
  `creditcard_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `creditcard_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration_month` int(2) NOT NULL,
  `expiration_year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `creditcard_info`
--

INSERT INTO `creditcard_info` (`creditcard_id`, `customer_id`, `creditcard_number`, `expiration_month`, `expiration_year`) VALUES
(1, 1, '1234567812345678', 1, 18),
(2, 2, '9876432198764321', 2, 20),
(3, 3, '4633792955685135', 3, 23),
(4, 4, '4633792955685135', 12, 22),
(5, 5, '4465822782524810', 8, 21),
(6, 6, '4212666228769638', 8, 28),
(7, 7, '4127336166777571', 11, 28),
(8, 8, '4842555754272562', 2, 25),
(9, 9, '4637812361869366', 8, 20),
(10, 10, '4241696729797965', 11, 22),
(11, 11, '4383533698827135', 7, 25),
(12, 12, '4119196162213371', 4, 22);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `user_id`, `first_name`, `last_name`, `phone`, `street`, `city`, `zip`, `email`) VALUES
(1, 12, 'John', 'Smith', '6261234567', '123 Pomona Str', 'Pomona', '91768', 'jsmith@gmail.com'),
(2, 13, 'Jane', 'Doe', '6269874321', '456 Arcadia Ave', 'Rowland Heights', '91780', 'jdoe@gmail.com'),
(3, 14, 'Sean', 'Coleman', '2685089243', '452 Holly Lane', 'Hopewell', '23860', 'scoleman@gmail.com'),
(4, 15, 'Mary', 'Green', '9509261612', '62 Yukon Street', 'Neenah', '54956', 'mgreen2@gmail.com'),
(5, 16, 'Wanda', 'Taylor', '2722117370', '86 Chapel St', 'Mason City', '50401', 'wtaylor@gmail.com'),
(6, 17, 'Diana', 'Gonzalez', '2402768915', '328 Virginia Ave Suite 134', 'Nashville', '37205', 'dgonzalez@gmail.com'),
(7, 18, 'Amy', 'Jenkins', '5739410219', '771 James St', 'Oak Ridge', '37830', 'ajenkins@gmail.com'),
(8, 19, 'Jesse', 'Price', '5243865730', '4 Cross Lane', 'Schererville', '46375', 'jprice@gmail.com'),
(9, 20, 'Roy', 'Smith', '8847514628', '7572 Miller Ave', 'Perrysburg', '43551', 'rsmith@gmail.com'),
(10, 21, 'Walter', 'Long', '8852367847', '9518 West Country Club Ave', 'Barberton', '44203', 'wlong@gmail.com'),
(11, 22, 'Annie', 'Foster', '2036489246', '482  Rockwell Drive', 'Elk River', '55330', 'afoster@gmail.com'),
(12, 23, 'Melissa', 'Mitchell', '8785826530', '187 Heather Drive', 'Navarre', '32566', 'mmitchell@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availability` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `user_id`, `first_name`, `last_name`, `occupation`, `availability`) VALUES
(1, 1, 'Vanesa', 'Mendoza', 'receptionist', 'in_store'),
(2, 2, 'Kelly', 'Lopez', 'receptionist', 'n/a'),
(3, 3, 'Lloyd', 'Pearson', 'cook', 'in_store'),
(4, 4, 'Brendan', 'Martinez', 'cook', 'in_store'),
(5, 5, 'Benny', 'Shaw', 'cook', 'n/a'),
(7, 6, 'Leo', 'Brown', 'driver', 'delivering'),
(8, 7, 'Ken', 'Estrada', 'driver', 'delivering'),
(9, 8, 'Colin', 'Moran', 'driver', 'delivering'),
(10, 9, 'Norman', 'May', 'driver', 'delivering'),
(11, 10, 'Benny', 'Garcia', 'driver', 'standby'),
(12, 11, 'Katie', 'Thompson', 'manager', 'in_store');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`item_id`, `item_name`, `price`) VALUES
(1, 'Pepperoni Pizza', 10),
(2, 'Sausage Pizza', 10),
(3, 'Cheese Pizza', 8),
(4, 'Supreme Pizza', 12),
(5, 'Cola_soda', 2),
(6, 'Lemon_Lime_soda', 2),
(7, 'Orange_soda', 2),
(8, 'Root_Beer', 2),
(9, 'Buffalo_Wings', 12),
(10, 'Bread_Sticks', 8),
(11, 'Garlic_Knots', 8),
(12, 'Bread_sticks_cheese', 10);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_time` datetime NOT NULL,
  `total_price` float NOT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `order_time`, `total_price`, `payment_method`) VALUES
(1, 1, '2018-05-16 00:00:00', 10, 'Cash'),
(2, 2, '2018-05-18 00:00:00', 22, 'Credit Card'),
(3, 3, '2018-05-23 00:00:00', 12, 'Credit Card'),
(4, 4, '2018-05-23 00:00:00', 12, 'Credit Card'),
(5, 5, '2018-05-23 00:00:00', 14, 'Credit Card'),
(6, 6, '2018-05-23 00:00:00', 20, 'Credit Card'),
(7, 7, '2018-05-23 00:00:00', 26, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `order_content`
--

CREATE TABLE `order_content` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity_ordered` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_content`
--

INSERT INTO `order_content` (`order_id`, `item_id`, `quantity_ordered`) VALUES
(1, 2, 1),
(2, 2, 1),
(2, 4, 1),
(3, 1, 1),
(3, 5, 1),
(4, 2, 1),
(4, 8, 1),
(5, 4, 1),
(5, 6, 1),
(6, 1, 1),
(6, 12, 1),
(7, 4, 1),
(7, 5, 1),
(7, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `order_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`order_id`, `employee_id`, `status`) VALUES
(1, 3, 'Preparing'),
(1, 3, 'Cooking'),
(1, 3, 'Cooking Complete'),
(1, 7, 'Delivering'),
(1, 7, 'Order Delivered'),
(2, 4, 'Preparing'),
(2, 4, 'Cooking'),
(2, 4, 'Cooking Complete'),
(2, 1, 'Customer Carry Out'),
(3, 3, 'Customer Cancel'),
(4, 3, 'Preparing'),
(4, 3, 'Customer Modify Order'),
(4, 3, 'Cooking'),
(4, 8, 'Delivering'),
(4, 8, 'Delivery Completed'),
(5, 4, 'Preparing'),
(5, 4, 'Cooking'),
(5, 4, 'Cooking Complete'),
(5, 1, 'Customer Carry Out'),
(6, 3, 'Preparing'),
(6, 3, 'Cooking'),
(6, 3, 'Cooking Complete'),
(6, 9, 'Delivering'),
(7, 4, 'Preparing'),
(7, 4, 'Cooking'),
(7, 4, 'Cooking Complete'),
(7, 10, 'Delivering');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `item_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`item_id`, `stock_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 13),
(9, 14),
(10, 11),
(11, 11),
(11, 12),
(12, 3),
(12, 11);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `ingredient_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_in_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `ingredient_name`, `quantity_in_stock`) VALUES
(1, 'pizza_dough', 50),
(2, 'sauce_tomato', 100),
(3, 'cheese', 50),
(4, 'pepperoni', 50),
(5, 'sausage', 50),
(6, 'olive', 50),
(7, 'green_bell_pepper', 50),
(8, 'tomato', 50),
(9, 'onion_red', 50),
(10, 'mushroom', 50),
(11, 'bread_dough', 100),
(12, 'garlic', 50),
(13, 'chicken_wings', 100),
(14, 'buffalo_sauce', 50),
(15, 'cola_soda', 50),
(16, 'lemonlime_soda', 50),
(17, 'orange_soda', 50),
(18, 'root_beer', 50),
(19, 'pizza_box', 50),
(20, 'take_out_box', 50);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `email`, `password_hash`, `login_time`) VALUES
(1, 'vmendonza', 'vmendonza@gmail.com', 'ddb99fce2990b12acbea439079a0af67093bf78b8d25cb44a80f6a0e11b36b8e91da7a6be5b517c4555535b3c57fe0c006a91dc9fc82e630ecdb4dcf1f7a774c', '2018-06-05 00:00:00'),
(2, 'klopez', 'klopez@gmail.com', '08ff80b9440f7d2ac3dc13a8c96fdfaeef10196229778a27b079db2ce452341234e068615979f167ffe3c0635c5047781a2377b680f35e55b72a1edf75ae0152', '2018-06-05 00:00:00'),
(3, 'lpearson', 'lpearson@gmail.com', '97d248449b5f0e17767a14571a28ab81fdbf7d35c03c491dc31c958cf31d8fc12159eb0fecd5d28523d3dd945b4d76aaf2b5c4721d0a38d4922892d3d6b71c7d', '2018-06-05 00:00:00'),
(4, 'bmartinez', 'bmartinez@gmail.com', 'c98bd3935c6f77840b1839514b02feb00795ff1a2ad65a889b0139f3cc7221ebfbdc7d73d3ae58dc5090a340802c561cef080ef4bb33769d915548d0bc8ce830', '2018-06-05 00:00:00'),
(5, 'bshaw', 'bshaw@gmail.com', 'c9f583939d85b9b11fcf1862db479bbda5c6ab05561203c168c5755398cd9c9a0d1a1ba9e5d16a9a8646e14389e97123863722a3af2cede2f9bb87f0249452e1', '2018-06-05 00:00:00'),
(6, 'lbrown', 'lbrown@gmail.com', 'b5206cf8c2536770f24f4f9a2e57e1aac2e429ecdd9f8508564ec32f3efa3e112e96418b8f70fc4cea7f0750617e4c41a487dc03d21727022a0335884beca5f1', '2018-06-06 00:00:00'),
(7, 'kestrada', 'kestrada@gmail.com', '877225937fdb890966b9ec55cd19bb9898ebf015d6e23527dea3af3ef2652b08abd5288ef22935a5b4fd2f4191f5e4ebacd0816ca8ec3016a158b333ce1329ac', '2018-06-07 00:00:00'),
(8, 'cmoran', 'cmoran@gmail.com', '6629fc1aa1de4bc3e336b127d72e10738bd89e99d3ac309e16fd9894406717c3a607747adaa28887cd7ac86e2de349c4ede8f1247de617e828c099967415a375', '2018-06-07 00:00:00'),
(9, 'nmay', 'nmay@gmail.com', '064ec829c224455b659ca552512ec5c3f946172b43363af64b50a481369c14a7f8686def6f4b1eddd210cd760a693bccf37b20bf2508557445efa190fbfb2319', '2018-06-07 00:00:00'),
(10, 'bgarcia', 'bgarcia@gmail.com', 'ff9b752f5b19ce22fe05ca9a437ae878721db218cc74f7879e9ba64a35a5704409a5132c8e312568470cfeadd2ca0c8bdb21f46697dde10d566ba6fc651142a9', '2018-06-08 00:00:00'),
(11, 'kthompson', 'kthompson@gmail.com', 'ff9b752f5b19ce22fe05ca9a437ae878721db218cc74f7879e9ba64a35a5704409a5132c8e312568470cfeadd2ca0c8bdb21f46697dde10d566ba6fc651142a9', '2018-06-05 00:00:00'),
(12, 'jsmith', 'jsmith@gmail.com', '4651b9455c9e883e05e6c6ab9eeb7e0de94619167d944ae9af2a4c072c07344ea7b78a5fcf19c14b3ea317baa6299a6d4a284657d465000c6e431ed495d018b4', '2018-06-05 00:00:00'),
(13, 'jdoe', 'jdoe@gmail.com', '9e0aabbaffeed1afe80001f522b008d6bd9558003f51342bef6b20891be2f4525293c4de96fd220e681d1abf6097271a9d1e98686896db86c33caae2ce77c7c8', '2018-06-05 00:00:00'),
(14, 'scoleman', 'scoleman@gmail.com', '42dc7e5b6bdc51ef0072bf05ca81182f1eee119ebe1f164f029528da4a4b4feb43456db58102482f0ee01ed6ddb9843efda49bb203c2223163802873ceb4be98', '2018-06-05 00:00:00'),
(15, 'mgreen', 'mgreen@gmail.com', 'e6e8204d712e2e6fd44f84f3fb4e52f38c1c61cc0ff83379bae262b25cb559e620b246b2836edfe47b66e72de563ff1ea71d2dfb54d86f0205340f7003602812', '2018-06-05 00:00:00'),
(16, 'wtaylor', 'wtaylor', '4c4ba810ab73c88dd2c8b027be6a0d7121f6eb90a853e263d1c4a086de7fb5f80b92dd9d400c5a719ad9687e1b6a0de859e0fac63208e7b5a22d6b80239b3f86', '2018-06-05 00:00:00'),
(17, 'dgonzalez', 'dgonzalez@gmail', '5a36833fd356abfbd7c9bb6bc4da064d2e931cc6aa1713eb33435129746350759b5ff43779c74c4bc4f6c343a69fb9054d1c7ad2a98e789a0352188a2d21f01d', '2018-06-06 00:00:00'),
(18, 'ajenkins', 'ajenkins@gmail.com', 'e40d9c2617af9057f4085ff552b4b018b69557ef22cbcfd126b252e049c907aa4a7de2b26da8197a8c6efa77f647fd8803e6082c4ec538ba448e566b9d871165', '2018-06-07 00:00:00'),
(19, 'jprice', 'jprice@gmail.com', '1ed0310dbc0a0c25feae8bf3f199e045e7b5d1b89d223fa8af214eba40999234a4081b5eb93621816a03af52ed56a8ea3edd028c8a2787a145d107255d9bf9cd', '2018-06-07 00:00:00'),
(20, 'rsmith', 'rsmith@gmail.com', 'e85879c8fa6a40454b069a286a0eab1c0c5e521d82b07408267ac1fd85de07be2837a08b788d3f3e275403c58e5c459f37af22d91738e017fc203d2c65c2bbed', '2018-06-07 00:00:00'),
(21, 'wlong', 'wlong@gmail.com', '226d38c57509c8510f27facf0e7773535ce7c9f4a9ebdc86cd0ad5b1cf9e0710efca9363f4701568a7e5b6dfbf30b5919784e25bc8900c7c724328378ac595bb', '2018-06-07 00:00:00'),
(22, 'afoster', 'afoster@gmail.com', '87f99abcb92aeeecc460d1d9a4a96b7497ba6542284746f157a8adcc67921c73ef2edd3e2677e85b3abb1965de7b4ea7bf2dc2a3dd8fb242a71c967a44f3cdd2', '2018-06-05 00:00:00'),
(23, 'mmitchell', 'mmmitchell@gmail.com', '2b88f3ce9a8dbf32d5b24605078b50039cfb51ae73683f8f879321b5a785d3bbd7c349031e59092dd4bd8fe744134708a90d850ecf025371295e43422ee5df81', '2018-06-08 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `creditcard_info`
--
ALTER TABLE `creditcard_info`
  ADD PRIMARY KEY (`creditcard_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_content`
--
ALTER TABLE `order_content`
  ADD PRIMARY KEY (`order_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`item_id`,`stock_id`),
  ADD KEY `stock_id` (`stock_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `creditcard_info`
--
ALTER TABLE `creditcard_info`
  MODIFY `creditcard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `creditcard_info`
--
ALTER TABLE `creditcard_info`
  ADD CONSTRAINT `creditcard_info_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`user_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`user_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `order_content`
--
ALTER TABLE `order_content`
  ADD CONSTRAINT `order_content_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_item` (`item_id`),
  ADD CONSTRAINT `order_content_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `order_status`
--
ALTER TABLE `order_status`
  ADD CONSTRAINT `order_status_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `order_status_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_item` (`item_id`),
  ADD CONSTRAINT `recipe_ibfk_2` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
