--ĐỀ TÀI QUẢN LÝ CHUYẾN BAY--

Create Database QLCB
go
Use QLCB
go
-----------------------create table--------------------------------------------
Create table KhachHang
(MaKH nvarchar(10) Primary key, TenKH nvarchar(30), 
 DchiKH nvarchar(50), TelKH varchar(10))

Create table NhanVien
(MaNV nvarchar(10) Primary key, TenNV nvarchar(30),
 DchiNV nvarchar(50), TelNV varchar(10), Luong money, CapBac nvarchar(20))

Create table LoaiMB
(MaLoai nvarchar(10) Primary key, HangSX nvarchar(30))

Create table MayBay
(SoHieu nvarchar(10) Primary key,
 MaLoai nvarchar(10) foreign key references LoaiMB(MaLoai))

Create table ChuyenBay
(MaCB nvarchar(10) Primary key, SanDi nvarchar(20), 
SanDen nvarchar(20), GioDi time, GioDen time)

Create table LichBay
(NgayDi date Primary key, MaCB nvarchar(10) foreign key references ChuyenBay(MaCB),
SoHieu nvarchar(10) foreign key references MayBay(SoHieu),
MaLoai nvarchar(10) foreign key references LoaiMB(MaLoai))

Create table DatCho
(MaKH nvarchar(10) foreign key references KhachHang(MaKH),
NgayDi date foreign key references LichBay(NgayDi),
MaCB nvarchar(10) foreign key references ChuyenBay(MaCB))

-------------------------------------------------------------------------------------
---------------------------NHẬP NGẮN GỌN-----------------------------------
---------------------nhập danh sách khách hàng-----------------------
Select * from KhachHang
Insert into KhachHang values('1', 'Van', 'HaNoi', '012345')
Insert into KhachHang values('2', 'Hong', 'HaNoi', '012389')
Insert into KhachHang values('4', 'Thuong', 'NgheAn', '023145')
Insert into KhachHang values('5', 'Bao', 'HaTinh', '023145')
Insert into KhachHang values('3', 'Toan', 'ThaiBinh', '04425')
Insert into KhachHang values('7', 'Lieu', 'TuyenQuang', '032584')
Insert into KhachHang values('8', 'Linh', 'NgheAn', '049842')
Insert into KhachHang values('9', 'John', 'America', '229045')
Insert into KhachHang values('10', 'Liu Dong', 'China', '54222')
Insert into KhachHang values('11', 'Long', 'HaiPhong', '049822')
Insert into KhachHang values('12', 'Toan', 'HaNam', '042842')
---view
Create View lienlacKH 
Select MaKH, TenKH, TelKH from KhachHang
Select * from lienlacKH

---------------------nhập danh sách nhân viên------------------------
Select * from NhanVien
Insert into NhanVien values('1', 'Tu', 'HaNoi', '464158', '5000', 'Truongphong')
Insert into NhanVien values('4', 'Linh', 'VinhPhuc', '464758', '4500', 'Phophong')
Insert into NhanVien values('2', 'Hoang', 'Hanoi', '469158', '4300', 'Phophong')
Insert into NhanVien values('3', 'Nga', 'Hanoi', '391737', '4000', 'Nhanvien')
Insert into NhanVien values('5', 'Long', 'ThaiBinh', '215464', '4000', 'NhanVien')
Insert into NhanVien values('6', 'Dat', 'BacNinh', '983729', '4000', 'Nhanvien')
---view
Create View thongtinNV as
Select MaNV, TenNV, TelNV, Luong from NhanVien
Select * from thongtinNV
---------------------nhập loại máy bay-------------------------------
Select * from LoaiMB
Insert into LoaiMB values('A321', 'Airbus')
Insert into LoaiMB values('787', 'Boeing')
Insert into LoaiMB values('43A', 'Antonov')
Insert into LoaiMB values('M77', 'Airbus')
Insert into LoaiMB values('A320 neo', 'Airbus')
Insert into LoaiMB values('A320', 'Airbus')
------------------------nhập máy bay-----------------------------------
Select * from MayBay
Insert into MayBay values('VN1', 'A321')
Insert into MayBay values('VJ2', '787')
Insert into MayBay values('BL3', '43A')
Insert into MayBay values('QH4', 'M77')
Insert into MayBay values('VJ5', 'A320 neo')
Insert into MayBay values('VN6', 'A320')
-------------------------nhập chuyến bay--------------------------------
Select * from ChuyenBay
Insert into ChuyenBay values('BL-781', 'TanSonNhat', 'NoiBai', '12:50', '14:00')
Insert into ChuyenBay values('VJ-121', 'NoiBai', 'Vinh', '7:45', '8:30')
Insert into ChuyenBay values('VN-209', 'BuonMaThuot', 'CanTho', '9:00', '10:30')
Insert into ChuyenBay values('VN-211', 'Vinh', 'DaNang', '14:20', '16:00')
Insert into ChuyenBay values('BL-783', 'ThanhHoa', 'VungTau', '5:35', '7:15')
Insert into ChuyenBay values('QH-214', 'NoiBai', 'Singapore', '19:30', '21:05')

----------------------------------nhập lịch bay------------------------------------
Select * from LichBay
Insert into LichBay values('2020-08-21', 'VN-211', 'VN6', 'A320')
Insert into LichBay values('2020-08-22', 'VN-209', 'VN1', 'A321')
Insert into LichBay values('2020-08-20', 'VJ-121', 'VJ5', 'A320 neo')
Insert into LichBay values('2020-08-19', 'BL-783', 'BL3', '43A')
Insert into LichBay values('2020-08-24', 'QH-214', 'QH4', 'M77')
Insert into LichBay values('2020-08-23', 'BL-783', 'BL3', '43A')
Insert into LichBay values('2020-08-16', 'VN-211', 'VN1', 'A321')
Insert into LichBay values('2020-08-29', 'BL-783', 'BL3', '43A')
Insert into LichBay values('2020-08-25', 'VN-209', 'VN1', 'A321')
Insert into LichBay values('2020-08-26', 'QH-214', 'QH4', 'M77')
Insert into LichBay values('2020-08-18', 'VJ-121', 'VJ5', 'A320 neo')
Insert into LichBay values('2020-08-28', 'VN-211', 'VN6', 'A320')

-----------------------------Nhập đặt chỗ-----------------------------
Insert into DatCho values('1', '2020-08-21', 'VN-211')
Insert into DatCho values('2', '2020-08-19', 'BL-783')
Insert into DatCho values('3', '2020-08-20', 'VJ-121')
Insert into DatCho values('4', '2020-08-22', 'VN-209')
Insert into DatCho values('5', '2020-08-24', 'QH-214')
Insert into DatCho values('6', '2020-08-16', 'VN-211')
Insert into DatCho values('7', '2020-08-26', 'QH-214')
Insert into DatCho values('8', '2020-08-25', 'VN-209')
Insert into DatCho values('9', '2020-08-26', 'QH-214')
Insert into DatCho values('10', '2020-08-18', 'VJ-121')
Insert into DatCho values('12', '2020-08-16', 'VN-211')
Insert into DatCho values('11', '2020-08-23', 'BL-783')
Insert into DatCho values('3', '2020-08-26', 'QH-214')
Select * from DatCho 
