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
insert into  GIOHANG values (N'IPHONE 14 PRO', 1, 32000000,N'ATM')
insert into  GIOHANG values (N'QUẠT', 3, 200000,N'TIỀN MẶT')
insert into  GIOHANG values (N'ĐIỀU HOÀ', 1, 4000000,N'ATM')
insert into  GIOHANG values (N'ÁO THUN', 4, 500000,N'ATM')
insert into  GIOHANG values (N'MACBOOK', 1, 52000000,N'ATM')
insert into  GIOHANG values (N'LAPTOP LENOVO', 1, 18000000,N'TIỀN MẶT')
insert into  GIOHANG values (N'BÀN HỌC', 1, 150000,N'TIỀN MẶT')
insert into  GIOHANG values (N'GHẾ GAMING ', 1, 2000000,N'ATM')
insert into  GIOHANG values (N'SÁCH CNTT', 5, 250000,N'TIỀN MẶT')
insert into  GIOHANG values (N'SÁCH LẬP TRÌNH C/C++', 4, 100000,N'ATM')
insert into  GIOHANG values (N'SÁCH LẬP TRÌNH', 1, 32000000,N'ATM')
insert into  GIOHANG values (N'ĐỒ ĂN NHANH', 1, 25500,N'ATM')
insert into  GIOHANG values (N'PHỞ', 2, 40000,N'TIỀN MẶT')
insert into  GIOHANG values (N'TRÀ CHANH', 1, 15000,N'ATM')
insert into  GIOHANG values (N'TRÀ SỮA ', 4, 20000,N'ATM')
insert into  GIOHANG values (N'CƠM', 1, 15000,N'TIỀN MẶT')
insert into  GIOHANG values (N'BÚN BÒ', 1, 500000,N'ATM')
insert into  GIOHANG values (N'BÀN PHÍM CƠ', 1, 2000000,N'ATM')
insert into  GIOHANG values (N'CHUỘT 2', 1, 1000000,N'ATM')
insert into  GIOHANG values (N'GIÁ ĐỰNG SÁCH', 1, 150000,N'TIỀN MẶT')
insert into  GIOHANG values (N'BÀN LÀM VIỆC', 1, 2000000,N'ATM')
insert into  GIOHANG values (N'TỦ ', 1, 3000000,N'ATM')
insert into  GIOHANG values (N'DÉP', 2, 100000,N'ATM')
insert into  GIOHANG values (N'GIÀY NAM', 1, 2000000,N'ATM')
insert into  GIOHANG values (N'PHÍM COR RGB', 1, 32000000,N'ATM')

SELECT *FROM THONGTIN_ND
insert into  THONGTIN_ND values (N'KHOA','2003-02-10',N'CỔ NHUẾ 2','khoatk4444@gmail.com', '0987527888','KH01')
insert into  THONGTIN_ND values (N'THỊNH','2003-10-10',N'LÊ VĂN HIẾN','thinhmom@gmail.com', '0387527888','KH02')
insert into  THONGTIN_ND values (N'KHÁNH ','2003-09-05',N'VĂN HỘI','khanh@gmail.com', '0367527888','KH03')
insert into  THONGTIN_ND values (N'LINH2','1999-02-10',N'CỔ NHUẾ 1','linh@gmail.com', '0587527888','KH04')
insert into  THONGTIN_ND values (N'HÙNG','2004-02-10',N'CỔ NHUẾ 2','hung@gmail.com', '0985627888','KH05')
insert into  THONGTIN_ND values (N'HUY','2007-02-10',N'HÀ ĐÔNG','huy2@gmail.com', '0337527888','KH06')
insert into  THONGTIN_ND values (N'LAN','2003-02-10',N'HOÀI ĐỨC','lanlun05@gmail.com', '0987435888','KH07')
insert into  THONGTIN_ND values (N'THAO','1990-02-10',N'PHÚ THỌ','thao@gmail.com', '0337427888','KH08')
insert into  THONGTIN_ND values (N'PHƯỢNG','2009-02-20',N'THÁI NGUYÊN','phuong002@gmail.com', '0957527888','KH09')
insert into  THONGTIN_ND values (N'MAI','2006-02-10',N'THANH HÓA','mai@gmail.com', '0989327888','KH10')
insert into  THONGTIN_ND values (N'THÀNH','2003-02-10',N'ĐOÀN THỊ ĐIỂM','thanh00@gmail.com', '0777527888','KH11')
insert into  THONGTIN_ND values (N'ĐỨC','2005-02-10',N'TRẦN DUY HƯNG','ducdao@gmail.com', '0987527888','KH12')
insert into  THONGTIN_ND values (N'LINH','2004-02-10',N'TÂY MỖ ','linh@gmail.com', '0987752788','KH13')
insert into  THONGTIN_ND values (N'HOA','1999-02-10',N'VIN HOME','hoa932@gmail.com', '0988327888','KH14')
insert into  THONGTIN_ND values (N'Elon Musk','1971-06-28',N'US','elon888@gmail.com', '0987438888','KH15')
insert into  THONGTIN_ND values (N'MINH','2003-05-10',N'HAI BÀ TRƯNG','minh@gmail.com', '0998527888','KH16')
insert into  THONGTIN_ND values (N'TUẤN','2003-02-10',N'THANH TRÌ','tuan221@gmail.com', '0388527888','KH17')
insert into  THONGTIN_ND values (N'ANH','2004-02-10',N'HÀ NỘI','anh32@gmail.com', '0987987888','KH18')
insert into  THONGTIN_ND values (N'HÒA','2007-02-10',N'THANH HÓA','hoaphat667@gmail.com', '0987597888','KH19')
insert into  THONGTIN_ND values (N'PHÚC','2003-02-25',N'THÁI NGUYÊN','oguc92@gmail.com', '0987877888','KH20')
insert into  THONGTIN_ND values (N'LY','2003-06-27',N'CỔ NHUẾ','lyle99@gmail.com', '0987527808','KH21')
insert into  THONGTIN_ND values (N'LAN2','2003-02-10',N'PHÚC THỌ','lancute@gmail.com', '0990527888','KH22')
insert into  THONGTIN_ND values (N'LÝ','2003-01-10',N'CỔ NHUẾ','ly272@gmail.com', '0987877888','KH23')
insert into  THONGTIN_ND values (N'CHUNG','1996-02-10',N'CỔ NHUẾ 2','chung219@gmail.com', '0980827888','KH24')
insert into  THONGTIN_ND values (N'Mark Zuckerberg','1971-06-28',N'US ','meta444@gmail.com', '0337527088','KH25')

SELECT *FROM CUAHANG
insert into CUAHANG values (N'Apple official', N'Điện thoại,Macbook', 1000, N'IPHONE 14 PRO' )
insert into CUAHANG values (N'Apple official2', N'Điện thoại,Macbook', 500, N'MACBOOK')
insert into CUAHANG values (N'GiaDungOnline9', 'NGia Dụng', 200, N'QUẠT')
insert into CUAHANG values (N'GiaDungOnline6', N'Gia Dụng', 100, N'ĐIỀU HOÀ' )
insert into CUAHANG values (N'ThoiTrangOfficial', N'Thời trang', 5000, N'ÁO THUN')
insert into CUAHANG values (N'PCOnline', N'LAPTOP', 2000, N'LAPTOP LENOVO' )
insert into CUAHANG values (N'GiaDungOnline', N'Gia Dụng', 1000, N'GHẾ GAMING ' )
insert into CUAHANG values (N'GiaDungOnline7', N'Gia Dụng', 1000, N'BÀN HỌC' )
insert into CUAHANG values (N'BooksShop', N'Sách', 1300, N'SÁCH CNTT' )
insert into CUAHANG values (N'BooksShop2', N'Sách', 100, N'SÁCH LẬP TRÌNH C/C++')
insert into CUAHANG values (N'BooksShop3', N'Sách', 1900, N'SÁCH LẬP TRÌNH' )
insert into CUAHANG values (N'Cicle K', N'Đồ ăn', 100, N'ĐỒ ĂN NHANH' )
insert into CUAHANG values (N'Bà TÁM4', N'ĐỒ ĂN', 10, N'PHỞ' )
insert into CUAHANG values (N'Mixue', N'TS', 100, N'TRÀ CHANH' )
insert into CUAHANG values (N'Mixue2', N'TS', 20, N'TRÀ SỮA' )
insert into CUAHANG values (N'Bà TÁM', N'Đồ ăn', 100, N'CƠM' )
insert into CUAHANG values (N'Bà TÁM2', N'Đồ ăn', 100, N'BÚN BÒ' )
insert into CUAHANG values (N'PHỤ KIỆN CÔNG NGHỆ', N'phụ kiện', 300, N'BÀN PHÍM CƠ')
insert into CUAHANG values (N'PHỤ KIỆN CÔNG NGHỆ0', N'phụ kiện', 3000,N'CHUỘT 2')
insert into CUAHANG values (N'GiaDungOnline4', N'Gia Dụng', 100, N'GIÁ ĐỰNG SÁCH' )
insert into CUAHANG values (N'GiaDungOnline1', N'Gia Dụng', 20,N'BÀN LÀM VIỆC'  )
insert into CUAHANG values (N'GiaDungOnline2', N'Gia Dụng', 20, N'TỦ' )
insert into CUAHANG values (N'ThoiTrangOfficial3', N'Thời trang', 310,N'DÉP')
insert into CUAHANG values (N'ThoiTrangOfficial4', N'Thời trang', 40,N'GIÀY NAM' )
insert into CUAHANG values (N'PHỤ KIỆN CÔNG NGHỆ1', N'phụ kiện', 240, N'PHÍM COR RGB' )

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
insert into DONHANG values ('DH1','2023-03-12',N'IPHONE 14 PRO',N'KHOA','SHOPPE')
insert into DONHANG values ('DH2','2023-02-15',N'QUẠT',N'THỊNH','GHTK')
insert into DONHANG values ('DH3','2023-04-11',N'ĐIỀU HOÀ',N'KHÁNH ','NOW')
insert into DONHANG values ('DH4','2022-03-10',N'ÁO THUN',N'LINH','VIETTEL')
insert into DONHANG values ('DH5','2021-03-12',N'MACBOOK',N'HÙNG','NINJA VAN')
insert into DONHANG values ('DH6','2023-04-12',N'LAPTOP LENOVO',N'HUY','EXPRESS')
insert into DONHANG values ('DH7','2023-03-15',N'BÀN HỌC',N'LAN','NINJA VAN')
insert into DONHANG values ('DH8','2023-03-10',N'GHẾ GAMING ',N'THAO','SHOPPE 2')
insert into DONHANG values ('DH9','2023-01-12',N'SÁCH CNTT',N'PHƯỢNG','SHOPPE 3')
insert into DONHANG values ('DH10','2020-03-12',N'SÁCH LẬP TRÌNH C/C++',N'MAI','SHOPPE 4')
insert into DONHANG values ('DH11','2023-05-11',N'SÁCH LẬP TRÌNH',N'THÀNH','SHOPPE EXPRESS')
insert into DONHANG values ('DH12','2023-03-14',N'ĐỒ ĂN NHANH',N'ĐỨC','GIAO HANG NHANH')
insert into DONHANG values ('DH13','2023-05-12',N'PHỞ',N'LINH','SHOPPE 5')
insert into DONHANG values ('DH14','2019-03-13',N'TRÀ CHANH',N'HOA','SHOPPE 6')
insert into DONHANG values ('DH15','2023-03-10',N'TRÀ SỮA ',N'Elon Musk','SHOPPE 7')
insert into DONHANG values ('DH16','2023-03-08',N'CƠM',N'MINH','SHOPPE 9')
insert into DONHANG values ('DH17','2023-03-03',N'BÚN BÒ',N'TUẤN','SHOPPE 8')
insert into DONHANG values ('DH18','2022-09-12',N'BÀN PHÍM CƠ',N'ANH','SHOPPE HUb') 
insert into DONHANG values ('DH19','2023-05-12',N'CHUỘT 2',N'HÒA',N'SHOPPE COD9')
insert into DONHANG values ('DH20','2020-03-10',N'GIÁ ĐỰNG SÁCH',N'PHÚC','SHOPPE VCN')
insert into DONHANG values ('DH21','2023-03-20',N'BÀN LÀM VIỆC',N'LY','SHOPPE HT')
insert into DONHANG values ('DH22','2023-03-23',N'TỦ ',N'LAN','SHOPPE COD1')
insert into DONHANG values ('DH23','2024-03-17',N'DÉP',N'LÝ','SHOPPE COD2') 
insert into DONHANG values ('DH24','2023-05-19',N'GIÀY NAM',N'CHUNG','SHOPPE COD3')
insert into DONHANG values ('DH25','2023-04-16',N'PHÍM COR RGB',N'Mark Zuckerberg','SHOPPE COD4')

SELECT *FROM NOWSHIP
insert into NOWSHIP values('N1',N'IPHONE 14 PRO','Apple official')
insert into NOWSHIP values('N2',N'QUẠT','Apple official2')
insert into NOWSHIP values('N3',N'ĐIỀU HOÀ','GiaDungOnline9')
insert into NOWSHIP values('N4',N'ÁO THUN','GiaDungOnline6')
insert into NOWSHIP values('N5',N'MACBOOK','ThoiTrangOfficial')
insert into NOWSHIP values('N6',N'LAPTOP LENOVO','PCOnline')
insert into NOWSHIP values('N7',N'BÀN HỌC','GiaDungOnline')
insert into NOWSHIP values('N8',N'GHẾ GAMING ','GiaDungOnline7')
insert into NOWSHIP values('N9',N'SÁCH CNTT', 'BooksShop')
insert into NOWSHIP values('N10',N'SÁCH LẬP TRÌNH C/C++','BooksShop2')
insert into NOWSHIP values('N11',N'SÁCH LẬP TRÌNH','BooksShop3')
insert into NOWSHIP values('N12',N'ĐỒ ĂN NHANH','Cicle K')
insert into NOWSHIP values('N13',N'PHỞ','Bà TÁM4')
insert into NOWSHIP values('N14',N'TRÀ CHANH','Mixue')
insert into NOWSHIP values('N15',N'TRÀ SỮA ','Mixue2')
insert into NOWSHIP values('N16',N'CƠM','Bà TÁM')
insert into NOWSHIP values('N17',N'BÚN BÒ','Bà TÁM2')
insert into NOWSHIP values('N18',N'BÀN PHÍM CƠ','PHỤ KIỆN CÔNG NGHỆ')
insert into NOWSHIP values('N19',N'CHUỘT 2','PHỤ KIỆN CÔNG NGHỆ0')
insert into NOWSHIP values('N20',N'GIÁ ĐỰNG SÁCH','GiaDungOnline4')
insert into NOWSHIP values('N21',N'BÀN LÀM VIỆC','GiaDungOnline1')
insert into NOWSHIP values('N22',N'TỦ ','GiaDungOnline2')
insert into NOWSHIP values('N23',N'DÉP','ThoiTrangOfficial3')
insert into NOWSHIP values('N24',N'GIÀY NAM','ThoiTrangOfficial4')
insert into NOWSHIP values('N25',N'PHÍM COR RGB','PHỤ KIỆN CÔNG NGHỆ1')

SELECT *FROM SHIPPER
insert into SHIPPER values(N'Tài Xế 1','0382362710','DH1','N1','SHOPPE')
insert into SHIPPER values(N'Tài Xế 2','0382362711','DH2','N2','GHTK')
insert into SHIPPER values(N'Tài Xế 3','0382362712','DH3','N3','NOW')
insert into SHIPPER values(N'Tài Xế 4','0382362713','DH4','N4','VIETTEL')
insert into SHIPPER values(N'Tài Xế 5','0382362714','DH5','N5','NINJA VAN')
insert into SHIPPER values(N'Tài Xế 6','0382362715','DH6','N6','EXPRESS')
insert into SHIPPER values(N'Tài Xế 7','0382362716','DH7','N7','SHOPPE 2')
insert into SHIPPER values(N'Tài Xế 8','0382362717','DH8','N8','SHOPPE 3')
insert into SHIPPER values(N'Tài Xế 9','0382362718','DH9','N9','SHOPPE 4')
insert into SHIPPER values(N'Tài Xế 10','0382362719','DH10','N10','SHOPPE EXPRESS')
insert into SHIPPER values(N'Tài Xế 11','0382362720','DH11','N11','GIAO HANG NHANH')
insert into SHIPPER values(N'Tài Xế 12','0382362721','DH12','N12','SHOPPE 5')
insert into SHIPPER values(N'Tài Xế 13','0382362722','DH13','N13','SHOPPE 6')
insert into SHIPPER values(N'Tài Xế 14','0382362723','DH14','N14','SHOPPE 7')
insert into SHIPPER values(N'Tài Xế 15','0382362724','DH15','N15','SHOPPE 9')
insert into SHIPPER values(N'Tài Xế 16','0382362725','DH16','N16','SHOPPE 8')
insert into SHIPPER values(N'Tài Xế 17','0382362726','DH17','N17','SHOPPE HUb')
insert into SHIPPER values(N'Tài Xế 18','0382362727','DH18','N18','SHOPPE COD9')
insert into SHIPPER values(N'Tài Xế 19','0382362728','DH19','N19','SHOPPE VCN')
insert into SHIPPER values(N'Tài Xế 20','0382362729','DH20','N20','SHOPPE HT')
insert into SHIPPER values(N'Tài Xế 21','0382362730','DH21','N21','SHOPPE COD1')
insert into SHIPPER values(N'Tài Xế 22','0382362731','DH22','N22','SHOPPE COD2')
insert into SHIPPER values(N'Tài Xế 23','0382362732','DH23','N23','SHOPPE COD3')
insert into SHIPPER values(N'Tài Xế 24','0382362733','DH24','N24','SHOPPE COD4')
insert into SHIPPER values(N'Tài Xế 25','0382362734','DH25','N25','SHOPPE COD')

SELECT *FROM SUPPORT
insert into SUPPORT values(1,'SP1','KH01',N'KHOA','NApple official','DH1') 
insert into SUPPORT values(2,'SP2','KH02',N'THỊNH',N'Apple official2','DH2') 
insert into SUPPORT values(3,'SP3','KH03',N'KHÁNH ',N'GiaDungOnline9','DH3') 
insert into SUPPORT values(4,'SP4','KH04',N'LINH2',N'GiaDungOnline6','DH4') 
insert into SUPPORT values(5,'SP5','KH05',N'HÙNG',N'ThoiTrangOfficial','DH5') 
insert into SUPPORT values(6,'SP6','KH06',N'HUY','NPCOnline','DH6') 
insert into SUPPORT values(7,'SP7','KH07',N'LAN',N'GiaDungOnline','DH7') 
insert into SUPPORT values(8,'SP8','KH08',N'THAO',N'GiaDungOnline7','DH8') 
insert into SUPPORT values(9,'SP9','KH09',N'PHƯỢNG',N'BooksShop','DH9') 
insert into SUPPORT values(10,'SP10','KH10',N'MAI',N'BooksShop2','DH10') 
insert into SUPPORT values(11,'SP11','KH11',N'THÀNH',N'BooksShop3','DH11')
insert into SUPPORT values(12,'SP12','KH12',N'ĐỨC',N'Cicle K','DH12') 
insert into SUPPORT values(13,'SP13','KH13',N'LINH',N'Bà TÁM4','DH13') 
insert into SUPPORT values(14,'SP14','KH14',N'HOA',N'Mixue','DH14') 
insert into SUPPORT values(15,'SP15','KH15',N'Elon Musk',N'Mixue2','DH15') 
insert into SUPPORT values(16,'SP16','KH16',N'MINH',N'Bà TÁM','DH16') 
insert into SUPPORT values(17,'SP17','KH17',N'TUẤN',N'Bà TÁM2','DH17') 
insert into SUPPORT values(18,'SP18','KH18',N'ANH',N'PHỤ KIỆN CÔNG NGHỆ','DH18') 
insert into SUPPORT values(19,'SP19','KH19',N'HÒA',N'PHỤ KIỆN CÔNG NGHỆ0','DH19') 
insert into SUPPORT values(20,'SP20','KH20',N'PHÚC',N'GiaDungOnline4','DH20') 
insert into SUPPORT values(21,'SP21','KH21',N'LY',N'GiaDungOnline1','DH21') 
insert into SUPPORT values(22,'SP22','KH22',N'LAN2',N'GiaDungOnline2','DH22') 
insert into SUPPORT values(23,'SP23','KH23',N'LÝ',N'ThoiTrangOfficial3','DH23') 
insert into SUPPORT values(24,'SP24','KH24',N'CHUNG',N'ThoiTrangOfficial4','DH24') 
insert into SUPPORT values(25,'SP25','KH25',N'Mark Zuckerberg',N'PHỤ KIỆN CÔNG NGHỆ1','DH25')




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
INNER JOIN THONGTIN_ND ON NGUOIDUNG.IDNguoiDung = THONGTIN_ND.IDNguoiDung;
GO

s
SELECT * FROM ToanBoKhachhang



------------Lấy thông tin khách hàng có địa chỉ cổ nhuế 2 ---------------

CREATE VIEW LHKHACHHANG AS
SELECT THONGTIN_ND.TenND,
       THONGTIN_ND.SDT,
       THONGTIN_ND.DiaChi
FROM THONGTIN_ND
WHERE THONGTIN_ND.DiaChi = N'Cổ Nhuế 2'

select *from LHKHACHHANG


------------IN TT Đơn Hàng Năm 2022----------
CREATE VIEW 