-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8888
-- Generation Time: Jul 03, 2024 at 02:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `Full_name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Telephone_number` varchar(255) NOT NULL,
  `Last_login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `customer` (`id`, `Full_name`, `Email`, `Password`, `Address`, `Telephone_number`, `Last_login_time`) VALUES
(1, 'Alice Smith', 'alice.smith@example.com', 'password123', '123 Maple St, Springfield', '555-1234', '2023-06-21 10:30:00'),
(2, 'Bob Johnson', 'bob.johnson@example.com', 'password456', '456 Oak St, Springfield', '555-5678', '2023-06-20 09:20:00'),
(3, 'Charlie Brown', 'charlie.brown@example.com', 'password789', '789 Pine St, Springfield', '555-9012', '2023-06-22 11:40:00'),
(4, 'David Wilson', 'david.wilson@example.com', 'passwordabc', '321 Birch St, Springfield', '555-3456', '2023-06-19 08:50:00'),
(5, 'Eva Green', 'eva.green@example.com', 'passworddef', '654 Cedar St, Springfield', '555-6789', '2023-06-18 07:30:00'),
(6, 'Frank White', 'frank.white@example.com', 'passwordghi', '987 Elm St, Springfield', '555-2345', '2023-06-17 06:40:00'),
(7, 'Grace Black', 'grace.black@example.com', 'passwordjkl', '111 Ash St, Springfield', '555-7890', '2023-06-16 05:50:00'),
(8, 'Hannah Brown', 'hannah.brown@example.com', 'passwordmno', '222 Maple St, Springfield', '555-1235', '2023-06-15 04:20:00'),
(9, 'Ian Grey', 'ian.grey@example.com', 'passwordpqr', '333 Oak St, Springfield', '555-6780', '2023-06-14 03:10:00'),
(10, 'Julia Adams', 'julia.adams@example.com', 'passwordstu', '444 Pine St, Springfield', '555-2346', '2023-06-13 02:00:00');

-- --------------------------------------------------------

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_owner` int(11) DEFAULT NULL,
  `items` int(11) DEFAULT NULL,
  `quantity` decimal(10,0) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `description` text NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `orders` (`order_id`, `order_owner`, `items`, `quantity`, `price`, `description`, `order_date`) VALUES
(22, 1, 1, 1, 700, 'Ordered latest model smartphone', '2024-06-21 10:30:00'),
(23, 2, 2, 2, 1300, 'Ordered high-performance laptops', '2024-06-20 09:20:00'),
(24, 3, 3, 3, 200, 'Ordered noise-cancelling headphones', '2024-06-22 11:40:00'),
(25, 4, 4, 5, 20, 'Ordered 100% cotton T-shirts', '2024-06-19 08:50:00'),
(26, 5, 5, 4, 15, 'Ordered bestselling fiction novels', '2024-06-18 07:30:00'),
(27, 6, 6, 1, 250, 'Ordered smartwatch with health tracking', '2024-06-17 06:40:00'),
(28, 7, 7, 2, 90, 'Ordered durable backpacks for hiking', '2024-06-16 05:50:00'),
(29, 8, 8, 1, 130, 'Ordered automatic coffee maker', '2024-06-15 04:20:00'),
(30, 9, 9, 1, 100, 'Ordered comfortable running shoes', '2024-06-14 03:10:00'),
(31, 10, 10, 2, 60, 'Ordered high-speed blenders', '2024-06-13 02:00:00');

-- --------------------------------------------------------

CREATE TABLE `product` (
  `Product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `product` (`Product_id`, `name`, `supplier`, `product_description`, `price`, `product_category`, `images`, `tags`, `comments`) VALUES
(1, 'Smartphone', 'ABC Electronics', 'Latest model smartphone with advanced features', 700, 'Electronics', 'http://example.com/images/smartphone1.jpg,http://example.com/images/smartphone2.jpg', 'New,Popular', 'Great smartphone!|Highly recommended!'),
(2, 'Laptop', 'XYZ Computers', 'High-performance laptop for gaming and work', 1300, 'Electronics', 'http://example.com/images/laptop1.jpg,http://example.com/images/laptop2.jpg', 'High-End,Popular', 'Amazing performance!|Worth the price!'),
(3, 'Headphones', 'SoundTech', 'Noise-cancelling over-ear headphones', 200, 'Electronics', 'http://example.com/images/headphones1.jpg,http://example.com/images/headphones2.jpg', 'Popular,Sale', 'Excellent sound quality!|Comfortable to wear.'),
(4, 'T-shirt', 'XYZ Clothing', '100% cotton T-shirt with various colors', 20, 'fashion', 'http://example.com/images/tshirt1.jpg,http://example.com/images/tshirt2.jpg', 'New,Sale', 'Very comfortable T-shirt.|Great value for money!'),
(5, 'Novel', 'Books Inc.', 'Bestselling fiction novel with thrilling story', 15, 'Books', 'http://example.com/images/novel1.jpg,http://example.com/images/novel2.jpg', 'Popular', 'A must-read novel!|Captivating from start to finish.'),
(6, 'Smartwatch', 'TechGadgets', 'Smartwatch with health tracking features', 250, 'Electronics', 'http://example.com/images/smartwatch1.jpg,http://example.com/images/smartwatch2.jpg', 'New,Popular', 'Very useful device!|Stylish and functional.'),
(7, 'Backpack', 'Outdoor Gear', 'Durable backpack for hiking and travel', 90, 'Accessories', 'http://example.com/images/backpack1.jpg,http://example.com/images/backpack2.jpg', 'Sale', 'Lots of storage space!|Highly durable.'),
(8, 'Coffee Maker', 'KitchenMaster', 'Automatic coffee maker with multiple settings', 130, 'Appliances', 'http://example.com/images/coffeemaker1.jpg,http://example.com/images/coffeemaker2.jpg', 'Popular', 'Makes great coffee!|Easy to use.'),
(9, 'Running Shoes', 'SportyFeet', 'Comfortable running shoes for all terrains', 100, 'fashion', 'http://example.com/images/runningshoes1.jpg,http://example.com/images/runningshoes2.jpg', 'New,Popular', 'Very comfortable!|Great for running.'),
(10, 'Blender', 'Home Essentials', 'High-speed blender for smoothies and shakes', 60, 'Appliances', 'http://example.com/images/blender1.jpg,http://example.com/images/blender2.jpg', 'Sale', 'Blends everything smoothly!|Easy to clean.');

-- --------------------------------------------------------

CREATE TABLE `returns` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `return_date` datetime NOT NULL,
  `return_reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `returns` (`return_id`, `order_id`, `return_date`, `return_reason`) VALUES
(13, 22, '2024-06-25 10:00:00', 'Defective item'),
(14, 23, '2024-06-26 11:00:00', 'Changed mind'),
(15, 24, '2024-06-27 12:00:00', 'Wrong item shipped'),
(16, 25, '2024-06-28 13:00:00', 'Item not as described');

--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_order` (`order_owner`),
  ADD KEY `products` (`items`);

ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_id`);

ALTER TABLE `returns`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `order_id` (`order_id`);

ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

ALTER TABLE `product`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `returns`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `orders`
  ADD CONSTRAINT `customer` FOREIGN KEY (`order_owner`) REFERENCES `customer` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `products` FOREIGN KEY (`items`) REFERENCES `product` (`Product_id`) ON DELETE SET NULL ON UPDATE SET NULL;

ALTER TABLE `returns`
  ADD CONSTRAINT `returns_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

COMMIT;
