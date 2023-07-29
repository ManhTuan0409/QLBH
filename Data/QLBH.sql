CREATE DATABASE QLBH
GO

USE QLBH
GO

Create table [SanPham]
(
	[MaSP] Nchar(255) NOT NULL,
	[TenSP] Nvarchar(255) NULL,
	[Mota] Nvarchar(255) NULL,
	[GiaSP] Float NULL,
	[Soluong] Integer NULL,
	[Maloai] Char(20) NOT NULL,
	FOREIGN KEY (Maloai) REFERENCES LoaiSP(Maloai),
Primary Key ([MaSP])
) 
go

Create table [KhachHang]
(
	[MaKH] Nchar(255) NOT NULL,
	[Hoten] Nvarchar(255) NULL,
	[Diachi] Nvarchar(255) NULL,
	[SDT] Nvarchar(11) NULL,
	[Email] Nvarchar(255) NULL,
	[Gioitinh] Nchar(10) NULL,
Primary Key ([MaKH])
) 
go

Create table [NhanVien]
(
	[MaNV] Nchar(255) NOT NULL,
	[Hoten] Nvarchar(255) NULL,
	[SDT] Char(11) NULL,
	[Email] Nvarchar(255) NULL,
	[Diachi] Nvarchar(255) NULL,
	[Gioitinh] Bit NULL,
Primary Key ([MaNV])
) 
go

Create table [DonHang]
(
	[MaHD] Char(255) NOT NULL,
	[Ngayban] Datetime NULL,
	[Tongtien] Float NULL,
	[MaKH] Nchar(255) NOT NULL,
	[MaNV] Nchar(255) NOT NULL,
	FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
Primary Key ([MaHD])
) 
go

Create table [ChiTietDH]
(
	[Soluong] Integer NOT NULL,
	[Dongia] Float NULL,
	[Thanhtien] Float NULL,
	[MaSP] Nchar(255) NOT NULL,
	[MaHD] Char(255) NOT NULL,
	FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP),
	FOREIGN KEY (MaHD) REFERENCES DonHang(MaHD),
) 
go

Create table [LoaiSP]
(
	[Maloai] Char(20) NOT NULL,
	[Tenloai] Nvarchar(30) NULL,
Primary Key ([Maloai])
) 
go

Create table [TaiKhoan]
(
	[TenTK] Char(30) NOT NULL,
	[Matkhau] Nvarchar(255) NOT NULL,
	[TenHienThi] Nvarchar(30) NOT NULL,
Primary Key ([TenTK])
) 
go


