/****** Object:  Table [dbo].[DM_TinhTrangHonNhan]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_TinhTrangHonNhan](
	[IDTinhTrangHN] [uniqueidentifier] NOT NULL,
	[TenTinhTrangHN] [nvarchar](100) NULL,
 CONSTRAINT [PK_DM_TinhTrangHonNhan] PRIMARY KEY CLUSTERED 
(
	[IDTinhTrangHN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DM_TinhTrangDT]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DM_TinhTrangDT](
	[MaTT] [varchar](10) NOT NULL,
	[TenTT] [nvarchar](50) NULL,
 CONSTRAINT [PK_DM_TinhTrangDT] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DM_MucDoKhuyetTat]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_MucDoKhuyetTat](
	[IDMucDoKT] [uniqueidentifier] NOT NULL,
	[TenMucDoKT] [nvarchar](100) NULL,
 CONSTRAINT [PK_DM_MucDoKhuyetTat] PRIMARY KEY CLUSTERED 
(
	[IDMucDoKT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DM_LoaiDT]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DM_LoaiDT](
	[MaLDT] [varchar](10) NOT NULL,
	[TenLDT] [nvarchar](100) NULL,
	[Order] [int] IDENTITY(1,1) NOT NULL,
	[HeSo] [float] NULL,
	[NgayAP] [datetime] NULL,
 CONSTRAINT [PK_DM_LoaiDT1] PRIMARY KEY CLUSTERED 
(
	[MaLDT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DM_KhaNangPhucVu]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_KhaNangPhucVu](
	[IDKhaNangPV] [uniqueidentifier] NOT NULL,
	[TenKhaNangPV] [nvarchar](100) NULL,
 CONSTRAINT [PK_DM_KhaNangPhucVu] PRIMARY KEY CLUSTERED 
(
	[IDKhaNangPV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DM_HanhChinh]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_HanhChinh](
	[MaHC] [nvarchar](10) NOT NULL,
	[TenHC] [nvarchar](128) NULL,
	[TenDayDu] [nvarchar](255) NULL,
	[Nho] [int] NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [PK_DMHanhChinh] PRIMARY KEY CLUSTERED 
(
	[MaHC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DM_DiaChi]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_DiaChi](
	[IDDiaChi] [uniqueidentifier] NOT NULL,
	[TenDiaChi] [nvarchar](100) NULL,
	[MaHC] [nvarchar](10) NULL,
 CONSTRAINT [PK_DiaChi] PRIMARY KEY CLUSTERED 
(
	[IDDiaChi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DM_DiaChi', @level2type=N'COLUMN',@level2name=N'IDDiaChi'
GO
/****** Object:  Table [dbo].[DM_DanToc]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_DanToc](
	[MaDanToc] [int] NOT NULL,
	[TenDanToc] [nvarchar](50) NULL,
 CONSTRAINT [PK_DM_DanToc] PRIMARY KEY CLUSTERED 
(
	[MaDanToc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DM_DangKhuyetTat]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_DangKhuyetTat](
	[IDDangTat] [uniqueidentifier] NOT NULL,
	[TenDangTat] [nvarchar](100) NULL,
 CONSTRAINT [PK_DM_DangKhuyetTat] PRIMARY KEY CLUSTERED 
(
	[IDDangTat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[MaHC] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThietLapChung]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThietLapChung](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[GiaTri] [nvarchar](50) NULL,
	[MoTa] [nvarchar](150) NULL,
	[Stt] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_ThietLapChung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoiTuong]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoiTuong](
	[IDDT] [uniqueidentifier] NOT NULL,
	[Order] [int] IDENTITY(1,1) NOT NULL,
	[MaHC] [nvarchar](10) NULL,
	[IDDiaChi] [uniqueidentifier] NULL,
	[MaLDT] [varchar](10) NULL,
	[HoTen] [nvarchar](100) NULL,
	[NgaySinh] [varchar](50) NULL,
	[ThangSinh] [varchar](50) NULL,
	[NamSinh] [varchar](50) NULL,
	[GioiTinh] [int] NULL,
	[MaDanToc] [int] NULL,
	[CMTND] [varchar](50) NULL,
	[NgayCap] [datetime] NULL,
	[NoiCap] [nvarchar](100) NULL,
	[NguyenQuan] [nvarchar](150) NULL,
	[TruQuan] [nvarchar](150) NULL,
	[isBHYT] [bit] NULL,
	[MucTC] [decimal](18, 0) NULL,
	[NgayHuong] [datetime] NULL,
	[isHoNgheo] [bit] NULL,
	[isKhuyetTat] [bit] NULL,
	[DangKT] [uniqueidentifier] NULL,
	[MucDoKT] [uniqueidentifier] NULL,
	[SoQD] [varchar](50) NULL,
	[NgayQD] [datetime] NULL,
	[GhiChu] [nvarchar](1000) NULL,
	[TinhTrang] [varchar](10) NULL,
 CONSTRAINT [PK_DoiTuong] PRIMARY KEY CLUSTERED 
(
	[IDDT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoiTuongBienDong]    Script Date: 04/17/2015 17:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoiTuongBienDong](
	[IDBienDong] [uniqueidentifier] NOT NULL,
	[IDDT] [uniqueidentifier] NULL,
	[Order] [int] NULL,
	[MaHC] [nchar](10) NULL,
	[IDDiaChi] [uniqueidentifier] NULL,
	[TinhTrang] [nchar](10) NULL,
	[MaLDT] [varchar](50) NULL,
	[NgayHuong] [datetime] NULL,
	[HeSo] [decimal](18, 0) NULL,
	[MucTC] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](50) NULL,
	[MucChenh] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DoiTuongBienDong] PRIMARY KEY CLUSTERED 
(
	[IDBienDong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_DM_TinhTrangHonNhan_IDTinhTrangHN]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DM_TinhTrangHonNhan] ADD  CONSTRAINT [DF_DM_TinhTrangHonNhan_IDTinhTrangHN]  DEFAULT (newid()) FOR [IDTinhTrangHN]
GO
/****** Object:  Default [DF_DM_MucDoKhuyetTat_IDMucDoKT]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DM_MucDoKhuyetTat] ADD  CONSTRAINT [DF_DM_MucDoKhuyetTat_IDMucDoKT]  DEFAULT (newid()) FOR [IDMucDoKT]
GO
/****** Object:  Default [DF_DM_KhaNangPhucVu_IDKhaNangPV]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DM_KhaNangPhucVu] ADD  CONSTRAINT [DF_DM_KhaNangPhucVu_IDKhaNangPV]  DEFAULT (newid()) FOR [IDKhaNangPV]
GO
/****** Object:  Default [DF_DiaChi_ID]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DM_DiaChi] ADD  CONSTRAINT [DF_DiaChi_ID]  DEFAULT (newid()) FOR [IDDiaChi]
GO
/****** Object:  Default [DF_DM_DangKhuyetTat_IDDangTat]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DM_DangKhuyetTat] ADD  CONSTRAINT [DF_DM_DangKhuyetTat_IDDangTat]  DEFAULT (newid()) FOR [IDDangTat]
GO
/****** Object:  Default [DF_DoiTuong_IDDT]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DoiTuong] ADD  CONSTRAINT [DF_DoiTuong_IDDT]  DEFAULT (newid()) FOR [IDDT]
GO
/****** Object:  Default [DF_DoiTuongBienDong_IDBienDong]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DoiTuongBienDong] ADD  CONSTRAINT [DF_DoiTuongBienDong_IDBienDong]  DEFAULT (newid()) FOR [IDBienDong]
GO
/****** Object:  ForeignKey [FK_DoiTuong_DM_DangKhuyetTat]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DoiTuong]  WITH CHECK ADD  CONSTRAINT [FK_DoiTuong_DM_DangKhuyetTat] FOREIGN KEY([DangKT])
REFERENCES [dbo].[DM_DangKhuyetTat] ([IDDangTat])
GO
ALTER TABLE [dbo].[DoiTuong] CHECK CONSTRAINT [FK_DoiTuong_DM_DangKhuyetTat]
GO
/****** Object:  ForeignKey [FK_DoiTuong_DM_DanToc]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DoiTuong]  WITH CHECK ADD  CONSTRAINT [FK_DoiTuong_DM_DanToc] FOREIGN KEY([MaDanToc])
REFERENCES [dbo].[DM_DanToc] ([MaDanToc])
GO
ALTER TABLE [dbo].[DoiTuong] CHECK CONSTRAINT [FK_DoiTuong_DM_DanToc]
GO
/****** Object:  ForeignKey [FK_DoiTuong_DM_DiaChi]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DoiTuong]  WITH CHECK ADD  CONSTRAINT [FK_DoiTuong_DM_DiaChi] FOREIGN KEY([IDDiaChi])
REFERENCES [dbo].[DM_DiaChi] ([IDDiaChi])
GO
ALTER TABLE [dbo].[DoiTuong] CHECK CONSTRAINT [FK_DoiTuong_DM_DiaChi]
GO
/****** Object:  ForeignKey [FK_DoiTuong_DM_HanhChinh]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DoiTuong]  WITH CHECK ADD  CONSTRAINT [FK_DoiTuong_DM_HanhChinh] FOREIGN KEY([MaHC])
REFERENCES [dbo].[DM_HanhChinh] ([MaHC])
GO
ALTER TABLE [dbo].[DoiTuong] CHECK CONSTRAINT [FK_DoiTuong_DM_HanhChinh]
GO
/****** Object:  ForeignKey [FK_DoiTuong_DM_LoaiDT]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DoiTuong]  WITH CHECK ADD  CONSTRAINT [FK_DoiTuong_DM_LoaiDT] FOREIGN KEY([MaLDT])
REFERENCES [dbo].[DM_LoaiDT] ([MaLDT])
GO
ALTER TABLE [dbo].[DoiTuong] CHECK CONSTRAINT [FK_DoiTuong_DM_LoaiDT]
GO
/****** Object:  ForeignKey [FK_DoiTuong_DM_MucDoKhuyetTat]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DoiTuong]  WITH CHECK ADD  CONSTRAINT [FK_DoiTuong_DM_MucDoKhuyetTat] FOREIGN KEY([MucDoKT])
REFERENCES [dbo].[DM_MucDoKhuyetTat] ([IDMucDoKT])
GO
ALTER TABLE [dbo].[DoiTuong] CHECK CONSTRAINT [FK_DoiTuong_DM_MucDoKhuyetTat]
GO
/****** Object:  ForeignKey [FK_DoiTuong_DM_TinhTrangDT]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DoiTuong]  WITH CHECK ADD  CONSTRAINT [FK_DoiTuong_DM_TinhTrangDT] FOREIGN KEY([TinhTrang])
REFERENCES [dbo].[DM_TinhTrangDT] ([MaTT])
GO
ALTER TABLE [dbo].[DoiTuong] CHECK CONSTRAINT [FK_DoiTuong_DM_TinhTrangDT]
GO
/****** Object:  ForeignKey [FK_DoiTuongBienDong_DoiTuong]    Script Date: 04/17/2015 17:47:30 ******/
ALTER TABLE [dbo].[DoiTuongBienDong]  WITH CHECK ADD  CONSTRAINT [FK_DoiTuongBienDong_DoiTuong] FOREIGN KEY([IDDT])
REFERENCES [dbo].[DoiTuong] ([IDDT])
GO
ALTER TABLE [dbo].[DoiTuongBienDong] CHECK CONSTRAINT [FK_DoiTuongBienDong_DoiTuong]
GO
