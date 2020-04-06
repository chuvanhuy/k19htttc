-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 25, 2020 lúc 04:27 PM
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
(1, 1, 'Mỹ có thể thành tâm dịch toàn cầu', 'WHO cảnh báo Mỹ có thể là tâm dịch Covid-19 toàn cầu, khi số ca nhiễm và chết tăng kỷ lục trong một ngày, lên lần lượt gần 55.000 và gần 800.', '\"Chúng ta đang chứng kiến sự gia tăng rất lớn số ca nhiễm ở Mỹ. Bởi vậy, Mỹ có tiềm năng trở thành tâm dịch\", Margaret Harris, phát ngôn viên của Tổ chức Y tế Thế giới (WHO) hôm qua cho biết khi được hỏi liệu Mỹ có khả năng trở thành tâm dịch toàn cầu.\r\n\r\nTheo bà Harris, số ca nhiễm ở Mỹ đã tăng lên rất nhiều. Trong 24 giờ qua, 85% ca nhiễm mới nCoV được ghi nhận ở châu Âu và Mỹ, trong đó Mỹ chiếm khoảng 40%.\r\n\r\nMỹ ghi nhận thêm 11.074 ca nhiễm nCoV mới, nâng tổng số lên 54.808. Trong khi số người chết tăng thêm 222, mức tăng cao nhất trong 24 giờ từ khi Covid-19 xuất hiện tại nước này, khiến tổng số người chết tăng lên 775.', 'covid 19 tai my.jpg', 0, 'Hằng Nguyễn', '2020-03-25 03:14:25'),
(2, 1, 'Tây Ban Nha nhờ NATO hỗ trợ chống Covid-19 ', 'Quân đội Tây Ban Nha kêu gọi NATO hỗ trợ thiết bị y tế nhằm đối phó Covid-19 sau khi ghi nhận gần 40.000 ca nhiễm, gần 2.700 người chết.', '\"Lực lượng vũ trang Tây Ban Nha hôm 24/3 gửi đề nghị hỗ trợ quốc tế đến Trung tâm Điều phối Ứng phó Thảm họa châu Âu - Đại Tây Dương (EADRCC) nhằm đối phó đại dịch Covid-19\", NATO ra thông cáo cho biết.\r\n\r\nQuân đội Tây Ban Nha đề nghị NATO viện trợ 450.000 khẩu trang phòng độc, 500.000 bộ xét nghiệm nhanh, 500 máy thở và 1,5 triệu khẩu trang y tế nhằm ngăn nCoV lây lan trong cộng đồng dân cư và quân đội, cũng như điều trị các bệnh nhân mắc Covid-19.', 'covid 19 tai tay ban nha.jpg', 0, 'Phạm Đức Thành', '2020-03-25 03:14:25'),
(3, 2, '5 mẫu TV cỡ lớn có giá giảm nửa', 'Giá nhiều TV 4K 75 inch của Samsung, Sony và LG đã giảm từ 20 đến 50 triệu đồng, bằng nửa giá so với khi mới xuất hiện.', 'Model 4K tầm trung của Samsung có mức giảm gần 52% sau một năm. Từ mức niêm yết 60 triệu đồng, model 75 inch còn khoảng 29 triệu đồng. RU7100 là dòng TV 4K cỡ lớn có giá thấp nhất hiện giờ của Samsung. Ngoài 75 inch, sản phẩm còn các lựa chọn 43, 50, 55, 58 và 65 inch. Trong đó, model 58 và 65 đang có giá từ 12 đến 15 triệu đồng.\r\n\r\nThiết kế của RU7100 tối giản với mặt sau gọn, dây cable và điện có thể giấu ở chân đế. Vì sản phẩm giá thấp nên Samsung chỉ sử dụng chất liệu chủ yếu bằng nhựa cho khung vỏ và viền màn hình. Dòng TV 4K này sử dụng tấm nền LED viền, có hỗ trợ công nghệ UHD Dimming, tuy nhiên, độ tương phản và độ sâu của màu đen đều ở mức trung bình. Không dùng Android, RU7100 dùng nền tảng Tizen do nhà sản xuất Hàn Quốc phát triển riêng. Dù không đa dạng như nền tảng của Google, kho ứng dụng đủ dùng với nhiều phần mềm truyền hình, giải trí của Việt Nam.', 'tv4k.jpg', 0, 'Nguyễn Minh Quang', '2020-03-25 03:17:28'),
(4, 2, 'Mẹo mở iPhone khi đeo khẩu trang', 'Người dùng có thể \"qua mặt\" Face ID của Apple để mở khoá iPhone khi đeo khẩu trang bằng vài thao tác đơn giản.', 'Tại một hệ thống bán lẻ khác, hàng loạt mẫu iPhone cũng giảm giá. Thậm chí, mức điều chỉnh cho các model đời mới, như iPhone 11 Pro và 11 Pro Max còn được đẩy lên 3 triệu đồng với phiên bản 512 GB. Mẫu 11 Pro Max bản 512 GB còn 41 triệu đồng thay vì 44 triệu đồng như niêm yết. \r\n\r\nMức giảm đáng chú ý nhất thời gian gần đây là iPhone 7 Plus - sản phẩm bán chạy nhất năm ngoái tại thị trường Việt Nam. Tại một số cửa hàng nhỏ, phiên bản 32 GB còn 9,5 triệu đồng, thấp hơn 2 triệu đồng so với giá niêm yết trước đó. Mức giảm này khiến 7 Plus rẻ hơn cả đàn em iPhone 7 cùng dung lượng. Năm ngoái, trước khi bộ ba iPhone 11 ra mắt, doanh số riêng của iPhone 7 Plus từng chiếm gần 20% thị phần smartphone giá trên 20 triệu đồng ở Việt Nam.\r\n\r\nTuy nhiên, giá iPhone 7 Plus vẫn cao hơn các smartphone Android tầm trung đời mới của Samsung, Oppo... Ví dụ, Galaxy A71 mới ra đầu 2020 giờ có 8,7 triệu đồng hay Reno 2F đang được bán 8 triệu đồng.', 'iphone.jpg', 0, 'An Mai', '2020-03-25 03:17:28');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
