USE [master]
GO
/****** Object:  Database [ProgTP6BaseDeDatos]    Script Date: 4/7/2025 15:41:35 ******/
CREATE DATABASE [ProgTP6BaseDeDatos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProgTP6BaseDeDatos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProgTP6BaseDeDatos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProgTP6BaseDeDatos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProgTP6BaseDeDatos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProgTP6BaseDeDatos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET RECOVERY FULL 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET  MULTI_USER 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProgTP6BaseDeDatos', N'ON'
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET QUERY_STORE = OFF
GO
USE [ProgTP6BaseDeDatos]
GO
/****** Object:  User [alumno]    Script Date: 4/7/2025 15:41:35 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Integrantes]    Script Date: 4/7/2025 15:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Integrantes](
	[NombreUsuario] [varchar](50) NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
	[Genero] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Especilidad] [varchar](50) NOT NULL,
	[NombreGrupo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Integrantes_1] PRIMARY KEY CLUSTERED 
(
	[NombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'BrunoCoria', N'bruno789', N'Masculino', 17, N'Diseño', N'TC')
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'CarlaGomez', N'carla321', N'Femenino', 18, N'Info', N'DI')
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'EzequielLuna', N'eze2025', N'Masculino', 18, N'Info', N'DI')
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'FedericoMartinez', N'fede555', N'Masculino', 16, N'Info', N'DI')
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'FrancoUrquizo', N'1111', N'Masculino', 16, N'Info', N'FM')
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'LucianoPaz', N'abc123', N'Masculino', 16, N'Multimedia', N'GA')
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'MartinaQuintana', N'marti456', N'Femenino', 16, N'Multimedia', N'GA')
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'MatiasBrasburg', N'1111', N'Masculino', 16, N'Info', N'FM')
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'MicaelaSierra', N'mica2025', N'Femenino', 17, N'Diseño', N'TC')
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'SofiaRamos', N'pass456', N'Femenino', 17, N'Diseño', N'TC')
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'ThiagoLopez', N'tlopez', N'Masculino', 16, N'Multimedia', N'GA')
INSERT [dbo].[Integrantes] ([NombreUsuario], [Contrasena], [Genero], [Edad], [Especilidad], [NombreGrupo]) VALUES (N'ValenSosa', N'clave123', N'Femenino', 17, N'Info', N'FM')
GO
USE [master]
GO
ALTER DATABASE [ProgTP6BaseDeDatos] SET  READ_WRITE 
GO
