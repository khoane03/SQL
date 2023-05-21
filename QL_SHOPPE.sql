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
    IDCuaHang varchar(10) PRIMARY KEY,
    TenCH NVARCHAR(30), 
    PhanLoai NVARCHAR(30),
    SoLuongCon INT
)
GO
CREATE TABLE GIOHANG (
    TenSP NVARCHAR(40) PRIMARY KEY,
    SoLuong INT,
    Gia FLOAT,
    PhuongThucThanhToan nvarchar(40),
    IDCuaHang varchar(10) FOREIGN KEY REFERENCES CUAHANG(IDCuaHang)
)
GO
CREATE TABLE VANCHUYEN (
    MaDV VARCHAR(30) PRIMARY KEY,
    TenDV NVARCHAR(30)
)
GO
CREATE TABLE DONHANG (
    IDDonHang VARCHAR(30) PRIMARY KEY,
    NgayDatHang DATE,
    TenSP NVARCHAR(40) FOREIGN KEY REFERENCES GIOHANG(TenSP),
    TenND NVARCHAR(20) FOREIGN KEY REFERENCES THONGTIN_ND(TenND),
    MaDV VARCHAR(30) FOREIGN KEY REFERENCES VANCHUYEN(MaDV)
)
GO
CREATE TABLE NOWSHIP (
    MaDH varchar(20) PRIMARY KEY,
    TenSP NVARCHAR(40) FOREIGN KEY REFERENCES GIOHANG(TenSP),
    IDCuaHang VARCHAR(10) FOREIGN KEY REFERENCES CUAHANG(IDCuaHang)
)
GO
CREATE TABLE SHIPPER (
    TenTX NVARCHAR(40) PRIMARY KEY,
    SDTS VARCHAR(10),
    IDDonHang VARCHAR(30) FOREIGN KEY REFERENCES DONHANG(IDDonHang),
    MaDH VARCHAR(20) FOREIGN KEY REFERENCES NOWSHIP(MaDH),
    MaDV VARCHAR(30) FOREIGN KEY REFERENCES VANCHUYEN(MaDV)
)
GO
CREATE TABLE SUPPORT (
    MaNV varchar(10) PRIMARY KEY,
    TenNV NVARCHAR(40),
    TenND NVARCHAR(20) FOREIGN KEY REFERENCES THONGTIN_ND(TenND),
    IDCuaHang VARCHAR(10) FOREIGN KEY REFERENCES CUAHANG(IDCuaHang),
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
insert into  GIOHANG(TenSP,SoLuong,Gia,PhuongThucThanhToan,IDCuaHang)
 values 
 (N'IPHONE 14 PRO', 1, 32000000,N'ATM','CH1'),
 (N'QUẠT', 3, 200000,N'TIỀN MẶT','CH2'),
 (N'ĐIỀU HOÀ', 1, 4000000,N'ATM','CH2'),
 (N'ÁO THUN', 4, 500000,N'ATM','CH3'),
 (N'MACBOOK', 1, 52000000,N'ATM','CH1'),
 (N'LAPTOP LENOVO', 1, 18000000,N'TIỀN MẶT','CH6'),
 (N'BÀN HỌC', 1, 150000,N'TIỀN MẶT','CH2'),
 (N'GHẾ GAMING ', 1, 2000000,N'ATM','CH17'),
 (N'SÁCH CNTT', 5, 250000,N'TIỀN MẶT','CH7'),
 (N'SÁCH LẬP TRÌNH C/C++', 4, 100000,N'ATM','CH7'),
 (N'SÁCH LẬP TRÌNH', 1, 32000000,N'ATM','CH7'),
 (N'ĐỒ ĂN NHANH', 1, 25500,N'ATM','CH11'),
 (N'PHỞ', 2, 40000,N'TIỀN MẶT','CH8'),
 (N'TRÀ CHANH', 1, 15000,N'ATM','CH5'),
 (N'TRÀ SỮA ', 4, 20000,N'ATM','CH10'),
 (N'CƠM', 1, 15000,N'TIỀN MẶT','CH8'),
 (N'BÚN BÒ', 1, 500000,N'ATM','CH8'),
 (N'BÀN PHÍM CƠ', 1, 2000000,N'ATM','CH14'),
 (N'CHUỘT 2', 1, 1000000,N'ATM','CH14'),
 (N'GIÁ ĐỰNG SÁCH', 1, 150000,N'TIỀN MẶT','CH2'),
 (N'BÀN LÀM VIỆC', 1, 2000000,N'ATM','CH2'),
 (N'TỦ ', 1, 3000000,N'ATM','CH2'),
 (N'DÉP', 2, 100000,N'ATM','CH3'),
 (N'GIÀY NAM', 1, 2000000,N'ATM','CH3'),
 (N'PHÍM COR RGB', 1, 32000000,N'ATM','CH9')

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
insert into CUAHANG(IDCuaHang,TenCH,PhanLoai,SoLuongCon)
values 
('CH1',N'APPLE OFFICIAL ',N'Phone,Lap ',1000),
('CH2',N'GIA DỤNG ',N'ĐỒ DÙNG ',2000),
('CH3',N'FASHION ',N'QUẦN ÁO ',500),
('CH4',N'CICLE K ',N'TIÊU DÙNG ',10000),
('CH5',N'MIXUE ',N'KEM ',2000),
('CH6',N'LAPTOP 24H ',N'LAPTOP ',200),
('CH7',N'BOOKS SHOP ',N'SÁCH ',350),
('CH8',N'RESTAURANT ',N'ĐỒ ĂN ',300),
('CH9',N'PHỤ KIỆN ONLINE ',N'PHỤ KIỆN ',109),
('CH10',N'TOCOTOCO ',N'NƯỚC ',100),
('CH11',N'RESTAURANT 2 ',N'ĐỒ ĂN NHANH ',22),
('CH12',N'TRANG SỨC ',N'VÀNG BẠC ',2100),
('CH13',N'LYLY SHOP ',N'THỜI TRANG ',150),
('CH14',N'SHOPPE F ',N'PHỤ KIỆN ',2222),
('CH15',N'SHOP GIA DỤNG ',N'ĐỒ DÙNG ',328),
('CH16',N'LAVIE OFFICIAL ',N'NƯỚC ',2322),
('CH17',N'HOME DECOR ',N'PHỤ KIỆN ',2333),
('CH18',N'THÚ CƯNG ',N'PHỤ KIỆN ',20),
('CH19',N'HK PHONE ',N'ĐIỆN THOẠI ',40),
('CH20',N'LION ',N'PIN ',50)

SELECT *FROM VANCHUYEN
insert into VANCHUYEN(MaDV,TenDV)
values 
('VC1',N'SHOPPE '),
('VC2',N'GIAO HÀNG NHANH '),
('VC3',N'GIAO HÀNG TIẾT KIỆM '),
('VC4',N'NINJA VAN '),
('VC5',N'VIETTEL '),
('VC6',N'EXPRESS '),
('VC7',N'COD '),
('VC8',N'SHOPPE FOOD '),
('VC9',N'SHOPPE MAIL '),
('VC10',N'VIETTEL POST '),
('VC11',N'VNPOST '),
('VC12',N'KERRY EXPRESS '),
('VC13',N'SSHIP '),
('VC14',N'HỎA TỐC '),
('VC15',N'SHIPCHUNG '),
('VC16',N'STANDARD '),
('VC17',N'SIÊU TỐC '),
('VC18',N'GRAB EXPRESS '),
('VC19',N'J&T '),
('VC20',N'BEST EXPRESS ')

SELECT *FROM DONHANG
insert into DONHANG(IDDonHang,NgayDatHang,TenSP,TenND,MaDV) 
values 
 ('DH1','2023-03-12',N'IPHONE 14 PRO',N'KHOA','VC19'),
 ('DH2','2023-02-15',N'QUẠT',N'THỊNH','VC1'),
 ('DH3','2023-04-11',N'ĐIỀU HOÀ',N'KHÁNH ','VC3'),
 ('DH4','2022-03-10',N'ÁO THUN',N'LINH','VC2'),
 ('DH5','2021-03-12',N'MACBOOK',N'HÙNG','VC3'),
 ('DH6','2023-04-12',N'LAPTOP LENOVO',N'HUY','VC19'),
 ('DH7','2023-03-15',N'BÀN HỌC',N'LAN','VC4'),
 ('DH8','2023-03-10',N'GHẾ GAMING ',N'THAO','VC5'),
 ('DH9','2023-01-12',N'SÁCH CNTT',N'PHƯỢNG','VC6'),
 ('DH10','2020-03-12',N'SÁCH LẬP TRÌNH C/C++',N'MAI','VC7'),
 ('DH11','2023-05-11',N'SÁCH LẬP TRÌNH',N'THÀNH','VC8'),
 ('DH12','2023-03-14',N'ĐỒ ĂN NHANH',N'ĐỨC','VC20'),
 ('DH13','2023-05-12',N'PHỞ',N'LINH','VC10'),
 ('DH14','2019-03-13',N'TRÀ CHANH',N'HOA','VC11'),
 ('DH15','2023-03-10',N'TRÀ SỮA ',N'Elon Musk','VC16'),
 ('DH16','2023-03-08',N'CƠM',N'MINH','VC13'),
 ('DH17','2023-03-03',N'BÚN BÒ',N'TUẤN','VC16'),
 ('DH18','2022-09-12',N'BÀN PHÍM CƠ',N'ANH','VC17') ,
 ('DH19','2023-05-12',N'CHUỘT 2',N'HÒA','VC14'),
 ('DH20','2020-03-10',N'GIÁ ĐỰNG SÁCH',N'PHÚC','VC9'),
 ('DH21','2023-03-20',N'BÀN LÀM VIỆC',N'LY','VC7'),
 ('DH22','2023-03-23',N'TỦ ',N'LAN','VC20'),
 ('DH23','2024-03-17',N'DÉP',N'LÝ','VC10'),
 ('DH24','2023-05-19',N'GIÀY NAM',N'CHUNG','VC18'),
 ('DH25','2023-04-16',N'PHÍM COR RGB',N'Mark Zuckerberg','VC6')

SELECT *FROM NOWSHIP
insert into NOWSHIP(MaDH,TenSP,IDCuaHang)
 values
 ('N1',N'IPHONE 14 PRO','CH1'),
 ('N2',N'QUẠT','CH2'),
 ('N3',N'ĐIỀU HOÀ','CH2'),
 ('N4',N'ÁO THUN','CH3'),
 ('N5',N'MACBOOK','CH1'),
 ('N6',N'LAPTOP LENOVO','CH6'),
 ('N7',N'BÀN HỌC','CH2'),
 ('N8',N'GHẾ GAMING ','CH17'),
 ('N9',N'SÁCH CNTT', 'CH7'),
 ('N10',N'SÁCH LẬP TRÌNH C/C++','CH7'),
 ('N11',N'SÁCH LẬP TRÌNH','CH7'),
 ('N12',N'ĐỒ ĂN NHANH','CH11'),
 ('N13',N'PHỞ','CH8'),
 ('N14',N'TRÀ CHANH','CH5'),
 ('N15',N'TRÀ SỮA ','CH10'),
 ('N16',N'CƠM','CH8'),
 ('N17',N'BÚN BÒ','CH8'),
 ('N18',N'BÀN PHÍM CƠ','CH14'),
 ('N19',N'CHUỘT 2','CH14'),
 ('N20',N'GIÁ ĐỰNG SÁCH','CH2'),
 ('N21',N'BÀN LÀM VIỆC','CH2'),
 ('N22',N'TỦ ','CH2'),
 ('N23',N'DÉP','CH3'),
 ('N24',N'GIÀY NAM','CH3'),
 ('N25',N'PHÍM COR RGB','CH9')

SELECT *FROM SHIPPER
insert into SHIPPER(TenTX,SDTS,IDDonHang,MaDH,MaDV) 
values
(N'Tài Xế 1','0382362710','DH1','N1','VC19'),
(N'Tài Xế 2','0382362711','DH2','N2','VC1'),
(N'Tài Xế 3','0382362712','DH3','N3','VC3'),
(N'Tài Xế 4','0382362713','DH4','N4','VC2'),
(N'Tài Xế 5','0382362714','DH5','N5','VC3'),
(N'Tài Xế 6','0382362715','DH6','N6','VC19'),
(N'Tài Xế 7','0382362716','DH7','N7','VC4'),
(N'Tài Xế 8','0382362717','DH8','N8','VC5'),
(N'Tài Xế 9','0382362718','DH9','N9','VC6'),
(N'Tài Xế 10','0382362719','DH10','N10','VC7'),
(N'Tài Xế 11','0382362720','DH11','N11','VC8'),
(N'Tài Xế 12','0382362721','DH12','N12','VC20'),
(N'Tài Xế 13','0382362722','DH13','N13','VC10'),
(N'Tài Xế 14','0382362723','DH14','N14','VC11'),
(N'Tài Xế 15','0382362724','DH15','N15','VC16'),
(N'Tài Xế 16','0382362725','DH16','N16','VC13'),
(N'Tài Xế 17','0382362726','DH17','N17','VC16'),
(N'Tài Xế 18','0382362727','DH18','N18','VC17'),
(N'Tài Xế 19','0382362728','DH19','N19','VC14'),
(N'Tài Xế 20','0382362729','DH20','N20','VC9'),
(N'Tài Xế 21','0382362730','DH21','N21','VC7'),
(N'Tài Xế 22','0382362731','DH22','N22','VC20'),
(N'Tài Xế 23','0382362732','DH23','N23','VC10'),
(N'Tài Xế 24','0382362733','DH24','N24','VC18'),
(N'Tài Xế 25','0382362734','DH25','N25','VC6')
 
SELECT *FROM SUPPORT
insert into SUPPORT(MaNV,TenNV,TenND,IDCuaHang) 
values
('NV1',N'NAM',N'KHOA','CH1'), 
('NV2',N'HÙNG',N'THỊNH','CH2'), 
('NV3',N'MINH',N'KHÁNH ','CH2'), 
('NV4',N'PHONG',N'LINH2','CH3'), 
('NV5',N'HUỆ',N'HÙNG','CH1'), 
('NV6',N'LY',N'HUY','CH6'), 
('NV7',N'LINH',N'LAN','CH2'), 
('NV8',N'HUYỀN',N'THAO','CH17'), 
('NV9',N'TRANG',N'PHƯỢNG','CH7'), 
('NV10',N'PHÚC',N'MAI','CH7'), 
('NV11',N'KHÁNH',N'THÀNH','CH7'),
('NV12',N'THỊNH',N'ĐỨC','CH11'), 
('NV13',N'HẢI',N'LINH','CH8'), 
('NV14',N'HUY',N'HOA','CH5'), 
('NV15',N'GIANG',N'Elon Musk','CH10'), 
('NV16',N'ĐỨC',N'MINH','CH8'), 
('NV17',N'PHƯỢNG',N'TUẤN','CH8'), 
('NV18',N'PHƯƠNG',N'ANH','CH14'), 
('NV19',N'TÙNG',N'HÒA','CH14'), 
('NV20',N'ANH',N'PHÚC','CH2'), 
('NV21',N'HUY2',N'LY','CH2'), 
('NV22',N'HUYỀN',N'LAN2','CH2'), 
('NV23',N'LONG',N'LÝ','CH3'), 
('NV24',N'BÌNH',N'CHUNG','CH3'), 
('NV25',N'TRANG',N'Mark Zuckerberg','CH9')




---------------CREATE VIEW------------------

--------------1 LẤY TOÀN BỘ THÔNG TIN TRONG DATABASE------------

CREATE VIEW ALLDATABASE AS
SELECT THONGTIN_ND.*,
       NGUOIDUNG.TaiKhoan AS 'TÀI KHOẢN',
       NGUOIDUNG.MatKhau AS 'MẬT KHẨU',
       GIOHANG.*,
       CUAHANG.TenCH AS 'TÊN CỦA HÀNG',
       CUAHANG.PhanLoai AS 'LOẠI',
       CUAHANG.SoLuongCon AS 'CÒN LẠI',
       DONHANG.IDDonHang AS 'ID ĐƠN',
       DONHANG.NgayDatHang AS 'NGÀY ĐẶT HÀNG',
       VANCHUYEN.*,
       NOWSHIP.MaDH AS 'MÃ ĐƠN HÀNG',
       SHIPPER.TenTX AS 'TÊN TÀI XẾ',
       SHIPPER.SDTS AS 'SỐ ĐIỆN THOẠI',
       SUPPORT.MaNV AS 'MÃ NHÂN VIÊN',
       SUPPORT.TenNV AS 'TÊN NHÂN VIÊN'
FROM THONGTIN_ND,NGUOIDUNG,GIOHANG,CUAHANG,DONHANG,VANCHUYEN,NOWSHIP,SHIPPER,SUPPORT
WHERE THONGTIN_ND.IDNguoiDung = NGUOIDUNG.IDNguoiDung
AND GIOHANG.IDCuaHang = CUAHANG.IDCuaHang
AND CUAHANG.IDCuaHang = GIOHANG.IDCuaHang
AND DONHANG.TenSP = GIOHANG.TenSP 
AND DONHANG.TenND = THONGTIN_ND.TenND
AND DONHANG.MaDV = VANCHUYEN.MaDV
AND NOWSHIP.TenSP = GIOHANG.TenSP 
AND NOWSHIP.IDCuaHang = CUAHANG.IDCuaHang
AND SHIPPER.IDDonHang = DONHANG.IDDonHang 
AND SHIPPER.MaDH = NOWSHIP.MaDH 
AND SHIPPER.MaDV = VANCHUYEN.MaDV
AND SUPPORT.TenND = THONGTIN_ND.TenND 
AND SUPPORT.IDCuaHang = CUAHANG.IDCuaHang

SELECT *FROM ALLDATABASE


------------2 Lấy thông tin khách hàng-----------
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



------------3 Lấy thông tin khách hàng có địa chỉ cổ nhuế 2 ---------------

CREATE VIEW LHKHACHHANG AS
SELECT THONGTIN_ND.TenND,
       THONGTIN_ND.SDT,
       THONGTIN_ND.DiaChi
FROM THONGTIN_ND
WHERE THONGTIN_ND.DiaChi = N'Cổ Nhuế 2'

SELECT *FROM LHKHACHHANG


------------4 IN TT Đơn Hàng Năm 2022----------
CREATE VIEW CHITIETDON AS
SELECT DONHANG.*,
       THONGTIN_ND.SDT,
       THONGTIN_ND.DiaChi
FROM DONHANG
INNER JOIN THONGTIN_ND ON DONHANG.TenND = THONGTIN_ND.TenND
WHERE YEAR(NgayDatHang) = 2022

SELECT *FROM CHITIETDON

------------5 Top 5 đơn có giá cao nhất---------------
CREATE VIEW DONCOGIACAO AS
SELECT TOP 5 
GIOHANG.TenSP AS 'TÊN SẢN PHẨM',
GIOHANG.Gia AS 'GIÁ'
FROM GIOHANG
ORDER BY GIOHANG.GIA DESC

SELECT *FROM DONCOGIACAO

-----------6 in ra đơn hoả tốc---------------------
CREATE VIEW INDON AS
SELECT DONHANG.*,
       VANCHUYEN.TenDV
FROM DONHANG INNER JOIN VANCHUYEN on VANCHUYEN.MaDV = DONHANG.MaDV
WHERE VANCHUYEN.MaDV = 'VC14'

SELECT *FROM INDON

------------- FUNTION(1) ----------------
------nhập tên sản phẩm cho biết giá-----------
CREATE FUNCTION GIA(@TEN NVARCHAR(40))
RETURNS FLOAT 
as
BEGIN
  RETURN(SELECT Gia FROM GIOHANG
  where TenSP = @TEN
  )
END
print dbo.GIA(N'QUẠT')

------đếm hóa đơn năm 2023-------

CREATE FUNCTION DEMSL(@nam int)
RETURNS int 
as
BEGIN
     DECLARE @count int = 0
     SELECT @count = count(*)
      from DONHANG
      WHERE YEAR(NgayDatHang) = @nam
      RETURN @count 
      end
SELECT dbo.DEMSL(2023) as 'SoLuongDonHangNam2023'

-------tổng giá trị đơn hàng--------
CREATE FUNCTION GIATRI(@tensp nvarchar(40))
RETURNS FLOAT
AS 
BEGIN 
    DECLARE @giatri int;

    SELECT @giatri = SUM(SoLuong * Gia)
    FROM GIOHANG
    WHERE TenSP = @tensp;

    RETURN @giatri;
END

PRINT dbo.GIATRI(N'QUẠT')

------------------tìm của hàng kho có số lượng = 1000---------------
CREATE FUNCTION TIMKIEMSL()
RETURNS NVARCHAR(30)
AS 
BEGIN 
    DECLARE @TenCH NVARCHAR(40);

    SELECT @TenCH = TenCH
    FROM CUAHANG
    WHERE SoLuongCon = 1000;

    RETURN @TenCH;
END

SELECT *
FROM CUAHANG
WHERE TenCH = dbo.TIMKIEMSL()




--------------FUNTION (2)----------------
--------Lấy ra thông tin tài khoản -------------
CREATE FUNCTION dbo.ThongTinDN1(@ID varchar(30))
RETURNS TABLE
AS
RETURN (
    SELECT TaiKhoan, MatKhau
    FROM NGUOIDUNG
    WHERE IDNguoiDung = @ID
)

SELECT *
FROM dbo.ThongTinDN1('KH01')
-------------Lấy thông tin của hàng chưa có đơn hàng---------------

CREATE FUNCTION dbo.CHECKTT()
RETURNS TABLE
AS 
RETURN 
    SELECT CUAHANG.*, GIOHANG.TenSP
    FROM CUAHANG 
    LEFT JOIN GIOHANG ON CUAHANG.IDCuaHang = GIOHANG.IDCuaHang
    WHERE GIOHANG.IDCuaHang IS NULL

SELECT * FROM dbo.CHECKTT()

------------FUNTION 3-----------------
------------lấy ra thông tin đơn hàng qua tên người dùng -----------------

CREATE FUNCTION THONGTINDONHANG (@Ten NVARCHAR(20))
RETURNS @Orders TABLE (
    IDDonHang VARCHAR(30),
    NgayDatHang DATE,
    TenSP NVARCHAR(40),
    TenND NVARCHAR(20),
    MaDV VARCHAR(30)
)
AS
BEGIN
    INSERT INTO @Orders (IDDonHang, NgayDatHang, TenSP, TenND, MaDV)
    SELECT d.IDDonHang, d.NgayDatHang, g.TenSP, t.TenND, v.MaDV
    FROM DONHANG d
    INNER JOIN GIOHANG g ON d.TenSP = g.TenSP
    INNER JOIN THONGTIN_ND t ON d.TenND = t.TenND
    INNER JOIN VANCHUYEN v ON d.MaDV = v.MaDV
    WHERE t.TenND = @Ten
    RETURN
END

SELECT *from dbo.THONGTINDONHANG(N'KHOA')


-------------PROCEDURE-----------
----------Thủ tục để lấy danh sách đơn hàng dựa trên tên người dùng------------
CREATE PROCEDURE DANHSACHDONHANG
    @TenND NVARCHAR(20)
AS
BEGIN
    SELECT *
    FROM DONHANG
    WHERE TenND = @TenND
END

EXEC DANHSACHDONHANG @TenND = 'KHOA'

-----------Thủ tục để lấy thông tin người dùng dựa trên ID người dùng--------------
CREATE PROCEDURE LAYTT
    @IDNguoiDung VARCHAR(30)
AS
BEGIN
    SELECT *
    FROM THONGTIN_ND
    WHERE IDNguoiDung = @IDNguoiDung
END

EXEC LAYTT @IDNguoiDung = 'KH09'

-----------Thủ tục để thêm một sản phẩm vào giỏ hàng--------------
CREATE PROCEDURE THEMSP
    @TenSP NVARCHAR(40),
    @SoLuong INT,
    @Gia FLOAT,
    @PhuongThucThanhToan NVARCHAR(40),
    @IDCuaHang VARCHAR(10)
AS
BEGIN
    INSERT INTO GIOHANG (TenSP, SoLuong, Gia, PhuongThucThanhToan, IDCuaHang)
    VALUES (@TenSP, @SoLuong, @Gia, @PhuongThucThanhToan, @IDCuaHang)
END

EXEC THEMSP @TenSP = 'MÁY IN', @SoLuong = 3, @Gia =120000000, @PhuongThucThanhToan = 'ATM', @IDCuaHang = 'CH3'
select *from GIOHANG


---------Thủ tục để đặt hàng-------------
CREATE PROCEDURE DATHANG
    @IDDonHang VARCHAR(30),
    @NgayDatHang DATE,
    @TenSP NVARCHAR(40),
    @TenND NVARCHAR(20),
    @MaDV VARCHAR(30)
AS
BEGIN
    INSERT INTO DONHANG (IDDonHang, NgayDatHang, TenSP, TenND, MaDV)
    VALUES (@IDDonHang, @NgayDatHang, @TenSP, @TenND, @MaDV)
END

EXEC DATHANG @IDDonHang = 'DH1', @NgayDatHang = '2022-03-12', @TenSP = 'IPHONE ', @TenND = 'KHOA2', @MaDV = 'VC1'

-------------Thủ tục để cập nhật thông tin người dùng dựa trên tên người dùng-------------

CREATE PROCEDURE UpdateTT
    @TenND NVARCHAR(20),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(50),
    @Email VARCHAR(50),
    @SDT VARCHAR(10)
AS
BEGIN
    UPDATE THONGTIN_ND
    SET NgaySinh = @NgaySinh, DiaChi = @DiaChi, Email = @Email, SDT = @SDT
    WHERE TenND = @TenND
END


EXEC UpdateTT @TenND = 'KHOA', @NgaySinh = '2003-01-01', @DiaChi = N'HÀ NỘI', @Email = 'khoa003@gmai.com', @SDT = '0972456789'
select *from THONGTIN_ND


------------------TRIGGER------------------

---------Trigger để xóa thông tin đơn hàng trong bảng NOWSHIP khi xóa dữ liệu tương ứng trong bảng DONHANG-------
CREATE TRIGGER DeleteNowShip
ON DONHANG
AFTER DELETE
AS
BEGIN
    DELETE FROM NOWSHIP
    WHERE MaDH IN (SELECT MaDH FROM deleted)
END

DELETE FROM DONHANG
WHERE IDDonHang = 'DH11'
select *from NOWSHIP
select *from CUAHANG 

-------------KT THÔNG TIN ND--------------------

CREATE TRIGGER CheckNgDung
ON NGUOIDUNG
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE LEN(TaiKhoan) > 40 OR LEN(MatKhau) > 30
    )
    BEGIN
        RAISERROR ('TaiKhoan hoac MatKhau khong hop le!', 16, 1)
        ROLLBACK TRANSACTION
    END
END

INSERT INTO NGUOIDUNG (IDNguoiDung, TaiKhoan, MatKhau)
VALUES ('1', 'user1', 'pass1')

INSERT INTO NGUOIDUNG (IDNguoiDung, TaiKhoan, MatKhau)
VALUES ('2', 'jsjahduefysuffffffffffffffffffffffffffffffffffff', 'pass2')
select *from NGUOIDUNG


---------Trigger để cập nhật số lượng sản phẩm trong bảng CUAHANG sau khi thêm mới dữ liệu vào bảng GIOHANG--------
CREATE TRIGGER UpdateSoLuongCon
ON GIOHANG
AFTER INSERT
AS
BEGIN
    UPDATE CUAHANG
    SET SoLuongCon = SoLuongCon - (SELECT SoLuong FROM inserted)
    WHERE IDCuaHang = (SELECT IDCuaHang FROM inserted)
END

UPDATE GIOHANG
SET SoLuong = 5
WHERE TenSP = 'MACBOOK'

select *from GIOHANG

----------Trigger để kiểm tra ngày đặt hàng trong bảng DONHANG và chặn việc đặt hàng vào ngày nghỉ-----------
CREATE TRIGGER CheckNgayDatHang
ON DONHANG
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE DATEPART(dw, NgayDatHang) IN (1, 7) -- 1: Chủ nhật, 7: Thứ 7
    )
    BEGIN
        RAISERROR ('Khong the dat hang vao ngay nghi!', 16, 1)
        ROLLBACK TRANSACTION
    END
    ELSE
    BEGIN
        INSERT INTO DONHANG (IDDonHang, NgayDatHang, TenSP, TenND, MaDV)
        SELECT IDDonHang, NgayDatHang, TenSP, TenND, MaDV
        FROM inserted
    END
END

UPDATE DONHANG
SET NgayDatHang = '2023-05-16'
WHERE IDDonHang = 'DH4'
select *from DONHANG

--------Trigger: Tự động tạo mã số đơn hàng khi có thêm dữ liệu vào bảng DONHANG----------
CREATE TRIGGER AutoGenerateIDDonHang
ON DONHANG
AFTER INSERT
AS
BEGIN
    -- Tạo mã số đơn hàng tự động
    DECLARE @NewIDDonHang VARCHAR(30)
    SELECT @NewIDDonHang = 'DH' + CAST(IDENT_CURRENT('DONHANG') AS VARCHAR(10))
    FROM DONHANG
    WHERE IDDonHang = (SELECT IDDonHang FROM inserted)

    -- Cập nhật mã số đơn hàng vào bảng DONHANG
    UPDATE DONHANG
    SET IDDonHang = @NewIDDonHang
    WHERE IDDonHang = (SELECT IDDonHang FROM inserted)
END

-- Gọi trigger sau khi thêm dữ liệu vào bảng DONHANG
INSERT INTO DONHANG (NgayDatHang, TenSP, TenND, MaDV)
VALUES (GETDATE(), 'SP1', 'User2', 'DV1')


---------Trigger: Giảm số lượng sản phẩm khi có đơn hàng mới trong bảng GIOHANG---------
CREATE TRIGGER GIAMSL
ON GIOHANG
AFTER INSERT
AS
BEGIN
    -- Giảm số lượng sản phẩm trong bảng GIOHANG khi có đơn hàng mới
    UPDATE GIOHANG
    SET SoLuong = SoLuong - (SELECT SoLuong FROM inserted)
    WHERE TenSP = (SELECT TenSP FROM inserted)
END
-- Gọi trigger sau khi thêm dữ liệu vào bảng GIOHANG
INSERT INTO GIOHANG (TenSP, SoLuong, Gia, PhuongThucThanhToan, IDCuaHang)
VALUES ('MACBOOK', 2, 52000000, 'ATM', 'CH1')

select *from GIOHANG