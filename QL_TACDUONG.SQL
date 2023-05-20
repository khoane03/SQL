


Create Database QLTD

use QLTD

//Make the table!!!

Create table Duong 
(MaTUDU int Primary key NOT NULL, TenTUDU nvarchar(50) NULL, DoDaiTUDU float NOT NULL, ThongTinTUDU nvarchar(max) NULL)

Create table ThoiGian
(MaNG int Primary key NOT NULL, NGbegin datetime NULL, NGend datetime NULL, TenNG nvarchar(50) NULL)

Create table NhomPhuongTien
(MaNPT int Primary key NOT NULL, TenNPT nvarchar(50) NULL, MoTaNPT nvarchar(max) NULL)

Create table GiaiPhapTacDuong
(MaGP int Primary key NOT NULL, MaNNTD int NOT NULL foreign key references NguyenNhanTacDuong(MaNNTD), TenGP nvarchar(50) NULL, MoTaGP nvarchar(max) NULL)

Create table NguoiDieuKhienPhuongTien
(MaNDKPT int Primary key NOT NULL, MaPT nvarchar(10) NOT NULL foreign key references PhuongTien(MaPT), TenNDKPT nvarchar(60) NULL, DiaChi nvarchar(100) NULL, SoDienThoai nvarchar(20) NULL, Email nvarchar(50) NULL, GioiTinh nvarchar(10) NULL, NgaySinh nvarchar(30) NULL)

Create table NguyenNhanTacDuong
(MaNNTD int Primary key NOT NULL, TenNN nvarchar(50) NULL, MoTaNN nvarchar(max) NULL, MaGP int NOT NULL)

Create table PhuongTien
(MaPT nvarchar(10) Primary key NOT NULL, MaNPT int NOT NULL foreign key references NhomPhuongTien(MaNPT), TenPT nvarchar(50) NULL, Colour nvarchar(20) NULL, BienSoPT nvarchar(50) NULL)

Create table TacDuong
(MaTD int Primary key NOT NULL, MaNNTD int NOT NULL foreign key references NguyenNhanTacDuong(MaNNTD), MaTUDU int NOT NULL foreign key references Duong(MaTUDU), MaPT nvarchar(10) NOT NULL foreign key references PhuongTien(MaPT), MaNG int NOT NULL foreign key references ThoiGian(MaNG))


//Make the Information!!!

Select *from Duong 
Insert into Duong values('29333','Hoang Quoc Viet','2.5','Duong Hoang Quoc Viet thuoc dia phan cac phuong Co Nhue 1 quan Bac Tu Liem, Nghia Tan, Nghia Do quan Cau Giay, Ha Noi. Duong Hoang Quoc Viet khoi dau tu duong Pham Van Dong, chay dai giao voi cac duong Tran Cung, Nguyen Phong Sac va ket thuc tren duong Buoi doan giao voi duong Vo Chi Cong.')			
Insert into Duong values('29310','Co Nhue','1.5','Duong Co Nhue thuoc dia phan phuong Co Nhue 2 quan Bac Tu Liem, Ha Noi. Di tu nga tu Pham Van Dong - Tran Cung den nga tu giao voi cac duong Duc Thang, Pho Vien, Nguyen Dinh Tu.')
Insert into Duong values('29323','Xuan Thuy','0.9','Duong Xuan Thuy thuoc dia phan phuong Dich Vong Hau quan Cau Giay - Ha Noi. Khoi dau tu cau vuot Mai Dich ben canh Dai Hoc Quoc Gia Ha Noi, chay dai giao voi cac duong Phan Van Truong, Tran Quoc Vuong va ket thuc tai nga tu Cau Giay - Nguyen Phong Sac - Tran Thai Tong.')
Insert into Duong values('29233','Nguyen Trai','2.170','Duong Nguyen Trai duoc trai dai tu Nga Tu So den sat vung quan Ha Dong o Phung Khang. Duong Nguyen Trai thuoc cac phuong Nga Tu So, Quan Dong Da, Thuong Dinh, Thanh Xuan.')
Insert into Duong values('29355','Ton That Thuyet','0.8','Duong Ton That Thuyet thuoc hai dia phan, Mi Dinh quan Nam Tu Liem; Dich Vong quan Cau Giay Ha Noi. Khoi dau tu nga tu Pham Hung - Nguyen Hoang, chay dai giao voi pho Dich Vong Hau va ket thuc tai Bung binh Ton That Thuyet, doan giao voi cac duong Tran Thai Tong, Pham Van Bach.')
Insert into Duong values('29360','Duong Dinh Nghe','1.5','Duong Duong Dinh Nghe thuoc dia phan hai phuong la Yen Hoa quan Cau Giay va Me Tri quan Nam Tu Liem, Ha Noi. Duong Duong Dinh Nghe khoi dau tu duong Pham Hung, chay giao voi cac duong Trung Kinh, Pham Van Bach va ket thuc tai Cong Vien Cau Giay.')
Insert into Duong values('29369','Tran Duy Hung','1.6','Duong Tran Duy Hung thuoc dia phan phuong Trung Hoa, chay dai giao voi mot so duong nhu, Hoang Ngan, Hoang Dao Thuy, Nguyen Chanh va ket thuc tai ham chui Trung Hoa tren duong Vanh Dai 3 (ben canh BigC Thang Long).')
Insert into Duong values('29322','Hoang Hoa Tham','3.320','Duong Hoang Hoa Tham la mot trong nhung con duong lon nam tai trung tam thanh pho Ha Noi. Day la tuyen duong noi tu cho Buoi (thuoc Quan Tay Ho) toi duong Phan Dinh Phung (thuoc quan Ba Dinh).')
Insert into Duong values('29320','Thuy Khue','3.3','Duong Thuy Khue noi tiep duong Quan Thanh (canh vuon hoa Ly Tu Trong), chay song song voi duong Hoang Hoa Tham toi nga ba giao cat voi duong Lac Long Quan, canh cho Buoi.')
Insert into Duong values('29311','Nguyen Luong Bang','0.6','Duong Nguyen Luong Bang thuoc dia phan cac phuong O Cho Dua, Nam Dong, Quang Trung quan Dong Da - Ha Noi, keo dai tu O Cho Dua toi diem giao voi pho Tay Son, ngay canh loi re vao duong Ho Dac Di.')
Insert into Duong values('29155','Le Duan','2.5','Duong Le Duan thuoc dia phan cac quan Dong Da, Hoan Kiem, Hai Ba Trung, Ba Dinh - Ha Noi, khoi dau tu duong Dien Bien Phu, chay dai giao voi cac duong Nguyen Thai Hoc, Hai Ba Trung, Tran Hung Dao, Tran Nhan Tong qua cong vien Thong Nhat va ket thuc tai nga tu Kim Lien.')			
Insert into Duong values('29166','Giai Phong','4.7','Duong Giai Phong chay qua dia ban phuong Phuong Liet, Quan Thanh Xuan, Ha Noi chay qua cac quan Dong Da, Hai Ba Trung, Thanh Xuan, Hoang Mai.')
Insert into Duong values('29100','Me Tri','1.240','Duong Me Tri di tu nga ba giao cat voi duong Pham Hung tai toa nha Song Da, chay ngang qua khu do thi The Manor toi vong xuyen giao nhau cat voi duong Le Quang Dao, dau duong Chau Van Liem.')
Insert into Duong values('29113','Pham Van Dong','5.5','Duong Pham Van Dong thuoc dia phan cac Phuong Dong Ngac, Xuan Dinh, Co Nhue quan Bac Tu Liem va Nghia Tan, Mai Dich, Dich Vong Hau quan Cau Giay. Duong Pham Van Dong khoi dau tu chan Cau Bac Thang Long, keo dai giao voi cac duong nhu Xuan Dinh, Co Nhue, Tran Cung, Hoang Quoc Viet va ket thuc tai dau cau vuot Xuan Thuy tren quoc lo 32.')				
Insert into Duong values('29309','Tran Cung','1.6','Duong Tran Cung thuoc dia phan phuong Co Nhue 1 quan Bac Tu Liem, Ha Noi duong Tran Cung khoi dau tu duong Hoang Quoc Viet, keo dai va ket thuc tren duong Pham Van Dong.')
Insert into Duong values('29334','Le Van Luong','1.8','Duong Le Van Luong thuoc hai dia phan hai phuong, Trung Hoa quan Cau Giay va phuong Nhan Chinh quan Thanh Xuan di tu dau cau Hoa Muc, noi duong Lang Ha voi duong To Huu.')
Insert into Duong values('29550','Van Cao','0.9','Duong Van Cao di tu bo phia Nam ho Tay (cho giap ranh nga ba Nguyen Dinh Thi - Trich Sai), qua Cung The Thao Quan Ngua, toi nga tu Doi Can - Lieu Giai.')
Insert into Duong values('29412','Lac Long Quan','4','Duong Lac Long Quan di tu nga ba giao cat voi duong Au Co va duong An Duong Vuong, ngang qua ho Tay toi vong xuyen giao cat voi duong Buoi.')
Insert into Duong values('29413','Au Co','3.1','Duong Au Co tiep noi duong Nghi Tam, qua khu hanh chinh phuong Nhat Tan toi nga ba giao cat voi duong Lac Long Quan va duong An Duong Vuong.')
Insert into Duong values('29565','Nguyen Chi Thanh','1.8','Duong Nguyen Chi Thanh bat dau tu pho Kim Ma, di ngang qua mot ben la ho Ngoc Khanh, mot ben la dai truyen hinh VN, giao voi duong La Thanh va keo dai den duong Lang, noi voi duong Tran Duy Hung.')

select *from NhomPhuongTien 
insert into NhomPhuongTien values('01','Xe may','xe so')
insert into NhomPhuongTien values('02','Xe oto','so tu dong')
insert into NhomPhuongTien values('03','Xe dap','dia hinh')
insert into NhomPhuongTien values('04','Xe tho so','cho hang')
insert into NhomPhuongTien values('05','Xe gan may','xe dien')

select *from PhuongTien 
insert into PhuongTien values('XM 001','01','Xe may wave anpha','den','29V7 32851')
insert into PhuongTien values('XM 002','01','Xe may winner X','vang','29V7 32843')
insert into PhuongTien values('XM 003','01','Xe may lead','xanh','29V7 66433')
insert into PhuongTien values('XM 004','01','Xe may liberty','trang','29V7 99999')
insert into PhuongTien values('XM 005','01','Xe may wave anpha','trang','29V7 32041')
insert into PhuongTien values('XM 006','01','Xe may winner X','trang','29V7 33333')
insert into PhuongTien values('XM 007','01','Xe may lead','xanh','14AA 23456')
insert into PhuongTien values('XM 008','01','Xe may sirius','trang','14S1 4141')
insert into PhuongTien values('XM 009','01','Xe may dream','den','29V6 29000')
insert into PhuongTien values('XM 010','01','Xe may SH','vang rose','29V9 11111')
insert into PhuongTien values('XM 011','01','Xe may Kawasaki Z1000','xanh sky','29V7 55433')
insert into PhuongTien values('XM 012','01','Xe may liberty','vang gold','29V9 99999')
insert into PhuongTien values('XM 013','01','Xe may sirius','hong phan','15B1 21233')
insert into PhuongTien values('XM 014','01','Xe may winner X','xanh la cay','29V7 32113')
insert into PhuongTien values('XM 015','01','Xe may airblade','xam','29V7 44444')
insert into PhuongTien values('XM 016','01','Xe may liberty','cam','29V7 45454')
insert into PhuongTien values('XM 017','01','Xe may wave anpha','xanh dam','29V7 30000')
insert into PhuongTien values('XM 018','01','Xe may winner X','do','29V7 29084')
insert into PhuongTien values('XM 019','01','Xe may vision','den nham','30B1 98765')
insert into PhuongTien values('XM 020','01','Xe may liberty','nau nhat','14B1 24810')
insert into PhuongTien values('XOT 001','02','Xe mercedes','den','30E2 8888')
insert into PhuongTien values('XOT 002','02','Xe lexus','trang','30E2 6666')
insert into PhuongTien values('XOT 003','02','Xe range rover','den','30E2 3333')
insert into PhuongTien values('XOT 004','02','Xe bentley','den','30E2 2222')
insert into PhuongTien values('XD 001','03','Xe dia hinh','trang','8274')
insert into PhuongTien values('XD 002','03','Xe mini','den','4574')
insert into PhuongTien values('XD 003','03','Xe xgame','xanh','8874')
insert into PhuongTien values('XD 004','03','Xe co dien','do','8074')
insert into PhuongTien values('XTS 001','04','Xe ba gac','xanh','30V5 4356')
insert into PhuongTien values('XTS 002','04','Xe xich lo','do','30V5 6656')
insert into PhuongTien values('XTS 003','04','Xe loi','den','30V5 7856')
insert into PhuongTien values('XTS 004','04','Xe cong nong','hong','30V5 8956')
insert into PhuongTien values('XGM 001','05','Xe dap dien','den','14X1 4675')
insert into PhuongTien values('XGM 002','05','Xe may dien','trang','14X1 6775')
insert into PhuongTien values('XGM 003','05','Xe vinfat ','hong','14X1 6875')
insert into PhuongTien values('XGM 004','05','Xe xmen ','cam','14X1 9875')


select *from NguoiDieuKhienPhuongTien
Insert into NguoiDieuKhienPhuongTien values('000001','XM 001','Nguyen Dang Khoa','Quoc Oai - Ha Tay','0397096113','NDK23032003@gmail.com','Nam','23-03-2003')
Insert into NguoiDieuKhienPhuongTien values('000002','XM 004','Chu Minh Phuong','Cau Giay - Ha Noi','0395124080','CMP08032003@gmail.com','Nu','08-03-2003')
Insert into NguoiDieuKhienPhuongTien values('000003','XM 003','Ta Quoc Anh','Dan Phuong - Ha Noi','0988011491','TQA23112003@gmail.com','Nam','23-11-2003')
Insert into NguoiDieuKhienPhuongTien values('000004','XM 002','Nguyen Tuan Anh','Dan Phuong - Ha Noi','0988010762','NTA20092003@gmail.com','Nam','20-09-2003')
Insert into NguoiDieuKhienPhuongTien values('000005','XM 005','Nguyen Dac Hoang Anh','Hai Ba Trung - Ha Noi','0869056185','NDHA23032000@gmail.com','Nam','21-03-2000')
Insert into NguoiDieuKhienPhuongTien values('000006','XM 006','Nguyen Thi Tu Anh','Giang Vo - Ha Noi','0924329205','NTTA08102003@gmail.com','Nu','08-10-2003')
Insert into NguoiDieuKhienPhuongTien values('000007','XM 007','Nguyen Van Tuan Anh','Khoai Chau - Hung Yen','0971812420','NVTA15022000@gmail.com','Nam','29-02-2000')
Insert into NguoiDieuKhienPhuongTien values('000008','XM 008','Duong Minh Chau','Ha Long - Quang Ninh','0923609959','DMC14032003@gmail.com','Nam','14-03-2003')
Insert into NguoiDieuKhienPhuongTien values('000009','XOT 001','Doan Van Bien','Co Nhue 2 - Ha Noi','0972981751','DVB11112003@gmail.com','Nam','11-11-2003')
Insert into NguoiDieuKhienPhuongTien values('000010','XOT 002','Nguyen Thi Han','Van Hoi - Ha Noi','0924042732','NTH27082002@gmail.com','Nu','27-08-2002')
Insert into NguoiDieuKhienPhuongTien values('000011','XOT 003','Pham Tuan Bao','Phu Dien - Ha Noi','0987408271','PTB23012003@gmail.com','Nam','23-01-2003')
Insert into NguoiDieuKhienPhuongTien values('000012','XOT 004','Ho Thi Ngoc Ha','Nguyen Xa - Ha Noi','0984198827','HTNH20032003@gmail.com','Nu','20-03-2003')
Insert into NguoiDieuKhienPhuongTien values('000013','XD 001','Ho Xuan Cong','Bac Tu Liem - Ha Noi','0857235307','HXC19092003@gmail.com','Nam','19-09-2003')
Insert into NguoiDieuKhienPhuongTien values('000014','XD 002','Dang Thu Chang','Cau Giay - Ha Noi','0963228046','CMP08032003@gmail.com','Nu','08-03-2003')
Insert into NguoiDieuKhienPhuongTien values('000015','XD 003','Bui Quang Hiep','Dan Phuong - Ha Noi','0973604502','BQH23062003@gmail.com','Nam','23-06-2003')
Insert into NguoiDieuKhienPhuongTien values('000016','XD 004','Vo Thu Hong','Nguyen Phong Sac - Ha Noi','0961717594','VTH08032003@gmail.com','Nu','08-03-2003')
Insert into NguoiDieuKhienPhuongTien values('000017','XTS 001','Le Duy Hung','Ha Dong - Ha Noi','0967962095','LDH12052003@gmail.com','Nam','12-05-2003')
Insert into NguoiDieuKhienPhuongTien values('000018','XTS 002','Nguyen Thi Thanh Huyen','Thanh Xuan - Ha Noi','0113999900','CMP08032003@gmail.com','Nu','08-03-2003')
Insert into NguoiDieuKhienPhuongTien values('000019','XTS 003','Vu Quoc Minh','Thanh Xuan - Ha Noi','0898749203','VQM21022003@gmail.com','Nam','21-02-2003')
Insert into NguoiDieuKhienPhuongTien values('000020','XTS 004','Tran Thi Ngat','Dong Da - Ha Noi','0976108718','TTN03032003@gmail.com','Nu','03-03-2003')
Insert into NguoiDieuKhienPhuongTien values('000021','XGM 001','Dang Thanh Phong','Nam Tu Liem - Ha Noi','0327712793','DTP29052003@gmail.com','Nam','29-05-2003')
Insert into NguoiDieuKhienPhuongTien values('000022','XGM 002','Nguyen Huong Thao','Xuan Thuy - Ha Noi','0343002957','NHT27072003@gmail.com','Nu','27-07-2003')
Insert into NguoiDieuKhienPhuongTien values('000023','XGM 003','Dinh Van Loi','Dan Phuong - Ha Noi','0965015826','DVL01062003@gmail.com','Nam','01-06-2003')
Insert into NguoiDieuKhienPhuongTien values('000024','XGM 004','Nguyen Thanh Trung','Dan Phuong - Ha Noi','0945087701','NTT31052003@gmail.com','Nam','31-05-2003')
Insert into NguoiDieuKhienPhuongTien values('000025','XM 009','Nguyen Van Sang','Thanh Xuan - Ha Noi','0974354621','NVS13062003@gmail.com','Nam','13-06-2003')
Insert into NguoiDieuKhienPhuongTien values('000026','XM 010','Pham Hong Nhung','Bac Tu Liem - Ha Noi','0986790451','PHN20102003@gmail.com','Nu','20-10-2003')
Insert into NguoiDieuKhienPhuongTien values('000027','XM 011','Nguyen Duy Nhat','Cau Giay - Ha Noi','0375770426','NDN01102003@gmail.com','Nam','01-10-2003')
Insert into NguoiDieuKhienPhuongTien values('000028','XM 012','Nguyen Nhu Quynh','Bac Tu Liem - Ha Noi','0982356715','NNQ10042003@gmail.com','Nu','10-04-2003')
Insert into NguoiDieuKhienPhuongTien values('000029','XM 013','Do Viet Nhi','Co Nhue 2 - Ha Noi','0365302917','DVN28032003@gmail.com','Nam','28-03-2003')
Insert into NguoiDieuKhienPhuongTien values('000030','XM 014','Nguyen Thi Quynh Nhu','Ba Dinh - Ha Noi','0899802137','NTQN26032003@gmail.com','Nu','26-03-2003')
Insert into NguoiDieuKhienPhuongTien values('000031','XM 015','Nguyen The Phong','Thanh Xuan - Ha Noi','0965156902','NTP06092003@gmail.com','Nam','06-09-2003')
Insert into NguoiDieuKhienPhuongTien values('000032','XM 016','Nguyen Thi Dieu Linh','Mai Dich - Ha Noi','0865474691','NTDL20122003@gmail.com','Nu','20-12-2003')
Insert into NguoiDieuKhienPhuongTien values('000033','XM 017','Tham Hoang Nam','Cau Giay - Ha Noi','0976460832','THN09102003@gmail.com','Nam','09-10-2003')
Insert into NguoiDieuKhienPhuongTien values('000034','XM 018','Le Thi Quynh Trang','Hoan Kiem - Ha Noi','0352069670','LTQT14022003@gmail.com','Nu','14-02-2003')
Insert into NguoiDieuKhienPhuongTien values('000035','XM 019','Pham Anh Hoang','Bac Tu Liem - Ha Noi','0347943464','PAH25052003@gmail.com','Nam','25-05-2003')
Insert into NguoiDieuKhienPhuongTien values('000036','XM 020','Le Thi Hau','Nhon - Ha Noi','0963127913','LTH28082003@gmail.com','Nu','28-08-2003')


select *from ThoiGian
Insert into ThoiGian values('290000','2023-03-09 07:00:00.000','2023-03-09 09:30:33.000','Thursday')
Insert into ThoiGian values('290001','2023-03-09 16:30:00.000','2023-03-09 20:30:33.000','Thursday')
Insert into ThoiGian values('290002','2023-03-10 06:55:30.222','2023-03-10 09:15:30.000','Friday')
Insert into ThoiGian values('290003','2023-03-10 16:15:00.000','2023-03-10 19:22:33.000','Friday')
Insert into ThoiGian values('290004','2023-03-11 06:67:20.000','2023-03-11 08:49:23.000','Saturday')
Insert into ThoiGian values('290005','2023-03-11 15:55:00.000','2023-03-11 18:57:54.000','Saturday')
Insert into ThoiGian values('290006','2023-03-12 16:10:00.000','2023-03-12 20:32:32.000','Sunday')
Insert into ThoiGian values('290007','2023-03-13 06:30:00.000','2023-03-13 19:38:55.000','Monday')
Insert into ThoiGian values('290008','2023-03-13 17:20:00.000','2023-03-13 20:15:15.000','Monday')
Insert into ThoiGian values('290009','2023-03-14 07:10:00.000','2023-03-14 08:20:20.000','Tuesday')
Insert into ThoiGian values('290010','2023-03-14 16:22:00.000','2023-03-14 18:45:21.000','Tuesday')
Insert into ThoiGian values('290011','2023-03-15 06:35:17.000','2023-03-15 08:33:33.000','Wednesday')
Insert into ThoiGian values('290012','2023-03-15 16:44:28.000','2023-03-15 19:31:33.000','Wednesday')
Insert into ThoiGian values('290013','2023-03-16 07:00:55.000','2023-03-16 09:05:33.000','Thursday')
Insert into ThoiGian values('290014','2023-03-16 17:01:29.000','2023-03-16 19:22:11.000','Thursday')
Insert into ThoiGian values('290015','2023-03-17 06:49:43.000','2023-03-17 09:11:55.000','Friday')
Insert into ThoiGian values('290016','2023-03-17 16:50:00.000','2023-03-17 18:41:24.000','Friday')
Insert into ThoiGian values('290017','2023-03-18 07:33:00.000','2023-03-18 09:48:00.000','Saturday')
Insert into ThoiGian values('290018','2023-03-18 17:22:00.000','2023-03-18 20:11:33.777','Saturday')
Insert into ThoiGian values('290019','2023-03-19 07:05:22.000','2023-03-19 09:12:44.000','Sunday')
Insert into ThoiGian values('290020','2023-03-19 17:12:14.000','2023-03-19 20:21:44.000','Sunday')


Select *from NguyenNhanTacDuong
insert into NguyenNhanTacDuong values('111','gio cao diem','tac dai va lau','112')
insert into NguyenNhanTacDuong values('222','truc duong chinh','tac dai','113')
insert into NguyenNhanTacDuong values('333','tuyen duong hep','tac lau','114')

Select *from GiaiPhapTacDuong
insert into GiaiPhapTacDuong values('112','111','dieu chinh','dieu chinh den giao thong')
insert into GiaiPhapTacDuong values('113','222','luc luong giao thong','cong an dep duong')
insert into GiaiPhapTacDuong values('114','333','phan lan','phan lan xe may oto')


Select *from TacDuong
Insert into TacDuong values('14001','222','29100','XM 008','290000')
Insert into TacDuong values('14002','222','29100','XM 007','290000')
Insert into TacDuong values('14003','222','29100','XM 019','290000')
Insert into TacDuong values('14004','222','29100','XM 001','290000') 
Insert into TacDuong values('14005','222','29100','XGM 004','290000')
Insert into TacDuong values('14006','222','29100','XD 003','290000')
Insert into TacDuong values('14007','222','29100','XM 010','290000')
Insert into TacDuong values('14008','222','29100','XOT 001','290000')
Insert into TacDuong values('14009','222','29100','XTS 002','290000')
Insert into TacDuong values('14010','222','29100','XM 002','290000')
Insert into TacDuong values('14011','222','29100','XGM 003','290000')
Insert into TacDuong values('14012','222','29100','XM 011','290000') 
Insert into TacDuong values('14013','222','29100','XD 002','290000')
Insert into TacDuong values('14014','222','29100','XOT 002','290000')
Insert into TacDuong values('14015','222','29100','XM 017','290000')
Insert into TacDuong values('14016','222','29100','XOT 004','290000')
Insert into TacDuong values('14017','222','29100','XM 018','290000')
Insert into TacDuong values('14018','222','29100','XD 004','290000')
Insert into TacDuong values('14019','222','29100','XM 009','290000')
Insert into TacDuong values('14020','222','29100','XGM 002','290000') 
Insert into TacDuong values('14021','222','29565','XD 001','290001')
Insert into TacDuong values('14022','222','29565','XOT 003','290001')
Insert into TacDuong values('14023','222','29565','XTS 003','290001')
Insert into TacDuong values('14024','222','29565','XM 020','290001')
Insert into TacDuong values('14025','222','29565','XTS 004','290001')
Insert into TacDuong values('14026','222','29565','XM 016','290001')
Insert into TacDuong values('14027','222','29565','XGM 001','290001')
Insert into TacDuong values('14028','222','29565','XM 012','290001') 
Insert into TacDuong values('14029','222','29565','XM 015','290001')
Insert into TacDuong values('14030','222','29565','XM 014','290001')
Insert into TacDuong values('14031','222','29565','XM 013','290001')
Insert into TacDuong values('14032','222','29565','XM 006','290001')
Insert into TacDuong values('14033','222','29565','XM 005','290001') 
Insert into TacDuong values('14029','222','29565','XM 003','290001')
Insert into TacDuong values('14030','222','29565','XM 004','290001')
Insert into TacDuong values('14031','222','29565','XOT 001','290001')
Insert into TacDuong values('14032','222','29565','XD 002','290001')
Insert into TacDuong values('14033','222','29565','XTX 003','290001')
Insert into TacDuong values('14034','222','29565','XM 001','290001')
Insert into TacDuong values('14035','222','29565','XD 004','290001')
Insert into TacDuong values('14036','222','29565','XM 020','290001')
Insert into TacDuong values('14037','222','29565','XM 005','290001') 
Insert into TacDuong values('14038','222','29565','XGM 003','290001')
Insert into TacDuong values('14039','222','29565','XM 004','290001')
Insert into TacDuong values('14040','222','29565','XOT 001','290001')


//Make the view!!!!

VIEW 1:
Create view ThongTinChuPhuongTien
as
Select NguoiDieuKhienPhuongTien.TenNDKPT,NguoiDieuKhienPhuongTien.DiaChi,NguoiDieuKhienPhuongTien.SoDienThoai,NguoiDieuKhienPhuongTien.GioiTinh,NguoiDieuKhienPhuongTien.NgaySinh,PhuongTien.TenPT,PhuongTien.Colour,PhuongTien.BienSoPT
From PhuongTien inner join NguoiDieuKhienPhuongTien on PhuongTien.MaPT = NguoiDieuKhienPhuongTien.MaPT

Select *from ThongTinChuPhuongTien

VIEW 2:
CREATE VIEW TOANBODATABASE
AS
SELECT dbo.TacDuong.MaTD, dbo.Duong.*, dbo.NguyenNhanTacDuong.*, dbo.GiaiPhapTacDuong.TenGP, dbo.GiaiPhapTacDuong.MoTaGP, dbo.NhomPhuongTien.*, dbo.PhuongTien.MaPT AS Expr1, dbo.PhuongTien.TenPT, 
                  dbo.PhuongTien.Colour, dbo.PhuongTien.BienSoPT, dbo.NguoiDieuKhienPhuongTien.MaNDKPT, dbo.NguoiDieuKhienPhuongTien.TenNDKPT, dbo.NguoiDieuKhienPhuongTien.DiaChi, dbo.NguoiDieuKhienPhuongTien.SoDienThoai, 
                  dbo.NguoiDieuKhienPhuongTien.Email, dbo.NguoiDieuKhienPhuongTien.GioiTinh, dbo.NguoiDieuKhienPhuongTien.NgaySinh, dbo.ThoiGian.*
FROM     dbo.PhuongTien INNER JOIN
                  dbo.NguoiDieuKhienPhuongTien ON dbo.PhuongTien.MaPT = dbo.NguoiDieuKhienPhuongTien.MaPT INNER JOIN
                  dbo.NhomPhuongTien ON dbo.PhuongTien.MaNPT = dbo.NhomPhuongTien.MaNPT INNER JOIN
                  dbo.TacDuong ON dbo.PhuongTien.MaPT = dbo.TacDuong.MaPT INNER JOIN
                  dbo.Duong ON dbo.TacDuong.MaTUDU = dbo.Duong.MaTUDU INNER JOIN
                  dbo.NguyenNhanTacDuong INNER JOIN
                  dbo.GiaiPhapTacDuong ON dbo.NguyenNhanTacDuong.MaNNTD = dbo.GiaiPhapTacDuong.MaNNTD ON dbo.TacDuong.MaNNTD = dbo.NguyenNhanTacDuong.MaNNTD INNER JOIN
                  dbo.ThoiGian ON dbo.TacDuong.MaNG = dbo.ThoiGian.MaNG

SELECT *FROM TOANBODATABASE


//Make the procedure

PROCEDURE 1:
create procedure NhapPTmoi
@MaPT nvarchar(10),
@MaNPT int,
@TenPT nvarchar(50),
@Colour nvarchar(20),
@BienSoPT nvarchar(50)
as
begin
	insert into PhuongTien
	values(@MaPT,@MaNPT,@TenPT,@Colour,@BienSoPT)
end
--test
	NhapPTmoi('XM 021','01','Xe may exciter','blue','14B1 4953')

select *from PhuongTien


PROCEDURE 2:
create procedure NhapNDKPTmoi
@MaNDKPT int,
@MaPT nvarchar(10),
@TenNDKPT nvarchar(60),
@DiaChi nvarchar(100),
@SoDienThoai nvarchar(20),
@Email nvarchar(50),
@GioiTinh nvarchar(10),
@NgaySinh nvarchar(30)
as
begin
	insert into NguoiDieuKhienPhuongTien
	values(@MaNDKPT,@MaPT,@TenNDKPT,@DiaChi,@SoDienThoai,@Email,@GioiTinh,@NgaySinh)
end

NhapNDKPTmoi '000037','XM 021','Duong Chi Thien','Dong Da - Ha Noi','0921456789','DCT2603@gmail.com','Nam','26-03-1990'
go


//Make the function

FUNCTION 1:
CREATE FUNCTION DSPT(@MaNPT int)
returns table
as
return select MaPT,TenPT,Colour,MaNPT
	 from PhuongTien
	 where MaNPT = @MaNPT
go

select *from DSPT ('01')
select *from DSPT ('02')

FUNCTION 2:
CREATE FUNCTION ThongTinNguoiVaXe (@MaNDKPT nvarchar(10))
returns @bang table (MaNDKPT nvarchar(10), TenNDKPT nvarchar(60), DiaChi nvarchar(100), SoDienThoai nvarchar(20), MaPT nvarchar(10), TenPT nvarchar(50), BienSoPT nvarchar(50))
as
begin
	insert into @bang
			select MaNDKPT, TenNDKPT, DiaChi, SoDienThoai, PhuongTien.MaPT, TenPT, BienSoPT
			from NguoiDieuKhienPhuongTien inner join PhuongTien on NguoiDieuKhienPhuongTien.MaPT = PhuongTien.MaPT
			where MaNDKPT = @MaNDKPT
	return
end

--test--
select *from ThongTinNguoiVaXe ('1')
select *from ThongTinNguoiVaXe ('2')
select *from ThongTinNguoiVaXe ('3')


//Make the trigger
CREATE TRIGGER ThemPT
on dbo.PhuongTien
for insert, update
as
begin
	print 'Them PT thanh cum'
end
go

select *from PhuongTien

	insert into PhuongTien values('XM 022','01','Xe may SH','xanh la cay','29V9 16660')
	insert into PhuongTien values('XM 023','01','Xe may Ari Blade X Superman','red and blue','15B1 33344')






