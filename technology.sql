-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2025 at 09:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technology`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Linh Kiện Cũ', NULL, '2025-01-20 11:34:13', '2025-01-20 11:34:13'),
(2, 'CPU, Mainboard, VGA', NULL, '2025-01-20 11:34:13', '2025-01-20 11:34:13'),
(3, 'RAM, SSD, HDD, Thẻ nhớ', NULL, '2025-01-20 11:34:53', '2025-01-20 11:34:53'),
(4, 'Case, Tản, Nguồn', NULL, '2025-01-20 11:34:53', '2025-01-20 11:34:53'),
(5, 'PC Gaming - Đồ Họa - AI', NULL, '2025-01-20 11:35:42', '2025-01-20 11:35:42'),
(6, 'PC Văn Phòng - Doanh nghiệp', NULL, '2025-01-20 11:35:42', '2025-01-20 11:35:42'),
(7, 'Laptop', NULL, '2025-01-20 11:36:06', '2025-01-20 11:36:06'),
(8, 'Màn hình máy tính', NULL, '2025-01-20 11:36:06', '2025-01-20 11:36:06'),
(9, 'Phím, Chuột, Tai Nghe', NULL, '2025-01-20 11:36:27', '2025-01-20 11:36:27'),
(10, 'Bàn, Ghế Gaming', NULL, '2025-01-20 11:36:27', '2025-01-20 11:36:27'),
(11, 'Thiết Bị Mạng', NULL, '2025-01-20 11:36:47', '2025-01-20 11:36:47'),
(12, 'Thiết Bị Âm Thanh', NULL, '2025-01-20 11:36:47', '2025-01-20 11:36:47'),
(13, 'Camera, Webcam, Máy In', NULL, '2025-01-20 11:38:47', '2025-01-20 11:38:47'),
(14, 'Phụ Kiện & Phần Mềm', NULL, '2025-01-20 11:38:47', '2025-01-20 11:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int NOT NULL,
  `code` varchar(50) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `expiry_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('pending','completed','canceled') DEFAULT 'pending',
  `payment_method_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `images` json DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `price_sale` decimal(10,0) DEFAULT NULL,
  `stock` int DEFAULT '0',
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `images`, `price`, `price_sale`, `stock`, `short_description`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(7, 'Vga Gigabyte RTX 4090 Aorus Xtreme Waterforce 24GB GDDR6X', 'vga-gigabyte-RTX-4090-aorus-xtreme-waterforce-24GB-GDDR6X.jpg', '[]', '57900000', NULL, 1, '- Nhân đồ họa: GeForce RTX™ 4090\r\n- Nhân CUDA: 16384\r\n- Tốc độ bộ nhớ: 21 Gbps\r\n- Dung lượng bộ nhớ: 24GB\r\n- Loại bộ nhớ: GDDR6X\r\n- Bus bộ nhớ: 384 bit\r\n- Bus card: PCI-E 4.0', '- GPU: NVIDIA GeForce RTX 4090, kiến trúc Ada Lovelace, mang lại hiệu suất xử lý đồ họa hàng đầu và hỗ trợ ray tracing thời gian thực và AI.\r\n- Bộ nhớ: 24GB GDDR6X, tốc độ truyền tải cao, hỗ trợ các ứng dụng đòi hỏi bộ nhớ video lớn như chơi game 4K, VR, và làm việc với video độ phân giải cao.\r\n- Tốc độ xung nhịp: Boost Clock đạt đến 2580 MHz (tùy thuộc vào tải và nhiệt độ).\r\n- Tản nhiệt: Hệ thống tản nhiệt AORUS Waterforce, sử dụng giải pháp tản nhiệt bằng nước (water cooling) giúp duy trì nhiệt độ thấp và ổn định trong suốt quá trình sử dụng.\r\n- Kết nối: 3 cổng DisplayPort 1.4a và 1 cổng HDMI 2.1, hỗ trợ hiển thị lên đến 8K, 4K, hoặc kết nối đa màn hình.\r\n- Nâng cao hiệu suất: Hỗ trợ công nghệ DLSS 3, Ray Tracing và các tính năng AI của NVIDIA giúp cải thiện hiệu suất và chất lượng hình ảnh trong các trò chơi và ứng dụng đồ họa.\r\n- Công suất: Yêu cầu nguồn điện tối thiểu 850W, với kết nối 16-pin để cung cấp năng lượng cho card đồ họa mạnh mẽ này.\r\n- Thiết kế: Thiết kế hầm hố, với hệ thống làm mát độc đáo và bộ quạt 3D độc quyền của AORUS, tạo nên vẻ ngoài ấn tượng và khả năng làm mát tối ưu.\r\n- Ứng dụng: Dành cho các game thủ đỉnh cao, người sáng tạo nội dung chuyên nghiệp, cũng như các chuyên gia đồ họa và ứng dụng VR, AR, AI, và deep learning.\r\nGigabyte RTX 4090 Aorus Xtreme Waterforce 24GB GDDR6X là một lựa chọn tuyệt vời cho những ai yêu cầu card đồ họa cao cấp, hiệu suất mạnh mẽ và khả năng tản nhiệt tối ưu, giúp đạt được hiệu suất tối đa trong mọi tác vụ đồ họa nặng.', 2, '2025-01-20 12:48:28', '2025-01-21 03:03:20'),
(8, 'Ram PC Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB) (KF432C16BB/8)', 'ram-PC-Kingston-Fury-Beast-8GB-DDR4-3200Mhz(1x8GB).jpg', '[\"ram-PC-Kingston-Fury-Beast-8GB-DDR4-3200Mhz(1x8GB)1.jpg\", \"ram-PC-Kingston-Fury-Beast-8GB-DDR4-3200Mhz(1x8GB)2.jpg\"]', '369000', NULL, 2, '- Thương hiệu: Kingston\r\n- Dung lượng: 8GB\r\n- Tần số: 3200MHz\r\n- Loại: DDR4\r\n- Điện áp: 1.35V\r\n- Chế độ: Duel Channel', 'Đặc điểm nổi bật:\r\n\r\nRAM PC DDR4 với tốc độ 3200Mhz, xử lý đồ họa, chơi game mượt mà, tốc độ phản hồi nhanh chóng.\r\n\r\nDung lượng 8GB đáp ứng nhu cầu sử dụng phổ biến, phù hợp với đa số PC hiện nay.\r\n\r\nTích hợp hệ thống tản nhiệt hiện đại, thiết bị luôn hoạt động ổn định, kể cả khi tải nặng\r\n\r\nThiết kế độc đáo mang đến phong cách sang trọng cho hệ thống PC.\r\n\r\nRAM PC Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB): Hiệu năng mạnh mẽ, phong cách ấn tượng\r\nRAM PC Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB) là lựa chọn tuyệt vời cho những người muốn nâng cấp hiệu năng và phong cách cho PC của mình. Sản phẩm mang đến hiệu suất vượt trội, giúp máy tính hoạt động mượt mà, đa nhiệm hiệu quả và xử lý các tác vụ nặng một cách trơn tru, đồng thời tô điểm thêm vẻ đẹp cho hệ thống PC.\r\n\r\nHiệu suất vượt trội, đa nhiệm mượt mà\r\nRAM Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB) có tốc độ bus 3200Mhz, bạn có thể thoải mái làm mọi thứ, từ lướt web, xem phim đến làm việc và chơi game mà không gặp bất kỳ trở ngại nào. Không chỉ giup mọi tác vụ được xử lý nhanh chóng, chính xác, tốc độ bus 3200Mhz siêu nhanh giúp bạn luôn chiếm ưu thế trong mọi trận đấu, phản ứng tức thời với mọi tình huống.\r\n\r\nCó thể thấy, so với RAM DDR4 thông thường với tốc độ 2400Mhz, sản phẩm này cho hiệu năng nhanh hơn đáng kể, phù hợp cho người dùng có nhu cầu hiệu suất cao.\r\n\r\nRAM Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB) RAM Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB) có tốc độ bus 3200Mhz, mang đến hiệu năng vượt trội\r\n\r\nDung lượng đáp ứng nhu cầu sử dụng\r\nRAM Kingston Fury Beast  với 8GB RAM - lựa chọn hoàn hảo cho hầu hết người dùng. So với 4GB, 8GB mang đến hiệu suất làm việc và giải trí tốt hơn đáng kể. Bạn sẽ cảm nhận được sự khác biệt rõ rệt khi sử dụng máy tính.\r\n\r\nRAM Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB) có dung lượng 8GB là lựa chọn phổ biến cho đa số PC hiện nay\r\n\r\nTương thích AMD Ryzen™, dễ dàng nâng cấp\r\nRAM PC Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB) được thiết kế tương thích với hầu hết các mainboard hỗ trợ DDR4, AMD Ryzen™, giúp người dùng dễ dàng nâng cấp cho PC của mình. Sản phẩm có thiết kế nhỏ gọn, không chiếm nhiều diện tích trong PC, đảm bảo tương thích với nhiều loại case và hệ thống khác nhau.\r\n\r\nRAM PC Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB) được thiết kế tương thích với hầu hết các mainboard hỗ trợ DDR4, AMD Ryzen™\r\n\r\nTính năng XMP tối ưu hiệu năng\r\nMột điểm cộng nữa là RAM Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB) được tích hợp tính năng XMP giúp dễ dàng ép xung, nâng hiệu năng tối đa cho hệ thống. Chỉ cần bật tính năng XMP trong BIOS, bạn có thể đẩy tốc độ hoạt động của RAM lên 3200Mhz, mang đến hiệu suất tối ưu cho các tác vụ đòi hỏi hiệu năng cao như chơi game, thiết kế đồ họa, chỉnh sửa video. So với RAM thông thường, việc ép xung giúp nâng cao hiệu suất xử lý, mang lại trải nghiệm mượt mà hơn.\r\n\r\nRAM Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB) được tích hợp tính năng XMP giúp dễ dàng ép xung, nâng hiệu năng tối đa cho hệ thống\r\n\r\nRAM PC Kingston Fury Beast 8GB DDR4 3200Mhz (1x 8GB) là lựa chọn đáng giá cho người dùng muốn nâng cấp hiệu năng và phong cách cho PC của mình. Với tốc độ 3200Mhz, dung lượng 8GB, tản nhiệt hiệu quả và thiết kế độc đáo, sản phẩm này mang đến hiệu suất vượt trội, giúp máy tính hoạt động mượt mà, đa nhiệm hiệu quả, xử lý các tác vụ nặng một cách trơn tru, đồng thời tô điểm thêm vẻ đẹp cho hệ thống PC.', 3, '2025-01-20 12:57:03', '2025-01-20 12:57:03'),
(9, 'Ổ cứng SSD Crucial P310 1TB PCIe Gen 4.0 NVMe | CT1000P310SSD2', 'Ổ-cứng-SSD-Crucial-P310-1TB-PCIe-Gen-4.0-NVMe.jpg', '[]', '2990000', NULL, 1, 'Chuẩn giao tiếp: NVMe (PCIe Gen 4 x4)\r\nDung lượng: 1TB\r\nKích thước: M.2 (2230)\r\nĐộ bền TBW: 220TB\r\nTốc độ đọc tuần tự: 7100 MB/s\r\nTốc độ ghi tuần tự: 6000 MB/s', 'SSD Crucial P310 1TB PCIe Gen 4.0 NVMe – Tăng tốc hiệu năng với công nghệ hàng đầu\r\nSở hữu SSD chất lượng cao là yếu tố quan trọng để tối ưu hóa hiệu suất cho máy tính cá nhân hay hệ thống doanh nghiệp. SSD Crucial P310 1TB PCIe Gen 4.0 NVMe là sự lựa chọn lý tưởng, mang lại tốc độ xử lý vượt trội và độ bền ấn tượng. Tại Tin Học Ngôi Sao, bạn có thể sở hữu sản phẩm này với mức giá cực kỳ cạnh tranh.\r\n\r\nHiệu năng mạnh mẽ với công nghệ NVMe tiên tiến\r\nSSD Crucial P310 sử dụng chuẩn giao tiếp NVMe (PCIe Gen 4 x4), đảm bảo tốc độ truyền dữ liệu nhanh gấp nhiều lần so với các SSD thông thường. Với khả năng đọc tuần tự lên đến 7100 MB/s và ghi tuần tự 6000 MB/s, sản phẩm này sẽ giúp bạn tăng tốc độ khởi động hệ điều hành, tải ứng dụng, và xử lý các tác vụ nặng như chơi game hay chỉnh sửa video.\r\n\r\nDung lượng lưu trữ lớn, thiết kế nhỏ gọn\r\nDung lượng 1TB trên form factor M.2 (2230) giúp SSD Crucial P310 phù hợp cho các laptop, PC hoặc hệ thống yêu cầu không gian hạn chế. Dung lượng lớn cho phép bạn lưu trữ thoải mái các tập tin, tài liệu, và ứng dụng cần thiết.\r\n\r\nĐộ bền cao và chính sách bảo hành ưu việt\r\nVới độ bền 220TBW, SSD Crucial P310 đảm bảo hoạt động ổn định trong thời gian dài. Sản phẩm đi kèm chính sách bảo hành 36 tháng, mang đến sự an tâm tuyệt đối cho khách hàng.\r\n\r\nHãy đến ngay Tin Học Ngôi Sao để sở hữu SSD Crucial P310 1TB PCIe Gen 4.0 NVMe với mức giá ưu đãi và chính sách hỗ trợ tốt nhất!', 3, '2025-01-20 12:57:03', '2025-01-20 12:57:03'),
(10, 'Ổ cứng HDD 1TB Western Blue Chính Hãng (WD10EZEX)', 'Ổ-cứng-HDD-1TB-Western-Blue-Chính-Hãng.jpg', '[\"Ổ-cứng-HDD-1TB-Western-Blue-Chính-Hãng1.jpg\", \"Ổ-cứng-HDD-1TB-Western-Blue-Chính-Hãng2.jpg\"]', '1190000', NULL, 3, '- Loại ổ cứng: HDD\r\n- Thương hiệu: WD\r\n- Dung lượng: 1TB\r\n- Công nghệ Advanced Format (AF): Có\r\n- Tốc độ vòng quay: 7200RPM\r\n- Kích thước: 3.5 inch\r\n- Tốc độ ghi: 150 MB/s', 'Đặc điểm nổi bật:\r\n\r\nDung lượng lưu trữ rộng rãi 1TB, đáp ứng nhu cầu lưu trữ dữ liệu lớn.\r\nTốc độ vòng quay 7200 rpm, đảm bảo hiệu năng ổn định và tốc độ truyền dữ liệu nhanh.\r\nChuẩn kết nối SATA III, hỗ trợ tốc độ truyền dữ liệu lên đến 6 Gbps, phù hợp với các hệ thống máy tính để bàn hiện đại.\r\nĐộ bền cao, được bảo hành chính hãng trong 2 năm, mang đến sự yên tâm cho người dùng.\r\nỔ cứng HDD Western Digital 1TB Blue - Nâng tầm trải nghiệm lưu trữ\r\nỔ cứng HDD Western Digital 1TB Blue là lựa chọn lý tưởng cho người dùng cần dung lượng lưu trữ lớn với mức giá hợp lý. Ổ cứng sở hữu dung lượng 1TB, tốc độ vòng quay 7200 rpm và chuẩn kết nối SATA III, mang đến hiệu năng ổn định và tốc độ truyền dữ liệu nhanh chóng.\r\n\r\nThiết kế sang trọng, phù hợp nhiều loại máy\r\n\r\nỔ cứng HDD Western Digital 1TB Blue được thiết kế với kích thước 3.5 inch, phù hợp với các hệ thống máy tính để bàn. Với kích thước tiêu chuẩn, ổ cứng dễ dàng lắp đặt và tương thích với nhiều loại case máy tính khác nhau.\r\n\r\nThiết kế sang trọng\r\n\r\nDung lượng 1TB cho mọi nhu cầu\r\n\r\nDung lượng lưu trữ 1TB của ổ cứng Western Digital 1TB Blue là điểm cộng lớn nhất, đủ để lưu trữ lượng lớn dữ liệu như phim ảnh, hình ảnh, tài liệu, phần mềm và game. Với dung lượng lớn này, người dùng có thể thoải mái lưu trữ mọi thứ mà không phải lo lắng về việc hết dung lượng.\r\n\r\nDung lượng 1TB cho mọi nhu cầu\r\n\r\nTrải nghiệm mượt mà - Hiệu năng vượt trội\r\n\r\nỔ cứng HDD Western Digital 1TB Blue được trang bị tốc độ vòng quay 7200 rpm, mang đến hiệu năng ổn định và tốc độ truyền dữ liệu nhanh chóng. Chuẩn kết nối SATA III cho phép tốc độ truyền dữ liệu tối đa lên đến 6 Gbps, giúp người dùng truy cập dữ liệu một cách nhanh chóng và mượt mà.\r\n\r\nTrải nghiệm mượt mà - Hiệu năng vượt trội\r\n\r\nBộ nhớ đệm 64MB cache cũng góp phần tăng cường tốc độ xử lý dữ liệu và mang lại trải nghiệm mượt mà hơn. Tốc độ ghi 150 MB/s của ổ cứng đảm bảo tốc độ ghi dữ liệu nhanh chóng, phù hợp cho các tác vụ cần tốc độ cao như cài đặt phần mềm, sao lưu dữ liệu.\r\n\r\nThiết kế vững chắc - Độ bền vượt thời gian\r\n\r\nỔ cứng HDD Western Digital 1TB Blue được sản xuất với công nghệ tiên tiến, đảm bảo độ bền bỉ và hoạt động ổn định trong thời gian dài. Các linh kiện bên trong cũng được chế tạo từ các chất liệu có độ bền cao, đảm bảo hoạt động ổn định và tuổi thọ lâu dài.\r\n\r\nTrải nghiệm mượt mà - Hiệu năng vượt trội\r\n\r\nỔ cứng HDD Western Digital 1TB Blue là lựa chọn đáng tin cậy cho người dùng cần dung lượng lưu trữ lớn, tốc độ truy cập nhanh và giá thành hợp lý. Với hiệu năng ổn định, dung lượng rộng rãi, độ bền cao và thiết kế tiện dụng, ổ cứng phù hợp cho nhiều mục đích sử dụng như lưu trữ dữ liệu cá nhân, cài đặt game, lưu trữ phim ảnh, âm nhạc,...', 3, '2025-01-20 12:59:51', '2025-01-20 12:59:51'),
(11, 'Case H5 Elite Black NZXT (CC-H51EB-01)', 'Case-H5-Elite-Black-NZXT.jpg', '[]', '2890000', NULL, 2, '- Sản phẩm: Case - Vỏ máy tính\r\n- Model: NZXT H5 Elite BLACK\r\n- Kích thước\r\n + W: 210mm H: 435mm D: 428mm (không có chân)\r\n + W: 210mm H: 460mm D: 428mm (có chân)\r\nVật liệu	SGCC Thép và Kính cường lực\r\n- Trọng lượng: 7.5 kg', 'Case H5 Elite Black NZXT (CC-H51EB-01) được thiết kế với mặt trước bằng kính cường lực và tích hợp thêm chức năng RGB giúp hiển thị các thành phần chiếu sáng đa dạng. Nhờ có hiệu suất nhiệt được tối ưu hóa tốt hơn và quản lý các cáp trực quan, H5 Elite là một case  lý tưởng cho hầu hết các bản dựng của bạn.\r\n\r\nHỗ trợ quạt công suất lớn\r\nCase H5 Elite Black  được tích hợp sẵn hai quạt tản nhiệt Aer RGB 2 140mm cho mặt trước và Aer F 120mm cho mặt sau giúp hỗ trợ tối đa quá trình tản nhiệt xảy ra nhanh chóng, mang lại hiệu quả tối ưu. Mặt trước được thiết kế đục lỗ ngoài không những giúp cho việc đi dây trở nên thuận tiện, gọn gàng hơn mà còn giúp tối ưu hóa luồng không khí bên trong dàn máy góp phần cải thiện quá trình tản nhiệt. Thêm vào đó, hai quạt và bộ lọc hoàn toàn có thể tháo rời, vì vậy mà quá trình vệ sinh máy cũng sẽ trở nên dễ dàng hơn bao giờ hết.\r\n\r\nBảng điều khiển cung cấp hệ thống thông gió tối ưu\r\nThiết kế hỗ trợ đầy đủ các cổng kết nối đa dạng bao gồm 1 cổng USB Type A, cổng USB Type C và cổng cắm tai nghe giúp máy tính  có thể kết nối nhanh chóng với các thiết bị thông minh khác. Với H5 Elite, bạn có thể dễ dàng build và mang lại sự linh hoạt cho dàn PC của mình khi đã được hỗ trợ những Mainboard tối đa như Mini-ITX, Micro ATX hay ATX.\r\n\r\nKhả năng làm mát mạnh mẽ, vượt trội\r\nPhần trên cùng cho phép cải thiện lưu lượng khí tốt hơn, tăng hiệu suất làm mát. Quạt thổi 140mm góc cạnh độc quyền cung cấp khả năng làm mát GPU chuyên dụng. Tăng cường hơn khả năng làm mát với khung máy rộng và kích thước tăng đáng kể so với thế hệ trước, hỗ trợ đa dạng các quạt tản nhiệt ở các mặt.\r\n\r\nThêm vào đó, chiếc case này còn còn sở hữu thiết kế vô cùng độc đáo khi có thể thay đổi không gian bên trong chỉ  với các thao tác lắp đặt được nhà sản xuất hướng dẫn chi tiết, từ đó mà chúng ta dễ dàng thay đổi góc nhìn tạo cảm giác mới lạ cho bộ PC của bạn. Được hoàn thiện trên dây chuyền sản xuất cao cấp, các chi tiết trên Case H5 Elite được tối ưu hóa, loại bỏ những chi tiết thừa đem lại sự thoải mái trong quá trình lắp đặt. \r\n\r\nThiết kế với khung thép chắc chắn, độ bền cao\r\nCase máy tính H5 Elite Black NZXT (CC-H51EB-01) là một vỏ máy tính thế hệ mới, bạn hoàn toàn có thể dễ dàng lắp đặt phụ kiện, mở rộng không gian lưu trữ cũng như điều chỉnh các linh kiện cho dàn máy của mình. Mang vẻ ngoài nhẹ nhàng, thanh lịch nhưng không kém phần lôi cuốn khi H5 Elite Black sở hữu tone màu đen mạnh mẽ, sang trọng, thu hút mọi ánh nhìn.\r\n\r\nĐể tạo nên lòng tin cho người sử dụng, H5 Elite Black được gia công bằng thép SGCC  với trọng lượng chỉ 7,5kg. Ngoài ra, các khay ổ cứng SSD cũng vô cùng dễ dàng trong quá trình bạn tháo lắp. Mặt bên của chiếc case là một tấm kính cường lực, nhờ thế mà các thiết bị được gắn bên trong trông sẽ rực rỡ hơn bao giờ hết khi có đèn LED, tạo nên cho bạn một hệ thống PC vừa sang vừa xịn.\r\n\r\nTin Học Ngôi Sao - cửa hàng tin cậy để mua sản phẩm\r\nĐể không gặp phải sản phẩm kém chất lượng, hay gặp lỗi trong quá trình sử dụng thì bạn nên cân nhắc kỹ, tìm hiểu cho mình địa chỉ uy tín để mua sản phẩm. Tin Học Ngôi Sao - địa điểm cung cấp sản phẩm với đầy đủ các mẫu mã trên thị trường cùng đội ngũ nhân viên tư vấn nhiệt tình, hướng dẫn tỉ mỉ, chi tiết giúp bạn nhanh chóng tìm được sản phẩm phù hợp với nhu cầu. Tại đây, bạn sẽ không cần phải lo về giá bởi giá thành mà cửa hàng đưa ra luôn đảm bảo cạnh tranh nhất thị trường. Hơn nữa, đội ngũ sẽ xử lý tất cả mọi sự cố khi gặp lỗi ở sản phẩm trong thời gian nhanh nhất với nhân viên kỹ thuật được đào tạo, có chuyên môn cao. Nhờ vậy, bạn sẽ tiết kiệm được thời gian, không phải  chờ đợi như nhiều nơi bán khác vì phải qua nhiều khâu trung gian. \r\n\r\nHãy ghé thăm những cửa hàng của Tin Học Ngôi Sao thích hợp với bạn để mua sản phẩm hoặc có thể liên hệ theo số hotline 1900 0243 hay website tinhocngoisao.com để được tư vấn chi tiết.\r\n\r\nKết luận\r\nCase H5 Elite Black NZXT (CC-H51EB-01) đem đến kỷ nguyên mới cho ngành điện tử với một loạt những cải tiến đổi mới đầy ấn tượng đến từ hệ thống quạt cải tiến, thiết kế theo phong cách cao cấp hay hệ thống làm mát  độc đáo. Tất cả các tính năng hiện đại này đều nhằm mục đích cung cấp sức mạnh để trợ lực cho mọi cuộc chiến Gaming của bạn.', 4, '2025-01-20 15:17:45', '2025-01-20 15:17:45'),
(12, 'Nguồn Cooler Master Elite NEX 800 230V Peak', 'Nguồn-Cooler-Master-Elite-NEX-800-230V-Peak.jpg', '[\"Nguồn-Cooler-Master-Elite-NEX-800-230V-Peak1.jpg\", \"Nguồn-Cooler-Master-Elite-NEX-800-230V-Peak2.jpg\", \"Nguồn-Cooler-Master-Elite-NEX-800-230V-Peak3.jpg\"]', '1149000', NULL, 4, '⚙ THÔNG SỐ CƠ BẢN:\r\n- Active PFC và thiết kế cấu trúc liên kết chuyển tiếp kép\r\n- Khả năng chịu nhiệt độ tuyệt vời\r\n- Khả năng chịu công suất cực đại cao\r\n- Độ bền, độ tin cậy và an toàn\r\n- Hiệu suất 75%', '- Model: MPW-8001-ACBK-P\r\n- Phiên bản ATX: ATX 12V Ver. 2.41\r\n- PFC: Active PFC\r\n- Điện áp đầu vào: 200-240V\r\n- Dòng điện đầu vào: 5A\r\n- Tần số đầu vào: 50-60Hz\r\n- Kích thước (D x R x C): 140 x 150 x 86 mm\r\n- Kích thước quạt: 120mm\r\n- Vòng bi quạt: Sleeve Fan\r\n- Chuẩn: ≥ 75% @ Typical Load\r\n- ErP 2014 Lot 3: Yes\r\n- Nhiệt độ hoạt động: 0-40°C\r\n- Tín hiệu tốt: 100 - 500 ms\r\n- Thời gian chờ: ≥10ms at 100% load\r\n- MTBF: >100,000 Hours\r\n- Bảo vệ: OVP, OPP, SCP, UVP, OTP, Inrush Protection\r\n- Quy định: TUV, CE, CCC, EAC, UKCA\r\n- Đầu kết nối ATX 24 Pin: 1\r\n- Đầu nối 4 + 4 pin EPS: 1\r\n- Đầu nối 8 pin EPS: 1\r\n- Kết nối SATA: 5\r\n- Đầu nối 4 Pin ngoại vi: 3\r\n- Đầu kết nối PCI-e 6+2 Pin: 2\r\n- Series: Elite Series\r\n- 80 Plus: None 80 PLUS\r\n- Modular:Non Modular\r\n- Wattage: Trên 750W', 4, '2025-01-20 15:17:45', '2025-01-20 15:17:45'),
(13, 'Tản nhiệt nước LeoPard TK1 - Đen | 240mm, RGB Fixed', 'Tản-nhiệt-nước-LeoPard-TK1-Đen-240mm-RGB-Fixed.jpg', '[\"Tản-nhiệt-nước-LeoPard-TK1-Đen-240mm-RGB-Fixed1.jpg\", \"Tản-nhiệt-nước-LeoPard-TK1-Đen-240mm-RGB-Fixed2.jpg\"]', '679000', NULL, 1, '⚙ THÔNG SỐ CƠ BẢN:\r\n- Phiên bản màu: Phiên bản màu đen\r\n- Điện áp (V): 12VV\r\n- Hiện tại (A): 0,19A\r\n- Tốc độ (RPM): 1700±200RPM\r\n- Thể tích không khí (CFM): 58,29CFM\r\n- Áp lực gió (mm-H2O): 1.08mm-H2O\r\n- Độ ồn (dB(A)): 37dB(A)\r\n- Nhiệt điện (W): 220W', 'Kích thước radiator: 240mm, phù hợp với nhiều kích thước case phổ biến hiện nay, cung cấp bề mặt làm mát lớn và hiệu quả.\r\nChất liệu radiator: Nhôm cao cấp, giúp tản nhiệt nhanh và duy trì nhiệt độ ổn định.\r\nBơm: Tích hợp máy bơm hiệu suất cao, vận hành êm ái, đảm bảo tuần hoàn chất lỏng hiệu quả.\r\nQuạt làm mát:\r\nSố lượng: 2 quạt 120mm.\r\nTốc độ quạt: 800-2000 RPM (vòng/phút).\r\nĐộ ồn: Thấp, không gây khó chịu trong quá trình sử dụng.\r\nĐèn LED RGB Fixed: Tích hợp RGB cố định trên quạt và block CPU, mang đến hiệu ứng ánh sáng bắt mắt và tăng tính thẩm mỹ cho hệ thống.\r\nKhả năng tương thích: Hỗ trợ đa dạng socket CPU từ Intel và AMD, bao gồm:\r\nIntel: LGA 115X, 1200, 1700, 2011, 2066.\r\nAMD: AM4, AM5, FM2+, FM2.\r\nHiệu suất làm mát: Đáp ứng tốt các CPU hiệu suất cao, phù hợp cho việc chơi game, ép xung, hoặc làm việc với các ứng dụng nặng.\r\nThiết kế màu sắc: Toàn bộ tản nhiệt có tông màu đen mạnh mẽ, dễ dàng phối hợp với các linh kiện khác trong dàn PC.\r\nDễ dàng lắp đặt: Hỗ trợ thiết kế plug-and-play, giúp người dùng nhanh chóng cài đặt mà không cần nhiều công cụ phức tạp.\r\nỨng dụng:\r\nTản nhiệt nước LeoPard TK1 - Đen | 240mm, RGB Fixed là lựa chọn lý tưởng cho game thủ, nhà sáng tạo nội dung, và những người muốn giữ CPU ở nhiệt độ thấp trong các tác vụ nặng mà vẫn mang đến sự nổi bật về phong cách nhờ dàn LED RGB bắt mắt.', 4, '2025-01-20 15:21:30', '2025-01-20 15:21:30'),
(16, 'Laptop Lenovo LOQ 15ARP9 83JC0001US', 'Laptop-Lenovo-LOQ-15ARP9-83JC0001US.jpg', '[\"Laptop-Lenovo-LOQ-15ARP9-83JC0001US1.jpg\", \"Laptop-Lenovo-LOQ-15ARP9-83JC0001US2.jpg\", \"Laptop-Lenovo-LOQ-15ARP9-83JC0001US3.jpg\", \"Laptop-Lenovo-LOQ-15ARP9-83JC0001US4.jpg\", \"Laptop-Lenovo-LOQ-15ARP9-83JC0001US5.jpg\", \"Laptop-Lenovo-LOQ-15ARP9-83JC0001US6.jpg\", \"Laptop-Lenovo-LOQ-15ARP9-83JC0001US7.jpg\", \"Laptop-Lenovo-LOQ-15ARP9-83JC0001US8.jpg\", \"Laptop-Lenovo-LOQ-15ARP9-83JC0001US9.jpg\"]', '17500000', NULL, 0, 'Bộ vi xử lý: AMD Ryzen™ 5 7235HS, xung nhịp tối đa 4.2GHz\r\nCard đồ họa: NVIDIA® GeForce RTX™ 3050 6GB GDDR6\r\nRAM: 12GB DDR5-4800\r\nỔ cứng: 512GB SSD PCIe 4.0x4 NVMe\r\nMàn hình: 15.6 inch FHD IPS, 144Hz, 100% sRGB', 'Lenovo LOQ 15ARP9 – Laptop Gaming Đa Năng với Hiệu Suất Mạnh Mẽ\r\nBạn đang tìm kiếm một chiếc laptop gaming mạnh mẽ, thiết kế ấn tượng, và giá cả hợp lý? Lenovo LOQ 15ARP9 chính là lựa chọn hoàn hảo dành cho bạn! Tin Học Ngôi Sao tự hào phân phối dòng laptop này với mức giá cực kỳ hấp dẫn và chính sách bảo hành chính hãng lên đến 12 tháng.\r\n\r\nHiệu Suất Đỉnh Cao cho Mọi Tác Vụ\r\nLaptop Lenovo LOQ 15ARP9 được trang bị AMD Ryzen™ 5 7235HS với 4 nhân 8 luồng, xung nhịp tối đa 4.2GHz, mang lại khả năng xử lý mượt mà cho các tựa game và công việc đòi hỏi hiệu suất cao. Kết hợp với card đồ họa NVIDIA® GeForce RTX™ 3050 6GB GDDR6, sản phẩm đảm bảo khả năng chơi game AAA, làm đồ họa và xử lý video một cách trơn tru.\r\n\r\nMàn Hình và Thiết Kế Tối Ưu\r\nVới màn hình 15.6 inch FHD IPS độ sáng 300 nits, tốc độ làm tươi 144Hz và hỗ trợ G-SYNC®, Lenovo LOQ 15ARP9 mang đến trải nghiệm hình ảnh sắc nét, mượt mà, phù hợp cho cả gaming lẫn làm việc sáng tạo. Thiết kế màu Luna Grey sang trọng cùng bàn phím có đèn nền trắng giúp bạn nổi bật trong mọi không gian.\r\n\r\nKết Nối Đầy Đủ, Hoạt Động Linh Hoạt\r\nLaptop được trang bị Wi-Fi 6, Bluetooth 5.2, và các cổng kết nối đa dạng như USB-C, HDMI 2.1 hỗ trợ độ phân giải lên đến 8K/60Hz, đảm bảo khả năng kết nối tối ưu cho các thiết bị ngoại vi.\r\n\r\nTại sao nên mua Lenovo LOQ 15ARP9 tại Tin Học Ngôi Sao?\r\nTin Học Ngôi Sao cam kết mang đến cho bạn sản phẩm chính hãng với mức giá tốt nhất. Chúng tôi còn hỗ trợ chính sách bảo hành uy tín trong 12 tháng và dịch vụ tư vấn chuyên nghiệp, đảm bảo sự hài lòng tối đa.\r\n\r\nHãy liên hệ ngay để sở hữu Lenovo LOQ 15ARP9 và trải nghiệm sức mạnh công nghệ đỉnh cao từ Lenovo!', 7, '2025-01-20 15:33:15', '2025-01-20 15:33:15'),
(17, 'Laptop Gaming ASUS ROG Strix G16 G614JU N3135W', 'Laptop-Gaming-ASUS-ROG-Strix-G16-G614JU-N3135W.jpg', '[\"Laptop-Gaming-ASUS-ROG-Strix-G16-G614JU-N3135W1.jpg\", \"Laptop-Gaming-ASUS-ROG-Strix-G16-G614JU-N3135W2.jpg\", \"Laptop-Gaming-ASUS-ROG-Strix-G16-G614JU-N3135W3.jpg\"]', '27890000', NULL, 1, 'CPU	Intel® Core™ i5-13450HX Processor 2.4 GHz (20M  Cache, up to 4.6 GHz, 10 cores: 6 P-cores and 4 E-cores)\r\nRAM	8GB (1x8GB) DDR5 4800MHz\r\nCard đồ họa	NVIDIA® GeForce RTX™ 4050 Laptop GPU 6GB GDDR6,MUX Switch + Optimus, ROG Boost: 2420MHz* at 140W ', 'Tăng lực cho cuộc chơi của bạn\r\nSáng tạo nội dung và chiến thắng mọi tựa game với ROG Strix G16 hoàn toàn mới sử dụng Windows 11 Home. Được trang bị CPU lên đến  Intel® Core™ i5-13450HX Processor thế hệ 13 và GPU NVIDIA GeForce RTX 4050. Nhờ tích hợp MUX Switch và NVIDIA Advanced Optimus, ROG Strix G16 cho phép phát huy tối đa tiềm năng phần cứng mà không cần hi sinh thời lượng pin. Với SSD PCIe Gen4x4 thế hệ mới và RAM  lên đến 32GB DDR5 4800MHz, ROG Strix G16 đủ khả năng xử lý nhé nhàng thư viện game khủng cùng các tác vụ đa nhiệm cường độ cao.\r\n\r\n\r\n\r\nRAM DDR5 tốc độ cao\r\nRAM DDR5 thế hệ mới với xung nhịp 4800Mhz cho tốc độ xử lý nhanh hơn 50% so với RAM DDR4. Bộ nhớ RAM siêu nhanh này giúp tăng tốc độ xử lý mọi tác vụ từ gaming cường độ cao tới duyệt web và giải trí.\r\n\r\nTốt hơn. Nhanh hơn. Mạnh mẽ hơn.\r\nTự tin chinh phục những dự án khủng nhất nhờ ổ SSD PCIE Gen4. Với tốc độ lý thuyết lên tới 7000MB/s, các tệp dữ liệu lớn và tựa game thế giới mở sẽ được xử lý trong nháy mắt.\r\n\r\n\r\n\r\nGame. Stream. Create.\r\nDòng sản phẩm ROG Strix G Series được thiết kế dành cho game thủ và các nhà phát triển game. Chính vì vậy ROG Strix G16 có thể xử lý mượt mà những phần mềm phát triển game mới nhất, cho phép bạn phát huy tối đa sức sáng tạo của mình. Cho dù bạn là một nhà sáng tạo nội dung kỹ thuật số, streamer, chuyên gia biên tập video hay nhà làm game và hoạt họa, ROG Strix G16 sẽ giúp bạn nâng tầm tác phẩm sáng tạo của mình. Được trang bị CPU Intel® Core™ i5 và GPU NVIDIA® GeForce RTX™ 40 Series, cỗ máy này có thể xử lý những dự án phức tạp trên các công cụ phát triển phổ biến như Unity và Autodesk một cách nhanh chóng.\r\n\r\n\r\n\r\nLàm mát ấn tượng\r\nĐể phù hợp với các linh kiện phần cứng tối tân nhất, khung máy và bo mạch chủ của ROG Strix G16 đã được thiết kế lại để phù hợp với hệ thống khe thoát nhiệt bao quanh thân máy giúp tăng hiệu quả làm mát. Ngoài ra còn có hệ thống lá tản nhiệt dày đặc bao quanh bo mạch chủ, với tổng diện tích bề mặt lên đến 174.183mm², tăng 71% so với ROG Strix G15 2022. Thiết kế này giúp tối ưu hoá đường thoát nhiệt từ các linh kiện bên trong.\r\n\r\n\r\n\r\nNếu các dòng laptop gaming thông thường chỉ sở hữu 2 quạt tản nhiệt, thì ROG Strix G16 được trang bị công nghệ tản nhiệt 3 quạt giúp giữ cho GPU và VRAM luôn mát mẻ. Kết hợp với 7 ống đồng dẫn nhiệt và Keo tản nhiệt Kim loại lỏng Conductonaut Extreme trên cả CPU và GPU*, hệ thống tản nhiệt của ROG Strix G16 thực sự là một tuyệt tác về mặt kỹ thuật.\r\n\r\n*Keo tản nhiệt kim loại lỏng Conductonaut Extreme chỉ có mặt trên GPU RTX™ 4080\r\n\r\nMàn hình chuẩn ROG Nebula\r\nROG Strix G16 sở hữu màn hình 16:10 đạt chuẩn ROG Nebula, với độ phân giải lên đến 2K 240Hz/3ms hoặc Full HD 165Hz siêu nhanh, độ sáng tối đa 500 nits, độ phủ màu 100% DCI-P3, hỗ trợ Dolby Vision, Adaptive-Sync và tỷ lệ màn hình trên thân máy đến 90% cho trải nghiệm giải trí và gaming xuất sắc.\r\n\r\n\r\n\r\nThiết kế cho game thủ. Chinh phục đỉnh vinh quang.\r\nRepublic of Gamers là tập hợp những người yêu thích chơi video game. Mọi thiết kế của ROG đều lấy game thủ làm trung tâm, từ bộ khung, hệ thống LED RGB, phần mềm điều khiển và các chức năng macro. Mọi tính năng thiết kế độc quyền của ROG không chỉ đem lại cho bạn lợi thế cạnh tranh mà còn đảm bảo bạn luôn nổi bật giữa đám đông.\r\n\r\n\r\n\r\nArmoury Crate\r\nKhi bạn muốn điều chỉnh các cài đặt, theo dõi nhiệt độ hoặc ép xung laptop gaming của mình, Armoury Crate chính là trung tâm chỉ huy của bạn. Chức năng giám sát theo thời gian thực cho phép bạn theo dõi GPU, CPU và bộ nhớ của mình đang hoạt động ra sao. RGB có thể điều chỉnh theo từng game nhờ Aura Sync. Không chỉ giúp bạn tuỳ chỉnh linh hoạt các chế độ quạt, hệ thống tản nhiệt và âm thanh, bạn còn được nhận các ưu đãi game độc quyền giúp thư viện game của bạn luôn thật phong phú.\r\n\r\n\r\n\r\nBÀN PHÍM CHUẨN GAMING\r\nSự khác biệt giữa chiến thắng và thất bại đôi khi chỉ bằng một lần bấm phím, vì vậy ROG Strix G16 được trang bị bàn phím đẳng cấp eSports chuyên nghiệp với thiết kế giúp bạn giành chiến thắng. Bàn phím của ROG Strix G16 có độ bền cực cao lên đến 20 triệu lượt nhấn, đi kèm công nghệ N-key rollover giúp đảm bảo hệ thống sẽ nhận mọi câu lệnh của bạn kể cả khi bấm nhiều phím cùng lúc. ROG Strix G16 có bàn phím kích thước đầy đủ, với các phím đa phương tiện cùng dãy phím nóng chuyên dụng nằm riêng, giúp mở nhanh Armoury Crate và tăng giảm âm lượng, hoặc tùy chỉnh cho các chức năng hoặc lệnh macro khác.\r\n\r\n\r\n\r\nẤn tượng ở mọi góc nhìn\r\nTừng chi tiết được chăm chút kỹ lưỡng khiến ROG Strix G16 trở nên nổi bật hơn so với các đối thủ cạnh tranh. Triết lý thiết kế 360° của ROG mang những yếu tố tinh tế nhưng khác biệt lên từng chi tiết của máy. Thiết kế ma trận dấu chấm theo đường cắt dọc nắp máy khớp với các lỗ thông khí chạy ngang bên dưới mặt đế. Đường rãnh bọc cao su kéo dài giúp cố định máy chắc chắn và dễ cầm nắm hơn khi di chuyển.\r\n\r\nĐiểm nhấn táo bạo\r\nKhông chỉ vậy, ROG Strix G16 còn có họa tiết vệt sơn bắn trên các khe thoát nhiệt phía sau, lấy cảm hứng từ nghệ thuật graffiti và phong cách khoa học viễn tưởng.\r\n\r\nSắc sảo và tinh tế\r\nHọa tiết trang trí của ROG Strix G16 2023 được thiết kế lại thanh thoát hơn, sắc sảo hơn nhưng vẫn không kém phần nổi bật.\r\n\r\n\r\n\r\nÂm thanh chất lượng chuẩn Studio\r\nHệ thống loa kép hỗ trợ Dolby Atmos giúp tạo ra âm thanh chân thực nhất khi chơi game và giải trí. Âm thanh độ phân giải cao giúp bạn tận hưởng âm nhạc với chất lượng tương đương bản thu gốc. Công nghệ khử tiếng ồn AI hai chiều xử lý cả âm thanh đầu vào và đầu ra để lọc mọi tiếng ồn môi trường, giúp cuộc gọi, trò chuyện và phát trực tiếp được thông suốt mà không gây xao nhãng.\r\n\r\n\r\n\r\nHoạt động bền bỉ suốt ngày dài\r\nROG Strix G16 sẵn sàng cho mọi hành trình của bạn. Nhờ được trang bị pin 90Wh, chiếc máy này có thể phát video liên tục nhiều giờ mà không cần sạc. Để sử dụng linh hoạt hơn trong khi di chuyển, máy còn hỗ trợ sạc lên đến 100W qua cổng USB Type-C. Khi sạc bằng bộ nguồn 330W đi kèm, ROG Strix G16 có thể sạc từ 0% lên 50% chỉ trong 30 phút.\r\n\r\n\r\n\r\nKết nối nhanh và ổn định\r\nTrong các tựa game nhiều người chơi hiện đại, kết nối internet ổn định là điều bắt buộc. Strix G16 luôn sẵn sàng tham chiến với cổng RJ45 LAN lên đến 2.5G, cũng như chuẩn không dây Wi-Fi 6E mới nhất. Trên các mạng hỗ trợ Wi-Fi 6E, hãy tận hưởng kết nối băng thông không dây mới nhất, không còn phải lo mạng bị nghẽn bởi quá nhiều thiết bị không dây tại nhà cùng truy cập, đảm bảo không bị lag.\r\n\r\n\r\n\r\nCỔNG KẾT NỐI ĐA DẠNG\r\nGPU rời với chuẩn HDMI 2.1 sẽ giúp bạn kết nối dễ dàng với TV và màn hình lớn mới nhất, hỗ trợ độ phân giải lên đến 4K 120Hz và 8K 60Hz nhờ băng thông tăng từ 18 lên 48Gbps. Hai cổng USB Type-C hỗ trợ đa dạng các loại kết nối từ DisplayPort, Thunderbolt 4 và sạc nhanh Power Delivery.\r\n\r\n', 7, '2025-01-20 15:33:15', '2025-01-20 15:33:15'),
(18, 'Laptop Gaming MSI Katana 15 B13VFK 676VN', 'Laptop-Gaming-MSI-Katana-15-B13VFK-676VN.jpg', '[\"Laptop-Gaming-MSI-Katana-15-B13VFK-676VN1.jpg\", \"Laptop-Gaming-MSI-Katana-15-B13VFK-676VN2.jpg\", \"Laptop-Gaming-MSI-Katana-15-B13VFK-676VN3.jpg\", \"Laptop-Gaming-MSI-Katana-15-B13VFK-676VN4.jpg\"]', '26590000', NULL, 12, 'Hãng sản xuất	MSI\r\nCPU	Intel Core i7-13620H (3.6GHz~4.9GHz) 10 Cores 16 Threads\r\nRAM	16GB (2 x 8GB) DDR5 5200MHz (2x SO-DIMM socket, up to 64GB SDRAM)\r\nỔ cứng	1TB NVMe PCIe Gen 4 SSD (2 slots, Nâng cấp cần gắn thêm linh kiện tại TTBH MSI)', 'Đặc điểm nổi bật:\r\n\r\nHiệu năng mạnh mẽ, sẵn sàng chinh phục mọi tựa game AAA\r\nMàn hình 144Hz, tốc độ phản hồi nhanh, hình ảnh mượt mà\r\nThiết kế gọn nhẹ, di động linh hoạt\r\nHệ thống tản nhiệt hiệu quả, giữ cho máy luôn mát mẻ\r\nLaptop Gaming MSI Katana 15 B13VFK 676VN: Trải nghiệm đỉnh cao hiệu năng, thiết kế tối ưu cho game thủ\r\nLaptop Gaming MSI Katana 15 B13VFK 676VN là chiếc laptop gaming mạnh mẽ, được thiết kế để mang đến trải nghiệm chơi game đỉnh cao. Với bộ vi xử lý Intel Core i7-13620H thế hệ 13 mới nhất, card đồ họa NVIDIA GeForce RTX 4060, RAM 16GB DDR5 5200MHz và màn hình 144Hz, Laptop Gaming MSI Katana 15 B13VFK 676VN cho phép người dùng chiến game mượt mà ở mức setting cao, đồng thời xử lý đa nhiệm một cách hiệu quả. Thiết kế gọn nhẹ, di động linh hoạt giúp bạn dễ dàng mang máy đi bất cứ đâu.\r\n\r\nLaptop Gaming MSI Katana 15 B13VFK 676VN\r\n\r\nHiệu năng mạnh mẽ, cân mọi loại game\r\nBộ vi xử lý mạnh mẽ, card đồ họa tiên tiến: Laptop Gaming MSI Katana 15 B13VFK 676VN được trang bị bộ vi xử lý Intel Core i7-13620H thế hệ 13 mới nhất, sở hữu 10 nhân, 16 luồng, tốc độ xung nhịp tối đa lên đến 4.9GHz, cùng card đồ họa NVIDIA GeForce RTX 4060 với 8GB GDDR6, cho hiệu năng cực kỳ mạnh mẽ. Với cấu hình này, bạn hoàn toàn có thể chiến game AAA ở mức setting cao nhất, thậm chí là chơi đa nhiệm các ứng dụng nặng mà không gặp bất kỳ khó khăn nào.\r\n\r\nLaptop Gaming MSI Katana 15 B13VFK 676VN hiệu năng cao\r\n\r\nRAM DDR5 tốc độ cao: Với 16GB RAM DDR5 5200MHz, Laptop Gaming MSI Katana 15 B13VFK 676VN mang đến khả năng xử lý đa nhiệm mượt mà, ứng dụng mở nhanh, không bị giật lag, đồng thời hỗ trợ tốt cho các game đòi hỏi dung lượng RAM lớn.\r\n\r\nỔ cứng NVMe PCIe Gen 4 tốc độ cao: Ổ cứng NVMe PCIe Gen 4 1TB giúp máy khởi động và tải game cực kỳ nhanh chóng, mang đến trải nghiệm chơi game liền mạch, không giật lag. Với khả năng nâng cấp ổ cứng, người dùng có thể dễ dàng mở rộng dung lượng lưu trữ.\r\n\r\nMàn hình siêu mượt, hỗ trợ tối đa cho game thủ\r\nMàn hình 144Hz, tốc độ phản hồi nhanh: Laptop Gaming MSI Katana 15 B13VFK 676VN được trang bị màn hình 15.6 inch Full HD (1920 x 1080) với tốc độ làm tươi 144Hz, giúp hình ảnh hiển thị mượt mà, không bị hiện tượng xé hình, cho trải nghiệm chơi game cực kỳ đã mắt. Tốc độ phản hồi nhanh giúp game thủ phản ứng nhanh chóng trong các tình huống chiến đấu căng thẳng.\r\n\r\nLaptop Gaming MSI Katana 15 B13VFK 676VN màn hình sắc nét\r\n\r\nCông nghệ IPS-Level, màu sắc sống động: Công nghệ IPS-Level mang đến góc nhìn rộng, màu sắc chân thực và độ tương phản cao, giúp bạn tận hưởng hình ảnh đẹp mắt ở mọi góc nhìn. Với gam màu NTSC 45%, hình ảnh hiển thị trên màn hình Katana 15 B13VFK 676VN rất sống động, giúp bạn chìm đắm trong thế giới game tuyệt đẹp.\r\n\r\nThiết kế tinh tế\r\nKiểu dáng hiện đại, chất liệu cao cấp: Laptop Gaming MSI Katana 15 B13VFK 676VN sở hữu thiết kế hiện đại, với lớp vỏ kim loại chắc chắn và bền bỉ, mang đến vẻ ngoài sang trọng và ấn tượng. Các đường nét được thiết kế tinh tế, tạo cảm giác gọn gàng và chuyên nghiệp.\r\n\r\nGọn nhẹ, di động linh hoạt: Với trọng lượng chỉ 2.2kg, Katana 15 B13VFK 676VN khá gọn nhẹ, dễ dàng mang theo bên mình khi di chuyển. Thiết kế mỏng gọn, vừa vặn với balo laptop, thuận tiện cho người dùng mang máy đến bất cứ đâu để trải nghiệm chơi game.\r\n\r\nLaptop Gaming MSI Katana 15 B13VFK 676VN thiết kế tinh tế\r\n\r\nBàn phím, touchpad tiện lợi: Bàn phím 4-Zone RGB Gaming Keyboard với đèn nền RGB đẹp mắt, cho trải nghiệm gõ phím chính xác, êm ái và phản hồi nhanh. Touchpad nhạy bén, di chuyển mượt mà, đáp ứng tốt nhu cầu sử dụng hàng ngày.\r\n\r\nKết nối đa dạng, phù hợp mọi nhu cầu\r\nCác cổng kết nối đa dạng: Laptop Gaming MSI Katana 15 B13VFK 676VN được trang bị đầy đủ các cổng kết nối cần thiết, bao gồm 1 cổng Type-C (USB3.2 Gen1 / DP), 2 cổng Type-A USB3.2 Gen1, 1 cổng Type-A USB2.0, 1 cổng HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz), 1 cổng RJ45, cho phép bạn kết nối với nhiều thiết bị ngoại vi khác nhau.\r\n\r\nKết nối Wi-Fi 6 và Bluetooth 5.2: Hỗ trợ kết nối Wi-Fi 6 tốc độ cao, mang đến trải nghiệm kết nối mạng mượt mà, ổn định, phù hợp với nhu cầu chơi game trực tuyến. Công nghệ Bluetooth 5.2 cho phép kết nối với các thiết bị ngoại vi không dây một cách nhanh chóng và ổn định.\r\n\r\nCác tính năng mở rộng khác\r\nHệ thống tản nhiệt hiệu quả: Laptop Gaming MSI Katana 15 B13VFK 676VN được trang bị hệ thống tản nhiệt hiệu quả, giúp máy hoạt động mát mẻ, ổn định trong thời gian dài, ngay cả khi chơi game ở mức setting cao nhất.\r\n\r\nLaptop Gaming MSI Katana 15 B13VFK 676VN kết nối đa dạng\r\n\r\nNahimic Audio: Công nghệ âm thanh Nahimic Audio mang đến trải nghiệm âm thanh sống động, chân thực, giúp bạn đắm chìm trong thế giới game.\r\n\r\nLaptop Gaming MSI Katana 15 B13VFK 676VN là chiếc laptop gaming mạnh mẽ, được trang bị cấu hình khủng, thiết kế hiện đại, gọn nhẹ, di động linh hoạt. Với hiệu năng mạnh mẽ, màn hình 144Hz mượt mà, hệ thống tản nhiệt hiệu quả và nhiều tính năng tiện lợi, Katana 15 B13VFK 676VN là sự lựa chọn hoàn hảo cho các game thủ đang tìm kiếm một chiếc laptop gaming chất lượng cao, đáp ứng mọi nhu cầu chơi game và sử dụng hàng ngày.', 7, '2025-01-20 15:40:04', '2025-01-20 15:40:04'),
(19, 'Laptop Gaming GIGABYTE Aorus 15 9MF E2VN583SH', 'Laptop-Gaming-GIGABYTE-Aorus-15-9MF-E2VN583SH.jpg', '[\"Laptop-Gaming-GIGABYTE-Aorus-15-9MF-E2VN583SH1.jpg\", \"Laptop-Gaming-GIGABYTE-Aorus-15-9MF-E2VN583SH2.jpg\", \"Laptop-Gaming-GIGABYTE-Aorus-15-9MF-E2VN583SH3.jpg\", \"Laptop-Gaming-GIGABYTE-Aorus-15-9MF-E2VN583SH4.jpg\"]', '25900000', NULL, 12, '⚙ THÔNG SỐ CƠ BẢN:\r\nCPU: i5-12500H\r\nRam: 8GB (1x8GB) DDR5 \r\nỔ cứng: 512GB SSD M.2 2280 PCIe NVMe Gen4 x4\r\nMàn hình: 15.6 inch Thin Bezel FHD (1920x1080) IPS 360Hz, 100% sRGB\r\nCard đồ họa: NVIDIA GeForce RTX 4050 GPU 6GB GDDR6 + Intel Iris Xe Graphics', 'CPU	\r\nIntel Core i5-12500H (18MB Intel Smart Cache, Turbo Boost 4.5GHz)\r\n\r\nRAM	\r\n8GB (1x8GB) DDR5 4800Mhz (2x khe ram nâng cấp tối đa 64GB RAM)\r\n\r\nỔ cứng	\r\n512GB SSD M.2 PCIE G4X4 (2 khe M.2, Còn trống 1 khe SSD M.2 PCIE G4x4)\r\n\r\nCard đồ họa	\r\nNVIDIA GeForce RTX 4050 GPU 6GB GDDR6 + Intel Iris Xe Graphics\r\n\r\nMàn hình	\r\n15.6 inch Thin Bezel FHD (1920x1080) IPS 360Hz, 100% sRGB\r\n\r\nCổng giao tiếp	\r\n1 x USB 3.2 Gen2 Type-C\r\n1 x USB 3.2 Gen1 Type-A\r\n2 x USB 3.2 Gen2 Type-A\r\n1 x Thunderbolt™ 4\r\n1 x HDMI 2.1\r\n1 x MiniDP 1.4\r\n1 x 3.5mm Headphone /Microphone\r\n1 x DC-in Jack\r\n1 x RJ-45\r\n\r\nBàn phím	3-Zone RGB Keyboard\r\nChuẩn LAN	\r\nRealtek RTL8125BG-CG (2.5G)\r\n\r\nChuẩn WIFI	\r\nWi-Fi 6E (802.11ax) (Triple band) 2x2\r\n\r\nBluetooth	Bluetooth V5.2\r\nĐầu đọc thẻ	Có\r\nWebcam	HD 720p\r\nÂm thanh	\r\n2 x Loa 2W , Microphone , Nahimic 3\r\n\r\nHệ điều hành	Windows 11 Home\r\nPin	Li Polymer 99Whr, Pin liền\r\nTrọng lượng	2.25 kg\r\nMàu sắc	Đen\r\nKích thước	\r\n360(W) x 272(D) x 20.9(H)mm', 7, '2025-01-20 15:40:04', '2025-01-20 15:40:04'),
(22, 'Laptop Acer Nitro V 15 ANV15 51 58AN', 'Laptop-Acer-Nitro-V-15-ANV15-51-58AN.jpg', '[\"Laptop-Acer-Nitro-V-15-ANV15-51-58AN1.jpg\", \"Laptop-Acer-Nitro-V-15-ANV15-51-58AN2.jpg\", \"Laptop-Acer-Nitro-V-15-ANV15-51-58AN3.jpg\", \"Laptop-Acer-Nitro-V-15-ANV15-51-58AN4.jpg\"]', '15790000', NULL, 0, 'CPU: i5-13420H\r\nRam: 8GB\r\nỔ cứng: 512GB\r\nMàn hình: 15.6\" Full HD 144Hz \r\nCard đồ họa: GeForce RTX™ 2050', 'Hệ điều hành: Windows 11 Home Single Language\r\n\r\nBộ xử lý:\r\n\r\nNhà sản xuất: Intel®\r\nModel: i5-13420H\r\nLoại: Core™ i5\r\nTốc độ: 2.10GHz\r\nLõi: Lõi Bát (8 Lõi)\r\nThế hệ: Thế Hệ 13\r\nĐồ họa:\r\n\r\nNhà sản xuất trình điều khiển đồ họa: NVIDIA®\r\nModel trình điều khiển đồ họa: GeForce RTX™ 2050\r\nDung lượng bộ nhớ đồ họa: 4GB\r\nCông nghệ bộ nhớ đồ họa: GDDR6\r\nKhả năng truy cập bộ nhớ đồ họa: Dành riêng\r\nĐồng hồ tăng cường GPU: Lên đến 1695MHz\r\nCông suất đồ họa tối đa: Lên đến 60W\r\nMàn hình:\r\n\r\nKích thước: 39.6cm (15.6\")\r\nLoại màn hình hiển thị: LCD\r\nCông nghệ màn hình hiển thị: ComfyView (Mờ), IPS\r\nMàn hình cảm ứng: Không\r\nĐộ phân giải màn hình: 1920 x 1080\r\nTốc độ làm mới tiêu chuẩn: 144Hz\r\nTính năng hiển thị: Gam màu 45% NTSC\r\nTỷ lệ khung hình: 16:9\r\nBộ nhớ:\r\n\r\nTổng bộ nhớ hệ thống đã cài đặt: 8GB\r\nCông nghệ bộ nhớ hệ thống: DDR5 SDRAM\r\nLưu trữ:\r\n\r\nTổng dung lượng ổ đĩa thể rắn: 512GB\r\nCổng giao tiếp ổ đĩa thể rắn: PCIe NVMe\r\nDạng thức SSD: M.2\r\nMạng & Truyền thông:\r\n\r\nChuẩn mạng cục bộ không dây: IEEE 802.11ax\r\nCông nghệ Ethernet: Ethernet Gigabit\r\nChuẩn Bluetooth: Bluetooth 5.1 trở lên\r\nThiết bị được gắn sẵn:\r\n\r\nMicro: Có\r\nĐầu đọc dấu vân tay: Không\r\nSố loa: 2\r\nGiao tiếp/Cổng:\r\n\r\nHDMI: Có\r\nSố ngõ ra HDMI: 1\r\nSố lượng cổng USB 3.2 Thế Hệ 1 Loại A: 3\r\nSố lượng cổng USB 3.2 Thế Hệ 2 Loại C: 1\r\nTổng số cổng USB: 4\r\nMạng (RJ-45): Có\r\nThiết bị đầu vào:\r\n\r\nLoại thiết bị trỏ: Mặt di chuyển con trỏ cảm ứng\r\nBàn phím: Có\r\nĐèn nền bàn phím: Có\r\nTính năng bàn di: Chứng nhận bàn di chuột chính xác của Microsoft\r\nTính năng bàn phím: Đèn nền trắng, NitroSense, Phím Caps Lock, Đèn báo tắt tiếng\r\nPin:\r\n\r\nThông tin hóa học của pin: Polymer Lithium (Li-Polymer)\r\nThời gian hoạt động tối đa của pin: 8 Giờ\r\nNăng lượng pin: 57Wh\r\nMô tả nguồn:\r\n\r\nCông suất bộ nguồn tối đa: 135W\r\nĐặc điểm vật lý:\r\n\r\nChiều cao: 23.50mm\r\nChiều rộng: 362.3mm\r\nBề dày: 239.9mm\r\nTrọng lượng (Xấp xỉ): 2.11kg\r\nMàu sắc sản phẩm: Đen\r\nThông tin khác:\r\n\r\nNội dung gói:\r\nNitro V 15 ANV15-51-58AN Máy tính xách tay chơi game\r\nPin Lithium Polymer\r\nBộ sạc nguồn máy tính xách tay dòng điện xoay chiều\r\nDây nguồn\r\nLưu ý:\r\n\r\nThông tin này có thể thay đổi mà không cần thông báo trước.\r\nVui lòng kiểm tra trang web của Acer để biết thông tin cập nhật nhất.', 7, '2025-01-20 18:19:26', '2025-01-20 18:19:26'),
(23, 'Laptop Gaming Acer Nitro 5 AN515 58 773Y NH.QFKSV.001.16G', 'Laptop-Gaming-Acer-Nitro-5-AN515-58-773Y-NH-QFKSV-001-16G.jpg', '[\"Laptop-Gaming-Acer-Nitro-5-AN515-58-773Y-NH-QFKSV-001-16G1.jpg\", \"Laptop-Gaming-Acer-Nitro-5-AN515-58-773Y-NH-QFKSV-001-16G2.jpg\", \"Laptop-Gaming-Acer-Nitro-5-AN515-58-773Y-NH-QFKSV-001-16G3.jpg\", \"Laptop-Gaming-Acer-Nitro-5-AN515-58-773Y-NH-QFKSV-001-16G4.jpg\"]', '23490000', NULL, 1, 'CPU: i712700H2.30 GHz\r\nRAM: 16 GBDDR4 2 khe (1 khe 8 GB + 1 khe rời)\r\nỔ cứng: Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng 512 GB SSD NVMe PCIe\r\nMàn hình: 15.6\" Full HD (1920 x 1080) 144Hz\r\nCard màn hình: Card rời RTX 3050Ti 4GB', 'Thông số kỹ thuật\r\nBộ xử lý	 \r\nCông nghệ CPU	\r\nIntel Core i7 Alder Lake - 12700H\r\n\r\nSố nhân	14\r\nSố luồng	20\r\nTốc độ CPU	2.30 GHz\r\nTốc độ tối đa	Turbo Boost 4.7 GHz\r\nBộ nhớ đệm	24 MB\r\nBộ nhớ RAM, Ổ cứng	 \r\nRAM	16 GB\r\nLoại RAM	\r\nDDR4 2 khe (1 khe 8 GB + 1 khe rời)\r\n\r\nTốc độ Bus RAM	3200 MHz\r\nHỗ trợ RAM tối đa	32 GB\r\nỔ cứng	\r\n512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\r\n\r\n 	\r\nHỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 2 TB)\r\n\r\nMàn hình	 \r\nMàn hình	15.6 inch\r\nĐộ phân giải	Full HD (1920 x 1080)\r\nTần số quét	144 Hz\r\nCông nghệ màn hình	\r\nTấm nền IPS, LED Backlit, Acer ComfyView\r\n\r\nĐồ họa và Âm thanh	 \r\nCard màn hình	\r\nCard rời - NVIDIA GeForce RTX 3050Ti, 4 GB\r\n\r\nCông nghệ âm thanh	Acer TrueHarmony, DTS\r\nULTRA\r\nCổng kết nối & tính năng mở rộng	 \r\nCổng giao tiếp	\r\nUSB Type-C, Jack tai nghe 3.5 mm, 3 x USB 3.2, HDMI, 1 x USB Type-C (hỗ trợ cổng Thunderbolt 4), LAN (RJ45)\r\n\r\nKết nối không dây	\r\nWi-Fi 6 (802.11ax), Bluetooth 5.1\r\n\r\nWebcam	HD webcam\r\nTính năng khác	MUX Switch\r\nĐèn bàn phím	\r\nĐèn chuyển màu RGB - 4 vùng\r\n\r\nKích thước & khối lượng	 \r\nKích thước	\r\nDài 360.4 mm - Rộng 271.09 mm - Dày 25.9 mm\r\n\r\nKhối lượng tịnh	2.5 kg\r\nChất liệu	Vỏ nhựa\r\nThông tin khác	 \r\nThông tin Pin	4-cell Li-ion, 57.5 Wh\r\nCông suất bộ sạc	180 W\r\nHệ điều hành	Windows 11 Home SL\r\nThời điểm ra mắt	2022', 7, '2025-01-20 18:19:26', '2025-01-20 18:19:26'),
(24, 'Laptop HP Victus 16 R1173TX (A2NS5PA)', 'Laptop-HP-Victus-16-R1173TX-(A2NS5PA)\r\n.jpg', NULL, '42500000', NULL, 0, 'CPU: Intel® Core™ i7 14650HX, lên đến 5.20 GHz\r\nRAM: 32GB DDR5-5600 (2 khe)\r\nỔ cứng: SSD 1TB PCIe NVMe M.2 Gen4\r\nMàn hình: 16.1 inch FHD IPS 144Hz\r\nCard đồ họa: NVIDIA GeForce RTX 4070 8GB GDDR6\r\nPIN: 4Cell 70WHrs\r\nHệ điều hành: Windows 11 Home', 'Laptop HP Victus 16-R1173TX: Sức mạnh vượt trội cho mọi nhu cầu\r\n\r\nBạn đang tìm kiếm một chiếc laptop đa dụng mạnh mẽ, thiết kế hiện đại, phù hợp cho cả công việc và giải trí? Tin Học Ngôi Sao tự hào giới thiệu Laptop HP Victus 16-R1173TX, được trang bị cấu hình cao cấp, card đồ họa rời mạnh mẽ, và màn hình 16.1 inch sắc nét. Đây là sự lựa chọn hoàn hảo với mức giá vô cùng cạnh tranh chỉ có tại chúng tôi.\r\n\r\nSức mạnh vượt trội từ bộ vi xử lý Intel® Core™ i7\r\nChiếc laptop này được trang bị bộ vi xử lý Intel® Core™ i7 14650HX thế hệ 13 mới nhất, xung nhịp lên tới 5.20 GHz, mang đến hiệu suất xử lý vượt trội. Kết hợp cùng RAM 32GB DDR5-5600, bạn có thể dễ dàng xử lý các tác vụ đa nhiệm, làm việc trên các ứng dụng nặng hoặc chơi game đỉnh cao mà không lo giật lag.\r\n\r\nKhông gian lưu trữ thoải mái với SSD 1TB\r\nVới SSD 1TB PCIe NVMe M.2 Gen4, HP Victus 16-R1173TX cho tốc độ truy xuất dữ liệu siêu nhanh và không gian lưu trữ rộng lớn, giúp bạn lưu trữ thoải mái mọi dữ liệu, ứng dụng và game yêu thích.\r\n\r\nTrải nghiệm hình ảnh mượt mà với màn hình FHD IPS\r\nMàn hình 16.1 inch FHD IPS 144Hz sắc nét, chống chói, độ sáng 300 nits giúp bạn tận hưởng trải nghiệm hình ảnh mượt mà, sống động, dù là làm việc, học tập hay giải trí.\r\n\r\nCard đồ họa NVIDIA RTX 4070: Hiệu năng đồ họa hàng đầu\r\nĐược trang bị NVIDIA GeForce RTX 4070 8GB GDDR6, chiếc laptop này đáp ứng tốt mọi nhu cầu đồ họa từ thiết kế, dựng video, đến chơi các tựa game AAA hiện đại với cài đặt đồ họa cao nhất.\r\n\r\nKết nối đa dạng, tiện lợi\r\nVới các cổng kết nối hiện đại như USB Type-C, HDMI 2.1, và Wi-Fi 6E, bạn có thể dễ dàng kết nối với mọi thiết bị ngoại vi và tận hưởng tốc độ internet nhanh nhất.\r\n\r\nMua Laptop HP Victus 16-R1173TX chính hãng tại Tin Học Ngôi Sao\r\nSản phẩm hiện đang được phân phối chính hãng tại Thế Giới Công Nghệ, kèm theo chính sách bảo hành 12 tháng đáng tin cậy. Đặt hàng ngay hôm nay để nhận mức giá ưu đãi nhất!', 7, '2025-01-20 18:23:13', '2025-01-20 18:23:13'),
(26, 'Laptop Asus TUF Gaming A15 FA507NV LP046W', 'Laptop-Asus-TUF-Gaming-A15-FA507NV-LP046W.jpg', '[\"Laptop-Asus-TUF-Gaming-A15-FA507NV-LP046W1.jpg\", \"Laptop-Asus-TUF-Gaming-A15-FA507NV-LP046W2.jpg\", \"Laptop-Asus-TUF-Gaming-A15-FA507NV-LP046W3.jpg\", \"Laptop-Asus-TUF-Gaming-A15-FA507NV-LP046W4.jpg\"]', '26790000', NULL, 3, 'CPU: Ryzen 7 7735HS (3.2GHz~4.75GHz) 8 Cores 16 Threads\r\nVGA: GeForce RTX 4060 8GB GDDR6 140W TGP\r\nRam: 8GB DDR5 4800MHz\r\nỔ cứng: 512GB SSD M.2 PCIe Gen 4.0\r\nMàn hình: 15.6\" IPS 144Hz FHD 100% sRGB', 'BẢNG THÔNG SỐ CHI TIẾT:\r\n    Nhà sản xuất	    Asus\r\n    Model	    FA507NV-LP046W\r\n    Hệ điều hành	    Windows 11\r\n    CPU	    AMD Ryzen 7 7735HS (3.2GHz~4.75GHz) 8 Cores 16 Threads\r\n    Card VGA	    NVIDIA GeForce RTX 4060 Laptop GPU 8GB GDDR6 140W TGP\r\n    Memory	    8GB DDR5 4800MHz, 2 slot tối đa 32GB\r\n    Ổ cứng	    512GB SSD M.2 PCIe Gen 4.0\r\n    	    \r\n    	    1 x slot SSD M.2 PCIe Gen 4 x4\r\n    Bàn phím	    Backlit 1-Zone RGB Keyboard, TouchPad cảm ứng đa điểm\r\n    Màn hình	    15.6 inch FHD (1920 x 1080), IPS, 144Hz, G-Sync, 100% sRGB, MUX Switch + Optimus\r\n    Lan	    RJ45 LAN\r\n    WLAN	    Intel Wi-Fi 6 (802.11ax) + Bluetooth 5.2\r\n    Màu sắc	    Jaeger Gray\r\n    Cổng kết nối	    2 x USB 3.2 Gen1 Type-A\r\n    	    1 x USB 3.2 gen 1 Type-C hỗ trợ DisplayPort/ G-Sync/ sạc PD\r\n    	    1 x USB-C 4 hỗ trợ DisplayPort™ / G-SYNC\r\n    	    1 x HDMI 2.1 FRL\r\n    	    1 x Audio 3.5mm jack\r\n    	    1 x RJ45\r\n    	    1 x DC-in\r\n    	    \r\n    Webcam	    HD 720P\r\n    Audilo	    Dolby Atmos\r\n    Pin	    90Wh\r\n    Trọng lượng	    2.2 kg\r\n    Kích thước	    354 x 251 x 22.4~24.9 mm', 7, '2025-01-20 18:29:30', '2025-01-20 18:29:30'),
(27, 'Laptop Asus TUF Gaming F15 FX507VV LP157W', 'Laptop-Asus-TUF-Gaming-F15-FX507VV- LP157W.jpg', '[\"Laptop-Asus-TUF-Gaming-F15-FX507VV- LP157W1.jpg\", \"Laptop-Asus-TUF-Gaming-F15-FX507VV- LP157W2.jpg\", \"Laptop-Asus-TUF-Gaming-F15-FX507VV- LP157W3.jpg\"]', '31890000', NULL, 3, 'CPU: i7-13620H (3.6GHz~4.9GHz) 10 Cores 16 Threads\r\nVGA: GeForce RTX 4060 8GB GDDR6\r\nRam: 16GB DDR4 3200 MHz \r\nỔ cứng: 512GB SSD PCIe 4.0 NVMe M.2\r\nMàn hình: 15.6\'\' FHD IPS 144Hz 100% sRGB', 'BẢNG THÔNG SỐ CHI TIẾT:\r\n    Nhà sản xuất	    Asus\r\n    Model	    FX507VV-LP157W\r\n    Hệ điều hành	    Windows 11 Home\r\n    CPU	    Intel Core i7-13620H (3.6GHz~4.9GHz) 10 Cores 16 Threads\r\n    Card VGA	    NVIDIA GeForce RTX 4060 8GB GDDR6\r\n    Memory	    16 (2x8GB) DDR4 3200 MHz\r\n    Số khe cắm rời	    2\r\n    Số khe RAM còn lại	    0\r\n    Số RAM onboard	    0\r\n    Nâng cấp RAM tối đa	    32GB\r\n    Ổ cứng	    512GB SSD M.2 PCIe 4.0 NVMe\r\n    Tổng số khe SSD/HDD	    2\r\n    Số khe SSD/HDD còn lại	    1\r\n    Nâng cấp SSD/HDD tối đa	    2TB\r\n    Bàn phím	    Backlit Chiclet Keyboard 1-Zone RGB, touchpad cảm ứng đa điểm\r\n    Màn hình	    15.6 Inch FHD (1920 x 1080), IPS, 144Hz, 16:9, 100% sRGB, 1000:1, Anti-glare\r\n    Lan	    10/100/1000 Mbps\r\n    WLAN	    Wi-Fi 6(802.11ax) 2*2 + Bluetooth 5.2 \r\n    Màu sắc	    Jaeger Gray\r\n    Cổng kết nối	    1 x RJ45 LAN port\r\n    	    1 x Thunderbolt™ 4 support DisplayPort™\r\n    	    1 x USB 3.2 Gen 2 Type-C support DisplayPort™ / power delivery / G-SYNC\r\n    	    2 x USB 3.2 Gen 1 Type-A\r\n    	    1 x HDMI 2.1 FRL\r\n    	    1 x 3.5mm Combo Audio Jack\r\n    	    \r\n    Webcam	    720P HD camera\r\n    Audio	    AI noise-canceling technology, Dolby Atmos, Hi-Res certification \r\n    Pin	    90WHrs\r\n    Trọng lượng	    2.2 Kg\r\n    Kích thước	    354 x 251 x 22.4 ~ 24.9 mm', 7, '2025-01-20 18:29:30', '2025-01-20 18:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `attribute_name` varchar(255) NOT NULL,
  `attribute_value` varchar(255) NOT NULL,
  `stock` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `payment_method_id` (`payment_method_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `banner_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
