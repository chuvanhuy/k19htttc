-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 06, 2020 lúc 05:41 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `k19htttc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nguoi_dung`
--

CREATE TABLE `tbl_nguoi_dung` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nguoi_dung`
--

INSERT INTO `tbl_nguoi_dung` (`id`, `ho_ten`, `email`, `mat_khau`, `ghi_chu`) VALUES
(1, 'Chu Văn Huy', 'chuvanhuy@gmail.com', '419c0d25271153706075c379ea18120d', NULL),
(2, 'Nguyễn Thùy Nhung', 'nhungnt@gmail.com', 'bb8ee36becce33c8fa38ad5b5379961c', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tin_tuc`
--

CREATE TABLE `tbl_tin_tuc` (
  `id` int(11) NOT NULL,
  `loai_tin_id` int(11) NOT NULL,
  `tieu_de` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `anh_minh_hoa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `so_luot_doc` int(11) NOT NULL,
  `tac_gia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_dang` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tin_tuc`
--

INSERT INTO `tbl_tin_tuc` (`id`, `loai_tin_id`, `tieu_de`, `mo_ta`, `noi_dung`, `anh_minh_hoa`, `so_luot_doc`, `tac_gia`, `ngay_dang`) VALUES
(3, 2, '5 mẫu TV cỡ lớn có giá giảm nửa', 'Giá nhiều TV 4K 75 inch của Samsung, Sony và LG đã giảm từ 20 đến 50 triệu đồng, bằng nửa giá so với khi mới xuất hiện.', 'Model 4K tầm trung của Samsung có mức giảm gần 52% sau một năm. Từ mức niêm yết 60 triệu đồng, model 75 inch còn khoảng 29 triệu đồng. RU7100 là dòng TV 4K cỡ lớn có giá thấp nhất hiện giờ của Samsung. Ngoài 75 inch, sản phẩm còn các lựa chọn 43, 50, 55, 58 và 65 inch. Trong đó, model 58 và 65 đang có giá từ 12 đến 15 triệu đồng.\r\n\r\nThiết kế của RU7100 tối giản với mặt sau gọn, dây cable và điện có thể giấu ở chân đế. Vì sản phẩm giá thấp nên Samsung chỉ sử dụng chất liệu chủ yếu bằng nhựa cho khung vỏ và viền màn hình. Dòng TV 4K này sử dụng tấm nền LED viền, có hỗ trợ công nghệ UHD Dimming, tuy nhiên, độ tương phản và độ sâu của màu đen đều ở mức trung bình. Không dùng Android, RU7100 dùng nền tảng Tizen do nhà sản xuất Hàn Quốc phát triển riêng. Dù không đa dạng như nền tảng của Google, kho ứng dụng đủ dùng với nhiều phần mềm truyền hình, giải trí của Việt Nam.', 'tv4k.jpg', 0, 'Nguyễn Minh Quang', '2020-03-25 03:17:28'),
(4, 2, 'Mẹo mở iPhone khi đeo khẩu trang', 'Người dùng có thể \"qua mặt\" Face ID của Apple để mở khoá iPhone khi đeo khẩu trang bằng vài thao tác đơn giản.', 'Tại một hệ thống bán lẻ khác, hàng loạt mẫu iPhone cũng giảm giá. Thậm chí, mức điều chỉnh cho các model đời mới, như iPhone 11 Pro và 11 Pro Max còn được đẩy lên 3 triệu đồng với phiên bản 512 GB. Mẫu 11 Pro Max bản 512 GB còn 41 triệu đồng thay vì 44 triệu đồng như niêm yết. \r\n\r\nMức giảm đáng chú ý nhất thời gian gần đây là iPhone 7 Plus - sản phẩm bán chạy nhất năm ngoái tại thị trường Việt Nam. Tại một số cửa hàng nhỏ, phiên bản 32 GB còn 9,5 triệu đồng, thấp hơn 2 triệu đồng so với giá niêm yết trước đó. Mức giảm này khiến 7 Plus rẻ hơn cả đàn em iPhone 7 cùng dung lượng. Năm ngoái, trước khi bộ ba iPhone 11 ra mắt, doanh số riêng của iPhone 7 Plus từng chiếm gần 20% thị phần smartphone giá trên 20 triệu đồng ở Việt Nam.\r\n\r\nTuy nhiên, giá iPhone 7 Plus vẫn cao hơn các smartphone Android tầm trung đời mới của Samsung, Oppo... Ví dụ, Galaxy A71 mới ra đầu 2020 giờ có 8,7 triệu đồng hay Reno 2F đang được bán 8 triệu đồng.', 'iphone.jpg', 0, 'An Mai', '2020-03-25 03:17:28'),
(6, 1, 'Bạch Mai xây dựng bệnh viện dã chiến trong đêm', 'Lực lượng quân đội hỗ trợ Bệnh viện Bạch Mai xây dựng một bệnh viện dã chiến ngay trong đêm 28/3 để ứng phó tình huống xấu nhất.', '\"Đây là phần kịch bản dự phòng để bệnh viện sẵn sàng ứng phó với tình huống xấu nhất\", giáo sư, tiến sĩ Nguyễn Quang Tuấn, Giám đốc Bệnh viện Bạch Mai chia sẻ.  Theo ông Tuấn, số lượng người có mặt tại bệnh viện hiện tại khoảng gần 3.500. Trong đó có 800 bệnh nhân không thể xuất viện hoặc chuyển tuyến dưới, 552 bệnh nhân suy thận giai đoạn cuối cần chạy thận. Bệnh viện vẫn tổ chức chạy thận 4 kíp liên tục.  Người nhà bệnh nhân được Bộ Quốc phòng chuyển đi cách ly tập trung tại khu Hòa Lạc. Số ít còn lại ở bệnh viện là người nhà của những bệnh nhân có nguy cơ tử vong (do bệnh lý khác) như bệnh nhi, sản phụ... đều được kiểm soát và có khu vực riêng.', '', 0, '', '2020-03-30 04:07:07'),
(8, 1, '‘Xa cách’ là thương nhau', 'Nơi tôi sống, ai vi phạm chính sách \"cách biệt cộng đồng\" trong dịch Covid-19 có thể bị phạt đến 25.000 đô la Canada và phạt tù đến 6 tháng. Doanh nghiệp có thể bị phạt đến 50.000 đô la, tước giấy phép kinh doanh và truy tố người đứng đầu.', 'Đây là một trong các yêu cầu pháp lý với mọi công dân được Bộ Y tế Canada nhắc đi nhắc lại khi chính phủ tuyên bố tình trạng khẩn cấp vì Covid-19. Giải thích được đưa ra với dân chúng rằng: cách biệt cộng đồng là thực hiện các thay đổi trong thói quen hàng ngày để giảm thiểu tiếp xúc gần người khác. Thứ nhất, tránh những nơi đông người, tụ họp không cần thiết. Thứ hai, không thực hiện cách thức giao tiếp thông thường như đứng sát, bắt tay, ôm hôn. Thứ ba, hạn chế tiếp xúc với ai có nguy cơ cao như người lớn tuổi và người có sức khỏe kém. Thứ tư, giữ khoảng cách tối thiểu hai cánh tay hoặc càng xa càng tốt với người khác. Bằng cách giữ khoảng cách với người bên cạnh, ta sẽ tạo ra một rào cản vật lý ngăn cản virus truyền từ người này sang người kia, từ đó làm chậm sự lây lan của nó.', '', 0, '', '2020-03-30 04:12:27'),
(9, 1, 'Ngày đầu tiên cách ly toàn xã hội', 'Bla bla', 'Bla bla', '', 0, '', '2020-04-01 02:59:31');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
