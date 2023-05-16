CREATE DATABASE QL_SHOPPE1
GO
USE QL_SHOPPE1

-------------------------------Create Table-------------------------------

CREATE TABLE NGUOIDUNG (
    IDNguoiDung VARCHAR(30) PRIMARY KEY,
    TaiKhoan VARCHAR(40),
    MatKhau VARCHAR(30)
)

CREATE TABLE GIOHANG (
    TenSP NVARCHAR(40) PRIMARY KEY,
    SoLuong INT,
    Gia FLOAT,
    PhuongThucThanhToan nvarchar(40)
)

CREATE TABLE THONGTIN_ND (
    TenND NVARCHAR(20) NOT NULL PRIMARY KEY,
    NgaySinh DATE,
    DiaChi NVARCHAR(50),
    Email VARCHAR(50),
    SDT VARCHAR(10) NOT NULL,
    IDNguoiDung VARCHAR(30) FOREIGN KEY REFERENCES NGUOIDUNG(IDNguoiDung)
)
go
CREATE TABLE CUAHANG (
    TenCH NVARCHAR(30) PRIMARY KEY,
    PhanLoai NVARCHAR(30),
    SoLuongCon INT,
    TenSP NVARCHAR(40) FOREIGN KEY REFERENCES GIOHANG(TenSP)
)

CREATE TABLE VANCHUYEN (
    DonVi VARCHAR(30) PRIMARY KEY,
    ThoiGianGD DATE
)
go
CREATE TABLE DONHANG (
    IDDonHang VARCHAR(30) PRIMARY KEY,
    NgayDatHang DATE,
    TenSP NVARCHAR(40) FOREIGN KEY REFERENCES GIOHANG(TenSP),
    TenND NVARCHAR(20) FOREIGN KEY REFERENCES THONGTIN_ND(TenND),
    DonVi VARCHAR(30) FOREIGN KEY REFERENCES VANCHUYEN(DonVi)
)

CREATE TABLE NOWSHIP (
    MaDH varchar(20) PRIMARY KEY,
    TenSP NVARCHAR(40) FOREIGN KEY REFERENCES GIOHANG(TenSP),
    TenCH NVARCHAR(30) FOREIGN KEY REFERENCES CUAHANG(TenCH)
)
go
CREATE TABLE SHIPPER (
    TenTX NVARCHAR(40) PRIMARY KEY,
    SDT VARCHAR(10),
    IDDonHang VARCHAR(30) FOREIGN KEY REFERENCES DONHANG(IDDonHang),
    MaDH VARCHAR(20) FOREIGN KEY REFERENCES NOWSHIP(MaDH),
    DonVi VARCHAR(30) FOREIGN KEY REFERENCES VANCHUYEN(DonVi)
)
go
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
insert into NGUOIDUNG values ('KH01', 'KHOASHOPPE', 'Khoane')
insert into NGUOIDUNG values ('KH02', 'THINH', 'Thinh1234')
insert into NGUOIDUNG values ('KH03', 'KHANH', 'KHANH234')
insert into NGUOIDUNG values ('KH04', 'SHOPPE', 'NOW1234')
insert into NGUOIDUNG values ('KH05', 'LINH', 'LINH1234@')
insert into NGUOIDUNG values ('KH06', 'LAN', 'LAN#1234')
insert into NGUOIDUNG values ('KH07', 'PHUONG01', 'TEST1234')
insert into NGUOIDUNG values ('KH08', 'VY2005', 'VY1234')
insert into NGUOIDUNG values ('KH09', 'CNTT', 'CNTT1234@')
insert into NGUOIDUNG values ('KH10', 'ITK66', 'TEST1234')
insert into NGUOIDUNG values ('KH11', 'DUCDAO', 'DUC@19')
insert into NGUOIDUNG values ('KH12', 'VTV24', 'VV1234')
insert into NGUOIDUNG values ('KH13', 'THINH2003', 'Thinh1234')
insert into NGUOIDUNG values ('KH14', 'HUMG', 'Humg1234')
insert into NGUOIDUNG values ('KH15', 'SHIP', 'Shipper1234')
insert into NGUOIDUNG values ('KH16', 'KHOA2', 'KHOA1234')
insert into NGUOIDUNG values ('KH17', 'LEHUNG', 'NO21#')
insert into NGUOIDUNG values ('KH18', 'NHI', 'NHI291')
insert into NGUOIDUNG values ('KH19', 'CUONGPP', 'HWH89q')
insert into NGUOIDUNG values ('KH20', 'BOOM', 'JIJJHW2')
insert into NGUOIDUNG values ('KH21', 'MINH213', 'jkq2dg')
insert into NGUOIDUNG values ('KH22', 'PHUCLOONG00', 'SQL01')
insert into NGUOIDUNG values ('KH23', 'THAOLINH203', 'Linh1234')
insert into NGUOIDUNG values ('KH24', 'HIENLE', 'TE1234')
insert into NGUOIDUNG values ('KH25', 'LEHUY', 'HUY21#')

select *from GIOHANG 
insert into  GIOHANG values ('IPHONE 14 PRO', 1, 32000000,'ATM')
insert into  GIOHANG values ('QUẠT', 3, 200000,'TIỀN MẶT')
insert into  GIOHANG values ('ĐIỀU HOÀ', 1, 4000000,'ATM')
insert into  GIOHANG values ('ÁO THUN', 4, 500000,'ATM')
insert into  GIOHANG values ('MACBOOK', 1, 52000000,'ATM')
insert into  GIOHANG values ('LAPTOP LENOVO', 1, 18000000,'TIỀN MẶT')
insert into  GIOHANG values ('BÀN HỌC', 1, 150000,'TIỀN MẶT')
insert into  GIOHANG values ('GHẾ GAMING ', 1, 2000000,'ATM')
insert into  GIOHANG values ('SÁCH CNTT', 5, 250000,'TIỀN MẶT')
insert into  GIOHANG values ('SÁCH LẬP TRÌNH C/C++', 4, 100000,'ATM')
insert into  GIOHANG values ('SÁCH LẬP TRÌNH', 1, 32000000,'ATM')
insert into  GIOHANG values ('ĐỒ ĂN NHANH', 1, 25500,'ATM')
insert into  GIOHANG values ('PHỞ', 2, 40000,'TIỀN MẶT')
insert into  GIOHANG values ('TRÀ CHANH', 1, 15000,'ATM')
insert into  GIOHANG values ('TRÀ SỮA ', 4, 20000,'ATM')
insert into  GIOHANG values ('CƠM', 1, 15000,'TIỀN MẶT')
insert into  GIOHANG values ('BÚN BÒ', 1, 500000,'ATM')
insert into  GIOHANG values ('BÀN PHÍM CƠ', 1, 2000000,'ATM')
insert into  GIOHANG values ('CHUỘT 2', 1, 1000000,'ATM')
insert into  GIOHANG values ('GIÁ ĐỰNG SÁCH', 1, 150000,'TIỀN MẶT')
insert into  GIOHANG values ('BÀN LÀM VIỆC', 1, 2000000,'ATM')
insert into  GIOHANG values ('TỦ ', 1, 3000000,'ATM')
insert into  GIOHANG values ('DÉP', 2, 100000,'ATM')
insert into  GIOHANG values ('GIÀY NAM', 1, 2000000,'ATM')
insert into  GIOHANG values ('PHÍM COR RGB', 1, 32000000,'ATM')

SELECT *FROM THONGTIN_ND
insert into  THONGTIN_ND values ('KHOA','2003-02-10','CỔ NHUẾ 2','khoatk4444@gmail.com', '0987527888','KH01')
insert into  THONGTIN_ND values ('THỊNH','2003-10-10','LÊ VĂN HIẾN','thinhmom@gmail.com', '0387527888','KH02')
insert into  THONGTIN_ND values ('KHÁNH ','2003-09-05','VĂN HỘI','khanh@gmail.com', '0367527888','KH03')
insert into  THONGTIN_ND values ('LINH2','1999-02-10','CỔ NHUẾ 1','linh@gmail.com', '0587527888','KH04')
insert into  THONGTIN_ND values ('HÙNG','2004-02-10','CỔ NHUẾ 2','hung@gmail.com', '0985627888','KH05')
insert into  THONGTIN_ND values ('HUY','2007-02-10','HÀ ĐÔNG','huy2@gmail.com', '0337527888','KH06')
insert into  THONGTIN_ND values ('LAN','2003-02-10','HOÀI ĐỨC','lanlun05@gmail.com', '0987435888','KH07')
insert into  THONGTIN_ND values ('THAO','1990-02-10','PHÚ THỌ','thao@gmail.com', '0337427888','KH08')
insert into  THONGTIN_ND values ('PHƯỢNG','2009-02-20','THÁI NGUYÊN','phuong002@gmail.com', '0957527888','KH09')
insert into  THONGTIN_ND values ('MAI','2006-02-10','THANH HÓA','mai@gmail.com', '0989327888','KH10')
insert into  THONGTIN_ND values ('THÀNH','2003-02-10','ĐOÀN THỊ ĐIỂM','thanh00@gmail.com', '0777527888','KH11')
insert into  THONGTIN_ND values ('ĐỨC','2005-02-10','TRẦN DUY HƯNG','ducdao@gmail.com', '0987527888','KH12')
insert into  THONGTIN_ND values ('LINH','2004-02-10','TÂY MỖ ','linh@gmail.com', '0987752788','KH13')
insert into  THONGTIN_ND values ('HOA','1999-02-10','VIN HOME','hoa932@gmail.com', '0988327888','KH14')
insert into  THONGTIN_ND values ('Elon Musk','1971-06-28','US','elon888@gmail.com', '0987438888','KH15')
insert into  THONGTIN_ND values ('MINH','2003-05-10','HAI BÀ TRƯNG','minh@gmail.com', '0998527888','KH16')
insert into  THONGTIN_ND values ('TUẤN','2003-02-10','THANH TRÌ','tuan221@gmail.com', '0388527888','KH17')
insert into  THONGTIN_ND values ('ANH','2004-02-10','HÀ NỘI','anh32@gmail.com', '0987987888','KH18')
insert into  THONGTIN_ND values ('HÒA','2007-02-10','THANH HÓA','hoaphat667@gmail.com', '0987597888','KH19')
insert into  THONGTIN_ND values ('PHÚC','2003-02-25','THÁI NGUYÊN','oguc92@gmail.com', '0987877888','KH20')
insert into  THONGTIN_ND values ('LY','2003-06-27','CỔ NHUẾ','lyle99@gmail.com', '0987527808','KH21')
insert into  THONGTIN_ND values ('LAN2','2003-02-10','PHÚC THỌ','lancute@gmail.com', '0990527888','KH22')
insert into  THONGTIN_ND values ('LÝ','2003-01-10','CỔ NHUẾ','ly272@gmail.com', '0987877888','KH23')
insert into  THONGTIN_ND values ('CHUNG','1996-02-10','CỔ NHUẾ 2','chung219@gmail.com', '0980827888','KH24')
insert into  THONGTIN_ND values ('Mark Zuckerberg','1971-06-28','US ','meta444@gmail.com', '0337527088','KH25')

SELECT *FROM CUAHANG
insert into CUAHANG values ('Apple official', 'Điện thoại,Macbook', 1000, 'IPHONE 14 PRO' )
insert into CUAHANG values ('Apple official2', 'Điện thoại,Macbook', 500, 'MACBOOK')
insert into CUAHANG values ('GiaDungOnline9', 'Gia Dụng', 200, 'QUẠT')
insert into CUAHANG values ('GiaDungOnline6', 'Gia Dụng', 100, 'ĐIỀU HOÀ' )
insert into CUAHANG values ('ThoiTrangOfficial', 'Thời trang', 5000, 'ÁO THUN')
insert into CUAHANG values ('PCOnline', 'LAPTOP', 2000, 'LAPTOP LENOVO' )
insert into CUAHANG values ('GiaDungOnline', 'Gia Dụng', 1000, 'GHẾ GAMING ' )
insert into CUAHANG values ('GiaDungOnline7', 'Gia Dụng', 1000, 'BÀN HỌC' )
insert into CUAHANG values ('BooksShop', 'Sách', 1300, 'SÁCH CNTT' )
insert into CUAHANG values ('BooksShop2', 'Sách', 100, 'SÁCH LẬP TRÌNH C/C++')
insert into CUAHANG values ('BooksShop3', 'Sách', 1900, 'SÁCH LẬP TRÌNH' )
insert into CUAHANG values ('Cicle K', 'Đồ ăn', 100, 'ĐỒ ĂN NHANH' )
insert into CUAHANG values ('Bà TÁM4', 'ĐỒ ĂN', 10, 'PHỞ' )
insert into CUAHANG values ('Mixue', 'TS', 100, 'TRÀ CHANH' )
insert into CUAHANG values ('Mixue2', 'TS', 20, 'TRÀ SỮA' )
insert into CUAHANG values ('Bà TÁM', 'Đồ ăn', 100, 'CƠM' )
insert into CUAHANG values ('Bà TÁM2', 'Đồ ăn', 100, 'BÚN BÒ' )
insert into CUAHANG values ('PHỤ KIỆN CÔNG NGHỆ', 'phụ kiện', 300, 'BÀN PHÍM CƠ')
insert into CUAHANG values ('PHỤ KIỆN CÔNG NGHỆ0', 'phụ kiện', 3000,'CHUỘT 2')
insert into CUAHANG values ('GiaDungOnline4', 'Gia Dụng', 100, 'GIÁ ĐỰNG SÁCH' )
insert into CUAHANG values ('GiaDungOnline1', 'Gia Dụng', 20,'BÀN LÀM VIỆC'  )
insert into CUAHANG values ('GiaDungOnline2', 'Gia Dụng', 20, 'TỦ' )
insert into CUAHANG values ('ThoiTrangOfficial3', 'Thời trang', 310,'DÉP')
insert into CUAHANG values ('ThoiTrangOfficial4', 'Thời trang', 40,'GIÀY NAM' )
insert into CUAHANG values ('PHỤ KIỆN CÔNG NGHỆ1', 'phụ kiện', 240, 'PHÍM COR RGB' )

SELECT *FROM VANCHUYEN
insert into VANCHUYEN values ('SHOPPE', '2023-04-29')
insert into VANCHUYEN values ('GHTK', '2023-02-19')
insert into VANCHUYEN values ('NOW', '2023-05-19')
insert into VANCHUYEN values ('VIETTEL', '2023-04-13')
insert into VANCHUYEN values ('NINJA VAN', '2023-04-29')
insert into VANCHUYEN values ('EXPRESS', '2023-04-29')
insert into VANCHUYEN values ('SHOPPE 2', '2023-04-29')
insert into VANCHUYEN values ('SHOPPE 3', '2022-04-29')
insert into VANCHUYEN values ('SHOPPE 4', '2023-04-29')
insert into VANCHUYEN values ('SHOPPE EXPRESS', '2023-04-29')
insert into VANCHUYEN values ('GIAO HANG NHANH', '2023-04-29')
insert into VANCHUYEN values ('SHOPPE 5', '2023-04-25')
insert into VANCHUYEN values ('SHOPPE 6', '2023-04-19')
insert into VANCHUYEN values ('SHOPPE 7', '2023-04-23')
insert into VANCHUYEN values ('SHOPPE 9', '2023-04-24')
insert into VANCHUYEN values ('SHOPPE 8', '2023-03-26')
insert into VANCHUYEN values ('SHOPPE HUb', '2022-04-29')
insert into VANCHUYEN values ('SHOPPE COD9', '2021-04-27')
insert into VANCHUYEN values ('SHOPPE VCN', '2023-07-29')
insert into VANCHUYEN values ('SHOPPE HT', '2020-05-29')
insert into VANCHUYEN values ('SHOPPE COD1', '2023-06-29')
insert into VANCHUYEN values ('SHOPPE COD2', '2023-04-29')
insert into VANCHUYEN values ('SHOPPE COD3', '2019-09-29')
insert into VANCHUYEN values ('SHOPPE COD4', '2023-03-29')
insert into VANCHUYEN values ('SHOPPE COD', '2023-02-19')

SELECT *FROM DONHANG
insert into DONHANG values ('DH1','2023-03-12','IPHONE 14 PRO','KHOA','SHOPPE')
insert into DONHANG values ('DH2','2023-02-15','QUẠT','THỊNH','GHTK')
insert into DONHANG values ('DH3','2023-04-11','ĐIỀU HOÀ','KHÁNH ','NOW')
insert into DONHANG values ('DH4','2022-03-10','ÁO THUN','LINH','VIETTEL')
insert into DONHANG values ('DH5','2021-03-12','MACBOOK','HÙNG','NINJA VAN')
insert into DONHANG values ('DH6','2023-04-12','LAPTOP LENOVO','HUY','EXPRESS')
insert into DONHANG values ('DH7','2023-03-15','BÀN HỌC','LAN','NINJA VAN')
insert into DONHANG values ('DH8','2023-03-10','GHẾ GAMING ','THAO','SHOPPE 2')
insert into DONHANG values ('DH9','2023-01-12','SÁCH CNTT','PHƯỢNG','SHOPPE 3')
insert into DONHANG values ('DH10','2020-03-12','SÁCH LẬP TRÌNH C/C++','MAI','SHOPPE 4')
insert into DONHANG values ('DH11','2023-05-11','SÁCH LẬP TRÌNH','THÀNH','SHOPPE EXPRESS')
insert into DONHANG values ('DH12','2023-03-14','ĐỒ ĂN NHANH','ĐỨC','GIAO HANG NHANH')
insert into DONHANG values ('DH13','2023-05-12','PHỞ','LINH','SHOPPE 5')
insert into DONHANG values ('DH14','2019-03-13','TRÀ CHANH','HOA','SHOPPE 6')
insert into DONHANG values ('DH15','2023-03-10','TRÀ SỮA ','Elon Musk','SHOPPE 7')
insert into DONHANG values ('DH16','2023-03-08','CƠM','MINH','SHOPPE 9')
insert into DONHANG values ('DH17','2023-03-03','BÚN BÒ','TUẤN','SHOPPE 8')
insert into DONHANG values ('DH18','2022-09-12','BÀN PHÍM CƠ','ANH','SHOPPE HUb') 
insert into DONHANG values ('DH19','2023-05-12','CHUỘT 2','HÒA','SHOPPE COD9')
insert into DONHANG values ('DH20','2020-03-10','GIÁ ĐỰNG SÁCH','PHÚC','SHOPPE VCN')
insert into DONHANG values ('DH21','2023-03-20','BÀN LÀM VIỆC','LY','SHOPPE HT')
insert into DONHANG values ('DH22','2023-03-23','TỦ ','LAN','SHOPPE COD1')
insert into DONHANG values ('DH23','2024-03-17','DÉP','LÝ','SHOPPE COD2') 
insert into DONHANG values ('DH24','2023-05-19','GIÀY NAM','CHUNG','SHOPPE COD3')
insert into DONHANG values ('DH25','2023-04-16','PHÍM COR RGB','Mark Zuckerberg','SHOPPE COD4')

SELECT *FROM NOWSHIP
insert into NOWSHIP values('N1','IPHONE 14 PRO','Apple official')
insert into NOWSHIP values('N2','QUẠT','Apple official2')
insert into NOWSHIP values('N3','ĐIỀU HOÀ','GiaDungOnline9')
insert into NOWSHIP values('N4','ÁO THUN','GiaDungOnline6')
insert into NOWSHIP values('N5','MACBOOK','ThoiTrangOfficial')
insert into NOWSHIP values('N6','LAPTOP LENOVO','PCOnline')
insert into NOWSHIP values('N7','BÀN HỌC','GiaDungOnline')
insert into NOWSHIP values('N8','GHẾ GAMING ','GiaDungOnline7')
insert into NOWSHIP values('N9','SÁCH CNTT', 'BooksShop')
insert into NOWSHIP values('N10','SÁCH LẬP TRÌNH C/C++','BooksShop2')
insert into NOWSHIP values('N11','SÁCH LẬP TRÌNH','BooksShop3')
insert into NOWSHIP values('N12','ĐỒ ĂN NHANH','Cicle K')
insert into NOWSHIP values('N13','PHỞ','Bà TÁM4')
insert into NOWSHIP values('N14','TRÀ CHANH','Mixue')
insert into NOWSHIP values('N15','TRÀ SỮA ','Mixue2')
insert into NOWSHIP values('N16','CƠM','Bà TÁM')
insert into NOWSHIP values('N17','BÚN BÒ','Bà TÁM2')
insert into NOWSHIP values('N18','BÀN PHÍM CƠ','PHỤ KIỆN CÔNG NGHỆ')
insert into NOWSHIP values('N19','CHUỘT 2','PHỤ KIỆN CÔNG NGHỆ0')
insert into NOWSHIP values('N20','GIÁ ĐỰNG SÁCH','GiaDungOnline4')
insert into NOWSHIP values('N21','BÀN LÀM VIỆC','GiaDungOnline1')
insert into NOWSHIP values('N22','TỦ ','GiaDungOnline2')
insert into NOWSHIP values('N23','DÉP','ThoiTrangOfficial3')
insert into NOWSHIP values('N24','GIÀY NAM','ThoiTrangOfficial4')
insert into NOWSHIP values('N25','PHÍM COR RGB','PHỤ KIỆN CÔNG NGHỆ1')

SELECT *FROM SHIPPER
insert into SHIPPER values('Tài Xế 1','0382362710','DH1','N1','SHOPPE')
insert into SHIPPER values('Tài Xế 2','0382362711','DH2','N2','GHTK')
insert into SHIPPER values('Tài Xế 3','0382362712','DH3','N3','NOW')
insert into SHIPPER values('Tài Xế 4','0382362713','DH4','N4','VIETTEL')
insert into SHIPPER values('Tài Xế 5','0382362714','DH5','N5','NINJA VAN')
insert into SHIPPER values('Tài Xế 6','0382362715','DH6','N6','EXPRESS')
insert into SHIPPER values('Tài Xế 7','0382362716','DH7','N7','SHOPPE 2')
insert into SHIPPER values('Tài Xế 8','0382362717','DH8','N8','SHOPPE 3')
insert into SHIPPER values('Tài Xế 9','0382362718','DH9','N9','SHOPPE 4')
insert into SHIPPER values('Tài Xế 10','0382362719','DH10','N10','SHOPPE EXPRESS')
insert into SHIPPER values('Tài Xế 11','0382362720','DH11','N11','GIAO HANG NHANH')
insert into SHIPPER values('Tài Xế 12','0382362721','DH12','N12','SHOPPE 5')
insert into SHIPPER values('Tài Xế 13','0382362722','DH13','N13','SHOPPE 6')
insert into SHIPPER values('Tài Xế 14','0382362723','DH14','N14','SHOPPE 7')
insert into SHIPPER values('Tài Xế 15','0382362724','DH15','N15','SHOPPE 9')
insert into SHIPPER values('Tài Xế 16','0382362725','DH16','N16','SHOPPE 8')
insert into SHIPPER values('Tài Xế 17','0382362726','DH17','N17','SHOPPE HUb')
insert into SHIPPER values('Tài Xế 18','0382362727','DH18','N18','SHOPPE COD9')
insert into SHIPPER values('Tài Xế 19','0382362728','DH19','N19','SHOPPE VCN')
insert into SHIPPER values('Tài Xế 20','0382362729','DH20','N20','SHOPPE HT')
insert into SHIPPER values('Tài Xế 21','0382362730','DH21','N21','SHOPPE COD1')
insert into SHIPPER values('Tài Xế 22','0382362731','DH22','N22','SHOPPE COD2')
insert into SHIPPER values('Tài Xế 23','0382362732','DH23','N23','SHOPPE COD3')
insert into SHIPPER values('Tài Xế 24','0382362733','DH24','N24','SHOPPE COD4')
insert into SHIPPER values('Tài Xế 25','0382362734','DH25','N25','SHOPPE COD')

SELECT *FROM SUPPORT
insert into SUPPORT values(1,'SP1','KH01','KHOA','Apple official','DH1') 
insert into SUPPORT values(2,'SP2','KH02','THỊNH','Apple official2','DH2') 
insert into SUPPORT values(3,'SP3','KH03','KHÁNH ','GiaDungOnline9','DH3') 
insert into SUPPORT values(4,'SP4','KH04','LINH2','GiaDungOnline6','DH4') 
insert into SUPPORT values(5,'SP5','KH05','HÙNG','ThoiTrangOfficial','DH5') 
insert into SUPPORT values(6,'SP6','KH06','HUY','PCOnline','DH6') 
insert into SUPPORT values(7,'SP7','KH07','LAN','GiaDungOnline','DH7') 
insert into SUPPORT values(8,'SP8','KH08','THAO','GiaDungOnline7','DH8') 
insert into SUPPORT values(9,'SP9','KH09','PHƯỢNG','BooksShop','DH9') 
insert into SUPPORT values(10,'SP10','KH10','MAI','BooksShop2','DH10') 
insert into SUPPORT values(11,'SP11','KH11','THÀNH','BooksShop3','DH11')
insert into SUPPORT values(12,'SP12','KH12','ĐỨC','Cicle K','DH12') 
insert into SUPPORT values(13,'SP13','KH13','LINH','Bà TÁM4','DH13') 
insert into SUPPORT values(14,'SP14','KH14','HOA','Mixue','DH14') 
insert into SUPPORT values(15,'SP15','KH15','Elon Musk','Mixue2','DH15') 
insert into SUPPORT values(16,'SP16','KH16','MINH','Bà TÁM','DH16') 
insert into SUPPORT values(17,'SP17','KH17','TUẤN','Bà TÁM2','DH17') 
insert into SUPPORT values(18,'SP18','KH18','ANH','PHỤ KIỆN CÔNG NGHỆ','DH18') 
insert into SUPPORT values(19,'SP19','KH19','HÒA','PHỤ KIỆN CÔNG NGHỆ0','DH19') 
insert into SUPPORT values(20,'SP20','KH20','PHÚC','GiaDungOnline4','DH20') 
insert into SUPPORT values(21,'SP21','KH21','LY','GiaDungOnline1','DH21') 
insert into SUPPORT values(22,'SP22','KH22','LAN2','GiaDungOnline2','DH22') 
insert into SUPPORT values(23,'SP23','KH23','LÝ','ThoiTrangOfficial3','DH23') 
insert into SUPPORT values(24,'SP24','KH24','CHUNG','ThoiTrangOfficial4','DH24') 
insert into SUPPORT values(25,'SP25','KH25','Mark Zuckerberg','PHỤ KIỆN CÔNG NGHỆ1','DH25') 




---------------create view------------------
------------Lấy toàn bộ thông tin khách hàng-----------
CREATE VIEW ToanBoKhachhang AS 
SELECT NGUOIDUNG.IDNguoiDung AS NguoiDungID, NGUOIDUNG.ColumnName1, NGUOIDUNG.ColumnName2, ..., THONGTIN_ND.IDNguoiDung AS ThongTinID, THONGTIN_ND.ColumnName1, THONGTIN_ND.ColumnName2, ...
FROM NGUOIDUNG 
INNER JOIN THONGTIN_ND ON NGUOIDUNG.IDNguoiDung = THONGTIN_ND.IDNguoiDung


select *from ToanBoKhachhang

------------Lấy thông tin khách hàng có địa chỉ cổ nhuế 2 ---------------

CREATE VIEW LHKHACHHANG AS
SELECT THONGTIN_ND.TenND,
       THONGTIN_ND.SDT,
       THONGTIN_ND.DiaChi
FROM THONGTIN_ND
WHERE THONGTIN_ND.DiaChi = 'Cổ Nhuế 2'

select *from LHKHACHHANG


------------IN TT Đơn Hàng Năm 2022----------
CREATE VIEW 