USE [master]
GO
/****** Object:  Database [DB_QuanCaPhe]    Script Date: 5/31/2024 8:16:25 PM ******/
CREATE DATABASE [DB_QuanCaPhe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_QuanCaPhe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_QuanCaPhe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_QuanCaPhe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_QuanCaPhe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DB_QuanCaPhe] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_QuanCaPhe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_QuanCaPhe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_QuanCaPhe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_QuanCaPhe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_QuanCaPhe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_QuanCaPhe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_QuanCaPhe] SET  MULTI_USER 
GO
ALTER DATABASE [DB_QuanCaPhe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_QuanCaPhe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_QuanCaPhe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_QuanCaPhe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_QuanCaPhe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_QuanCaPhe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_QuanCaPhe', N'ON'
GO
ALTER DATABASE [DB_QuanCaPhe] SET QUERY_STORE = ON
GO
ALTER DATABASE [DB_QuanCaPhe] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DB_QuanCaPhe]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[BanID] [int] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](255) NOT NULL,
	[SoGhe] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDatHang]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatHang](
	[ChiTietDatHangID] [int] IDENTITY(1,1) NOT NULL,
	[DatHangID] [int] NULL,
	[MonID] [int] NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ChiTietDatHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[DanhMucID] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DanhMucID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[DatHangID] [int] IDENTITY(1,1) NOT NULL,
	[BanID] [int] NULL,
	[NhanVienID] [int] NULL,
	[NgayDat] [datetime] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[TongGia] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[DatHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoNguyenLieu]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoNguyenLieu](
	[NguyenLieuID] [int] IDENTITY(1,1) NOT NULL,
	[TenNguyenLieu] [nvarchar](255) NOT NULL,
	[DonVi] [nvarchar](50) NULL,
	[GiaTheoDonVi] [money] NULL,
	[SoLuongTon] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[NguyenLieuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mon]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mon](
	[MonID] [int] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](255) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[Gia] [money] NOT NULL,
	[DanhMucID] [int] NULL,
	[HinhAnh] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mon_NguyenLieu]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mon_NguyenLieu](
	[MonID] [int] NOT NULL,
	[NguyenLieuID] [int] NOT NULL,
	[SoLuongSuDungNguyenLieu] [float] NULL,
 CONSTRAINT [pk_Mon_NguyenLieu] PRIMARY KEY CLUSTERED 
(
	[MonID] ASC,
	[NguyenLieuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[NhaCungCapID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](255) NOT NULL,
	[ThongTinLienLac] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[NhaCungCapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[NhanVienID] [int] IDENTITY(1,1) NOT NULL,
	[HoNV] [nvarchar](255) NULL,
	[TenNV] [nvarchar](255) NULL,
	[ViTri] [nvarchar](255) NULL,
	[Luong] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[NhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapKho]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapKho](
	[NhapKhoID] [int] IDENTITY(1,1) NOT NULL,
	[NhanVienID] [int] NULL,
	[TenNhanVien] [varchar](255) NULL,
	[NguyenLieuID] [int] NULL,
	[TenNguyenLieu] [varchar](255) NULL,
	[NhaCungCapID] [int] NULL,
	[TenNhaCungCap] [varchar](255) NULL,
	[SoLuongNhap] [int] NULL,
	[GiaNhap] [money] NULL,
	[NgayNhap] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NhapKhoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[NhanVienID] [int] NULL,
	[TenTaiKhoan] [varchar](255) NOT NULL,
	[MatKhau] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XuatKho]    Script Date: 5/31/2024 8:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatKho](
	[XuatKhoID] [int] IDENTITY(1,1) NOT NULL,
	[NhanVienID] [int] NULL,
	[TenNhanVien] [varchar](255) NULL,
	[NguyenLieuID] [int] NULL,
	[TenNguyenLieu] [varchar](255) NULL,
	[SoLuongXuat] [int] NULL,
	[NgayXuat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[XuatKhoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ban] ON 

INSERT [dbo].[Ban] ([BanID], [TenBan], [SoGhe], [TrangThai]) VALUES (1, N'Bàn 1', 4, N'Có khách')
INSERT [dbo].[Ban] ([BanID], [TenBan], [SoGhe], [TrangThai]) VALUES (2, N'Bàn 2', 6, N'Có khách')
INSERT [dbo].[Ban] ([BanID], [TenBan], [SoGhe], [TrangThai]) VALUES (3, N'Bàn 3', 2, N'Còn trống')
INSERT [dbo].[Ban] ([BanID], [TenBan], [SoGhe], [TrangThai]) VALUES (4, N'Bàn 4', 4, N'Bàn gộp')
INSERT [dbo].[Ban] ([BanID], [TenBan], [SoGhe], [TrangThai]) VALUES (5, N'Bàn 5', 6, N'Bàn gộp')
INSERT [dbo].[Ban] ([BanID], [TenBan], [SoGhe], [TrangThai]) VALUES (6, N'Bàn 6', 2, N'Có khách')
INSERT [dbo].[Ban] ([BanID], [TenBan], [SoGhe], [TrangThai]) VALUES (7, N'Bàn 6', 2, N'Còn trống')
INSERT [dbo].[Ban] ([BanID], [TenBan], [SoGhe], [TrangThai]) VALUES (8, N'Bàn 8', 10, N'Bàn tách')
INSERT [dbo].[Ban] ([BanID], [TenBan], [SoGhe], [TrangThai]) VALUES (9, N'Bàn 9', 4, N'Còn trống')
INSERT [dbo].[Ban] ([BanID], [TenBan], [SoGhe], [TrangThai]) VALUES (10, N'Bàn 10', 4, N'Còn trống')
SET IDENTITY_INSERT [dbo].[Ban] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietDatHang] ON 

INSERT [dbo].[ChiTietDatHang] ([ChiTietDatHangID], [DatHangID], [MonID], [SoLuong]) VALUES (1, 1, 5, 1)
INSERT [dbo].[ChiTietDatHang] ([ChiTietDatHangID], [DatHangID], [MonID], [SoLuong]) VALUES (2, 1, 5, 1)
INSERT [dbo].[ChiTietDatHang] ([ChiTietDatHangID], [DatHangID], [MonID], [SoLuong]) VALUES (3, 2, 5, 1)
INSERT [dbo].[ChiTietDatHang] ([ChiTietDatHangID], [DatHangID], [MonID], [SoLuong]) VALUES (4, 3, 5, 1)
INSERT [dbo].[ChiTietDatHang] ([ChiTietDatHangID], [DatHangID], [MonID], [SoLuong]) VALUES (5, 4, 5, 1)
INSERT [dbo].[ChiTietDatHang] ([ChiTietDatHangID], [DatHangID], [MonID], [SoLuong]) VALUES (6, 4, 3, 1)
INSERT [dbo].[ChiTietDatHang] ([ChiTietDatHangID], [DatHangID], [MonID], [SoLuong]) VALUES (7, 5, 4, 1)
INSERT [dbo].[ChiTietDatHang] ([ChiTietDatHangID], [DatHangID], [MonID], [SoLuong]) VALUES (8, 5, 5, 1)
SET IDENTITY_INSERT [dbo].[ChiTietDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([DanhMucID], [TenDanhMuc]) VALUES (1, N'Đồ ăn')
INSERT [dbo].[DanhMuc] ([DanhMucID], [TenDanhMuc]) VALUES (2, N'Thức uống ')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DatHang] ON 

INSERT [dbo].[DatHang] ([DatHangID], [BanID], [NhanVienID], [NgayDat], [GhiChu], [TongGia]) VALUES (1, 1, 2, CAST(N'2024-05-28T07:55:02.000' AS DateTime), NULL, 20000.0000)
INSERT [dbo].[DatHang] ([DatHangID], [BanID], [NhanVienID], [NgayDat], [GhiChu], [TongGia]) VALUES (2, 3, 2, CAST(N'2024-05-28T07:57:07.000' AS DateTime), NULL, 10000.0000)
INSERT [dbo].[DatHang] ([DatHangID], [BanID], [NhanVienID], [NgayDat], [GhiChu], [TongGia]) VALUES (3, 6, 2, CAST(N'2024-05-28T08:08:05.000' AS DateTime), NULL, 10000.0000)
INSERT [dbo].[DatHang] ([DatHangID], [BanID], [NhanVienID], [NgayDat], [GhiChu], [TongGia]) VALUES (4, 1, 1, CAST(N'2024-05-28T10:27:53.000' AS DateTime), NULL, 20000.0000)
INSERT [dbo].[DatHang] ([DatHangID], [BanID], [NhanVienID], [NgayDat], [GhiChu], [TongGia]) VALUES (5, 2, 1, CAST(N'2024-05-28T10:29:00.000' AS DateTime), NULL, 22000.0000)
SET IDENTITY_INSERT [dbo].[DatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhoNguyenLieu] ON 

INSERT [dbo].[KhoNguyenLieu] ([NguyenLieuID], [TenNguyenLieu], [DonVi], [GiaTheoDonVi], [SoLuongTon]) VALUES (1, N'Cà phê', N'gói', 10000.0000, 48)
INSERT [dbo].[KhoNguyenLieu] ([NguyenLieuID], [TenNguyenLieu], [DonVi], [GiaTheoDonVi], [SoLuongTon]) VALUES (2, N'Sữa', N'lít', 30000.0000, 99.799999997019768)
INSERT [dbo].[KhoNguyenLieu] ([NguyenLieuID], [TenNguyenLieu], [DonVi], [GiaTheoDonVi], [SoLuongTon]) VALUES (3, N'Đường', N'kg', 15000.0000, 199.69999998807907)
INSERT [dbo].[KhoNguyenLieu] ([NguyenLieuID], [TenNguyenLieu], [DonVi], [GiaTheoDonVi], [SoLuongTon]) VALUES (4, N'Chanh', N'quả', 5000.0000, 80)
INSERT [dbo].[KhoNguyenLieu] ([NguyenLieuID], [TenNguyenLieu], [DonVi], [GiaTheoDonVi], [SoLuongTon]) VALUES (5, N'Trà', N'gói', 20000.0000, 30)
INSERT [dbo].[KhoNguyenLieu] ([NguyenLieuID], [TenNguyenLieu], [DonVi], [GiaTheoDonVi], [SoLuongTon]) VALUES (6, N'Milo', N'hộp', 25000.0000, 40)
INSERT [dbo].[KhoNguyenLieu] ([NguyenLieuID], [TenNguyenLieu], [DonVi], [GiaTheoDonVi], [SoLuongTon]) VALUES (7, N'Dâu', N'kg', 40000.0000, 60)
INSERT [dbo].[KhoNguyenLieu] ([NguyenLieuID], [TenNguyenLieu], [DonVi], [GiaTheoDonVi], [SoLuongTon]) VALUES (8, N'Bắp rang bơ', N'gói', 5000.0000, 65)
INSERT [dbo].[KhoNguyenLieu] ([NguyenLieuID], [TenNguyenLieu], [DonVi], [GiaTheoDonVi], [SoLuongTon]) VALUES (9, N'Đậu phộng ', N'gói', 5000.0000, 52)
INSERT [dbo].[KhoNguyenLieu] ([NguyenLieuID], [TenNguyenLieu], [DonVi], [GiaTheoDonVi], [SoLuongTon]) VALUES (10, N'Đá', N'kg', 2000.0000, 499.39999997615814)
SET IDENTITY_INSERT [dbo].[KhoNguyenLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[Mon] ON 

INSERT [dbo].[Mon] ([MonID], [TenMon], [MoTa], [Gia], [DanhMucID], [HinhAnh]) VALUES (3, N'Cà phê bạc xỉu đá', N'ly', 10000.0000, 2, N'thucuong1.png')
INSERT [dbo].[Mon] ([MonID], [TenMon], [MoTa], [Gia], [DanhMucID], [HinhAnh]) VALUES (4, N'Cà phê sữa đá', N'ly', 12000.0000, 2, N'thucuong2.png')
INSERT [dbo].[Mon] ([MonID], [TenMon], [MoTa], [Gia], [DanhMucID], [HinhAnh]) VALUES (5, N'Đậu phộng rang', N'bịch', 10000.0000, 1, N'doan1.png')
INSERT [dbo].[Mon] ([MonID], [TenMon], [MoTa], [Gia], [DanhMucID], [HinhAnh]) VALUES (6, N'Bắp rang', N'bịch', 10000.0000, 1, N'doan2.png')
SET IDENTITY_INSERT [dbo].[Mon] OFF
GO
INSERT [dbo].[Mon_NguyenLieu] ([MonID], [NguyenLieuID], [SoLuongSuDungNguyenLieu]) VALUES (3, 1, 1)
INSERT [dbo].[Mon_NguyenLieu] ([MonID], [NguyenLieuID], [SoLuongSuDungNguyenLieu]) VALUES (3, 3, 0.3)
INSERT [dbo].[Mon_NguyenLieu] ([MonID], [NguyenLieuID], [SoLuongSuDungNguyenLieu]) VALUES (3, 8, 1)
INSERT [dbo].[Mon_NguyenLieu] ([MonID], [NguyenLieuID], [SoLuongSuDungNguyenLieu]) VALUES (3, 10, 0.3)
INSERT [dbo].[Mon_NguyenLieu] ([MonID], [NguyenLieuID], [SoLuongSuDungNguyenLieu]) VALUES (4, 1, 1)
INSERT [dbo].[Mon_NguyenLieu] ([MonID], [NguyenLieuID], [SoLuongSuDungNguyenLieu]) VALUES (4, 2, 0.2)
INSERT [dbo].[Mon_NguyenLieu] ([MonID], [NguyenLieuID], [SoLuongSuDungNguyenLieu]) VALUES (4, 8, 1)
INSERT [dbo].[Mon_NguyenLieu] ([MonID], [NguyenLieuID], [SoLuongSuDungNguyenLieu]) VALUES (4, 10, 0.3)
INSERT [dbo].[Mon_NguyenLieu] ([MonID], [NguyenLieuID], [SoLuongSuDungNguyenLieu]) VALUES (5, 9, 1)
INSERT [dbo].[Mon_NguyenLieu] ([MonID], [NguyenLieuID], [SoLuongSuDungNguyenLieu]) VALUES (6, 8, 1)
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [ThongTinLienLac]) VALUES (1, N'Công ty ABC', N'123 Đường ABC, Thành phố XYZ, Điện thoại: 123456789')
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [ThongTinLienLac]) VALUES (2, N'Công ty XYZ', N'456 Đường XYZ, Thành phố ABC, Điện thoại: 987654321')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([NhanVienID], [HoNV], [TenNV], [ViTri], [Luong]) VALUES (1, N'Trần Đình', N'Long', N'Quản lý', 2000.0000)
INSERT [dbo].[NhanVien] ([NhanVienID], [HoNV], [TenNV], [ViTri], [Luong]) VALUES (2, N'Nguyễn Chí', N'Khanh', N'Nhân viên', 0.0000)
INSERT [dbo].[NhanVien] ([NhanVienID], [HoNV], [TenNV], [ViTri], [Luong]) VALUES (3, N'Lương Khánh', N'Phong', N'Nhân viên', 0.0000)
INSERT [dbo].[NhanVien] ([NhanVienID], [HoNV], [TenNV], [ViTri], [Luong]) VALUES (4, N'Trần Bảo', N'Nhi', N'Nhân viên', 0.0000)
INSERT [dbo].[NhanVien] ([NhanVienID], [HoNV], [TenNV], [ViTri], [Luong]) VALUES (5, N'Lê Kiều Diễm', N'Hoàng', N'Nhân viên', 0.0000)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
INSERT [dbo].[TaiKhoan] ([NhanVienID], [TenTaiKhoan], [MatKhau]) VALUES (1, N'admin', N'1')
INSERT [dbo].[TaiKhoan] ([NhanVienID], [TenTaiKhoan], [MatKhau]) VALUES (2, N'nv2', N'1')
INSERT [dbo].[TaiKhoan] ([NhanVienID], [TenTaiKhoan], [MatKhau]) VALUES (3, N'nv3', N'1')
GO
ALTER TABLE [dbo].[DatHang] ADD  DEFAULT ((0)) FOR [TongGia]
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD FOREIGN KEY([DatHangID])
REFERENCES [dbo].[DatHang] ([DatHangID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD FOREIGN KEY([MonID])
REFERENCES [dbo].[Mon] ([MonID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD FOREIGN KEY([BanID])
REFERENCES [dbo].[Ban] ([BanID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[Mon]  WITH CHECK ADD FOREIGN KEY([DanhMucID])
REFERENCES [dbo].[DanhMuc] ([DanhMucID])
GO
ALTER TABLE [dbo].[Mon_NguyenLieu]  WITH CHECK ADD  CONSTRAINT [fk_1] FOREIGN KEY([MonID])
REFERENCES [dbo].[Mon] ([MonID])
GO
ALTER TABLE [dbo].[Mon_NguyenLieu] CHECK CONSTRAINT [fk_1]
GO
ALTER TABLE [dbo].[Mon_NguyenLieu]  WITH CHECK ADD  CONSTRAINT [fk_2] FOREIGN KEY([NguyenLieuID])
REFERENCES [dbo].[KhoNguyenLieu] ([NguyenLieuID])
GO
ALTER TABLE [dbo].[Mon_NguyenLieu] CHECK CONSTRAINT [fk_2]
GO
ALTER TABLE [dbo].[NhapKho]  WITH CHECK ADD FOREIGN KEY([NguyenLieuID])
REFERENCES [dbo].[KhoNguyenLieu] ([NguyenLieuID])
GO
ALTER TABLE [dbo].[NhapKho]  WITH CHECK ADD FOREIGN KEY([NhaCungCapID])
REFERENCES [dbo].[NhaCungCap] ([NhaCungCapID])
GO
ALTER TABLE [dbo].[NhapKho]  WITH CHECK ADD FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[XuatKho]  WITH CHECK ADD FOREIGN KEY([NguyenLieuID])
REFERENCES [dbo].[KhoNguyenLieu] ([NguyenLieuID])
GO
ALTER TABLE [dbo].[XuatKho]  WITH CHECK ADD FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
USE [master]
GO
ALTER DATABASE [DB_QuanCaPhe] SET  READ_WRITE 
GO
