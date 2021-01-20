create database WEB
go
use WEB
go
create table Account
(
	UserName nvarchar(50) primary key,
	PassWord nvarchar(50) not null,
	DisplayName nvarchar(50),
	Type bit
)
go
create table DanhMuc
(
	MaDM int identity primary key,
	TenDM nvarchar(50) not null,
)
create table SanPham
(
	MaSP int identity primary key,
	TenSP nvarchar(50) not null,
	Mota nvarchar(1000),
	HinhAnh nvarchar(20),
	MaDanhMuc int,
	foreign key (MaDanhMuc) references dbo.DanhMuc(MaDM)
)
go

insert into dbo.Account (UserName, PassWord, DisplayName, Type) values (N'khanhduy',1,N'Khánh Duy',1) 
insert into dbo.Account (UserName, PassWord, DisplayName, Type) values (N'xuancuong',1,N'Xuân Cường',1) 
insert into dbo.Account (UserName, PassWord, DisplayName, Type) values (N'vanduong',1,N'Văn Dương',1) 
insert into dbo.DanhMuc (MaDM, TenDM) values (1, N'Áo Thun')
insert into dbo.DanhMuc (MaDM, TenDM) values (2, N'Áo Khoác')
insert into dbo.DanhMuc (MaDM, TenDM) values (3, N'Áo Sơ Mi')
insert into dbo.DanhMuc (MaDM, TenDM) values (4, N'Quần Dài')
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (1, N'Áo Thun Anubis Ver2 ',N'mô tả',N'aothun1.jpg',1 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (2, N'Áo Thun Đơn Giản BF01',N'aothun2.jpg',N'aothun2.jpg',1 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (3, N'Áo Thun Y2010 Originals M9',N'mô tả',N'aothun3.jpg',1 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (4, N'Áo Thun Thiết Kế BM04',N'mô tả',N'aothun4.jpg',1 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (5, N'Áo Khoác Thun Đơn Giản C01',N'mô tả',N'aokhoac1.jpg', 2)
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (6, N'Áo Khoác Hoodie Đơn Giản F01',N'mô tả',N'aokhoac2.jpg',2 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (7, N'Áo Khoác Thun Đơn Giản C02',N'mô tả',N'aokhoac3.jpg', 2)
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (8, N'Áo Khoác Vải Anubis Ver1',N'mô tả',N'aokhoac4.jpg',2 )
--14/1/2021 13:48
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (9, N'Sơ Mi Đơn Giản Solid M7',N'mô tả',N'somi1.jpg',3 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (10, N'Sơ Mi TD R Đơn Giản Solid M14',N'mô tả',N'somi2.jpg',3 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (11, N'Sơ Mi Đơn Giản G01',N'mô tả',N'somi3.jpg',3 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (12, N'Sơ Mi Đơn Giản N01',N'mô tả',N'somi4.jpg',3 )	

insert into dbo.DanhMuc (MaDM, TenDM) values (5, N'Quần Short')

insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (13, N'Quần Jogger Thun Đơn Giản G01',N'mô tả',N'dai1.jpg',4 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (14, N'Quần Jean Slimfit Đơn Giản B43',N'Chất liệu: Jean Cotton
Thành phần: 99% cotton 1% spandex
- Độ bền cao
- Mang đến sự thoải mái ở phần hông và đùi nhưng vẫn rất gọn gàng
HDSD:
- Hãy lộn mặt trái của sản phẩm trước khi giặt để hạn chế bay màu vải.
- Không nên sử dụng các chất tẩy rửa mạnh trong quá trình giặt.',N'dai2.jpg',4 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (15, N'Quần Jogger Thun Drama Ver2',N'- Chất liệu:
MINI ZURRY
- Thành Phần:
+ 95% COTTON
Thân thiện với môi trường
Thoáng mát
+ 5% SPANDEX
Giúp quần co giãn tối ưu',N'dai3.jpg',4 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (16, N'Quần Vải Thiết Kế B01',N'Chất liệu: Kaki Thun
Thành phần: 97% cotton 3% spandex',N'dai4.jpg',4 )

insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (17, N'Quần Short Thun Đơn Giản H01',N'- Chất liệu:
MINI ZURRY
- Thành Phần:
+ 94% COTTON
Thân thiện với môi trường
Thoáng mát
+ 6% SPANDEX
Giúp quần co giãn tối ưu',N'short1.jpg',5 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (18, N'Quần Short Jean Đơn Giản Solid M1',N'Chất liệu: Jean Cotton
Thành phần: 100% cotton
- Độ bền cao
- Mặc rất thoải mái.',N'short2.jpg',5 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (19, N'Quần Short Vải Thiết Kế B1K04',N'Chất liệu: Kaki Họa Tiết
Thành phần: 100% Cotton
- Vải kaki có tính chất chung là bền, mát, co giãn',N'short3.jpg',5 )
insert into dbo.SanPham(MaSP,TenSP,Mota,HinhAnh,MaDanhMuc ) values (20, N'Quần Short Vải Thiết Kế B1ST13',N'mô tả',N'short4.jpg',5 )






