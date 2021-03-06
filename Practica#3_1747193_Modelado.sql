USE [Practica#3_1747193]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicios]') AND type in (N'U'))
ALTER TABLE [dbo].[Servicios] DROP CONSTRAINT IF EXISTS [FK_Servicios_Servicio_Descripcion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicios]') AND type in (N'U'))
ALTER TABLE [dbo].[Servicios] DROP CONSTRAINT IF EXISTS [FK_Servicios_Empresas]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicios]') AND type in (N'U'))
ALTER TABLE [dbo].[Servicios] DROP CONSTRAINT IF EXISTS [FK_Servicios_Domicilio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura]') AND type in (N'U'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT IF EXISTS [FK_Factura_TipoPagoFacura]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura]') AND type in (N'U'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT IF EXISTS [FK_Factura_IVA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura]') AND type in (N'U'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT IF EXISTS [FK_Factura_Detalle_Factura]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura]') AND type in (N'U'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT IF EXISTS [FK_Factura_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Detalle_Factura]') AND type in (N'U'))
ALTER TABLE [dbo].[Detalle_Factura] DROP CONSTRAINT IF EXISTS [FK_Detalle_Factura_Articulo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT IF EXISTS [FK_Cliente_telefono_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT IF EXISTS [FK_Cliente_Direccion_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bebidas]') AND type in (N'U'))
ALTER TABLE [dbo].[Bebidas] DROP CONSTRAINT IF EXISTS [FK_Bebidas_Tipo_Bebida]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bebidas]') AND type in (N'U'))
ALTER TABLE [dbo].[Bebidas] DROP CONSTRAINT IF EXISTS [FK_Bebidas_Cantidad_ML]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bebidas]') AND type in (N'U'))
ALTER TABLE [dbo].[Bebidas] DROP CONSTRAINT IF EXISTS [FK_Bebidas_Bebidas_Descripcion]
GO
/****** Object:  Table [dbo].[TipoPagoFacura]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[TipoPagoFacura]
GO
/****** Object:  Table [dbo].[Tipo_Bebida]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Tipo_Bebida]
GO
/****** Object:  Table [dbo].[telefono_Cliente]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[telefono_Cliente]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Servicios]
GO
/****** Object:  Table [dbo].[Servicio_Descripcion]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Servicio_Descripcion]
GO
/****** Object:  Table [dbo].[IVA]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[IVA]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Factura]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Empresas]
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Domicilio]
GO
/****** Object:  Table [dbo].[Direccion_Cliente]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Direccion_Cliente]
GO
/****** Object:  Table [dbo].[Detalle_Factura]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Detalle_Factura]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Cantidad_ML]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Cantidad_ML]
GO
/****** Object:  Table [dbo].[Bebidas_Descripcion]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Bebidas_Descripcion]
GO
/****** Object:  Table [dbo].[Bebidas]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Bebidas]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Articulo]
GO
USE [master]
GO
/****** Object:  Database [Practica#3_1747193]    Script Date: 21/09/2018 07:10:05 p. m. ******/
DROP DATABASE IF EXISTS [Practica#3_1747193]
GO
/****** Object:  Database [Practica#3_1747193]    Script Date: 21/09/2018 07:10:05 p. m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Practica#3_1747193')
BEGIN
CREATE DATABASE [Practica#3_1747193]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica#3_1747193', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica#3_1747193.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica#3_1747193_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica#3_1747193_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
ALTER DATABASE [Practica#3_1747193] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica#3_1747193].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica#3_1747193] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica#3_1747193] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica#3_1747193] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica#3_1747193] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica#3_1747193] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica#3_1747193] SET  MULTI_USER 
GO
ALTER DATABASE [Practica#3_1747193] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica#3_1747193] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica#3_1747193] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica#3_1747193] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica#3_1747193] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Practica#3_1747193] SET QUERY_STORE = OFF
GO
USE [Practica#3_1747193]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Practica#3_1747193]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 21/09/2018 07:10:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Articulo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Articulo](
	[codigo_articulo] [int] NOT NULL,
	[Descripcion] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Bebidas]    Script Date: 21/09/2018 07:10:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bebidas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bebidas](
	[id] [int] NOT NULL,
	[id_Bebida] [int] NULL,
	[Nombre_Producto] [varchar](70) NULL,
	[Costo] [decimal](18, 0) NULL,
	[id_Tipo] [int] NULL,
	[id_Cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Bebidas_Descripcion]    Script Date: 21/09/2018 07:10:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bebidas_Descripcion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bebidas_Descripcion](
	[id_Bebida] [int] NOT NULL,
	[Descripcion] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Bebida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Cantidad_ML]    Script Date: 21/09/2018 07:10:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cantidad_ML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cantidad_ML](
	[id_Cantidad] [int] NOT NULL,
	[cantidad] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Cantidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 21/09/2018 07:10:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cliente](
	[codigo_cliente] [int] NOT NULL,
	[Nombre_cliente] [varchar](70) NULL,
	[id_direccion] [int] NULL,
	[id_telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Detalle_Factura]    Script Date: 21/09/2018 07:10:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Detalle_Factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Detalle_Factura](
	[codigo_factura] [int] NOT NULL,
	[codigo_articulo] [int] NULL,
	[Cantidad] [decimal](18, 0) NULL,
	[Importe] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Direccion_Cliente]    Script Date: 21/09/2018 07:10:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Direccion_Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Direccion_Cliente](
	[id_direccion] [int] NOT NULL,
	[CodigoP] [int] NULL,
	[Direccion] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 21/09/2018 07:10:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Domicilio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Domicilio](
	[id_Domicilio] [int] NOT NULL,
	[Domiciolio] [varchar](150) NULL,
	[CP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Domicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 21/09/2018 07:10:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empresas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empresas](
	[id_Empresa] [int] NOT NULL,
	[Nombre_E] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 21/09/2018 07:10:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Factura](
	[id] [int] NOT NULL,
	[codigo_cliente] [int] NULL,
	[fecha_factura] [date] NULL,
	[id_tipoP] [int] NULL,
	[id_IVA] [int] NULL,
	[codigo_factura] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IVA]    Script Date: 21/09/2018 07:10:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IVA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IVA](
	[id_IVA] [int] NOT NULL,
	[Tipo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_IVA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Servicio_Descripcion]    Script Date: 21/09/2018 07:10:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicio_Descripcion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Servicio_Descripcion](
	[id_Servicio] [int] NOT NULL,
	[Descripcion] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 21/09/2018 07:10:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Servicios](
	[id_S] [int] NOT NULL,
	[id_Empresa] [int] NULL,
	[id_Servicio] [int] NULL,
	[id_Domicilio] [int] NULL,
	[Costo] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_S] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[telefono_Cliente]    Script Date: 21/09/2018 07:10:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[telefono_Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[telefono_Cliente](
	[id_telefono] [int] NOT NULL,
	[nombre_c] [varchar](100) NULL,
	[telefono] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Tipo_Bebida]    Script Date: 21/09/2018 07:10:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_Bebida]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tipo_Bebida](
	[id_Tipo] [int] NOT NULL,
	[tipo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TipoPagoFacura]    Script Date: 21/09/2018 07:10:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoPagoFacura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoPagoFacura](
	[id_tipoP] [int] NOT NULL,
	[Tipo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipoP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bebidas_Bebidas_Descripcion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bebidas]'))
ALTER TABLE [dbo].[Bebidas]  WITH CHECK ADD  CONSTRAINT [FK_Bebidas_Bebidas_Descripcion] FOREIGN KEY([id_Bebida])
REFERENCES [dbo].[Bebidas_Descripcion] ([id_Bebida])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bebidas_Bebidas_Descripcion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bebidas]'))
ALTER TABLE [dbo].[Bebidas] CHECK CONSTRAINT [FK_Bebidas_Bebidas_Descripcion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bebidas_Cantidad_ML]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bebidas]'))
ALTER TABLE [dbo].[Bebidas]  WITH CHECK ADD  CONSTRAINT [FK_Bebidas_Cantidad_ML] FOREIGN KEY([id_Cantidad])
REFERENCES [dbo].[Cantidad_ML] ([id_Cantidad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bebidas_Cantidad_ML]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bebidas]'))
ALTER TABLE [dbo].[Bebidas] CHECK CONSTRAINT [FK_Bebidas_Cantidad_ML]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bebidas_Tipo_Bebida]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bebidas]'))
ALTER TABLE [dbo].[Bebidas]  WITH CHECK ADD  CONSTRAINT [FK_Bebidas_Tipo_Bebida] FOREIGN KEY([id_Tipo])
REFERENCES [dbo].[Tipo_Bebida] ([id_Tipo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bebidas_Tipo_Bebida]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bebidas]'))
ALTER TABLE [dbo].[Bebidas] CHECK CONSTRAINT [FK_Bebidas_Tipo_Bebida]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_Direccion_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Direccion_Cliente] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direccion_Cliente] ([id_direccion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_Direccion_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Direccion_Cliente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_telefono_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_telefono_Cliente] FOREIGN KEY([id_telefono])
REFERENCES [dbo].[telefono_Cliente] ([id_telefono])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_telefono_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_telefono_Cliente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Detalle_Factura_Articulo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Detalle_Factura]'))
ALTER TABLE [dbo].[Detalle_Factura]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Factura_Articulo] FOREIGN KEY([codigo_articulo])
REFERENCES [dbo].[Articulo] ([codigo_articulo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Detalle_Factura_Articulo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Detalle_Factura]'))
ALTER TABLE [dbo].[Detalle_Factura] CHECK CONSTRAINT [FK_Detalle_Factura_Articulo]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente] FOREIGN KEY([codigo_cliente])
REFERENCES [dbo].[Cliente] ([codigo_cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Detalle_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Detalle_Factura] FOREIGN KEY([codigo_factura])
REFERENCES [dbo].[Detalle_Factura] ([codigo_factura])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Detalle_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Detalle_Factura]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_IVA]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_IVA] FOREIGN KEY([id_IVA])
REFERENCES [dbo].[IVA] ([id_IVA])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_IVA]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_IVA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_TipoPagoFacura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_TipoPagoFacura] FOREIGN KEY([id_tipoP])
REFERENCES [dbo].[TipoPagoFacura] ([id_tipoP])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_TipoPagoFacura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_TipoPagoFacura]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Servicios_Domicilio]') AND parent_object_id = OBJECT_ID(N'[dbo].[Servicios]'))
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD  CONSTRAINT [FK_Servicios_Domicilio] FOREIGN KEY([id_Domicilio])
REFERENCES [dbo].[Domicilio] ([id_Domicilio])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Servicios_Domicilio]') AND parent_object_id = OBJECT_ID(N'[dbo].[Servicios]'))
ALTER TABLE [dbo].[Servicios] CHECK CONSTRAINT [FK_Servicios_Domicilio]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Servicios_Empresas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Servicios]'))
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD  CONSTRAINT [FK_Servicios_Empresas] FOREIGN KEY([id_Empresa])
REFERENCES [dbo].[Empresas] ([id_Empresa])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Servicios_Empresas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Servicios]'))
ALTER TABLE [dbo].[Servicios] CHECK CONSTRAINT [FK_Servicios_Empresas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Servicios_Servicio_Descripcion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Servicios]'))
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD  CONSTRAINT [FK_Servicios_Servicio_Descripcion] FOREIGN KEY([id_Servicio])
REFERENCES [dbo].[Servicio_Descripcion] ([id_Servicio])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Servicios_Servicio_Descripcion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Servicios]'))
ALTER TABLE [dbo].[Servicios] CHECK CONSTRAINT [FK_Servicios_Servicio_Descripcion]
GO
USE [master]
GO
ALTER DATABASE [Practica#3_1747193] SET  READ_WRITE 
GO
