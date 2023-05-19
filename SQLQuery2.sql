
create database QuanLyTrangSuc
Use QuanLyTrangSuc

-------------------------------create table-------------------------------

create table Size(
MaSize varchar(10),
TenSize varchar(50),
primary key(MaSize)
)
go
create table MauSac(
MaMauSac varchar(10),
TenMauSac nvarchar(50),
primary key(MaMauSac)
)
go
create table ChatLieu(
MaChatLieu varchar(10),
TenChatLieu nvarchar(50),
primary key(MaChatLieu)
)
go
create table NhaSanXuat(
MaNhaSanXuat varchar(10),
TenNhaSanXuat nvarchar(50),
QuocGia nvarchar(50),
primary key(MaNhaSanXuat)
)
go
create table NhaCungCap(
MaNhaCungCap varchar(10),
TenNhaCungCap nvarchar(50),
DiaChi nvarchar(300),
SoDienThoai varchar(15),
primary key(MaNhaCungCap)
)
go
create table KhachHang(
MaKhachHang varchar(10),
TenKhachHang nvarchar(50),
DiaChi nvarchar(300),
SoDienThoai varchar(15),
primary key(MaKhachHang)
)
go
create table NhanVien(
MaNhanVien varchar(10),
HoTen nvarchar(50),
NgaySinh date,
SoDienThoai varchar(15),
primary key(MaNhanVien)
)
go
create table HoaDon(
MaHoaDon varchar(10),
MaKhachHang varchar(10),
MaNhanVien varchar(10),
NgayTao date,
TinhTrang varchar(20),
primary key(MaHoaDon),
CONSTRAINT FK_KhachHang FOREIGN KEY(MaKhachHang) REFERENCES KhachHang(MaKhachHang),
CONSTRAINT FK_NhanVien FOREIGN KEY(MaNhanVien) REFERENCES NhanVien(MaNhanVien)
)
GO
create table TrangSuc(
MaTrangSuc varchar(10),
MaSize varchar(10),
MaMauSac varchar(10),
MaChatLieu varchar(10),
MaNhaSanXuat varchar(10),
MaNhaCungCap varchar(10),
Ten nvarchar(50),
GiaThanh float,
SoLuong int,
primary key(MaTrangSuc),
CONSTRAINT FK_MauSac FOREIGN KEY(MaMauSac) REFERENCES MauSac(MaMauSac),
CONSTRAINT FK_Size FOREIGN KEY(MaSize) REFERENCES Size(MaSize),
CONSTRAINT FK_NhaSanXuat FOREIGN KEY(MaNhaSanXuat) REFERENCES NhaSanXuat(MaNhaSanXuat),
CONSTRAINT FK_ChatLieu FOREIGN KEY(MaChatLieu) REFERENCES ChatLieu(MaChatLieu),
CONSTRAINT FK_NhaCungCap FOREIGN KEY(MaNhaCungCap) REFERENCES NhaCungCap(MaNhaCungCap),
)
go
create table HoaDonChiTiet(
MaHoaDon varchar(10),
MaTrangSuc varchar(10),
SoLuong int,
DonGia float,
primary key(MaHoaDon, MaTrangSuc),
CONSTRAINT FK_TrangSuc FOREIGN KEY(MaTrangSuc) REFERENCES TrangSuc(MaTrangSuc),
CONSTRAINT FK_HoaDon FOREIGN KEY(MaHoaDon) REFERENCES HoaDon(MaHoaDon),
)
go
-------------------------------Nhập ngắn gọn-------------------------------

--Nhập bảng size
insert into Size(MaSize, TenSize)
values 
('1A','Size 1'),
('2A','Size 2'),
('3A','Size 3'),
('4A','Size 4'),
('5A','Size 5'),
('6A','Size 6'),
('7A','Size 7'),
('8A','Size 8'),
('9A','Size 9'),
('10A','Size 10'),
('11A','Size 11'),
('12A','Size 12'),
('13A','Size 13'),
('14A','Size 14'),
('15A','Size 15'),
('16A','Size 16'),
('17A','Size 17'),
('18A','Size 18'),
('19A','Size 19'),
('20A','Size 20')

--Nhập bảng màu sắc 
insert into  MauSac(MaMauSac,TenMauSac)
vaLues
('VN1',N'Vàng Trắng'),
('VN2',N'Bạc Trắng'),
('VN3',N'Bạch Kim'),
('VN4',N'Xanh Ngọc'),
('VN5',N'Vàng Hồng'),
('VN6',N'Bạc Đỏ'),
('VN7',N'Vàng Đen'),
('VN8',N'Vàng Đỏ'),
('VN9',N'Bạc Đen'),
('VN10',N'Hồng Đỏ'),
('VN11',N' Tím '),
('VN12',N'Xanh Tím'),
('VN13',N'Cam Trắng'),
('VN14',N'Xanh Lam'),
('VN15',N'Nâu  Đen'),
('VN16',N'Vàng Nâu'),
('VN17',N'Trắng Đục'),
('VN18',N'Trắng Trong'),
('VN19',N'Đỏ Ruby'),
('VN20',N' Đen Trầm')

--Nhập bảng chất liệu
insert into ChatLieu(MaChatLieu, TenChatLieu)
values
('7AJD1',N'Bạc'),
('7AJD2',N'Vàng 9999'),
('7AJD3',N'Vàng 24K'),
('7AJD4',N'NVàng trắng 10K'),
('7AJD5',N'Vàng trắng 14K'),
('7AJD6',N'Vàng trắng 18K'),
('7AJD7',N'Vàng tây 8K'),
('7AJD8',N'Vàng tây 9K'),
('7AJD9',N'Vàng tây 10K'),
('7AJD10',N'Vàng tây 14K'),
('7AJD11',N'Vàng tây 18K'),
('7AJD12',N'Vàng hồng 10K'),
('7AJD13',N'Vàng hồng 14K'),
('7AJD14',N'Vàng hồng 18K'),
('7AJD15',N'Vàng Ý 750'),
('7AJD16',N'Vàng Ý 925'),
('7AJD17',N'Vàng non'),
('7AJD18',N'Bạc mỹ ký'),
('7AJD19',N'Bạch kim'),
('7AJD20',N'Titan')

--Nhập nhà sản xuất
insert into NhaSanXuat(MaNhaSanXuat,TenNhaSanXuat,QuocGia)
values
('IU01',N'Decoco',N'Việt Nam'),
('IU02',N'Doxa',N'Trung Quốc'),
('IU03',N'Saga',N'Mỹ'), 
('IU04',N'Seiko',N'Anh'),
('IU05',N'Hatomugi',N'Nhật Bản'),
('IU06',N'PNJ',N'Pháp'),
('IU07',N'Doji',N'Indonesia'),
('IU08',N'Skymond Luxury',N'Ấn Độ'),
('IU09',N'Cartier',N'Hàn Quốc'),
('IU010',N'Daniel Wellington',N'Thụy Điển'),
('IU011',N'Sokolov','Nga'),
('IU012',N'Harry Winston',N'Australia'),
('IU013',N'Chopard',N'Canada'),
('IU014',N'Chanel',N'Peru'),
('IU015',N'Cartino',N'Nam Phi'),
('IU016',N'Hermes',N'Mexico'),
('IU017',N'Đồng Hồ Hải Triều',N'Việt Nam'),
('IU018',N'Tiffany&Co',N'Italy'),
('IU019',N'Dojia',N'Ấn Độ'),
('IU020',N'Chopard',N'Lào')

--Nhập nhà cung cấp
insert into NhaCungCap(MaNhaCungCap,TenNhaCungCap,DiaChi,SoDienThoai)
values 
('HT1',N'Vàng Bạc Mão Thiệt',N'Thái Bình','0123465780'),
('HT2',N'Vàng Bạc Lữ Hưởng',N'Thái Bình','0123465787'),
('HT3',N'Vàng Bạc Đá Quý Sài Gòn',N'Bình Thuận','0123447365'),
('HT4',N'Vàng Bạc Đá Quý SacomBank ',N'Thành Phố Hồ Chí Minh','0263657800'),
('HT5',N'Bảo Tín Minh Châu',N'Hải Phòng','0123371049'),
('HT6',N'Prima Gold Việt Nam',N'Quảng Ninh','0121467433'),
('HT7',N'Cửu Long Jewelry',N'Hà Nội','0835466663'),
('HT8',N'Skymond luxyry Việt',N'Bình Dương','0946352736'),
('HT9',N'Pandora Việt Nam',N'Hà Nội','0312365380'),
('HT10',N'Đồng Hồ Hải Triều',N'Thái Nguyên','0123849380'),
('HT11',N'Vàng Bạc Đá Quý Phú Nhuận',N'Phú Yên','0999332745'),
('HT12',N'Doji Việt Nam',N'Hà Nội ','0827391020'),
('HT13',N'Blue Peach Trang sức bạc',N'Nghệ An','0767392010'),
('HT14',N'Twinkle Trang sức bạc',N'Thành Phố Hồ Chí Minh','0836667800'),
('HT15',N'Dế bạc Trang sức vàng bạc',N'Hà Nội','0774936201'),
('HT16',N'Miêu bạc Trang sức thiết kế',N'Hải Phòng','0535559372'),
('HT17',N'Cáo bạc Trang sức vàng bạc',N'Quảng Ninh','0137228828'),
('HT18',N'Trang sức Bạc xưa',N'Thành Phố Huế','0774499362'),
('HT19',N'KiraSilver Việt Nam',N'Hà Nội','0980203047'),
('HT20',N'LANN Jewelry Mỹ ',N'Thành Phố Hồ Chí Minh','0036401666')

--Nhập danh sách khách hàng
insert into KhachHang(MaKhachHang, TenKhachHang, DiaChi, SoDienThoai)
values
('1', N'Lê Thị Hậu', N'Hà Nam','0869453626'),
('2', N'Phạm Thu Hảo', N'Hà Nội','0869453627'),
('3', N'Phạm Thị Hoài Thương', N'Hải Phòng','0869453645'),
('4', N'Nguyễn Mạnh Dũng', N'Nam Định','0869453628'),
('5', N'Vũ Nguyệt Nga', N'Bắc Ninh','0869453629'),
('6', N'Phạm Xuân Huy', N'Vũng Tàu','0869453576'),
('7', N'Trần Hữu Hùng', N'Bắc Giang','0869458926'),
('8', N'Phạm Phương Anh', N'Hồ Chí Minh','0347453626'),
('9', N'Đỗ Thị Yến', N'Thái Bình','0789453626'),
('10', N'Phạm Anh Thư', N'Quảng Bình','0869468326'),
('11', N'Nguyễn Văn Cương', N'Quảng Nam','0869463902'),
('12', N'Phạm Hùng Anh', N'Kiên Giang','0869359210'),
('13', N'Nguyễn Xuân Hiếu', N'Hưng Yên','0659453626'),
('14', N'Lê Mạnh Quang', N'Hà Nam','0869472126'),
('15', N'Nguyễn Tiến Đạt ', N'Hà Nội','0793201626'),
('16', N'Trần Thị Hiền', N'Hải Phòng','0874201099'),
('17', N'Phạm Văn Lý', N'Thái Nguyên','0648390126'),
('18', N'Trần Hoài Sơn', N'Yên Bái','0869664446'),
('19', N'Nguyễn Quỳnh Nga', N'Quảng Trị','0888945326'),
('20', N'Hoàng Thị Nhung', N'Hà Nam','0769459996')


insert into NhanVien(MaNhanVien,HoTen,NgaySinh,SoDienThoai)
values
('GH11',N'Phạm Thu Hà','03/23/2003','0345672985'),
('GH12',N'Nông Thị Hậu','02/04/1995','0937568737'),
('GH13',N'Phạm Thu Hường','02/03/2000','034561456'),
('GH14',N'Phạm Thị Dung','11/12/1999','0943729851'),
('GH15',N'Nguyễn Thị Hương','08/05/1998','094657813'),
('GH16',N'Nguyễn Thị Loan','12/11/1998','0345836378'),
('GH17',N'Phạm Văn Tâm','01/03/1998','08736487482'),
('GH18',N'Nguyễn Văn Gìau','02/04/1999','0947428487'),
('GH19',N'Trương Thị Bình','11/12/1997','0349802985'),
('GH110',N'Phạm Trung Kiên','11/11/1999','0956342985'),
('GH111',N'Nguyễn Văn Hà','10/12/2002','0325366827'),
('GH112',N'Nông Thị Phương','12/02/2002','093517336'),
('GH113',N'Lê Thị Thảo','01/04/2001','038090987'),
('GH114',N'Đỗ Thị Hảo','06/10/2001','0342568289'),
('GH115',N'Đỗ Văn Sáng','05/09/1996','09143746383'),
('GH116',N'Nguyễn Thị Ngát','04/02/1998','098546200'),
('GH117',N'Hà Văn Dũng','10/11/1997','0867537489'),
('GH118',N'Lê Văn Vượng','11/05/1997','0912324231'),
('GH119',N'Nguyễn Thị An','10/07/1995','0340987885'),
('GH120',N'Nguyễn Lan Anh','07/12/1995','0891325885')

--Nhập hóa đơn
insert into HoaDon(MaHoaDon, MaKhachHang, MaNhanVien, NgayTao, TinhTrang)
values
('231DK', '1','GH11','03/12/2023', N'Đã thanh toán'),
('232DK', '2','GH12','11/02/2018', N'Đã hủy'),
('233DK', '3','GH13','03/02/2023', N'Đã thanh toán'),
('234DK', '4','GH14','01/25/2023', N'Đã hủy'),
('235DK', '5','GH15','10/02/2022', N'Đã thanh toán'),
('236DK', '6','GH16','05/09/2022', N'Đã hủy'),
('237DK', '7','GH17','03/12/2023', N'Đã thanh toán'),
('238DK', '8','GH18','04/09/2022', N'Đã thanh toán'),
('239DK', '9','GH19','01/08/2022', N'Đã hủy'),
('2310DK', '10','GH110','08/07/2021', N'Đã hủy'),
('2311DK', '11','GH111','09/01/2021', N'Đã thanh toán'),
('2312DK', '12','GH112','10/05/2021', N'Đã hủy'),
('2313DK', '13','GH113','05/06/2021', N'Đã thanh toán'),
('2314DK', '14','GH114','01/08/2023', N'Đã hủy'),
('2315DK', '15','GH115','12/03/2021', N'Đã thanh toán'),
('2316DK', '16','GH116','11/07/2021', N'Đã thanh toán'),
('2317DK', '17','GH117','10/11/2022', N'Đã hủy'),
('2318DK', '18','GH118','02/12/2023', N'Đã thanh toán'),
('2319DK', '19','GH119','05/12/2022', N'Đã thanh toán'),
('2320DK', '20','GH120','03/12/2023', N'Đã thanh toán')

--Nhập trang sức
insert into TrangSuc(MaTrangSuc, MaSize, MaMausac, MaChatLieu, MaNhaSanXuat, MaNhaCungCap, Ten, GiaThanh, SoLuong)
values
('KTY91', '1A', 'VN1', '7AJD1', 'IU01', 'HT1', N'Nhẫn đính đá',2700000,200),
('KTY92', '2A', 'VN2', '7AJD2', 'IU02', 'HT2', N'Lắc tay',3000000,200),
('KTY93', '3A', 'VN3', '7AJD3', 'IU03', 'HT3', N'Bông tai hình tròn',1500000,200),
('KTY94', '4A', 'VN4', '7AJD4', 'IU04', 'HT4', N'Dây chuyền sợi mảnh',750000,200),
('KTY95', '5A', 'VN5', '7AJD5', 'IU05', 'HT5', N'Dây chuyền mặt trăng',4590000,200),
('KTY96', '6A', 'VN6', '7AJD6', 'IU06', 'HT6', N'Dây chuyền cỏ ba lá',1639990,200),
('KTY97', '7A', 'VN7', '7AJD7', 'IU07', 'HT7', N'Lắc tay bạc',350000,200),
('KTY98', '8A', 'VN8', '7AJD8', 'IU08', 'HT8', N'Bông tai trái tim',200000,200),
('KTY99', '9A', 'VN9', '7AJD9', 'IU09', 'HT9', N'Lắc chân',1830000,200),
('KTY910', '10A', 'VN10', '7AJD10', 'IU010', 'HT10', N'Dây chuyền',2000000,200),
('KTY911', '11A', 'VN11', '7AJD11', 'IU011', 'HT11', N'Cài áo hình chiếc lá',2293000,200),
('KTY912', '12A', 'VN12', '7AJD12', 'IU012', 'HT12', N'Bông tai nụ đá',450000,200),
('KTY913', '13A', 'VN13', '7AJD13', 'IU013', 'HT13', N'Bông tai đính đá ngũ sắc',100000,200),
('KTY914', '14A', 'VN14', '7AJD14', 'IU014', 'HT14', N'Dây chuyền bông tuyết',670000,200),
('KTY915', '15A', 'VN15', '7AJD15', 'IU015', 'HT15', N'Dây chuyền mặt tam giác',3450000,200),
('KTY916', '16A', 'VN16', '7AJD16', 'IU016', 'HT16', N'Bông tai ngôi sao',700000,200),
('KTY917', '17A', 'VN17', '7AJD17', 'IU017', 'HT17', N'Bông tai viền tròn xoắn',756000,200),
('KTY918', '18A', 'VN18', '7AJD18', 'IU018', 'HT18', N'Bông tai nạm đá',458000,200),
('KTY919', '19A', 'VN19', '7AJD19', 'IU019', 'HT19', N'Lắc tay bông hoa',458000,200),
('KTY920', '20A', 'VN20', '7AJD20', 'IU020', 'HT20', N'Lắc tay chữ cái',458000,200),
('KTY921', '20A', 'VN20', '7AJD20', 'IU020', 'HT20', N'Lắc tay',500000,200)


--Nhập hóa đơn chi tiết
insert into HoaDonChiTiet(MaHoaDon, MaTrangSuc, SoLuong, DonGia)
values 
('231DK', 'KTY91', 5, 2700000),
('232DK', 'KTY92', 2,3000000),
('233DK', 'KTY93', 4,1500000),
('234DK', 'KTY94', 1, 750000),
('235DK', 'KTY95', 31,4590000),
('236DK', 'KTY96', 6, 1639990),
('237DK', 'KTY97', 7, 350000),
('238DK', 'KTY98', 5, 200000),
('239DK', 'KTY99', 3, 1830000),
('2310DK', 'KTY910', 2, 2000000),
('2311DK', 'KTY911', 4, 2293000),
('2312DK', 'KTY912', 7,450000),
('2313DK', 'KTY913', 9,100000),
('2314DK', 'KTY914', 1, 670000),
('2315DK', 'KTY915', 2, 3450000),
('2316DK', 'KTY916', 5,700000),
('2317DK', 'KTY917', 7, 756000),
('2318DK', 'KTY918', 8, 458000),
('2319DK', 'KTY920', 2, 458000),
('2320DK', 'KTY920', 12, 458000)




-------------------------------------------Funtion-------------------------------------------


---------------------------Hàm Scalar ( funtion loại 1)---------------------------

--------------1.nhập vào mã trang sức cho biết giá thành--------------

create or alter function GiaThanh(@maTrangSuc varchar(10))
returns int
as
begin
    return(select GiaThanh from TrangSuc Where MaTrangSuc = @maTrangSuc)
end
print  dbo.GiaThanh('KTY93')
SELECT *from GiaThanh


--------------2.Hàm đếm số lượng hóa đơn theo tình trạng và thời gian là 2 giá trị được nhập vào bàn phím--------------

create or alter function SoLuongHoaDon(@tinhTrang varchar(20), @thang int, @nam int)
returns int 
as
begin
	declare @count int = 0
	select @count = count(*) 
		from HoaDon 
		where TinhTrang = @tinhTrang and month(NgayTao) = @thang and year(NgayTao) = @nam
	return @count
end

select MaHoaDon, dbo.SoLuongHoaDon(N'Đã thanh toán',03,2023) as SLHDTheoYeuCau
from HoaDon




--------------3.Viết hàm hiển thị giá tiền bằng đơn vị tiền tệ của Việt Nam với tham số truyền vào là tiền--------------

create or alter function HienThiDVTienTe1(@giaThanh int)
returns nvarchar(max)
as
	begin
		return  case
			when @giaThanh > 0 and @giaThanh < 1000000 then cast(@giaThanh as nvarchar) +N'Nghìn đồng'
			when @giaThanh > 0 and @giaThanh < 1000000000 then cast(@giaThanh as nvarchar) +N'Triệu đồng'
			else cast(@giaThanh as nvarchar) + N' Tỉ đồng' end 
end

select MaTrangSuc, Ten, GiaThanh as GiaChuaXuLy,
		dbo.HienThiDVTienTe1(GiaThanh) as GiaDaXuLy
		from TrangSuc



---------------------------Hàm Inline Table-Valued (funtion loại 2)---------------------------


--------------1.Lấy ra thông tin của nhân viên có mã được nhập vào từ bàn phím--------------
create or alter function dbo.NhaCungCapTheoMa(@maNhaCungCap varchar(10))
returns table 
as
return select TenNhaCungCap, DiaChi
from NhaCungCap
where MaNhaCungCap = @maNhaCungCap

select * from dbo.NhaCungCapTheoMa('HT10')


--------------2.Viết hàm đưa ra thông tin nhân viên chưa bán được đơn hàng nào trong năm x . Trong đó mã nhân viên tham số được nhập vào từ bàn phím--------------

create or alter function dbo.XemTTNhanVien(@nam int)
returns table
as
return  select NhanVien.*, HoaDon.NgayTao 
from NhanVien 
join HoaDon on HoaDon.MaNhanVien=NhanVien.MaNhanVien
		where NhanVien.MaNhanVien not in(select HoaDon.MaNhanVien from HoaDon where year(NgayTao)=@nam)
	
select * from dbo.XemTTNhanVien(2023)



---------------------------Hàm Multi-Statement Table-Valued (funtion loại 3)---------------------------

--------------Lấy thông tin sản phẩm theo mã trang sức với các sản phẩm là loại dây chuyền và tên khách mua+địa chỉ tương ứng--------------
create or alter function ThongTinSanPham(@maTrangSuc varchar(10))
returns @tableName table
(
	MaTrangSuc varchar(10),
	Ten nvarchar(50),
	TenNhaSanXuat nvarchar(50),
	TenNhaCungCap nvarchar(50),
	TenKhachVaDiaChi nvarchar(350)
)
as
	begin
		insert into @tableName 
		select TrangSuc.MaTrangSuc, TrangSuc.Ten, NhaSanXuat.TenNhaSanXuat,NhaCungCap.TenNhaCungCap,KhachHang.TenKhachHang+ '-' +KhachHang.DiaChi
		from TrangSuc,NhaCungCap,NhaSanXuat,HoaDonChiTiet,HoaDon,KhachHang 
		where TrangSuc.MaNhaCungCap = NhaCungCap.MaNhaCungCap
			and TrangSuc.MaNhaSanXuat = NhaSanXuat.MaNhaSanXuat
			and  TrangSuc.MaTrangSuc = HoaDonChiTiet.MaTrangSuc
			and  HoaDonChiTiet.MaHoaDon = HoaDon.MaHoaDon
			and HoaDon.MaKhachHang = KhachHang.MaKhachHang
			and TrangSuc.Ten like N'Dây chuyền %'
		return
end

select * from ThongTinSanPham('KTY912')



-------------------------------------------View-------------------------------------------



--------------1.Lấy ra thông tin khách hàng-------------- 

create or alter view ThongTinKhachHang
as
select KhachHang.MaKhachHang, 
KhachHang.TenKhachHang, 
HoaDon.MaHoaDon, 
HoaDon.NgayTao, 
HoaDon.TinhTrang
from HoaDon
inner join KhachHang
on KhachHang.MaKhachHang = HoaDon.MaKhachHang

select * from ThongTinKhachHang


--------------2.Lấy toàn bộ thông tin ( 1 view toàn bộ database)-------------- 

create or alter view LayToanBoDatabase
as
select 
Size.*, MauSac.*, ChatLieu.*,NhaSanXuat.*,
NhaCungCap.MaNhaCungCap, NhaCungCap.DiaChi as DiaChiNhaCungCap , NhaCungCap.SoDienThoai as SDTNhaCungCap , NhaCungCap.TenNhaCungCap,
KhachHang.MaKhachHang, KhachHang.TenKhachHang,KhachHang.DiaChi,KhachHang.SoDienThoai as SDTKhachHang,
NhanVien.MaNhanVien,NhanVien.HoTen,NhanVien.NgaySinh,NhanVien.SoDienThoai as SoDienThoaiNhanVien,
HoaDon.MaHoaDon, HoaDon.NgayTao, HoaDon.TinhTrang,
TrangSuc.GiaThanh, TrangSuc.MaTrangSuc, TrangSuc.Ten, TrangSuc.SoLuong as SLTon,
HoaDonChiTiet.DonGia, HoaDonChiTiet.SoLuong
from Size, MauSac, ChatLieu, NhaSanXuat, NhaCungCap, KhachHang, NhanVien, HoaDon, TrangSuc, HoaDonChiTiet
where HoaDon.MaKhachHang = KhachHang.MaKhachHang
and HoaDon.MaNhanVien = NhanVien.MaNhanVien
and TrangSuc.MaSize = Size.MaSize
and TrangSuc.MaMauSac = MauSac.MaMauSac
and TrangSuc.MaChatLieu = ChatLieu.MaChatLieu
and TrangSuc.MaNhaSanXuat = NhaSanXuat.MaNhaSanXuat
and TrangSuc.MaNhaCungCap = NhaCungCap.MaNhaCungCap
and HoaDonChiTiet.MaHoaDon= HoaDon.MaHoaDon
and HoaDonChiTiet.MaTrangSuc = TrangSuc.MaTrangSuc

select * from LayToanBoDatabase


--------------3.Lấy ra thông tin khách hàng có địa chỉ ở Hà Nam--------------

create or alter view KhachHangOHaNam
as
select *
from KhachHang
where DiaChi like 'Hà Nam'

select * from KhachHangOHaNam


--------------4.Lấy ra khách hàng có hóa đơn lớn hơn 10 triệu và ngày tạo là ngày 12/03/2023--------------

create or alter function LayGia(@maTrangSuc varchar(10))
returns float
as
begin
	declare @gia float
	select @gia = GiaThanh from TrangSuc
	where MaTrangSuc = @maTrangSuc
	return @gia
end

create or alter function TinhTien(@gia float,@soLuong int)
		returns float
		as
		begin
			return  @gia * @soLuong
		end


create or alter  view HoaDonKhachHang
as
select KhachHang.MaKhachHang,
KhachHang.TenKhachHang,
dbo.TinhTien(dbo.LayGia(TrangSuc.MaTrangSuc), HoaDonChiTiet.SoLuong) as ThanhTien,
HoaDon.NgayTao
from KhachHang, HoaDon, HoaDonChiTiet, TrangSuc
where KhachHang.MaKhachHang = HoaDon.MaKHachHang
	  and HoaDon.MaHoaDon = HoaDonChiTiet.MaHoaDon
	  and TrangSuc.MaTrangSuc = HoaDonChiTiet.MaTrangSuc
	  and dbo.TinhTien(dbo.LayGia(TrangSuc.MaTrangSuc), HoaDonChiTiet.SoLuong)> 10000000
	  and HoaDon.Ngaytao = '03/12/2023'

 select * from HoaDonKhachHang


--------------5.Đếm tổng từng sản phẩm bán được trên 10-------------- 
create or alter view TongTungSPBanDuoc
as
select HoaDonChiTiet.MaTrangSuc, 
TrangSuc.Ten, 
sum(HoaDonChiTiet.SoLuong) as Tong 
from TrangSuc, HoaDonChiTiet
where TrangSuc.MaTrangSuc = HoaDonChiTiet.MaTrangSuc
group by HoaDonChiTiet.MaTrangSuc, TrangSuc.Ten
having sum(HoaDonChiTiet.SoLuong)>10

select * from HoaDonChiTiet
select * from TongTungSPBanDuoc


--------------6.Những sản phẩm không bán được--------------

create or alter view SPKhongBanDuoc 
as
select TrangSuc.MaTrangSuc, 
TrangSuc.Ten 
from TrangSuc 
where TrangSuc.MaTrangSuc not in (select TrangSuc.MaTrangSuc
									from HoaDonChiTiet 
									join TrangSuc on TrangSuc.MaTrangSuc = HoaDonChiTiet.MaTrangSuc
									)

select * from SPKhongBanDuoc


--------------7.Top 5 sản phẩm nhiều người mua nhất theo nam hien tai-------------- 

create or alter view Top5SPBanChayTheoNam
as
select top 5
TrangSuc.MaTrangSuc,
TrangSuc.Ten,
sum(HoaDonChiTiet.SoLuong) as TongSoLuong,
year (HoaDon.NgayTao) as ngay 
from HoaDonChiTiet, TrangSuc, HoaDon
 where TrangSuc.MaTrangSuc = HoaDonChiTiet.MaTrangSuc
	   and HoaDon.MaHoaDon = HoaDonChiTiet.MaHoaDon
group by TrangSuc.MaTrangSuc,TrangSuc.Ten, year(HoaDon.NgayTao)
having year(HoaDon.NgayTao) = year (getdate())
order by sum(HoaDonChiTiet.SoLuong) desc

select * from Top5SPBanChayTheoNam


--------------8.Top 3 sản phẩm ít người mua nhất theo ngày hiện tại--------------

create or alter view Top3SPItNguoiMuaTheoNgay
as
select top 3
TrangSuc.MaTrangSuc,
TrangSuc.Ten,
sum(HoaDonChiTiet.SoLuong) as TongSoLuong,
day(HoaDon.NgayTao) as ngay,
month(HoaDon.NgayTao) as thang,
year (HoaDon.NgayTao) as nam
from HoaDonChiTiet 
join TrangSuc on TrangSuc.MaTrangSuc = HoaDonChiTiet.MaTrangSuc
join HoaDon on  HoaDon.MaHoaDon = HoaDonChiTiet.MaHoaDon
group by TrangSuc.Ten,TrangSuc.MaTrangSuc, day(HoaDon.NgayTao),month(HoaDon.NgayTao),year (HoaDon.NgayTao) 
having day(HoaDon.NgayTao) = day(getdate()) 
	   and month(HoaDon.NgayTao)= month(getdate()) 
	   and year(HoaDon.NgayTao) = year(getdate())
order by sum(HoaDonChiTiet.SoLuong) asc

select * from Top3SPItNguoiMuaTheoNgay





-------------------------------------------Procedure-------------------------------------------


--------------1.Xem hóa đơn ngày mùng 5--------------

create or alter  proc XemHoaDon
as
select *
from HoaDon
where day(HoaDon.NgayTao) = 5

select * from HoaDon

exec XemHoaDon


--------------2.Xem thông tin khách hàng có đơn đặt hàng vào ngày 03/12/2023 với mã khách hàng được nhập vào bàn phím-------------- 

create or alter proc XemTTKhachHang 
@maKhachHang varchar(10)
as
select * 
from KhachHang 
inner join HoaDon 
on KhachHang.MaKhachHang = HoaDon.MaKhachHang
where (KhachHang.MaKhachHang = @maKhachHang) and day(HoaDon.NgayTao) = 12
											 and month(HoaDon.NgayTao) = 03
											 and year(HoaDon.NgayTao) = 2023
exec XemTTKhachHang  @maKhachHang ='1'



--------------3.Thêm nhân viên với các thuộc tính không được để trống và ngày sinh không được lớn hơn ngày hiện tại--------------

create or alter proc ThemNhanVien
@maNhanVien varchar(10), 
@tenNhanVien nvarchar(50), 
@ngaySinh date, 
@soDienThoai varchar(15)
as 
begin
	if @maNhanVien is null
		begin 
			print N'MaNhanVien không được để trống'
		end
	else if @tenNhanVien is null
		begin 
			print N'tenNhanVien không được để trống'
		end
	else if @ngaySinh is null 
		begin 
			print N'ngaySinh  không để trống'
		end
	else if @ngaySinh > getdate() 
		begin 
			print N'ngaySinh không được lớn hơn ngày hiện tại'
		end
	else if @soDienThoai is null 
		begin 
print N'soDienThoai không được bỏ trống'
		end
	
	else
		begin 
			insert into NhanVien
			values (@maNhanVien, @tenNhanVien, @ngaySinh, @soDienThoai)
			print N'Thêm thành công'
		end
end 
exec  ThemNhanVien @maNhanVien = 'GH121', @tenNhanVien = N'Nguyễn Ngọc Việt',  @ngaySinh ='02/18/2003',  @soDienThoai = '0274821433'



--------------4.Sửa lại thông tin nhân viên với mã được nhập vào từ bàn phím--------------

create or alter function KiemTraMaNhanVien
(
@maNhanVien varchar(10)
)
returns int
as
begin
	declare @count int
	select @count = count(*) from NhanVien where MaNhanVien = @maNhanVien
	return @count
end


create or alter  proc SuaThongTinNV
@maNhanVien varchar(10), 
@tenNhanVien nvarchar(50), 
@ngaySinh date, 
@soDienThoai varchar(15)
as 
begin
	 if dbo.KiemTraMaNhanVien(@maNhanVien)=0 
		begin
			print N'maNhanVien không tồn tại'
		end
	else if @ngaySinh > getdate() 
		begin 
			print N'ngaySinh không được lớn hơn ngày hiện tại'
		end
	else
		begin
				update NhanVien
				set
				HoTen = case when @tenNhanVien is null then HoTen else @tenNhanVien end,
				NgaySinh = case when @ngaySinh is null then NgaySinh else @ngaySinh end,
				SoDienThoai= case when @soDienThoai is null then SoDienThoai else @soDienThoai end
				where MaNhanVien = @maNhanVien
				print N'Sửa thành công'
		end
end

exec SuaThongTinNV @tenNhanVien = N'Tạ Quang Bửu', @ngaySinh = '08/06/1898', @soDienThoai = null,  @maNhanVien = 'GH16'
exec SuaThongTinNV @tenNhanVien = N'Hoàng Mai Linh', @ngaySinh = '08/06/1898', @soDienThoai = null,  @maNhanVien = 'GH11'

select * from NhanVien



--------------5.Xóa nhân viên với mã được nhập từ bàn phím--------------
create or alter proc XoaNhanVien
@maNhanVien varchar(10)
as
begin
	if @maNhanVien in (select maNhanVien from NhanVien)
		begin 
			delete from HoaDonChiTiet where exists(select * 
												   from HoaDon 
												   where HoaDon.MaHoaDon = HoaDonChiTiet.MaHoaDon 
														 and HoaDon.MaNhanVien= @maNhanVien)
			delete from HoaDon where MaNhanVien = @maNhanVien
			delete from NhanVien where MaNhanVien = @maNhanVien
			print N'Xóa thành công'
end
	else
		begin
			print N'Mã nhân viên không tồn tại'
		end	
end 

exec XoaNhanVien @maNhanVien='GH11'

select * from NhanVien




-------------------------------------------Trigger-------------------------------------------


--------------1.So sánh tuổi của nhân viên mới có quá 37 tuổi không--------------

create or alter trigger TuoiNhanVien
on NhanVien
after insert 
as
begin
declare @tuoiNVMoi int
set @tuoiNVMoi = (select year(getdate())-year(NgaySinh) as TuoiNhanVien from inserted)
if(@tuoiNVMoi >35)
	begin
		raiserror(N'Nhân viên này quá 37 tuổi',16,3)
	end
end

insert into NhanVien
values ('GH299',N'Nguyễn Xuân Khánh','07/12/1880','0891325885')

select * from NhanVien



--------------2.Tạo trigger cho bảng Hóa Đơn: Trường hợp insert--------------  
create or alter trigger ThemHoaDon
on HoaDon
instead of insert 
as
begin
	declare @maHoaDon varchar(10) = (select MaHoaDon from inserted)
	declare @maKhachHang varchar(10) = (select MaKhachHang from inserted)
	declare @maNhanVien varchar(10) = (select MaNhanVien from inserted)
	declare @ngayTao date = (select NgayTao from inserted)
	declare @tinhTrang nvarchar(20) = (select TinhTrang from inserted)
	declare @count1 int = (select count(*) from KhachHang where MaKhachHang = @maKhachHang)
declare @count2 int = (select count(*) from NhanVien where MaNhanVien = @maNhanVien)

	if @count1 = 0
		begin 
			print N'maKhachHang không tồn tại '
		end
	else if @count2 = 0
		begin 
			print N'maNhanVien không tồn tại'
		end
	else if @maHoaDon is null
		begin 
			print N'maHoaDon không được để trống'
		end
	else if @maKhachHang is null
		begin 
			print N'maKhachHang không được để trống'
		end
	else if @maNhanVien is null
		begin 
			print N'maNhanVien không được để trống'
		end
	else if (@ngayTao >getdate())
		begin 
			print N'ngayTao không được lớn hơn ngày hiện tại'
		end
	else
		begin 
			insert into HoaDon(MaHoaDon, MaKhachHang, MaNhanVien,NgayTao,TinhTrang)
			values (@maHoaDon,@maKhachHang, @maNhanVien,@ngayTao, @tinhTrang)

			print N'Thêm thành công'
		end
end

insert into HoaDon
values ('2345DK', '10' ,'GH18','03/03/2023', N'Đã thanh toán')
      
select * from HoaDon



--------------3.Tạo trigger cho bảng Hóa Đơn: Trường hợp update--------------
create or alter trigger SuaHoaDon
on HoaDon
instead of update
as
begin
	declare @maHoaDon varchar(10) = (select MaHoaDon from inserted)
	declare @count1 int = (select count(*) from HoaDon where MaHoaDon = @maHoaDon)
	declare @maKhachHang varchar(10) = (select MaKhachHang from inserted)
	declare @maNhanVien varchar(10) = (select MaNhanVien from inserted)
	declare @ngayTao date = (select NgayTao from inserted)
	declare @tinhTrang nvarchar(20) = (select TinhTrang from inserted)
	declare @count2 int = (select count(*) from KhachHang where MaKhachHang = @maKhachHang)
	declare @count3 int = (select count(*) from NhanVien where MaNhanVien = @maNhanVien)
	if @count1 = 0
		begin 
			print N'maHoaDon không tồn tại '
		end
	else if @count2 = 0
		begin 
			print N'maKhachHang không tồn tại'
		end
	else if @count3 = 0
		begin 
			print N'maNhanVien không tồn tại'
		end
	else if @maHoaDon is null
		begin 
			print N'maHoaDon không được để trống'
		end
	else if @maKhachHang is null
		begin 
			print N'maKhachHang không được để trống'
		end
	else if @maNhanVien is null
		begin 
			print N'maNhanVien không được để trống'
		end
	else if (@ngayTao >getdate())
		begin 
			print N'ngayTao không được lớn hơn ngày hiện tại'
		end
	else
		begin 
			update HoaDon
			set 
			MaNhanVien = @maNhanVien,
			MaKhachHang = @maKhachHang,
			NgayTao = @NgayTao,
			TinhTrang = @tinhTrang
			where MaHoaDon = @maHoaDon
			
			print N'Sửa thành công'
		end
end

update HoaDon
set NgayTao='01/02/2020',
	TinhTrang = N'Đã thanh toán',
	MaKhachHang = '17'
where MaHoaDon = '2312DK'

select * from HoaDon



--------------4.Tạo trigger cho bảng nhân viên: khi xóa bảng Nhân Viên, xóa luôn bản ghi trong bảng hóa đơn--------------

create or alter trigger DeleteNV
on NhanVien
instead of delete
as
begin
	declare @maNhanVien varchar(10) = (select MaNhanVien from deleted)
	if @maNhanVien in (select MaNhanVien from NhanVien )
	begin
		delete from HoaDonChiTiet where exists (select * from HoaDon where HoaDon.MaHoaDon = HoaDonChiTiet.MaHoaDon and HoaDon.MaNhanVien = @maNhanVien)
		delete from HoaDon where MaNhanVien = @maNhanVien
		delete from NhanVien where MaNhanVien = @maNhanVien

		print N'Thành Công'
	end
	else
	begin
		print N'Mã nhân viên không tồn tại'
	end
end

delete from NhanVien
where MaNhanVien = 'GH110'

select * from NhanVien
select * from HoaDon where MaNhanVien = 'GH110'



--------------5.Cập nhật lại số lượng hàng tồn khi số lượng mua tăng lên-------------- 

create or alter trigger CapNhatHangTon
on HoaDonChiTiet
instead of  update 
as
begin
	declare @maHoaDon varchar(10) = (select MaHoaDon from inserted)
	declare @maTrangSuc varchar(10) = (select MaTrangSuc from inserted)
	declare @luongMua int = (select SoLuong from inserted where MaHoaDon = @maHoaDon and MaTrangSuc = @maTrangSuc)
	if @luongMua <=0 
		begin
			print N'Số lượng phải lớn hơn 0'
		end
	else
		begin
			print N'Sửa thành công'

			update TrangSuc set SoLuong-=@luongMua where MaTrangSuc = @maTrangSuc
			update HoaDonChiTiet set SoLuong +=@luongMua
			where MaTrangSuc = @maTrangSuc and MaHoaDon = @maHoaDon
		end
end

select * from HoaDonChiTiet
select * from TrangSuc

update HoaDonChiTiet set SoLuong =2 where MaHoaDon ='2313DK' and MaTrangSuc = 'KTY913'








		