-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 01:17 PM
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
-- Database: `cosmetics`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `name`, `image`, `description`, `status`, `created_at`) VALUES
(1, 'Make up', '', 'Trang điểm\r\n', 0, '2024-05-11 10:22:46'),
(2, 'Skincare', '0', 'Dưỡng da', 0, '2024-04-15 14:29:38'),
(3, 'Bodycare', '0', 'Dưỡng body', 0, '2024-04-15 14:29:38'),
(4, 'Giftset', '0', 'Combo', 0, '2024-04-15 14:29:38'),
(5, 'Sale', '0', 'Giảm giá', 0, '2024-04-15 14:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `img_products`
--

CREATE TABLE `img_products` (
  `id` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `img_products`
--

INSERT INTO `img_products` (`id`, `id_products`, `image`) VALUES
(44, 32, 'gioithieu1.png'),
(45, 32, 'gioithieu2.png'),
(46, 32, 'gioithieu3.png'),
(47, 32, 'ma3.png'),
(49, 65, 'ma1.png'),
(50, 65, 'ma2.png'),
(51, 65, 'ma3.png'),
(53, 66, 'ma1.png'),
(54, 66, 'ma2.png'),
(55, 66, 'ma3.png'),
(56, 67, 'ma1.png'),
(57, 67, 'ma3.png'),
(58, 67, 'ma4.png'),
(59, 68, 'ma1.png'),
(60, 68, 'ma2.png'),
(61, 68, 'ma4.png'),
(62, 42, '1715529184_0.png'),
(64, 42, '1715529184_2.png'),
(65, 42, '1715529184_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(9) NOT NULL,
  `category_id` int(10) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `description` text NOT NULL,
  `introduce` text NOT NULL,
  `tips` text NOT NULL,
  `showhome` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `image`, `quantity`, `original_price`, `selling_price`, `description`, `introduce`, `tips`, `showhome`, `created_at`) VALUES
(1, 1, '[Clio] Kill Cover High Glow Foundation 30ml', '1713714264.png', 12, 230000, 820000, '<p>Sự bổ sung mới nhất cho dòng sản phẩm trang điểm nền Kill Cover bán chạy nhất của CLIO, kem nền dạng lỏng nhẹ này hứa hẹn độ che phủ cao của lỗ chân lông to và các khuyết điểm khác trên da để có một lớp hoàn thiện hoàn hảo. Công thức có thể xây dựng lâu dài mà không cần nhìn cakey.</p>', '<p>+ Là bản nâng cấp trên Kill Cover Founwear Cushion XP mang tính biểu tượng của CLIO, kem nền có độ che phủ đầy đủ này có công thức mượt mà, tuân thủ cao, được thiết kế để kéo dài đến 54 giờ. + Áp dụng với phồng hình giọt nước cho một kết thúc mờ. Những cô nàng da bóng dầu và nhiều khuyết điểm thì make up kiểu tự nhiên là rất khó khăn.</p>', '<p>+ Dùng mút thấm lớp kem nền trong hộp. Chú ý không nên dùng lực tay quá mạnh khiến cho kem nền ra ngoài quá nhiều. + Dặm mút lên da mặt và nhẹ nhàng tán đều để phấn nước được đều khắp mặt và mịn hơn.</p>', 1, '2024-05-06 01:58:05'),
(2, 1, 'Mút Trang Điểm Morphe Microfiber Beauty Sponge', '1713716425.png', 20, 100000, 190000, ' Pha trộn, buff và che giấu đến mức MUA với miếng bọt biển làm đẹp Microfiber của Morphe. Được làm từ một vật liệu mềm mượt, dụng cụ này để lại cho bạn một kết thúc mịn màng và tự nhiên khi áp dụng nền tảng của bạn. Điều này lý tưởng để che mọi thứ từ nhược điểm không mong muốn.', '+ Miếng bọt biển này được làm bằng vật liệu sợi nhỏ mượt mà tạo ra một kết thúc mịn màng, trông tự nhiên. Chỉ cần thêm nước và cho nó một vắt tốt. Ghép nối với nền tảng Morphe yêu thích của bạn và pha trộn các quy tắc.\r\n\r\n', '+ Sử dụng miếng mút để trang điểm để đánh lớp nền hoặc che khuyết điểm. Sử dụng 2 đầu của miếng mút để nhẹ nhàng tán đều lớp kem nền.', 0, '2024-04-21 16:21:21'),
(17, 1, 'Urban Decay Naked3 Mini Eyeshadom Palette', '1713717039.png', 28, 600000, 750000, 'Urban Decay Naked3 Mini Eyeshadow Palette là một phiên bản nhỏ gọn được lấy cảm hứng từ bảng màu phổ biến Naked3 Palette của Urban Decay. Phiên bản mini này bao gồm sáu màu mắt mới toanh, mang tông màu hồng nâu phù hợp với mọi người. Bảng màu có tông màu nude và trung tính đa dạng.', '+ Bị mắc kẹt trên một hòn đảo hoang và chỉ có thể mang theo một bảng màu? Đây sẽ là của chúng tôi — khả năng là vô tận với bảng phấn mắt 12 chảo này được đóng gói với các màu trung tính phổ quát.\r\n	+ Từ mờ mượt và kim loại đến ánh kim lấp lánh vi mô, mọi sắc thái đều được tạo ra với công thức Naked đặc trưng của chúng tôi cho kết cấu mượt mà, màu sắc phong phú và khả năng pha trộn cực cao.\r\n', '+ Chuẩn bị nắp đậy bằng Eyeshadow Primer Potion để có vẻ ngoài chống phai màu và không nếp nhăn kéo dài cả ngày. Mẹo chuyên nghiệp: Trộn Primer Potion với phấn mắt để tạo bóng kem với sức mạnh bền bỉ chính.\r\n	+ Hãy sáng tạo và xịt cọ của bạn với All Nighter Long-Lasting Makeup Setting Spray trước khi nhúng vào bóng tối để hoàn thiện tăng cường hoặc thiết kế đồ họa.\r\n', 1, '2024-04-28 17:07:39'),
(18, 1, 'Nyx  Smooth Whip Matte  Lip 4 Colors Cream', '1713717102.png', 18, 190000, 249000, 'Urban Decay Naked3 Mini Eyeshadow Palette là một phiên bản nhỏ gọn được lấy cảm hứng từ bảng màu phổ biến Naked3 Palette của Urban Decay. Phiên bản mini này bao gồm sáu màu mắt mới toanh, mang tông màu hồng nâu phù hợp với mọi người. Bảng màu có tông màu nude và trung tính đa dạng.', '+ SMOOTH WHIP MATTE LIP CREAM là dòng son môi lì đầu tiên của NYX Professional Makeup được sản xuất từ thành phần 100% thực vật. Với 24 màu sắc táo bạo, dòng son này mang đến cho bạn màu sắc tươi sáng và lâu trôi.\r\n	+ Công thức của son môi lì này chứa bơ hạt mỡ shea và bơ hạt mỡ ca cao giúp dưỡng ẩm cho môi và mang lại cảm giác mềm mịn.\r\n', '+ Vuốt lên môi bằng dụng cụ bôi ôm môi và xây dựng Smooth Whip Matte Lip Cream như mong muốn.\r\n\r\n', 0, '2024-04-21 16:31:42'),
(19, 1, 'Phấn Mắt Dior Backstage Eye Palette Skit 10g', '1713717217.png', 6, 900000, 1100000, 'Urban Decay Naked3 Mini Eyeshadow Palette là một phiên bản nhỏ gọn được lấy cảm hứng từ bảng màu phổ biến Naked3 Palette của Urban Decay. Phiên bản mini này bao gồm sáu màu mắt mới toanh, mang tông màu hồng nâu phù hợp với mọi người. Bảng màu có tông màu nude và trung tính đa dạng.', '+ Được thiết kế bởi Peter Philips, Giám đốc sáng tạo và hình ảnh của Dior Makeup, Dior Backstage Eye Palette là vũ khí bí mật của các chuyên gia trang điểm Dior để đạt được vẻ ngoài trang điểm từ tự nhiên nhất đến mãnh liệt nhất, đồng thời đảm bảo kết thúc lâu dài.\r\n	+ Lấy cảm hứng từ hậu trường năng lượng tại các buổi trình diễn thời trang của Dior, bảng trang điểm này kết hợp 9 phấn mắt siêu sắc tố, dễ pha trộn với các lớp hoàn thiện mờ, ngọc trai, kim loại, ba chiều và lấp lánh. Mỗi sự hài hòa là sự giải thích của một chủ đề màu sắc, có sẵn trong các sắc thái bổ sung để đạt được vô số ngoại hình.\r\n', '	Để có một cái nhìn đơn giản và tự nhiên:\r\n		- Áp dụng một màu đậm hơn trên toàn bộ mí mắt di động để mở mắt, và sau đó một màu tối hơn dọc theo đường mi để định nghĩa.\r\n		- Làm nổi bật bằng cách áp dụng một bóng sáng hơn bên dưới vòm lông mày và ở góc trong của mắt để mở rộng mắt.\r\n	Để có một cái nhìn táo bạo:\r\n		- Áp dụng một màu đậm hơn trên toàn bộ mí mắt di động để mở mắt, và sau đó một màu tối hơn dọc theo đường mi để định nghĩa.\r\n		- Pha trộn trên toàn bộ mí mắt di động và hướng ra ngoài.\r\n		- Làm nổi bật với một bóng sáng hơn bên dưới vòm lông mày và ở góc trong của mắt để tạo độ tương phản lớn hơn nữa cho cấu trúc mắt.\r\n', 0, '2024-04-23 09:03:13'),
(20, 1, 'Maybelline Hyper Curl Waterproof Mascara 9.2ml', '1713717283.png', 130, 170000, 195000, 'Urban Decay Naked3 Mini Eyeshadow Palette là một phiên bản nhỏ gọn được lấy cảm hứng từ bảng màu phổ biến Naked3 Palette của Urban Decay. Phiên bản mini này bao gồm sáu màu mắt mới toanh, mang tông màu hồng nâu phù hợp với mọi người. Bảng màu có tông màu nude và trung tính đa dạng.', '+ Mascara Maybelline Hyper Curl Waterproof giúp làm dày gấp 3 lần và hàng mi cong 75 độ, bền đẹp suốt 18 giờ. Sản phẩm phù hợp với mi mỏng, thưa và ngắn. Đầu cọ được thiết kế dễ dàng chải tận gốc mi, giúp mascara được bao phủ hiệu quả, cho bạn đôi mi dày ấn tượng, cong quyến rũ.\r\n', '+ Lấy cọ ra khỏi chai và lau phần mascara thừa trên đầu chải\r\n	+ Chải cọ thì chân đến ngọn mi theo đường zig zag\r\n	+ Lặp lại việc chải mi cho đến khi đạt hiệu quả mong muốn\r\n	', 0, '2024-04-21 16:34:43'),
(25, 2, 'Nước Tẩy Trang Roche-Posay Micellar Water Ultra  Skin', '1713754639.png', 20, 230000, 350000, '+ NƯỚC TẨY TRANG MICELLAR ULTRA dành cho da nhạy cảm giúp làm sạch da khỏi tạp chất, loại bỏ tối ưu lớp trang điểm và ô nhiễm. Sản phẩm đồng thời làm dịu da, đem lại cảm giác dễ chịu và tươi mát.\r\n	+ EFFACLAR MICELLAR WATER là nước tẩy trang dành cho da dầu, da dễ bị mụn. Nước tẩy trang Micellar Water giúp làm sạch sâu, loại bỏ cặn bẩn, bã nhờn và lớp trang điểm một cách nhẹ nhàng, đem lại cảm giác sạch và tươi mát trên da.\r\n', '+ NƯỚC TẨY TRANG MICELLAR ULTRA dành cho da nhạy cảm giúp làm sạch da khỏi tạp chất, loại bỏ tối ưu lớp trang điểm và ô nhiễm. Sản phẩm đồng thời làm dịu da, đem lại cảm giác dễ chịu và tươi mát.\r\n	+ EFFACLAR MICELLAR WATER là nước tẩy trang dành cho da dầu, da dễ bị mụn. Nước tẩy trang Micellar Water giúp làm sạch sâu, loại bỏ cặn bẩn, bã nhờn và lớp trang điểm một cách nhẹ nhàng, đem lại cảm giác sạch và tươi mát trên da.', '+ Thấm sản phẩm vào miếng bông tẩy trang.\r\n	+ Trước tiên, tẩy trang môi, sau đó đến mắt (dùng một miếng bông tẩy trang cho mỗi bên mắt) tiếp theo là phần còn lại của khuôn mặt, cho đến khi bông tẩy trang không còn vết trang điểm nữa. Để đạt hiệu quả cao hơn và hạn chế chà xát da, giữ miếng bông tẩy trang trên da trong vòng vài giây trước khi lau nhẹ.\r\n', 1, '2024-05-02 06:33:11'),
(27, 2, 'Gel Rửa Mặt Svr Không Chứa Xà Phòng Cho Da Dầu 400ml', '1713758113.png', 20, 400000, 450000, 'Gel Rửa Mặt SVR Sebiaclear Gel Moussant là sản phẩm sữa rửa mặt dành cho làn da dầu mụn đến từ thương hiệu dược mỹ phẩm SVR của Pháp, với công thức không chứa xà phòng giúp làm sạch, nhẹ nhàng làm thông thoáng làn da. Khả năng tạo bọt mịn giúp loại trừ các chất bẩn mà không làm khô da.', '+ Nếu bạn thích hiệu thuốc Pháp – hoặc hoạt động trong cộng đồng chăm sóc da Reddit – thì các sản phẩm chăm sóc da SVR không còn xa lạ với bạn. Trước đây, thương hiệu chỉ sản xuất các sản phẩm cực kỳ y tế cho các vấn đề về da.\r\n	+ Nó có thể hấp dẫn để loại bỏ sự không hoàn hảo của bạn với các sản phẩm tích cực, nhưng tốt hơn là sử dụng chăm sóc nhẹ nhàng sẽ không kích thích sản xuất bã nhờn và do đó ngăn ngừa kích ứng tiếp theo.\r\n	+ SEBIACLEAR Gel Foam là một sản phẩm chăm sóc làm sạch không chứa xà phòng, nhẹ nhàng rửa sạch và tẩy tế bào chết cho da. Bọt gel dạng kem giúp loại bỏ bụi bẩn và bã nhờn dư thừa mà không bị khô. Nó rất dễ dàng để rửa sạch và làn da vẫn hoàn toàn sạch sẽ, tươi mới và mờ.\r\n', '+ Trước khi rửa mặt, hãy rửa tay thật sạch để tránh vi khuẩn và bụi bẩn từ tay lây lan lên da mặt.\r\n	+ Sử dụng nước ấm để làm ướt da mặt. Điều này giúp mở lỗ chân lông và làm cho sữa rửa mặt hoạt động hiệu quả hơn.\r\n	+ Sử dụng đầu ngón tay massage nhẹ nhàng theo hướng từ trong ra và từ dưới lên trong khoảng 60 giây.\r\n	+ Rửa sạch mặt bằng nước lạnh để đóng lỗ chân lông và làm dịu da.\r\n', 0, '2024-04-22 03:55:13'),
(28, 2, 'Dầu tẩy trang Innisfee Apple Seed Cleansing Oil 150 mL ', '1713758394.png', 20, 300000, 400000, ' Đây là thương hiệu chuyên về mỹ phẩm chăm sóc da hàng đầu tại Hàn Quốc. Quan điểm sản xuất của thương hiệu gắn với cây cỏ thiên nhiên, gia tăng các chiết xuất thiên nhiên có lợi cho chu trình chăm sóc da của phái đẹp. Bao bì của các sản phẩm đều đến từ các nguyên liệu tái chế, bảo vệ làn da.', '+ Dầu tẩy trang táo xanh innisfree Apple Seed Cleansing Oil giúp làm sạch lớp trang điểm và các tạp chất trong lỗ chân lông một cách nhẹ nhàng.\r\n	+ Vỏ táo chứa nhiều vitamin và acid hữu cơ hơn phần thịt để bảo vệ quả. Chiết xuất vỏ táo sẽ loại bỏ các tế bào chết và làm sạch tạp chất bên trong lỗ chân lông. Hạt táo chứa nhiều dinh dưỡng để tạo ra rễ, thân và quả táo. Dầu hạt táo ép lạnh chứa nhiều acid béo chưa bão hòa giúp làn da sau khi làm sạch luôn ẩm mịn, khỏe mạnh và săn chắc.\r\n\r\n', '+ Thoa sản phẩm lên mặt khô. Dùng các ngón tay mát-xa đều để tẩy đi lớp trang điểm. Sau đó rửa sạch với nước ấm.\r\n\r\n', 1, '2024-04-28 17:07:39'),
(29, 2, 'Dưỡng Da dAlba Italian White Truffle Vital  Serum', '1713758694.png', 20, 700000, 760000, ' Thành phần Nấm Truffle trắng được tinh chiết từ Piedmont, Italy - cung cấp khoáng, dưỡng chất dồi dào cho da. Piedmont là di sản thế giới được UNESCO công nhận. Khác với những loại nấm khác, Nấm truffle trắng yêu cầu một quy trình tinh chiết đặc biệt. Quy trình cam kết đảm bảo tính an toàn.', '+ D-Alba là một thương hiệu mỹ phẩm cao cấp đến từ Hàn Quốc, được lấy cảm hứng từ vùng đất Piedmont của Ý. Thương hiệu này nổi tiếng với sản phẩm chứa thành phần Nấm Truffle Trắng, được biết đến như là \"kim cương ngầm\".\r\n	+ D-Alba First Spray Serum: Sản phẩm này là một serum dạng xịt, được chứng nhận là thuần chay và không gây kích ứng da. Nó cung cấp độ ẩm và làm dịu da, chứa thành phần Nấm Truffle Trắng và các dưỡng chất quý giá khác.\r\n', '+ Đối với chăm sóc da: Lắc và phun bao nhiêu tùy thích ngay sau khi rửa mặt để bổ sung độ ẩm và dưỡng chất cho da. Có thể được sử dụng ở giữa bất kỳ bước nào trong quy trình chăm sóc da của bạn.\r\n	+ Trước / Sau khi trang điểm: Lắc và phun trước khi trang điểm để chuẩn bị cho làn da của bạn và sau khi trang điểm của bạn để thiết lập nó và thêm ánh sáng.\r\n', 0, '2024-04-22 04:05:25'),
(30, 2, 'Paula’s Choice Skin Perefecting 2% Bha Lotion', '1713758846.png', 20, 300000, 380000, 'Paula’s Choice Skin Perfecting 2% BHA Lotion Exfoliant là một loại tẩy da chết để sử dụng không cần rửa lại. Nó giúp loại bỏ lớp da chết tích tụ, giúp da trở nên sáng hơn và mịn màng hơn. Lotion tẩy da chết này chứa 2% BHA (Beta Hydroxy Acid), còn được gọi là axit salicylic duy trì độ ẩm cho da.', '+ Paula’s Choice là một thương hiệu mỹ phẩm chăm sóc da hiệu quả, không chứa hương liệu và không gây kích ứng da. Thương hiệu này đã có mặt tại hơn 20 quốc gia và liên tục lọt top Best Seller trên toàn cầu. Năm 1995, Paula’s Choice được sáng lập tại Mỹ bởi “Cảnh sát ngành mỹ phẩm” bà Paula Begoun.\r\n	+ Thương hiệu này nổi tiếng với các sản phẩm trị mụn trứng cá, kem dưỡng ẩm, chống nắng, chống lão hóa và loại bỏ tế bào chết. Đội ngũ chuyên gia của Paula’s Choice luôn cam kết mang đến cho người tiêu dùng những sản phẩm an toàn và hiệu quả cho làn da của họ2. Nếu bạn đang tìm kiếm một thương hiệu mỹ phẩm đáng tin cậy, hãy xem xét Paula’s Choice!\r\n', '\r\n	+ Đổ một lượng nhỏ ra bông tẩy trang và nhẹ nhàng thoa lên toàn bộ khuôn mặt, vùng cổ, không cần rửa lại. Tiếp theo là các bước chăm sóc da (ngày hoặc đêm).\r\n', 0, '2024-04-22 04:07:26'),
(31, 2, 'Mặt Nạ Giấy By Wishtrend Natural Vitamin 21.5% 23ml', '1713759126.png', 50, 50000, 65000, 'Mặt nạ By Wishtrend Natural Vitamin 21.5% Enhancing với dung tích 23ml là một sản phẩm giấy giúp cải thiện tình trạng lão hoá, làm mờ nếp nhăn. Được sản xuất tại Hàn Quốc, mặt nạ này không chỉ giúp cải thiện sắc diện da, làm đồng đều màu da, mà còn cấp nước tức thì căng bóng.', '+ Rich Moist Soothing Tencel Sheet Mask: Mặt nạ tấm này được làm bằng năm loại ceramides cũng như các dưỡng chất dưỡng ẩm của Nha đam, Panthenol và Hyaluronic Acid để hồi sinh làn da khô, kiệt sức.	\r\n	+ Midnight Blue Calming Sheet Mask: Mặt nạ tấm này được tạo ra với sự pha trộn của các thành phần để làm cho nó trở thành giải pháp tối ưu cho làn da khô, quá nóng. Chất làm mát có tác dụng làm giảm nhiệt độ của da, dầu lá cây trà kiểm soát mụn đầu đen và sản xuất dầu, trong khi BHA chăm sóc bã nhờn và lỗ chân lông cho da.\r\n	+ Mặt nạ tấm tăng cường vitamin 21.5 tự nhiên: Đây là mặt nạ tấm được làm giàu với phức hợp vitamin tự nhiên 21,5% để lấp đầy các lớp bên trong của da với độ ẩm và vitamin.', '+ Sau khi áp dụng ống 1-2 lần một tuần trong thói quen chăm sóc da, gắn mặt nạ trên mặt.\r\n	+ Tháo mặt nạ sau 15-20 phút.\r\n	+ Nhẹ nhàng vỗ nhẹ tinh chất còn lại để thúc đẩy sự hấp thụ.\r\n', 0, '2024-04-22 04:12:06'),
(32, 4, 'Son Tint Bóng, Merzy The Watery Dew Tint 4g', '1713860496.png', 20, 149000, 249000, 'Son Tint Bóng Dạng Thạch, Bền Màu, Lâu Trôi Merzy The Watery Dew Tint là son tint đến từ thương hiệu Merzy Với phiên bản dòng son bóng The Watery Dew Tint season 4 với chất \"son thạch\" mềm mại, dễ thoa lên môi, lớp tint bóng trong suốt mang lại vẻ đẹp tự nhiên và tươi tắn cho đôi môi.', 'Son Tint Bóng Dạng Thạch, Bền Màu, Lâu Trôi Merzy The Watery Dew Tint hiện đã có tại Thế giới Skinfood có những đặc trưng nổi bật như sau:\r\n- Với kết cấu son tint bóng mới với kết cấu dạng thạch, lên màu chuẩn ngay từ lần chạm cọ đầu tiên. \r\n- Sự kết hợp của lớp nhũ pha lê tạo nên bảng màu vừa trong trẻo, vừa lấp lánh.\r\n- Son có độ ẩm cao, với công thức bóng độc quyền, không gây bết dính và nặng môi để lại một lớp màng phủ sương ẩm nhẹ.\r\n- Với hiệu ứng che phủ rãnh môi hiệu quả, giúp đôi môi thêm căng mọng, không lo bị thẫm màu dù có chồng nhiều lớp son cùng lúc.\r\n- Bám màu cực tốt cả ngày mà vẫn giữ cảm giác mỏng nhẹ và ẩm mịn cho môi.\r\n', 'MERZY là thương hiệu make up chuyên nghiệp của công ty Genuine Me.factory Hàn Quốc với tiêu chí hướng đến vẻ đẹp riêng biệt và cá tính độc lập bên trong mỗi cá thể. Các sản phẩm makeup của Merzy mang phong cách thời thượng, năng động giúp thương hiệu Merzy nhanh chóng nổi tiếng trên khắp Hàn Quốc, lan sang thị trường Châu Á. Giá thành học sinh và chất lượng đảm bảo cũng được đánh giá rất tích cực nên các sản phẩm của Merzy đang trở thành từ khóa hot mà rất nhiều bạn gái tại Việt Nam tìm kiếm và tin dùng.', 1, '2024-04-28 17:07:39'),
(33, 4, 'Set 4 Món Chăm Sóc Tóc Aromatica Rosemary Scalp Scaling Trial Kit ', '1713860622.jpg', 20, 400000, 460000, '+ Set 4 Món Chăm Sóc Tóc Aromatica Rosemary Scalp Scaling Trial Kit Tiện Lợi là một bộ 4 sản phẩm từ dòng sản phẩm dành cho tóc hương thảo của Aromatica giúp làm sạch triệt để và tăng cường sức mạnh cho da đầu để có mái tóc khỏe và bóng mượt hơn.', '+ Được pha chế với cả chiết xuất hương thảo và tinh dầu, bộ sản phẩm này nhằm mục đích kích thích mọc tóc bằng cách tăng cường da đầu. \r\n+ Các đặc tính trị liệu bằng hương thơm và mùi hương của nó tạo ra một bầu không khí êm dịu mang lại cảm giác bình tĩnh cho nghi thức hàng ngày của bạn. \r\n+ Sử dụng Rosemary Scalp Scrub thay cho dầu gội đầu để làm sạch sâu da đầu.  \r\n+ Sử dụng dầu gội Rosemary Scalp Scalp để làm sạch tóc của bạn từ gốc đến ngọn.\r\n+  Rosemary Root Enhancer được tạo ra để sử dụng nhiều lần với công thức nhẹ. Xịt trực tiếp vào chân tóc để làm mới và tăng cường sức mạnh cho da đầu.\r\n\r\n', '-  Tẩy da chết da đầu Rosemary Scalp 30g \r\n-  Dầu gội Rosemary Scalp Scaling 100ml\r\n-  Xịt kích thích mọc tóc Rosemary Root Enhancer 30ml\r\n-  Lược Wooden Scalp mini \r\n', 0, '2024-04-23 08:35:36'),
(34, 4, 'Bộ Chăm Sóc Da Chiết Xuất Rau Má Dành Cho Da Dầu Mụn.', '1713860737.png', 15, 700000, 830000, 'Bộ chăm sóc da chiết xuất Rau má nhà Cỏ gồm 5 bước đầy đủ là combo bạn không nên bỏ qua. Đặc biệt là những người có làn da dầu mụn dễ gặp phải các tình trạng như mụn trứng cá, lỗ chân lông to, bít tắc lỗ chân lông… giúp cải thiện hiệu quả tình trạng da.', 'Bộ chăm sóc da chiết xuất Rau má được thiết kế dựa trên 3 tiêu chí quan trọng:\r\n1.	Đảm bảo bao trùm 4 yếu tố là cơ chế gây mụn gồm: Tăng tiết bã nhờn, Bít tắc lỗ chân lông, Tăng sinh vi khuẩn gây mụn P.acnes và Tăng sinh phản ứng Viêm. \r\n2.	Đảm bảo chăm sóc đủ bước giúp làm sạch da, cải thiện tình trạng dầu mụn và tăng cường dưỡng chất nuôi dưỡng, tái tạo da.\r\n3.	An toàn cho mọi đối tượng sử dụng, kể cả những làn da nhạy cảm.\r\n', 'Bộ chăm sóc da chiết xuất Rau Má nhà Cỏ với 5 sản phẩm chính là combo chân ái cho nàng chăm sóc làn da khỏe mạnh từ sâu bên trong, cải thiện các vấn đề của da, cho bạn một làn da rạng ngời.', 1, '2024-04-28 17:07:39'),
(35, 4, 'Bộ Son Estee Lauder Stellar Lipstick Collection Set 5pcs.', '1713860874.jpg', 10, 2000000, 2345000, 'Bộ sưu tập phiên bản giới hạn này bao gồm: 5 thỏi son phiên bản giới hạn, cỡ lớn (0,12 oz./3,5g mỗi thỏi) với màu :\r\nCelestial nude: màu hoa cà với tông màu kem ấm và lớp nền màu kem.\r\nConstellation Rose: màu hồng trung tính và lớp hoàn thiện kem.\r\nHalf Moon: màu hoa cà bụi bặm với tông màu trung tính và lớp nền kem.\r\nShooting Star: màu mơ cháy với tông màu ấm và lớp nền mờ. \r\nGarnet Desire: màu đỏ cháy với tông màu ấm và lớp nền mờ.\r\n\r\n', 'Estée Lauder Companies Inc. là công ty sản xuất và quảng cáo các sản phẩm chăm sóc da, trang điểm, nước hoa và chăm sóc tóc uy tín. Công ty sở hữu danh mục đa dạng các thương hiệu, phân phối trên toàn thế giới thông qua các kênh bán lẻ và thương mại điện tử, có trụ sở tại New York. Estee Lauder là một thương hiệu được sáng lập bởi Estee Lauder và Joseph Lauder, tại New York, Hoa Kỳ. Hiện brand này đang sở hữu rất nhiều thương hiệu mỹ phẩm nổi tiếng khác như: Tommy Hilfiger, Micheal Kors, DKNY, Bobbi Brown, La Mer, Clinique và MAC Comestics...', 'Những set đồ chất lượng như thế này chỉ có thể đợi tới những dịp cuối năm, bản limited năm nay sold-out là không có lại, với mức giá tốt nhất không thể nào tốt hơn. Estee Lauder Stellar Lipstick Collection Set 5pcs đã cập bến SonAuth với 5 thỏi full-size bản 2023, 1 set đồ với giá chỉ nhỉnh hơn mua thỏi lẻ 1 chút thôi.', 0, '2024-04-23 08:27:54'),
(36, 4, 'Girls Make Up Female Gift Box Cosmetics Gift Set.', '1713861139.jpg', 15, 900000, 1080000, 'son môi * 5 màu đen mắt * 1 bút chì kẻ mắt * 1 bút chì kẻ lông mày * 1 bảng phấn mắt chín màu * 1 kem che khuyết điểm * 1', 'son môi * 5 màu đen mắt * 1 bút chì kẻ mắt * 1 bút chì kẻ lông mày * 1 bảng phấn mắt chín màu * 1 kem che khuyết điểm * 1', 'son môi * 5 màu đen mắt * 1 bút chì kẻ mắt * 1 bút chì kẻ lông mày * 1 bảng phấn mắt chín màu * 1 kem che khuyết điểm * 1', 0, '2024-04-23 08:32:19'),
(37, 4, 'Son Lì OFÉLIA Modern Matte Lipstick 3.5g', '1713861229.png', 15, 250000, 320000, '- Bảng màu son OFÉLIA Modern Matte Lipstick có tất cả 12 màu:\r\n+ Màu 1 – July Rain: cam đỏ gạch\r\n+ Màu 2 – The One: đỏ lạnh\r\n+ Màu 3 – First Love: cam vỏ quýt\r\n', '- Với chất son matte – công thức son lì đỉnh cao, sản phẩm hoàn toàn ôm trọn bầu môi để mang đến lớp finish siêu mướt mịn, nâng niu lấy làn môi căng mọng & yêu kiều. Có thể nói đây là 1 sự thăng hoa trong cảm xúc về kết cấu, mang đến sự nhẹ nhàng & thoải mái cho người dùng trong suốt 8h đồng hồ.', '- Ngoài ra sản phẩm còn được bổ sung thêm dưỡng chất từ bơ hạt mỡ, kết hợp với công thức dưỡng ẩm độc đáo nên bé này không hề gây khô môi các nàng nhé.', 0, '2024-04-23 08:33:49'),
(38, 3, 'Bộ dầu gội và xả Hairburst cho tóc dài nhanh, khoẻ 350ml', '1713861488.jpg', 15, 500000, 580000, '<p>1. Dầu Gội Hairburst For Longer Stronger Shampoo Hair Kích Thích Mọc Tóc 350ml Với hơn 95% thành phần từ thiên nhiên, dầu gội Hairburst chiết xuất từ trái bơ và dừa giúp kích thích tóc mọc nhanh, dài và dày hơn. Tóc chắc khỏe hơn từ bên trong nhờ những dưỡng chất cung cấp độ ẩm giúp rửa trôi bã nhờn dư thừa trên da đầu và ngăn gãy rụng tóc. 2. Dầu Xả Hairburst For Longer Stronger Hair Conditioner Kích Thích Mọc Tóc 350ml Với hơn 95% thành phần từ thiên nhiên, dầu xả Hairburst giúp kích thích tóc mọc nhanh, dài và dày hơn. Tóc sẽ mềm mượt và bồng bềnh hơn nhờ vào sự kết hợp từ trái bơ và dừa.</p>', '<p>Set Hairburst Gội Xả For Longer Stronger Hair Kích Thích Mọc Tóc (Dầu Gội 350ml + Dầu Xả 350ml) kích thích mọc tóc nhanh nhất trong thời gian ngắn nhất đồng thời cung cấp đủ dưỡng chất để tóc mọc khỏe nhất, ngăn chặn các bệnh về tóc như nấm ngứa, gàu hay gãy rụng.</p>', '<p>2. Dầu Xả Hairburst For Longer Stronger Hair Conditioner Kích Thích Mọc Tóc 350ml Với hơn 95% thành phần từ thiên nhiên, dầu xả Hairburst giúp kích thích tóc mọc nhanh, dài và dày hơn. Tóc sẽ mềm mượt và bồng bềnh hơn nhờ vào sự kết hợp từ trái bơ và dừa.</p>', 1, '2024-05-12 16:10:46'),
(39, 3, 'Sữa Dưỡng Ẩm CeraVe Moisturising Lotion Dành Cho Da Khô 236ml', '1713861572.jpg', 20, 290000, 340000, 'Sữa Dưỡng Ẩm CeraVe Moisturising Lotion Dành Cho Da Khô 236ml là sữa dưỡng thể giữ ẩm nhẹ cung cấp dưỡng ẩm đến 24 giờ và giúp bảo vệ hàng rào bảo vệ da. Công thức đặc biệt nhẹ nhàng để dưỡng ẩm cho làn da nhạy cảm bị khô. Công thức hấp thụ nhanh và không gây cảm giác nhờn hoặc nặng trên da của bạn.', 'Sữa Dưỡng Ẩm CeraVe Moisturising Lotion Dành Cho Da Khô 236ml là sữa dưỡng thể giữ ẩm nhẹ cung cấp dưỡng ẩm đến 24 giờ và giúp bảo vệ hàng rào bảo vệ da. Công thức đặc biệt nhẹ nhàng để dưỡng ẩm cho làn da nhạy cảm bị khô. Công thức hấp thụ nhanh và không gây cảm giác nhờn hoặc nặng trên da của bạn.', '- Sữa Dưỡng Ẩm CeraVe Moisturising Lotion Dành Cho Da Khô 236ml cấp ẩm cho làn da cực kỳ khô, bảo vệ hàng rào tự nhiên của da để ngăn ngừa mất nước và tổn thương thêm.\r\n- Công nghệ MVE: giúp bổ sung ceramides và cung cấp hydrat hóa lâu dài có kiểm soát.\r\n- Ceramides: giúp khôi phục và duy trì hàng rào bảo vệ tự nhiên của da.\r\n- Axit hyaluronic: giúp duy trì độ ẩm tự nhiên của da.\r\n', 0, '2024-04-23 08:39:32'),
(40, 3, 'Dầu Gội Loreal Paris Extraordinary Oil Dưỡng Tóc ', '1713861727.jpg', 20, 200000, 249000, 'Dầu Gội Loreal Paris Extraordinary Oil Dưỡng Tóc Suôn Mượt 440ml giúp dưỡng ẩm sâu cho tóc khô và xơ rối, giúp tóc suôn mượt và ngăn ngừa tóc chẻ ngọn. LOreal Paris Extraordinary Oil Sleek giúp phục hồi lớp biểu bì da đầu bị hư tổn, cho hiệu ứng suôn mượt hơn, thẳng hơn và bóng mượt hơn mà không gây xơ rối.', '- Dầu Gội Loreal Paris Extraordinary Oil Dưỡng Tóc Suôn Mượt 440ml không chứa silicone nhẹ nhàng làm sạch da đầu cho cảm giác thoải mái, nhẹ nhàng, giúp mái tóc bồng bềnh và trông bóng khỏe hơn.\r\n- Công thức chứa tinh dầu Hổ phách Cedarwood, một thành phần được đánh giá cao vì lợi ích sửa chữa và dưỡng ẩm của nó.\r\n- Dầu Hổ phách Cedarwood 100% nguyên chất và tự nhiên của Pháp sửa chữa và hàn gắn các lớp biểu bì tóc bị hư tổn, làm mềm mượt tóc xoăn từng sợi. Tóc mượt hơn, thẳng hơn và không bị rối.\r\n- Khả năng tạo bọt siêu nhẹ giúp làm sạch hiệu quả mà không làm bết tóc, giúp tóc sạch và không nhờn, mang lại sự bồng bềnh và suôn mượt cho mái tóc.\r\n\r\n', '- Công thức chứa tinh dầu Hổ phách Cedarwood, một thành phần được đánh giá cao vì lợi ích sửa chữa và dưỡng ẩm của nó.', 1, '2024-05-01 14:46:09'),
(41, 3, 'Paula’s Choice Weidthless Body Treatment 2% Bha 210ml', '1713861867.png', 20, 700000, 760000, '<p>Weightless Body Treatment 2% BHA là sự lựa chọn lý tưởng cho tình trạng viêm nang lông, mụn lưng, bít tắc lỗ chân lông, giúp trả lại làn da sáng khỏe và tràn đầy sức sống. Bên cạnh đó, sản phẩm loại bỏ tế bào chết này hoàn toàn không chứa các chất gây bào mòn da, nhẹ nhàng làm sạch da đồng thời duy trì độ mềm mịn cần thiết.</p>', '<p>+ 2% Salicylic Acid: cải thiện viêm nang lông, mụn lưng và làm mềm da + Chất chống oxy hóa: bảo vệ và giữ cho da khỏe mạnh</p>', '<p>Lưu ý: Nếu bạn bị dị ứng với Salicylate, hãy hỏi ý kiến bác sĩ trước khi sử dụng bất kỳ sản phẩm nào có chứa thành phần BHA (salicylic acid).</p>', 0, '2024-05-12 16:08:23'),
(42, 3, 'Sữa Tắm Tesori D`Oriente Nước Hoa Hy Lạp Cổ Đại 500ml.', '1713861967.png', 20, 200000, 275000, '<p>Sữa Tắm Tesori D`Oriente Nước Hoa Hy Lạp Cổ Đại 500ml là sữa tắm hương nước hoa lấy cảm hứng từ nghi thức của vàng và đá quý từ thành phố Byzantium huyền thoại. Chiết xuất từ tinh chất Hoa hồng đen và nhựa thơm quý hiếm với khả năng dưỡng ẩm, làm dịu, giảm thâm, làm mềm để mang lại làn da mềm mại, căng tràn sức sống. Byzantium sẽ đưa bạn đến một hành trình thơ mộng, nơi thành phố huyền thoại của Hy Lạp, giữa những cung điện xa hoa rực rỡ là ánh sáng phản chiếu lấp lánh từ vàng và đá quý. Hoà quyện với không gian ngây ngất ấy là hương thơm từ những loài hoa quý hiếm đẹp đến mê ly.</p>', '<p>- Sữa Tắm Tesori D`Oriente Nước Hoa Hy Lạp Cổ Đại 500ml nhẹ nhàng làm sạch sâu từng lỗ chân lông, làm sạch các tế bào chết, ngăn ngừa các tác nhân gây viêm da, bít tắc lỗ chân lông. - Công thức dưỡng ẩm độc đáo cung cấp độ ẩm tối ưu cho da, nuôi dưỡng làn da mềm mại, mịn màng, đầy sức sống. - Mùi đặc trưng của hoa hồng đen hòa trộn với sự ấm nóng của nhựa hoa hồng đá để tạo ra một sản phẩm quyến rũ, đầy huyền bí, chống oxy hóa, nhẹ nhàng làm sạch và giúp cơ thể trở nên rạng rỡ. Làn da được bao bọc, vuốt ve bởi mùi hương quyến rũ, bí ẩn và đầy thơ mộng. - Một hương thơm mơ màng và quý giá. Hoa hồng đen ở dạng hiếm nhất và bí ẩn nhất được vuốt ve bởi những nốt hương ấm áp của nhựa thơm Labnum để tạo ra một mùi hương quyến rũ, đa mặt như một bức tranh khảm Byzantine quý giá</p>', '<p>- Sữa Tắm Tesori D`Oriente Nước Hoa Hy Lạp Cổ Đại 500ml nhẹ nhàng làm sạch sâu từng lỗ chân lông, làm sạch các tế bào chết, ngăn ngừa các tác nhân gây viêm da, bít tắc lỗ chân lông.</p>', 0, '2024-05-05 11:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` int(12) NOT NULL,
  `cpassword` text NOT NULL,
  `role_as` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `cpassword`, `role_as`, `created_at`) VALUES
(1, 'Hằng Lê', 'hang@gmail.com', '1234', 363138990, '', 1, '2024-04-14 14:16:09'),
(2, 'A Trần', 'a@gmail.com', '1234', 123456789, '', 0, '2024-04-14 14:16:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_products`
--
ALTER TABLE `img_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `img_products`
--
ALTER TABLE `img_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
