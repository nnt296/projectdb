-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2017 at 04:46 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `UserID` int(11) NOT NULL,
  `Password` varchar(12) NOT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `First_Name` varchar(12) NOT NULL,
  `Last_Name` varchar(25) NOT NULL,
  `Birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`UserID`, `Password`, `Phone`, `Email`, `Address`, `First_Name`, `Last_Name`, `Birthday`) VALUES
(171000001, '3Bsca274YEp4', '(097) 908-289', 'u4-yaw7tqvjjfd@3cwntbt5v0.com', '103 Nghĩa Tân, Nghĩa Tân, quận Cầu Giấy, Hà Nội', 'Vân', 'Hoàng', '1988-04-06'),
(171000003, 'PfeAHUsZTqYf', '(097) 722-391', 'bdue19y2pslo19.@ujrffzyy02a.com', 'A18 Cốm Vòng, phường Dịch Vọng Hậu, quận Cầu Giấy, Hà Nội', 'Tân', 'Vũ Văn', '1990-03-16'),
(171000004, 'B7ednDH3mHbt', '(092) 778-878', '-1a.4vdqq3e@4hpg7lf.com', 'Số 14, Ô 4, Lô 4A, KĐT Đền Lừ 2, phường Hoàng Văn Thụ, quận Hoàng Mai, Hà Nội', 'Thịnh', 'Nguyễn Phúc', '1981-01-09'),
(171000005, 'mgEf4eCTnN8s', '(094) 705-721', 'yw2mjoka@o0klwkkn5.com', '93 Khâm Thiên, Đống Đa, Hà Nội', 'Hùng', 'Nguyễn Mạnh', '1981-02-25'),
(171000007, 'xyB5uJ75H4nb', '(095) 677-737', 'yu2-f.it7x@kczge-sm.com', '27 Xuân La, phường Xuân La, quận Tây Hồ, Hà Nội', 'Quân', 'Phạm Thanh', '1991-03-26'),
(171000008, 'wEqG7xXpSjJf', '(097) 511-759', '23m2@8halrv.com', '21 Ngũ Xã, phường Trúc Bạch, quận Ba Đình, Hà Nội', 'Hoan', 'Mai Quý', '1991-06-11'),
(171000009, 'tHQvvcGbPzCz', '(095) 514-537', 'erbjqk3j9amw@hqu13z.com', '19 Nguyễn An Ninh, phường Tương Mai, quận Hai Bà Trưng, Hà Nội', 'Thượng', 'Nguyễn Kim', '1991-07-11'),
(171000010, 'KzKkZu3LJFSe', '(096) 008-780', 'pfhlnhy65o006@0fjj8se85.com', 'Kiot số 4, ngã ba chợ Nguyễn Sơn, Long Biên, Hà Nội', 'Hải', 'Minh Lương', '1978-03-13'),
(171000011, 'Hmfg4YpQKLXr', '(091) 680-111', 'jj7a01tm71y@g7j-zx.com', '11 Hàng Khoai, phường Đồng Xuân, quận Hoàn Kiếm, Hà Nội', 'Cường', 'Ngô Việt', '1978-06-28'),
(171000012, '6Z2Wt2eSfzyB', '(098) 730-388', 'r931fyhkv.-zjg@skdf3p-qbf.com', '148 Tây Sơn, Quang Trung, quận Đống Đa, Hà Nội', 'Thành', 'Hoàng Đình', '1979-02-17'),
(171000013, 'S3c3wvBNEtA5', '(091) 257-588', 'ga0dxn.@mbe0hnsh.com', '75 Hàng Bồ, phường Hàng Bồ, quận Hoàn Kiếm, Hà Nội', 'Mạnh', 'Vũ Đình', '1979-02-18'),
(171000014, 'dGMF8qLey5Zp', '(092) 546-991', 'rtz3x6t@a40b0ll.com', 'Số 9/31 Phố Yên Bái 2, Phố Huế, quận Hai Bà Trưng, Hà Nội', 'Bảo', 'Trần Quốc', '1976-05-27'),
(171000015, 'GGsSsWWmy2Va', '(095) 090-656', 'jh-w@gjwki5y2.com', '8 Hàng Rươi, phường Hàng Mã, quận Hoàn Kiếm, Hà Nội', 'Khương', 'Huỳnh Thị', '1986-12-21'),
(171000016, '7HWhYd7dnkyW', '(093) 025-146', '0tt@uidn1dgzee-q.com', '41 Tân Ấp, phường Phúc Xá, quận Ba Đình, Hà Nội', 'Thủy', 'Lê Thị Thanh', '1987-05-28'),
(171000017, '7JcsU5afQdJc', '(094) 809-096', '1rjkxt@7811ur2u.com', '539 Nguyễn Trãi, Thanh Xuân Nam, quận Thanh Xuân, Hà Nội', 'Thành', 'Lưu Bá', '1981-09-22'),
(171000018, 'dVdQCnPHKP8F', '(099) 226-454', 'b0rflhi@q7mu644.com', 'Cửa hàng 34 Hoàng Quốc Việt, phường Nghĩa Đô, quận Cầu Giấy, Hà Nội', 'Hải', 'Hà Văn', '1981-06-12'),
(171000019, 'YLAKZ4KhEXy7', '(099) 239-030', 'jp489@x2wmlcc7q.com', '2 Ngô Gia Khảm, phường Ngọc Lâm, quận Long Biên, Hà Nội', 'Thành', 'Huỳnh Minh', '1983-02-14'),
(171000020, 'bEskmHm2Bark', '(096) 659-337', 'n4cz-k@d5xyzpq68zjx.com', 'Cửa hàng 182 Bạch Mai, phường Cầu Dền, quận Hai Bà Trưng, Hà Nội', 'Hường', 'Trần Thị Thu', '1983-07-21'),
(171000021, 'dGjTGYp3ryrj', '(094) 206-264', 'kl4xy71tk_@px2rkz.com', '10 Nguyễn Khánh Toàn, phường Quan Hoa, quận Cầu Giấy, Hà Nội', 'Thư', 'Đào Anh', '1983-11-14'),
(171000022, 'cYLE7QzTeAvt', '(094) 006-046', 'toah6sb2gkn3@pwbghya7.com', '32G Lý Nam Đế, phường Cửa Đông, quận Hoàn Kiếm, Hà Nội', 'Hiền', 'Hồ Thị', '1987-01-15'),
(171000023, 'zbK7vpBr9SVa', '(094) 101-057', '8w-w@bhj4v3gw.com', 'Số 14, Ô 4, Lô 4A, KĐT Đền Lừ 2, phường Hoàng Văn Thụ, quận Hoàng Mai, Hà Nội', 'Anh', 'Lê Thi', '1978-12-18'),
(171000024, '3AGcs7sn2UKu', '(097) 028-910', 'd.1kka.1yb87183@5fvodgqlpi7h.com', '357 Bạch Đằng, phường Chương Dương, quận Hoàn Kiếm, Hà Nội', 'Huy', 'Phan Quốc', '1979-04-15'),
(171000025, '7hSbkAMacjTu', '(097) 034-371', 'gowfc8pc@6cz79tv4j.com', '25 Hàng Đậu, phường Đồng Xuân, quận Hoàn Kiếm, Hà Nội', 'Trí', 'Nguyễn Hữu', '1980-06-10'),
(171000026, '6849rphzqTqC', '(094) 976-586', '76b.jnqt@jw823km8mglp.com', 'Kiot số 8, Lô CT1-B1, KDT Xa La, phường Phúc La, quận Hà Đông, Hà Nội', 'Băng', 'Châu Lê', '1983-07-11'),
(171000027, 'tcdhrtKZg8Wa', '(092) 494-120', 'e-m@xse78c11.com', 'C2-TT8, KDT Văn Quán, phường Văn Quán, quận Hà Đông, Hà Nội', 'Khánh', 'Nguyễn Bảo', '1992-10-05'),
(171000028, '2vSDqqpEmdFZ', '(099) 490-310', '_ser@11nrsx4pz.com', '70 Nguyễn Phong Sắc, phường Dịch Vọng, quận Cầu Giấy, Hà Nội', 'Minh', 'Ninh Thị Ngọc', '1979-04-09'),
(171000029, 'pjPnYxYq6VD5', '(091) 501-424', 'bet_rfrvany3@b3pajtrz.com', '559 Phạm Văn Đồng, xã Cổ Nhuế, huyện Từ Liêm, Hà Nội', 'Cao', 'Nguyễn Văn', '1982-11-09'),
(171000030, 'gNvHgQYzPvne', '(096) 010-145', 'r4sjgr@i76janhqsyz.com', '286 Xã Đàn, phường Phương Liên, quận Đống Đa, Hà Nội', 'Dũng', 'Nguyễn Bá', '1990-02-20'),
(171000031, 'DHHfKT63MNbH', '(099) 266-853', 'hh8f5l43a7hqfuc@qeim9oo2-9am.com', '215A Khương Trung, phường Khương Trung, quận Thanh Xuân, Hà Nội', 'Linh', 'Lâm Phương', '1977-04-14'),
(171000032, 'hQAXHw7T2bMJ', '(097) 681-232', 'nhgucm@lncbo8i5b27r.com', '206 Lò Đúc, phường Đống Mác, quận Hai Bà Trưng, Hà Nội', 'Trâm', 'Phạm Huỳnh', '1976-01-09'),
(171000033, 'rQSVVkqBuCmA', '(091) 174-120', '75tjvsgv6qufx2@yzb-bd.com', '152 Phố Vọng, phường Phương Liệt, quận Thanh Xuân, Hà Nội', 'Linh', 'Nguyễn Thị Hồng', '1992-03-07'),
(171000034, 'Y4G84SQhNzfd', '(092) 672-563', 'ajk@b-ft6jnx2.com', '108 Hoàng Hoa Thám, phường Thụy Khuê, quận Tây Hồ, Hà Nội', 'Chi', 'Hà Thị Xuân', '1979-03-03'),
(171000035, 'RcyqHwWSYVg5', '(093) 202-006', 'i43bgkh5.9@ra6te70.com', '102 Yên Phụ, phường Yên Phụ, quậnTây Hồ, Hà Nội', 'Sử', 'Nguyễn Phan Bách', '1981-09-22'),
(171000036, 'XWUtbwPCgnH4', '(096) 358-106', 'igdo@z9wcun.com', '60 Cửa Bắc, phường Trúc Bạch, quận Ba Đình, Hà Nội', 'Huy', 'Trương Bá', '1988-10-03'),
(171000037, 'Z6fBwSrh5VgF', '(095) 283-031', 'xqrzx27p238@1vn5qm0uuex.com', '55A Đại La, phường Đồng Tâm, quận Hai Bà Trưng, Hà Nội', 'Minh', 'Nguyễn Hoàng', '1976-04-26'),
(171000038, '9xZLCpTnxN2k', '(095) 287-524', 'wv9f0u8t_lfva.-@113qkfk2sik.com', '39C Hàng Bài, phường Hàng Bài, quận Hoàn Kiếm, Hà Nội', 'Huy', 'Nguyễn Bác', '1991-10-16'),
(171000039, 'kcmB6BjMxTat', '(097) 449-543', '-.h@ttdyqws9.com', '34 Thụy Khuê, phường Thụy Khuê, quận Tây Hồ, Hà Nội', 'Anh', 'Dương Võ Nhi', '1983-09-23'),
(171000040, 'pncyebXZBvUV', '(091) 001-952', 'ce7cbw57ac@ak4rtdt8btd.com', '46 Trần Quốc Toản, p. Trần Hưng Đạo, q. Hoàn Kiếm, Hà Nội', 'Huy', 'Nguyễn Hoàng', '1986-05-19'),
(171000041, 'tW2nGEkgftcK', '(094) 821-781', 'hhs62poust@nut9ln.com', '149 Đốc Ngữ, phường Liễu Giai, quận Ba Đình, Hà Nội', 'Quốc', 'Hồ Doãn', '1977-04-05'),
(171000042, '3bQ8U6QxdU59', '(093) 818-144', 'nig74kozl947--b@p235eklw.com', '72 Bát Sứ, phường Hàng Bồ, quận Hoàn Kiếm, Hà Nội', 'Nguyên', 'Trần Thị Thanh', '1978-03-07'),
(171000043, 'C7tXYSG6Amny', '(092) 226-840', 'fxgtuu8422u@0cgj99d76fk.com', '36 Ngô Sỹ Liên, phường Văn Miếu, quận Đống Đa, Hà Nội', 'Trúc', 'Đỗ Vĩnh', '1990-11-05'),
(171000044, '4gdrFTnEeKgE', '(093) 513-009', 'd3hpm8jsrp@a962xujvwp6.com', '188 Nguyễn Văn cừ, Long Biên, Hà Nội', 'Tiến', 'Võ Trường', '1990-12-17'),
(171000045, 'pznzk3f8WmAL', '(093) 319-416', '-qhd26.5uh@g6bplr5l.com', '119 Trần Đại Nghĩa, phường Đồng Tâm, quận Hai Bà Trưng, Hà Nội', 'Long', 'Hoàng Phạm', '1988-06-04'),
(171000046, 'nT5PfhRXwbyR', '(091) 624-329', 'gho2r_m8@47h2ko6-h53.com', '201 Đội Cấn, quận Ba Đình, Hà Nội', 'Đức', 'Nguyễn Hồng', '1987-05-22'),
(171000047, 'rx7gv3b2rhsk', '(092) 333-182', '_wco9vhh.-oh@lcxjos.com', '196 Ngô Gia Tự, Long Biên, Hà Nội', 'Tiến', 'Thịnh Vũ', '1983-01-12'),
(171000048, 'EWysfpw95Jvc', '(091) 067-091', '17u@cytkskz.com', '296 Lạc Trung, Hà Nội', 'Ngọc', 'Đỗ Thị Diệu', '1984-09-20'),
(171000049, 'Zj6vFAbWRKGr', '(097) 182-939', 'vwxre5ze3@alac9kq.com', '2A Hàng Lược, Phường Hàng Mã, Quận Hoàn Kiếm, Hà Nội', 'Đức', 'Phạm Hữu', '1977-12-06'),
(171000050, 'WYn4dFmXXPZy', '(093) 058-089', '2ehjh84s@ncq7kaq8.com', '54 Trần Quốc Toản, p. Trần Hưng Đạo, q. Hoàn Kiếm, Hà Nội', 'Thành', 'Nguyễn Văn', '1991-02-02'),
(171000051, 'ujZMkc9ZRHTk', '(098) 427-115', '2d2qdarg@01xocmsjv1.com', '12 Đông Tác, phường Kim Liên, quận Đống Đa, Hà Nội', 'Dân', 'Nguyễn Công', '1983-10-15'),
(171000052, 'dnMzaXURJ2Dh', '(094) 182-426', 'gspy@mzx4wdnl.com', '50 Phùng Hưng, quận Hà Đông, Hà Nội', 'Thương', 'Nguyễn Thị Thanh', '1992-06-13'),
(171000053, 'EWKLS6ZPsXwz', '(097) 886-966', '3kdgr@b7cq0p.com', '52 Thái Thịnh, Đống Đa, Hà Nội', 'Mai', 'Nguyễn Hoàng Phương', '1981-12-17'),
(171000055, '7CffFxmD9SRZ', '(097) 347-770', 'eh-d@w7kwtw9no.com', '50 Thái Thịnh, Đống Đa, Hà Nội', 'Minh', 'Nguyễn Hoàng', '1984-02-05'),
(171000056, 'yPsrqYN9NDu6', '(097) 993-714', 'ue_rgg4uvex@iv6mc0uabf7.com', '60 Sài Đồng, Long Biên, Hà Nội', 'Đức', 'Hồ Thị', '1992-01-15'),
(171000057, 'NxfHb97ZqAe4', '(093) 917-072', 'q_15noy@7rvmx2dfki3.com', 'Số 10, Ô 4, Lô 4A, KĐT Đền Lừ 2, phường Hoàng Văn Thụ, quận Hoàng Mai, Hà Nội', 'Huy', 'Ninh Thị Ngọc', '1983-10-16'),
(171000058, 'PUJZ8tzfRfGk', '(093) 216-065', 'x98vq9xw4@0lg8a0jnvf6.com', '63 Khâm Thiên, Đống Đa, Hà Nội', 'Hải', 'Nguyễn Văn', '1984-10-02'),
(171000059, '9upt6XFfbyjM', '(095) 805-931', 't0xzh@5p1wawsva.com', '3 Hồ Tùng Mậu, thị trấn Diễn, Từ Liêm, Hà Nội', 'Hải', 'Nguyễn Kim', '1985-09-15'),
(171000060, 'ykt9m6EhHJHU', '(094) 205-057', 'xee0la-@jkl5pfz.com', '20 Xuân La, phường Xuân La, quận Tây Hồ, Hà Nội', 'Hường', 'Đào Anh', '1991-07-28'),
(171000061, 'kLw2Q2wGyKzV', '(092) 747-538', 'b758@8sac-gxlr734.com', '20 Ngũ Xã, phường Trúc Bạch, quận Ba Đình, Hà Nội', 'Băng', 'Mai Quý', '1985-06-11'),
(171000062, 'KrHN7yApEgy4', '(093) 758-372', 'j9pqu1c2.ahe_j@02d6jd8jkuu3.com', '64 Thụy Khuê, phường Thụy Khuê, quận Tây Hồ, Hà Nội', 'Huy', 'Nguyễn Hồng', '1986-06-20'),
(171000063, 'ZHPPyDE9Guuh', '(097) 799-725', 'wkg7gwj1@jlojmvnk.com', '14 Đông Tác, phường Kim Liên, quận Đống Đa, Hà Nội', 'Chi', 'Phạm Thanh', '1978-02-17'),
(171000064, 'trEmgAgsKkZq', '(093) 666-535', 'b0gladvlydccp@xmvqsfzf.com', '98 Hoàng Hoa Thám, phường Thụy Khuê, quận Tây Hồ, Hà Nội', 'Bảo', 'Nguyễn Phúc', '1978-12-10'),
(171000065, 'W6ck6YLeJBgW', '(096) 919-486', 'vzmfby-n@y6t07w.com', 'Kiot số 7, Lô CT1-B1, KDT Xa La, phường Phúc La, quận Hà Đông, Hà Nội', 'Thương', 'Mai Văn', '1979-01-14'),
(171000066, 'zqLGnHpVznzw', '(095) 260-986', 'ixjl.9yvm@d1ajeb5.com', '73 Hàng Bồ, phường Hàng Bồ, quận Hoàn Kiếm, Hà Nội', 'Long', 'Dương Võ Nhi', '1989-09-03'),
(171000067, 'W2hnNppytW9k', '(096) 918-955', '-6.9gz31xxld5@tzb4z8pi.com', 'Số 5/30 Phố Yên Bái 2, Phố Huế, quận Hai Bà Trưng, Hà Nội', 'Thượng', 'Lưu Bá', '1977-10-08'),
(171000068, 'bUx5FBbLQVY2', '(096) 100-927', '_k5clx@6ytyxp6kf.com', '43 Nguyễn Chí Thanh, Láng Hạ, quận Đống Đa, Hà Nội', 'Mạnh', 'Hoàng Phạm', '1983-12-15'),
(171000069, 'MY6zqVdsaccx', '(092) 080-967', '57.wn1xfn@tuv2cta6wmqr.com', 'A17 Cốm Vòng, phường Dịch Vọng Hậu, quận Cầu Giấy, Hà Nội', 'Thủy', 'Nguyễn Hồng', '1980-09-11'),
(171000070, 'V4W7EGKrzWR3', '(099) 587-093', 'fyq.-wt6nm601su@45bnp4p05kuf.com', '180 Bạch Mai, phường Cầu Dền, quận Hai Bà Trưng, Hà Nội', 'Anh', 'Hoàng Đình', '1981-11-13'),
(171000071, 'k536pTLpDYAK', '(097) 874-180', 'f3g5ff22zuc.@m-y5sr.com', '93 Nghĩa Tân, Nghĩa Tân, quận Cầu Giấy, Hà Nội', 'Hoan', 'Võ Văn', '1982-04-30'),
(171000072, 'LCtcpsAPPSA9', '(099) 236-974', '7cnjagvwmkx@qa3if997v.com', '18 Nguyễn Văn cừ, Long Biên, Hà Nội', 'Sử', 'Phạm Thanh', '1987-10-28'),
(171000073, 'uTq4gpXdUgsS', '(091) 712-436', 'v6-ixr1j.@slm3lsl84vsj.com', '19 Trần Đại Nghĩa, phường Đồng Tâm, quận Hai Bà Trưng, Hà Nội', 'Khương', 'Mai Quý', '1988-11-22'),
(171000074, 'WMcrkKcJLvh7', '(091) 219-552', 's3hqx59vm2@rul8iu7.com', '20 Đội Cấn, quận Ba Đình, Hà Nội', 'Tiến', 'Nguyễn Kim', '1989-07-01'),
(171000075, 'fD4RScdHJr4t', '(098) 848-113', 'isg25cunw5-8@jzbzk5v5fkkz.com', 'Số 6, ngã ba chợ Nguyễn Sơn, Long Biên, Hà Nội', 'Quốc', 'Minh Lương', '1979-09-04'),
(171000076, 'FKEWgfqDzY3b', '(092) 865-204', '0fdyalega9@juj5lhy.com', '70 Bát Sứ, phường Hàng Bồ, quận Hoàn Kiếm, Hà Nội', 'Minh', 'Hoàng', '1976-10-02'),
(171000077, '5MEdnP5gGFP5', '(092) 576-161', '2kfu8.zekn@1qj6t865aa68.com', '35 Ngô Sỹ Liên, phường Văn Miếu, quận Đống Đa, Hà Nội', 'Cường', 'Huỳnh Thị', '1977-01-02'),
(171000078, 'BpKrypSxLUP8', '(096) 988-933', 'gd3n4l@hqvn-qmx.com', 'C3-TT8, KDT Văn Quán, phường Văn Quán, quận Hà Đông, Hà Nội', 'Mai', 'Lê Thị Thanh', '1983-06-26'),
(171000079, '4c89bEzC9pU5', '(094) 831-317', 'akcjexf_qg@akcjzimovd.com', '2 Nguyễn Phong Sắc, phường Dịch Vọng, quận Cầu Giấy, Hà Nội', 'Đức', 'Lưu Bá', '1989-10-09'),
(171000080, 'YrqbPQbwWYhd', '(093) 559-751', 'vlgu3tgldfvg@py2uxg1wr47.com', '10 Yên Phụ, phường Yên Phụ, quậnTây Hồ, Hà Nội', 'Thư', 'Hà Văn', '1990-02-03'),
(171000081, 'KQNnBRqdWMQy', '(093) 246-348', 'ivwl@jn6utn.com', '54A Đại La, phường Đồng Tâm, quận Hai Bà Trưng, Hà Nội', 'Dũng', 'Ngô Việt', '1991-09-25'),
(171000082, 'NexDjwQSuSpf', '(099) 826-035', 'uvf1el@d3bxoi.com', '38C Hàng Bài, phường Hàng Bài, quận Hoàn Kiếm, Hà Nội', 'Cao', 'Hoàng Đình', '1992-09-14'),
(171000083, 'd9wXyVCMCE7Q', '(099) 114-013', '1f97gdo@2oxeig.com', '52 Trần Quốc Toản, p. Trần Hưng Đạo, q. Hoàn Kiếm, Hà Nội', 'Huy', 'Vũ Đình', '1977-05-20'),
(171000084, 'rBEhkx6nh4NE', '(098) 343-026', 'r1ea75ee99f@skn7kcaf8h.com', '21  Ngô Gia Tự, Long Biên, Hà Nội', 'Tiến', 'Trần Quốc', '1977-07-21'),
(171000085, 'anYpMb3TDMTG', '(097) 139-004', '-y-d8e@2qvquvj.com', '35 Bạch Đằng, phường Chương Dương, quận Hoàn Kiếm, Hà Nội', 'Anh', 'Trần Thị Thu', '1978-12-24'),
(171000086, 'uGp4B7f5mmmW', '(092) 916-574', 'oixu390@wg0xm75vf3.com', '59 Nguyễn Trãi, Thanh Xuân Nam, quận Thanh Xuân, Hà Nội', 'Linh', 'Đào Anh', '1976-12-15'),
(171000087, 'pSA33cXWx6YJ', '(099) 438-630', '8bhxt@3bbmlo.com', '14 Hoàng Quốc Việt, phường Nghĩa Đô, quận Cầu Giấy, Hà Nội', 'Hiền', 'Hồ Thị', '1992-10-02'),
(171000088, 'WzErFF7x4Mer', '(093) 852-464', 'yzh@ntd-zcwa9q.com', '96 Lạc Trung, Hà Nội', 'Ngọc', 'Lê Thi', '1976-04-21'),
(171000090, 'pCjNJP6evbx3', '(095) 536-104', '84z_3nan@m939bz.com', '118 Tây Sơn, Quang Trung, quận Đống Đa, Hà Nội', 'Phong', 'Vũ Văn', '1982-05-06'),
(171000091, '6w8BnthBsvWh', '(097) 880-122', '3k0b@ysi5enlr.com', '6 Cửa Bắc, phường Trúc Bạch, quận Ba Đình, Hà Nội', 'Thương', 'Nguyễn Phúc', '1980-04-20'),
(171000092, 'SzX2PE4uR72g', '(098) 617-399', 'd26@mv7ccakxa4h6.com', 'Số 14, Ô 4, Lô 4A, KĐT Đền Lừ 2, phường Hoàng Văn Thụ, quận Hoàng Mai, Hà Nội', 'Minh', 'Nguyễn Mạnh', '1977-04-24'),
(171000093, 'y5yNxUCFrDAd', '(097) 022-914', 'wfsx6_7ych0ui0@x910tvbvw.com', '2 Ngô Gia Khảm, phường Ngọc Lâm, quận Long Biên, Hà Nội', 'Mạnh', 'Châu Lê', '1986-09-11'),
(171000094, 'T6423vRUqtzc', '(093) 602-724', 'ydrs..@beqx9or.com', '59 Phạm Văn Đồng, xã Cổ Nhuế, huyện Từ Liêm, Hà Nội', 'Anh', 'Nguyễn Bảo', '1988-05-03'),
(171000095, 'AEZuLRkbKUtZ', '(096) 192-600', 'zs.9oy7dxo@yx0j9g7bx.com', '26 Xã Đàn, phường Phương Liên, quận Đống Đa, Hà Nội', 'Hải', 'Phan Quốc', '1988-10-14'),
(171000096, 'zCqq4NrYqWpv', '(094) 845-717', 'xpfcbcr@sx9ge9.com', '21A Khương Trung, phường Khương Trung, quận Thanh Xuân, Hà Nội', 'Huy', 'Nguyễn Hữu', '1982-06-09'),
(171000097, '2vRA8AZDPZUF', '(095) 821-919', 'v0w@fkj3it1po.com', '26 Lò Đúc, phường Đống Mác, quận Hai Bà Trưng, Hà Nội', 'Linh', 'Nguyễn Hoàng', '1984-02-23'),
(171000098, 'KG3NmXCSdwvX', '(097) 491-031', '431f93h_h2xe@71b9hw.com', '11 Nguyễn Khánh Toàn, phường Quan Hoa, quận Cầu Giấy, Hà Nội', 'Tiến', 'Hồ Doãn', '1979-12-28'),
(171000099, 'HXSSrpgtbn4F', '(093) 462-750', '4fbvovj6_.823u@6wjbuq2fuw7.com', '23G Lý Nam Đế, phường Cửa Đông, quận Hoàn Kiếm, Hà Nội', 'Linh', 'Trần Thị Thanh', '1980-04-23'),
(171000100, 'dQ2pHWmNNgSQ', '(094) 572-046', 'cip8.u9u0r@31o2verd0.com', '1  Nguyễn An Ninh, phường Tương Mai, quận Hai Bà Trưng, Hà Nội', 'Bảo', 'Huỳnh Minh', '1986-03-17'),
(171000101, 'DZjPqr3xfuLL', '(095) 872-301', 'ay6@24nny-91.com', '3B Hàng Lược, Phường Hàng Mã, Quận Hoàn Kiếm, Hà Nội', 'Thư', 'Nguyễn Công', '1977-01-19'),
(171000103, 'MWEnNGfunNmd', '(097) 218-986', 'p3uqnmgf2v5@yrt64db.com', '23 Hàng Đậu, phường Đồng Xuân, quận Hoàn Kiếm, Hà Nội', 'Băng', 'Võ Trường', '1991-03-22'),
(171000104, 'J6XAp4DSHrus', '(099) 350-531', '2rug08n.l.f@z1yec-khy5.com', '19 Đốc Ngữ, phường Liễu Giai, quận Ba Đình, Hà Nội', 'Hường', 'Hoàng Phạm', '1991-02-12'),
(171000105, 'UJd7yEGpjctp', '(091) 271-246', 'lthdxj4i-h3eewr@d7qiug8y.com', '18 Hàng Rươi, phường Hàng Mã, quận Hoàn Kiếm, Hà Nội', 'Tiến', 'Nguyễn Hồng', '1979-10-28'),
(171000106, 'NV5nKxRMxjs7', '(098) 189-034', '_rv6r9@d0dhvm03kfso.com', '3 Tân Ấp, phường Phúc Xá, quận Ba Đình, Hà Nội', 'Dũng', 'Trương Bá', '1981-07-17'),
(171000107, 'XWjPKyYrjpcw', '(092) 131-253', '7o-lxt@rsg1nf.com', '12 Phố Vọng, phường Phương Liệt, quận Thanh Xuân, Hà Nội', 'Hải', 'Nguyễn Hoàng', '1989-05-11'),
(171000108, 'fjuWpKMWJud5', '(097) 750-385', '-x6bv@8ieih8smo7wr.com', '13 Bạch Đằng, phường Chương Dương, quận Hoàn Kiếm, Hà Nội', 'Mai', 'Nguyễn Bác', '1989-09-18'),
(171000109, 'wY5bqk8nv48B', '(094) 575-008', 'qax-teehsjop@h0hiterymyu6.com', '23 Hàng Đậu, phường Đồng Xuân, quận Hoàn Kiếm, Hà Nội', 'Ngọc', 'Dương Võ Nhi', '1990-02-22'),
(171000110, '3MtLTMH9Wq8Z', '(097) 268-591', '4yr@rw7sh4-l8g4f.com', 'Số 5, Lô CT1-B1, KDT Xa La, phường Phúc La, quận Hà Đông, Hà Nội', 'Long', 'Phạm Hữu', '1991-08-26'),
(171000111, 'L5RUmSFXbMwE', '(097) 958-590', 'nuqwbub292@k21irmz.com', 'D3-TT8, KDT Văn Quán, phường Văn Quán, quận Hà Đông, Hà Nội', 'Chi', 'Nguyễn Hoàng', '1986-11-05'),
(171000112, 'JAQH2LjzeQDK', '(097) 198-364', 'vrgoqtkylrgt510@n2qpqle1c60t.com', 'Số 10, ngã ba chợ Nguyễn Sơn, Long Biên, Hà Nội', 'Anh', 'Nguyễn Văn', '1987-10-24'),
(171000113, 'hseMe3HkrA48', '(092) 624-405', 'tgi-n@vn56-ekfwd.com', '50 Bát Sứ, phường Hàng Bồ, quận Hoàn Kiếm, Hà Nội', 'Thủy', 'Phạm Huỳnh', '1978-02-14'),
(171000114, 'yDf2c3G8AbnH', '(096) 871-371', 'rw_9ala3n819c@moitmue1o.com', '32 Ngô Sỹ Liên, phường Văn Miếu, quận Đống Đa, Hà Nội', 'Hoan', 'Nguyễn Thị Hồng', '1987-10-25'),
(171000115, 'WgjCpnQZcx8W', '(098) 807-441', 'tk8en2y6kx1l02b@ju1fxct6v6.com', 'C1-TT8, KDT Văn Quán, phường Văn Quán, quận Hà Đông, Hà Nội', 'Đức', 'Hà Thị Xuân', '1988-03-11'),
(171000116, 'MrhcDXMD9Xbf', '(094) 652-478', 'v51kl-ep@k5bddx4pus.com', '32 Thái Thịnh, Đống Đa, Hà Nội', 'Khương', 'Thịnh Vũ', '1986-08-31'),
(171000117, 'tf7P8gGCtXxT', '(098) 041-509', 'cg-1iru6@l9t71heaejo.com', '31 Sài Đồng, Long Biên, Hà Nội', 'Minh', 'Ninh Thị Ngọc', '1989-03-30'),
(171000118, 'tecKaJZxs28z', '(091) 165-887', 'ruhdmwy6@bp7hnu.com', '47 Thái Thịnh, Đống Đa, Hà Nội', 'Quốc', 'Nguyễn Văn', '1992-07-29'),
(171000119, 'bTnxbugCtBj7', '(098) 413-900', 'difb3.4-@e2cnfsqwaxz.com', '15 Nguyễn Khánh Toàn, phường Quan Hoa, quận Cầu Giấy, Hà Nội', 'Hiền', 'Nguyễn Bá', '1976-08-08'),
(171000120, 'ZQDseDCCjpXS', '(097) 212-900', 'mgj4bre@w601cc2.com', '6A Lý Nam Đế, phường Cửa Đông, quận Hoàn Kiếm, Hà Nội', 'Đức', 'Lâm Phương', '1989-10-29'),
(171000121, 'jXYp2Q95DXwh', '(093) 505-960', 'ice-asojmhz7@jjlvj5pts.com', '7B Đại La, phường Đồng Tâm, quận Hai Bà Trưng, Hà Nội', 'Thượng', 'Nguyễn Phan Bách', '1992-04-01'),
(171000122, 'cwWyt2RdK8Xx', '(099) 061-953', 'r9i5v-t@dfvhcvz.com', '18D Hàng Bài, phường Hàng Bài, quận Hoàn Kiếm, Hà Nội', 'Cường', 'Nguyễn Vũ', '1991-01-12'),
(171000123, 'WzMjTWHR7c6Q', '(094) 332-006', 'ays793fs@a08sriz9f81.com', '32 Trần Quốc Toản, p. Trần Hưng Đạo, q. Hoàn Kiếm, Hà Nội', 'Cao', 'Đỗ Thị Diệu', '1992-05-24'),
(171000124, 'bnQXsx4jDMpU', '(094) 157-504', 'i5.5.cn1tg1f@ysboysnxo7d.com', '23  Ngô Gia Tự, Long Biên, Hà Nội', 'Huy', 'Phạm Hữu', '1992-09-22'),
(171000125, 'EAv8HEhrEVGN', '(099) 142-161', 'a5s3sm-jm2j@nb87ivb7d', '55 Bạch Đằng, phường Chương Dương, quận Hoàn Kiếm, Hà Nội', 'Sử', 'Nguyễn Văn', '1985-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `DishID` int(11) NOT NULL,
  `FoodID` int(11) NOT NULL,
  `VendorID` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`DishID`, `FoodID`, `VendorID`, `Price`) VALUES
(1, 1, 8, 25000),
(2, 2, 9, 35000),
(6, 7, 2, 40000),
(8, 8, 1, 30000),
(9, 8, 2, 40000),
(11, 9, 1, 25000),
(13, 9, 13, 30000),
(14, 10, 1, 30000),
(15, 10, 13, 30000),
(19, 11, 6, 10000),
(20, 11, 7, 5000),
(21, 11, 8, 10000),
(22, 11, 13, 10000),
(23, 11, 14, 10000),
(24, 11, 16, 10000),
(25, 11, 18, 10000),
(29, 12, 6, 10000),
(30, 12, 7, 10000),
(31, 12, 8, 10000),
(32, 12, 13, 10000),
(33, 12, 14, 10000),
(34, 12, 16, 10000),
(35, 12, 18, 10000),
(36, 13, 1, 10000),
(37, 13, 4, 10000),
(38, 13, 5, 10000),
(39, 13, 6, 10000),
(40, 13, 7, 10000),
(41, 13, 8, 10000),
(42, 13, 13, 10000),
(43, 13, 14, 10000),
(44, 13, 16, 10000),
(45, 13, 18, 10000),
(46, 14, 1, 10000),
(47, 14, 4, 10000),
(48, 14, 5, 10000),
(49, 14, 6, 10000),
(50, 14, 7, 10000),
(51, 14, 8, 10000),
(52, 14, 13, 10000),
(53, 14, 14, 10000),
(54, 14, 16, 10000),
(55, 14, 18, 10000),
(56, 15, 5, 5000),
(57, 15, 6, 5000),
(58, 15, 8, 5000),
(59, 15, 13, 5000),
(60, 15, 14, 5000),
(61, 15, 15, 5000),
(62, 15, 16, 5000),
(63, 15, 19, 5000),
(64, 15, 21, 5000),
(65, 16, 5, 8000),
(66, 16, 6, 8000),
(67, 16, 14, 8000),
(68, 16, 17, 8000),
(69, 16, 18, 8000),
(70, 16, 20, 8000),
(71, 16, 25, 8000),
(72, 17, 5, 8000),
(73, 17, 6, 8000),
(74, 17, 14, 8000),
(75, 17, 17, 8000),
(76, 17, 18, 8000),
(77, 17, 20, 8000),
(78, 17, 25, 8000),
(79, 18, 25, 15000),
(80, 19, 25, 15000),
(81, 20, 19, 25000),
(82, 20, 20, 25000),
(83, 21, 19, 25000),
(84, 21, 20, 25000),
(85, 22, 22, 15000),
(86, 23, 22, 15000),
(87, 24, 12, 25000),
(88, 25, 12, 25000),
(89, 26, 21, 25000),
(90, 27, 21, 10000),
(91, 28, 6, 15000),
(92, 29, 6, 15000),
(93, 30, 6, 15000),
(94, 31, 6, 15000),
(95, 28, 14, 15000),
(96, 29, 14, 15000),
(97, 30, 14, 15000),
(98, 31, 14, 15000),
(99, 28, 17, 15000),
(100, 29, 17, 15000),
(101, 30, 17, 15000),
(102, 31, 17, 15000),
(103, 28, 18, 15000),
(104, 29, 18, 15000),
(105, 30, 18, 15000),
(106, 31, 18, 15000),
(107, 28, 25, 15000),
(108, 29, 25, 15000),
(109, 30, 25, 15000),
(110, 31, 25, 15000),
(111, 32, 5, 15000),
(112, 33, 5, 15000),
(113, 34, 5, 20000),
(114, 35, 5, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `FoodID` int(11) NOT NULL,
  `Food_Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Course` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`FoodID`, `Food_Name`, `Type`, `Course`, `Description`, `Image`) VALUES
(1, 'Bún chả', 'Bún', 'Món chính', 'Bún ăn kèm chả nướng', 'buncha.jpg'),
(2, 'Bún cá', 'Bún', 'Món chính', 'Bún nước ăn kèm với cá', 'bunca.jpg'),
(3, 'Bún thang', 'Bún', 'Món chính', 'Bún nước ăn kèm giò trứng nấm thái chỉ', 'bunthang.jpg'),
(5, 'Bún riêu cua', 'Bún', 'Món chính', 'Bún nước riêu cua ăn kèm giò thịt bò bắp', 'bunrieucua.jpg'),
(6, 'Bún ốc', 'Bún', 'Món chính', 'Bún nước ăn kèm ốc', 'bunoc.jpg'),
(7, 'Phở bò', 'Phở', 'Món chính', 'Phở nước ăn kèm bò', 'phobo.jpg'),
(8, 'Phở gà', 'Phở', 'Món chính', 'Phở nước ăn kèm gà', 'phoga.jpg'),
(9, 'Phở xào', 'Phở', 'Món chính', 'Phở khô xào ăn kèm bò xào', 'phoxao.jpg'),
(10, 'Phở cuốn', 'Phở', 'Món chính', 'Phở cuốn thịt bò xào rau thơm', 'pho cuon.jpg'),
(11, 'Cocacola', 'Nước ngọt', 'Đồ uống', '', 'cocacola.jpg'),
(12, 'Pepsi', 'Nước ngọt', 'Đồ uống', '', 'pepsi.jpg'),
(13, '7up', 'Nước ngọt', 'Đồ uống', '', '7up.jpg'),
(14, 'Fanta', 'Nước ngọt', 'Đồ uống', '', 'fanta.jpg'),
(15, 'Trà đá', 'Trà', 'Đồ uống', '', 'trada.jpg'),
(16, 'Trà chanh', 'Trà', 'Đồ uống', '', 'trachanh.jpg'),
(17, 'Trà đào', 'Trà', 'Đồ uống', '', 'trachanh.jpg'),
(18, 'Cà phê đen', 'Cà phê', 'Đồ uống', '', 'capheden.jpg'),
(19, 'Cà phê sữa', 'Cà phê', 'Đồ uống', '', 'caphesua.jpg'),
(20, 'Cơm gà', 'Cơm', 'Món chính', 'Cơm ăn kèm đùi gà sốt nấm', 'comga.jpg'),
(21, 'Cơm sườn', 'Cơm', 'Món chính', 'Cơm ăn kèm sườn lợn nướng', 'comsuon.jpg'),
(22, 'Xôi gà', 'Xôi', 'Món chính', 'Xôi ăn kèm gà rang xé', 'xoiga.jpg'),
(23, 'Xôi thịt', 'Xôi', 'Món chính', 'Xôi ăn kèm thịt kho tàu trứng', 'xoithit.jpg'),
(24, 'Miến xào cua', 'Miến', 'Món chính', 'Miến xào với thịt cua tách', 'mienxaocua.jpg'),
(25, 'Miến ngan', 'Miến', 'Món chính', 'Miến nước ăn kèm thịt ngan chặt', 'mienngan.jpg'),
(26, 'Bánh đa cá', 'Bánh đa', 'Món chính', 'Bánh đa nước ăn kèm cá', 'banhdaca.jpg'),
(27, 'Bánh đa (tráng)', 'Bánh đa', 'Món ăn kèm', 'Bánh đa nướng giòn', 'banhdanuong.jpg'),
(28, 'Khoai tây chiên', 'Khoai', 'Món ăn kèm', '', 'khoaitaychien.jpg'),
(29, 'Khoai lang chiên', 'Khoai', 'Món ăn kèm', '', 'khoailangchien.jpg'),
(30, 'Ngô chiên', 'Ngô', 'Món ăn kèm', '', 'ngochien.jpg'),
(31, 'Phô mai que', 'Phô mai', 'Món ăn kèm', '', 'phomaique.jpg'),
(32, 'Bánh mì xá xíu', 'Bánh mì', 'Món chính', 'Bánh mì thịt xá xíu', 'banhmixaxiu.jpg'),
(33, 'Bánh mì pata', 'Bánh mì', 'Món chính', '', 'banhmipate.jpg'),
(34, 'Bánh mì Hội An', 'Bánh mì', 'Món chính', 'Bánh mì gà xé hương vị Hội An', 'banhmihoian.jpg'),
(35, 'Bánh mì trứng chả', 'Bánh mì', 'Món chính', '', 'banhmitrungcha.jpg'),
(36, 'a', '', 'Món chính', '', ''),
(37, 'a', '', 'Món chính', '', ''),
(38, 'abc', 'abc', 'Món chính', '', ''),
(39, 'Cơm rang', 'Cơm', 'Món chính', 'Cơm rang bò', 'comrang.jpg'),
(40, 'Vodka', 'Rượu', 'Đồ uống', '', 'vodka.jpg'),
(41, 'Gin', 'Rượu', 'Đồ uống', '', 'gin.jpg'),
(43, 'Tequila', 'Rượu', 'Đồ uống', '', 'aaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TransID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `DishID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `VendorID` int(11) NOT NULL,
  `Vendor_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Open_Time` time NOT NULL,
  `Close_Time` time NOT NULL,
  `Quality` float DEFAULT NULL,
  `Service` float DEFAULT NULL,
  `Pricing` float DEFAULT NULL,
  `Space` float DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`VendorID`, `Vendor_Name`, `Address`, `Open_Time`, `Close_Time`, `Quality`, `Service`, `Pricing`, `Space`, `Image`) VALUES
(1, 'Phở 360', '39 Cửa Bắc, P. Trúc Bạch, Quận Ba Đình, Hà Nội', '06:00:00', '18:00:00', 8.9, 8.3, 8.4, 8.5, 'https://media.meete.co/cache/0x0/2017/03/03/a9a0c582-fdc6-4f4e-9a0d-fe3d2021a4b5.jpeg'),
(2, 'Phở Gia Truyền - Bát Đàn', '49 Bát Đàn, Quận Hoàn Kiếm, Hà Nội', '06:00:00', '10:00:00', 8.1, 6.1, 6.4, 6.8, 'http://i.imgur.com/RMmZq.jpg'),
(4, 'Đệ Nhất Bánh Bao', '59 Lương Ngọc Quyến, Quận Hoàn Kiếm, Hà Nội', '07:00:00', '21:00:00', 8.3, 7.3, 6.3, 6.3, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(5, 'Sam Bread', '18 Ngõ 84 Võ Thị Sáu, Quận Hai Bà Trưng, Hà Nội', '09:00:00', '21:00:00', 7, 7.3, 7.5, 5.8, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(6, 'Quán Gốc Đa - Bánh Gối & Bánh Rán Mặn', '52 Lý Quốc Sư, Quận Hoàn Kiếm, Hà Nội', '07:00:00', '19:00:00', 7.4, 6.5, 7.2, 6.2, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(7, 'Bánh Tôm Hồ Tây', '1 Thanh Niên, P. Yên Phụ, Quận Tây Hồ, Hà Nội', '07:00:00', '23:00:00', 6.4, 5.9, 6, 7.8, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(8, 'Bún Chả Hà Nội - Tô Hiệu', '102 B8 Tô Hiệu, Quận Cầu Giấy, Hà Nội', '09:00:00', '21:00:00', 8.4, 8.1, 8.2, 7.8, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(9, 'Bún Cá Bà Hồng', '92 Thành Công, Quận Ba Đình, Hà Nội', '07:00:00', '22:00:00', 8.3, 7.9, 7.8, 6.3, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(12, 'Miến Lươn Phủ Doãn', '2 Phủ Doãn, Quận Hoàn Kiếm, Hà Nội', '17:00:00', '23:30:00', 8, 7.5, 7.5, 6.5, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(13, 'Phở Cuốn Hưng Bền - Ngũ Xã', '33 Ngũ Xã, Quận Ba Đình, Hà Nội', '07:00:00', '23:00:00', 7.5, 6.9, 7.2, 6.6, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(14, 'Bánh Xèo Nem Lụi - Đội Cấn', '166B Đội Cấn, Quận Ba Đình, Hà Nội', '08:00:00', '22:30:00', 7.8, 7.1, 7.2, 5.9, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(15, 'Nộm Hải Sinh', '53 Đinh Tiên Hoàng, Quận Hoàn Kiếm, Hà Nội', '07:00:00', '22:00:00', 7.7, 7.5, 6.9, 8.1, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(16, 'Chân Gà Nướng - Bà Triệu', '240 Bà Triệu, Quận Hai Bà Trưng, Hà Nội', '18:00:00', '23:00:00', 7.9, 6.3, 7.2, 6.6, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(17, 'Nộm Bò Khô, Bánh Bột Lọc & Nem Chua Rán - Hồ Thành', '111 A5, TT. Bắc Thành Công, Quận Ba Đình, Hà Nội', '07:30:00', '18:30:00', 7.5, 7.5, 7.5, 6.5, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(18, 'Nem Chua Rán - Ngọc Lâm', '407 Ngọc Lâm, Quận Long Biên, Hà Nội', '18:00:00', '22:30:00', 7.5, 7.5, 8, 7.2, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(19, 'Cơm 123 - Phố Huế', '55 Phố Huế, Quận Hai Bà Trưng, Hà Nội', '09:00:00', '22:30:00', 7.6, 6.9, 6.4, 7.5, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(20, 'Quán Gấu - Cơm Văn Phòng', '134 Hào Nam, Quận Đống Đa, Hà Nội', '09:00:00', '21:00:00', 7.8, 7.8, 7.8, 6.8, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(21, 'Vị Quảng - Ẩm Thực Miền Trung - Trần Hưng Đạo', '35 Trần Hưng Đạo, Quận Hoàn Kiếm, Hà Nội', '09:00:00', '22:00:00', 7.6, 7.3, 7.2, 6.5, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(22, 'Xôi Yến - Nguyễn Hữu Huân', '35B Nguyễn Hữu Huân, Quận Hoàn Kiếm, Hà Nội', '06:00:00', '01:00:00', 7.5, 6.4, 6.1, 6.3, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(23, 'Cháo Sườn Ngõ Huyện', '43 Ngõ Huyện, Quận Hoàn Kiếm, Hà Nội', '12:00:00', '20:00:00', 7.6, 6.8, 6.8, 6.1, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(25, 'KoRo Tea - Fresh & Juice', '12A Trần Nhân Tông, Quận Hai Bà Trưng, Hà Nội', '08:00:00', '23:00:00', 7.8, 7.2, 6.8, 6.8, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(26, 'Trà Sữa Bobapop - Đào Tấn', '103 Đào Tấn, P. Ngọc Khánh, Quận Ba Đình, Hà Nội', '09:00:00', '22:00:00', 7.8, 7.7, 7.4, 7.1, 'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),
(27, 'Phở Gia Truyền - Bát Đàn', '49 Bát Đàn, Quận Hoàn Kiếm, Hà Nội', '09:00:00', '23:00:00', NULL, NULL, NULL, NULL, 'oppppp'),
(28, 'ABC', '30 XYZ', '02:00:00', '14:01:00', NULL, NULL, NULL, NULL, 'xxx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`DishID`),
  ADD KEY `FoodID` (`FoodID`),
  ADD KEY `VendorID` (`VendorID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`FoodID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TransID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `DishID` (`DishID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`VendorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `DishID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `FoodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TransID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `VendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dish`
--
ALTER TABLE `dish`
  ADD CONSTRAINT `dish_ibfk_1` FOREIGN KEY (`FoodID`) REFERENCES `food` (`FoodID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dish_ibfk_2` FOREIGN KEY (`VendorID`) REFERENCES `vendor` (`VendorID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `account` (`UserID`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`DishID`) REFERENCES `dish` (`DishID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
