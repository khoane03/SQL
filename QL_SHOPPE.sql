CREATE DATABASE QL_SHOPPE
GO
USE QL_SHOPPE

-------------------------------Create Table-------------------------------
GO
CREATE TABLE NGUOIDUNG (
    IDNguoiDung VARCHAR(30) PRIMARY KEY,
    TaiKhoan VARCHAR(40),
    MatKhau VARCHAR(30)
)
GO
CREATE TABLE GIOHANG (
    TenSP NVARCHAR(40) PRIMARY KEY,
    SoLuong INT,
    Gia FLOAT,
    PhuongThucThanhToan nvarchar(40)
)
GO
CREATE TABLE THONGTIN_ND (
    TenND NVARCHAR(20) NOT NULL PRIMARY KEY,
    NgaySinh DATE,
    DiaChi NVARCHAR(50),
    Email VARCHAR(50),
    SDT VARCHAR(10) NOT NULL,
    IDNguoiDung VARCHAR(30) FOREIGN KEY REFERENCES NGUOIDUNG(IDNguoiDung)
)
GO
CREATE TABLE CUAHANG (
    TenCH NVARCHAR(30) PRIMARY KEY,
    PhanLoai NVARCHAR(30),
    SoLuongCon INT,
    TenSP NVARCHAR(40) FOREIGN KEY REFERENCES GIOHANG(TenSP)
)
GO
CREATE TABLE VANCHUYEN (
    DonVi VARCHAR(30) PRIMARY KEY,
    ThoiGianGD DATE
)
GO
CREATE TABLE DONHANG (
    IDDonHang VARCHAR(30) PRIMARY KEY,
    NgayDatHang DATE,
    TenSP NVARCHAR(40) FOREIGN KEY REFERENCES GIOHANG(TenSP),
    TenND NVARCHAR(20) FOREIGN KEY REFERENCES THONGTIN_ND(TenND),
    DonVi VARCHAR(30) FOREIGN KEY REFERENCES VANCHUYEN(DonVi)
)
GO
CREATE TABLE NOWSHIP (
    MaDH varchar(20) PRIMARY KEY,
    TenSP NVARCHAR(40) FOREIGN KEY REFERENCES GIOHANG(TenSP),
    TenCH NVARCHAR(30) FOREIGN KEY REFERENCES CUAHANG(TenCH)
)
GO
CREATE TABLE SHIPPER (
    TenTX NVARCHAR(40) PRIMARY KEY,
    SDT VARCHAR(10),
    IDDonHang VARCHAR(30) FOREIGN KEY REFERENCES DONHANG(IDDonHang),
    MaDH VARCHAR(20) FOREIGN KEY REFERENCES NOWSHIP(MaDH),
    DonVi VARCHAR(30) FOREIGN KEY REFERENCES VANCHUYEN(DonVi)
)
GO
CREATE TABLE SUPPORT (
    MaNV INT PRIMARY KEY,
    TenNV VARCHAR(40),
    IDNguoiDung VARCHAR(30) FOREIGN KEY REFERENCES NGUOIDUNG(IDNguoiDung),
    TenND NVARCHAR(20) FOREIGN KEY REFERENCES THONGTIN_ND(TenND),
    TenCH NVARCHAR(30) FOREIGN KEY REFERENCES CUAHANG(TenCH),
    IDDonHang VARCHAR(30) FOREIGN KEY REFERENCES DONHANG(IDDonHang)
)



----------------------Add Data-------------------------------
select * from NGUOIDUNG
insert into NGUOIDUNG(IDNguoiDung,TaiKhoan,MatKhau)
 values
('KH01', 'KHOASHOPPE', 'Khoane'),
('KH02', 'THINH', 'Thinh1234'),
('KH03', 'KHANH', 'KHANH234'),
('KH04', 'SHOPPE', 'NOW1234'),
('KH05', 'LINH', 'LINH1234@'),
('KH06', 'LAN', 'LAN#1234'),
('KH07', 'PHUONG01', 'TEST1234'),
('KH08', 'VY2005', 'VY1234'),
('KH09', 'CNTT', 'CNTT1234@'),
('KH10', 'ITK66', 'TEST1234'),
('KH11', 'DUCDAO', 'DUC@19'),
('KH12', 'VTV24', 'VV1234'),
('KH13', 'THINH2003', 'Thinh1234'),
('KH14', 'HUMG', 'Humg1234'),
('KH15', 'SHIP', 'Shipper1234'),
('KH16', 'KHOA2', 'KHOA1234'),
('KH17', 'LEHUNG', 'NO21#'),
('KH18', 'NHI', 'NHI291'),
('KH19', 'CUONGPP', 'HWH89q'),
('KH20', 'BOOM', 'JIJJHW2'),
('KH21', 'MINH213', 'jkq2dg'),
('KH22', 'PHUCLOONG00', 'SQL01'),
('KH23', 'THAOLINH203', 'Linh1234'),
('KH24', 'HIENLE', 'TE1234'),
('KH25', 'LEHUY', 'HUY21#')

select *from GIOHANG 
insert into  GIOHANG(TenSP,SoLuong,Gia,PhuongThucThanhToan)
 values 
 (N'IPHONE 14 PRO', 1, 32000000,N'ATM'),
 (N'QUẠT', 3, 200000,N'TIỀN MẶT'),
 (N'ĐIỀU HOÀ', 1, 4000000,N'ATM'),
 (N'ÁO THUN', 4, 500000,N'ATM'),
 (N'MACBOOK', 1, 52000000,N'ATM'),
 (N'LAPTOP LENOVO', 1, 18000000,N'TIỀN MẶT'),
 (N'BÀN HỌC', 1, 150000,N'TIỀN MẶT'),
 (N'GHẾ GAMING ', 1, 2000000,N'ATM'),
 (N'SÁCH CNTT', 5, 250000,N'TIỀN MẶT'),
 (N'SÁCH LẬP TRÌNH C/C++', 4, 100000,N'ATM'),
 (N'SÁCH LẬP TRÌNH', 1, 32000000,N'ATM'),
 (N'ĐỒ ĂN NHANH', 1, 25500,N'ATM'),
 (N'PHỞ', 2, 40000,N'TIỀN MẶT'),
 (N'TRÀ CHANH', 1, 15000,N'ATM'),
 (N'TRÀ SỮA ', 4, 20000,N'ATM'),
 (N'CƠM', 1, 15000,N'TIỀN MẶT'),
 (N'BÚN BÒ', 1, 500000,N'ATM'),
 (N'BÀN PHÍM CƠ', 1, 2000000,N'ATM'),
 (N'CHUỘT 2', 1, 1000000,N'ATM'),
 (N'GIÁ ĐỰNG SÁCH', 1, 150000,N'TIỀN MẶT'),
 (N'BÀN LÀM VIỆC', 1, 2000000,N'ATM'),
 (N'TỦ ', 1, 3000000,N'ATM'),
 (N'DÉP', 2, 100000,N'ATM'),
 (N'GIÀY NAM', 1, 2000000,N'ATM'),
 (N'PHÍM COR RGB', 1, 32000000,N'ATM')

SELECT *FROM THONGTIN_ND
insert into  THONGTIN_ND(TenND,NgaySinh,DiaChi,Email,SDT,IDNguoiDung) 
values 
 (N'KHOA','2003-02-10',N'CỔ NHUẾ 2','khoatk4444@gmail.com', '0987527888','KH01'),
 (N'THỊNH','2003-10-10',N'LÊ VĂN HIẾN','thinhmom@gmail.com', '0387527888','KH02'),
 (N'KHÁNH ','2003-09-05',N'VĂN HỘI','khanh@gmail.com', '0367527888','KH03'),
 (N'LINH2','1999-02-10',N'CỔ NHUẾ 1','linh@gmail.com', '0587527888','KH04'),
 (N'HÙNG','2004-02-10',N'CỔ NHUẾ 2','hung@gmail.com', '0985627888','KH05'),
 (N'HUY','2007-02-10',N'HÀ ĐÔNG','huy2@gmail.com', '0337527888','KH06'),
 (N'LAN','2003-02-10',N'HOÀI ĐỨC','lanlun05@gmail.com', '0987435888','KH07'),
 (N'THAO','1990-02-10',N'PHÚ THỌ','thao@gmail.com', '0337427888','KH08'),
 (N'PHƯỢNG','2009-02-20',N'THÁI NGUYÊN','phuong002@gmail.com', '0957527888','KH09'),
 (N'MAI','2006-02-10',N'THANH HÓA','mai@gmail.com', '0989327888','KH10'),
 (N'THÀNH','2003-02-10',N'ĐOÀN THỊ ĐIỂM','thanh00@gmail.com', '0777527888','KH11'),
 (N'ĐỨC','2005-02-10',N'TRẦN DUY HƯNG','ducdao@gmail.com', '0987527888','KH12'),
 (N'LINH','2004-02-10',N'TÂY MỖ ','linh@gmail.com', '0987752788','KH13'),
 (N'HOA','1999-02-10',N'VIN HOME','hoa932@gmail.com', '0988327888','KH14'),
 (N'Elon Musk','1971-06-28',N'US','elon888@gmail.com', '0987438888','KH15'),
 (N'MINH','2003-05-10',N'HAI BÀ TRƯNG','minh@gmail.com', '0998527888','KH16'),
 (N'TUẤN','2003-02-10',N'THANH TRÌ','tuan221@gmail.com', '0388527888','KH17'),
 (N'ANH','2004-02-10',N'HÀ NỘI','anh32@gmail.com', '0987987888','KH18'),
 (N'HÒA','2007-02-10',N'THANH HÓA','hoaphat667@gmail.com', '0987597888','KH19'),
 (N'PHÚC','2003-02-25',N'THÁI NGUYÊN','oguc92@gmail.com', '0987877888','KH20'),
 (N'LY','2003-06-27',N'CỔ NHUẾ','lyle99@gmail.com', '0987527808','KH21'),
 (N'LAN2','2003-02-10',N'PHÚC THỌ','lancute@gmail.com', '0990527888','KH22'),
 (N'LÝ','2003-01-10',N'CỔ NHUẾ','ly272@gmail.com', '0987877888','KH23'),
 (N'CHUNG','1996-02-10',N'CỔ NHUẾ 2','chung219@gmail.com', '0980827888','KH24'),
 (N'Mark Zuckerberg','1971-06-28',N'US ','meta444@gmail.com', '0337527088','KH25')

SELECT *FROM CUAHANG
insert into CUAHANG(TenCH,PhanLoai,SoLuongCon,TenSP)
 values 
(N'Apple official', N'Điện thoại,Macbook', 1000, N'IPHONE 14 PRO' ),
(N'Apple official2', N'Điện thoại,Macbook', 500, N'MACBOOK'),
(N'GiaDungOnline9', 'NGia Dụng', 200, N'QUẠT'),
(N'GiaDungOnline6', N'Gia Dụng', 100, N'ĐIỀU HOÀ' ),
(N'ThoiTrangOfficial', N'Thời trang', 5000, N'ÁO THUN'),
(N'PCOnline', N'LAPTOP', 2000, N'LAPTOP LENOVO' ),
(N'GiaDungOnline', N'Gia Dụng', 1000, N'GHẾ GAMING ' ),
(N'GiaDungOnline7', N'Gia Dụng', 1000, N'BÀN HỌC' ),
(N'BooksShop', N'Sách', 1300, N'SÁCH CNTT' ),
(N'BooksShop2', N'Sách', 100, N'SÁCH LẬP TRÌNH C/C++'),
(N'BooksShop3', N'Sách', 1900, N'SÁCH LẬP TRÌNH' ),
(N'Cicle K', N'Đồ ăn', 100, N'ĐỒ ĂN NHANH' ),
(N'Bà TÁM4', N'ĐỒ ĂN', 10, N'PHỞ' ),
(N'Mixue', N'TS', 100, N'TRÀ CHANH' ),
(N'Mixue2', N'TS', 20, N'TRÀ SỮA' ),
(N'Bà TÁM', N'Đồ ăn', 100, N'CƠM' ),
(N'Bà TÁM2', N'Đồ ăn', 100, N'BÚN BÒ' ),
(N'PHỤ KIỆN CÔNG NGHỆ', N'phụ kiện', 300, N'BÀN PHÍM CƠ'),
(N'PHỤ KIỆN CÔNG NGHỆ0', N'phụ kiện', 3000,N'CHUỘT 2'),
(N'GiaDungOnline4', N'Gia Dụng', 100, N'GIÁ ĐỰNG SÁCH' ),
(N'GiaDungOnline1', N'Gia Dụng', 20,N'BÀN LÀM VIỆC'  ),
(N'GiaDungOnline2', N'Gia Dụng', 20, N'TỦ' ),
(N'ThoiTrangOfficial3', N'Thời trang', 310,N'DÉP'),
(N'ThoiTrangOfficial4', N'Thời trang', 40,N'GIÀY NAM' ),
(N'PHỤ KIỆN CÔNG NGHỆ1', N'phụ kiện', 240, N'PHÍM COR RGB' )

SELECT *FROM VANCHUYEN
insert into VANCHUYEN(DonVi,ThoiGianGD)
 values 
 ('SHOPPE', '2023-04-29'),
 ('GHTK', '2023-02-19'),
 ('NOW', '2023-05-19'),
 ('VIETTEL', '2023-04-13'),
 ('NINJA VAN', '2023-04-29'),
 ('EXPRESS', '2023-04-29'),
 ('SHOPPE 2', '2023-04-29'),
 ('SHOPPE 3', '2022-04-29'),
 ('SHOPPE 4', '2023-04-29'),
 ('SHOPPE EXPRESS', '2023-04-29'),
 ('GIAO HANG NHANH', '2023-04-29'),
 ('SHOPPE 5', '2023-04-25'),
 ('SHOPPE 6', '2023-04-19'),
 ('SHOPPE 7', '2023-04-23'),
 ('SHOPPE 9', '2023-04-24'),
 ('SHOPPE 8', '2023-03-26'),
 ('SHOPPE HUb', '2022-04-29'),
 ('SHOPPE COD9', '2021-04-27'),
 ('SHOPPE VCN', '2023-07-29'),
 ('SHOPPE HT', '2020-05-29'),
 ('SHOPPE COD1', '2023-06-29'),
 ('SHOPPE COD2', '2023-04-29'),
 ('SHOPPE COD3', '2019-09-29'),
 ('SHOPPE COD4', '2023-03-29'),
 ('SHOPPE COD', '2023-02-19')

SELECT *FROM DONHANG
insert into DONHANG(IDDonHang,NgayDatHang,TenSP,TenND,DonVi) 
values 
('DH1','2023-03-12',N'IPHONE 14 PRO',N'KHOA','SHOPPE'),
 ('DH2','2023-02-15',N'QUẠT',N'THỊNH','GHTK'),
 ('DH3','2023-04-11',N'ĐIỀU HOÀ',N'KHÁNH ','NOW'),
 ('DH4','2022-03-10',N'ÁO THUN',N'LINH','VIETTEL'),
 ('DH5','2021-03-12',N'MACBOOK',N'HÙNG','NINJA VAN'),
 ('DH6','2023-04-12',N'LAPTOP LENOVO',N'HUY','EXPRESS'),
 ('DH7','2023-03-15',N'BÀN HỌC',N'LAN','NINJA VAN'),
 ('DH8','2023-03-10',N'GHẾ GAMING ',N'THAO','SHOPPE 2'),
 ('DH9','2023-01-12',N'SÁCH CNTT',N'PHƯỢNG','SHOPPE 3'),
 ('DH10','2020-03-12',N'SÁCH LẬP TRÌNH C/C++',N'MAI','SHOPPE 4'),
 ('DH11','2023-05-11',N'SÁCH LẬP TRÌNH',N'THÀNH','SHOPPE EXPRESS'),
 ('DH12','2023-03-14',N'ĐỒ ĂN NHANH',N'ĐỨC','GIAO HANG NHANH'),
 ('DH13','2023-05-12',N'PHỞ',N'LINH','SHOPPE 5'),
 ('DH14','2019-03-13',N'TRÀ CHANH',N'HOA','SHOPPE 6'),
 ('DH15','2023-03-10',N'TRÀ SỮA ',N'Elon Musk','SHOPPE 7'),
 ('DH16','2023-03-08',N'CƠM',N'MINH','SHOPPE 9'),
 ('DH17','2023-03-03',N'BÚN BÒ',N'TUẤN','SHOPPE 8'),
 ('DH18','2022-09-12',N'BÀN PHÍM CƠ',N'ANH','SHOPPE HUb') ,
 ('DH19','2023-05-12',N'CHUỘT 2',N'HÒA',N'SHOPPE COD9'),
 ('DH20','2020-03-10',N'GIÁ ĐỰNG SÁCH',N'PHÚC','SHOPPE VCN'),
 ('DH21','2023-03-20',N'BÀN LÀM VIỆC',N'LY','SHOPPE HT'),
 ('DH22','2023-03-23',N'TỦ ',N'LAN','SHOPPE COD1'),
 ('DH23','2024-03-17',N'DÉP',N'LÝ','SHOPPE COD2'),
 ('DH24','2023-05-19',N'GIÀY NAM',N'CHUNG','SHOPPE COD3'),
 ('DH25','2023-04-16',N'PHÍM COR RGB',N'Mark Zuckerberg','SHOPPE COD4')

SELECT *FROM NOWSHIP
insert into NOWSHIP(MaDH,TenSP,TenCH)
 values
 ('N1',N'IPHONE 14 PRO',N'Apple official'),
 ('N2',N'QUẠT',N'Apple official2'),
 ('N3',N'ĐIỀU HOÀ',N'GiaDungOnline9'),
 ('N4',N'ÁO THUN',N'GiaDungOnline6'),
 ('N5',N'MACBOOK',N'ThoiTrangOfficial'),
 ('N6',N'LAPTOP LENOVO',N'PCOnline'),
 ('N7',N'BÀN HỌC',N'GiaDungOnline'),
 ('N8',N'GHẾ GAMING ',N'GiaDungOnline7'),
 ('N9',N'SÁCH CNTT', N'BooksShop'),
 ('N10',N'SÁCH LẬP TRÌNH C/C++',N'BooksShop2'),
 ('N11',N'SÁCH LẬP TRÌNH',N'BooksShop3'),
 ('N12',N'ĐỒ ĂN NHANH',N'Cicle K'),
 ('N13',N'PHỞ',N'Bà TÁM4'),
 ('N14',N'TRÀ CHANH',N'Mixue'),
 ('N15',N'TRÀ SỮA ',N'Mixue2'),
 ('N16',N'CƠM',N'Bà TÁM'),
 ('N17',N'BÚN BÒ',N'Bà TÁM2'),
 ('N18',N'BÀN PHÍM CƠ',N'PHỤ KIỆN CÔNG NGHỆ'),
 ('N19',N'CHUỘT 2',N'PHỤ KIỆN CÔNG NGHỆ0'),
 ('N20',N'GIÁ ĐỰNG SÁCH',N'GiaDungOnline4'),
 ('N21',N'BÀN LÀM VIỆC',N'GiaDungOnline1'),
 ('N22',N'TỦ ',N'GiaDungOnline2'),
 ('N23',N'DÉP',N'ThoiTrangOfficial3'),
 ('N24',N'GIÀY NAM',N'ThoiTrangOfficial4'),
 ('N25',N'PHÍM COR RGB',N'PHỤ KIỆN CÔNG NGHỆ1')

SELECT *FROM SHIPPER
insert into SHIPPER(TenTX,SDT,IDDonHang,MaDH,DonVi) 
values
(N'Tài Xế 1','0382362710','DH1','N1','SHOPPE'),
(N'Tài Xế 2','0382362711','DH2','N2','GHTK'),
(N'Tài Xế 3','0382362712','DH3','N3','NOW'),
(N'Tài Xế 4','0382362713','DH4','N4','VIETTEL'),
(N'Tài Xế 5','0382362714','DH5','N5','NINJA VAN'),
(N'Tài Xế 6','0382362715','DH6','N6','EXPRESS'),
(N'Tài Xế 7','0382362716','DH7','N7','SHOPPE 2'),
(N'Tài Xế 8','0382362717','DH8','N8','SHOPPE 3'),
(N'Tài Xế 9','0382362718','DH9','N9','SHOPPE 4'),
(N'Tài Xế 10','0382362719','DH10','N10','SHOPPE EXPRESS'),
(N'Tài Xế 11','0382362720','DH11','N11','GIAO HANG NHANH'),
(N'Tài Xế 12','0382362721','DH12','N12','SHOPPE 5'),
(N'Tài Xế 13','0382362722','DH13','N13','SHOPPE 6'),
(N'Tài Xế 14','0382362723','DH14','N14','SHOPPE 7'),
(N'Tài Xế 15','0382362724','DH15','N15','SHOPPE 9'),
(N'Tài Xế 16','0382362725','DH16','N16','SHOPPE 8'),
(N'Tài Xế 17','0382362726','DH17','N17','SHOPPE HUb'),
(N'Tài Xế 18','0382362727','DH18','N18','SHOPPE COD9'),
(N'Tài Xế 19','0382362728','DH19','N19','SHOPPE VCN'),
(N'Tài Xế 20','0382362729','DH20','N20','SHOPPE HT'),
(N'Tài Xế 21','0382362730','DH21','N21','SHOPPE COD1'),
(N'Tài Xế 22','0382362731','DH22','N22','SHOPPE COD2'),
(N'Tài Xế 23','0382362732','DH23','N23','SHOPPE COD3'),
(N'Tài Xế 24','0382362733','DH24','N24','SHOPPE COD4'),
(N'Tài Xế 25','0382362734','DH25','N25','SHOPPE COD')
 
SELECT *FROM SUPPORT
insert into SUPPORT(MaNV,TenNV,IDNguoiDung,TenND,TenCH,IDDonHang) 
values
(1,'SP1','KH01',N'KHOA',N'Apple official','DH1'), 
(2,'SP2','KH02',N'THỊNH',N'Apple official2','DH2'), 
(3,'SP3','KH03',N'KHÁNH ',N'GiaDungOnline9','DH3'), 
(4,'SP4','KH04',N'LINH2',N'GiaDungOnline6','DH4'), 
(5,'SP5','KH05',N'HÙNG',N'ThoiTrangOfficial','DH5'), 
(6,'SP6','KH06',N'HUY',N'PCOnline','DH6'), 
(7,'SP7','KH07',N'LAN',N'GiaDungOnline','DH7'), 
(8,'SP8','KH08',N'THAO',N'GiaDungOnline7','DH8'), 
(9,'SP9','KH09',N'PHƯỢNG',N'BooksShop','DH9'), 
(10,'SP10','KH10',N'MAI',N'BooksShop2','DH10'), 
(11,'SP11','KH11',N'THÀNH',N'BooksShop3','DH11'),
(12,'SP12','KH12',N'ĐỨC',N'Cicle K','DH12'), 
(13,'SP13','KH13',N'LINH',N'Bà TÁM4','DH13'), 
(14,'SP14','KH14',N'HOA',N'Mixue','DH14'), 
(15,'SP15','KH15',N'Elon Musk',N'Mixue2','DH15'), 
(16,'SP16','KH16',N'MINH',N'Bà TÁM','DH16'), 
(17,'SP17','KH17',N'TUẤN',N'Bà TÁM2','DH17'), 
(18,'SP18','KH18',N'ANH',N'PHỤ KIỆN CÔNG NGHỆ','DH18'), 
(19,'SP19','KH19',N'HÒA',N'PHỤ KIỆN CÔNG NGHỆ0','DH19'), 
(20,'SP20','KH20',N'PHÚC',N'GiaDungOnline4','DH20'), 
(21,'SP21','KH21',N'LY',N'GiaDungOnline1','DH21'), 
(22,'SP22','KH22',N'LAN2',N'GiaDungOnline2','DH22'), 
(23,'SP23','KH23',N'LÝ',N'ThoiTrangOfficial3','DH23'), 
(24,'SP24','KH24',N'CHUNG',N'ThoiTrangOfficial4','DH24'), 
(25,'SP25','KH25',N'Mark Zuckerberg',N'PHỤ KIỆN CÔNG NGHỆ1','DH25')




---------------create view------------------
------------Lấy toàn bộ thông tin khách hàng-----------
-- Create the view
CREATE VIEW ToanBoKhachhang AS 
SELECT NGUOIDUNG.*,
 THONGTIN_ND.TenND,
 THONGTIN_ND.NgaySinh,
 THONGTIN_ND.Email,
 THONGTIN_ND.DiaChi,
 THONGTIN_ND.SDT

FROM NGUOIDUNG 
INNER JOIN THONGTIN_ND ON NGUOIDUNG.IDNguoiDung = THONGTIN_ND.IDNguoiDung



SELECT * FROM ToanBoKhachhang



------------Lấy thông tin khách hàng có địa chỉ cổ nhuế 2 ---------------

CREATE VIEW LHKHACHHANG AS
SELECT THONGTIN_ND.TenND,
       THONGTIN_ND.SDT,
       THONGTIN_ND.DiaChi
FROM THONGTIN_ND
WHERE THONGTIN_ND.DiaChi = N'Cổ Nhuế 2'

SELECT *FROM LHKHACHHANG


------------IN TT Đơn Hàng Năm 2022----------
CREATE VIEW CHITIETDON AS
SELECT DONHANG.*,
       THONGTIN_ND.SDT,
       THONGTIN_ND.DiaChi
FROM DONHANG
INNER JOIN THONGTIN_ND ON DONHANG.TenND = THONGTIN_ND.TenND
WHERE YEAR(NgayDatHang) = 2022;

SELECT *FROM CHITIETDON