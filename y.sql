USE [master]
GO
/****** Object:  Database [Otdel_kadrov]    Script Date: 27.06.2023 10:33:51 ******/
CREATE DATABASE [Otdel_kadrov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Otdel_kadrov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Otdel_kadrov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Otdel_kadrov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Otdel_kadrov_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Otdel_kadrov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Otdel_kadrov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET ARITHABORT OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Otdel_kadrov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Otdel_kadrov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Otdel_kadrov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Otdel_kadrov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Otdel_kadrov] SET  MULTI_USER 
GO
ALTER DATABASE [Otdel_kadrov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Otdel_kadrov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Otdel_kadrov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Otdel_kadrov] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [Otdel_kadrov]
GO
/****** Object:  Table [dbo].[Dogovor]    Script Date: 27.06.2023 10:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dogovor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Soiskateli] [int] NOT NULL,
	[ID_Rabotodateli] [int] NOT NULL,
	[Dolznost] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Dogovor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rabotodateli]    Script Date: 27.06.2023 10:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rabotodateli](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](200) NOT NULL,
	[Vid_deatelnosti] [nchar](200) NOT NULL,
	[Address] [nchar](200) NOT NULL,
	[Phone] [nchar](11) NULL,
 CONSTRAINT [PK_Rabotodateli] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soiskateli]    Script Date: 27.06.2023 10:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soiskateli](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nchar](15) NOT NULL,
	[Name] [nchar](15) NOT NULL,
	[Patronymic] [nchar](15) NULL,
	[Kvalifikacia] [nchar](50) NOT NULL,
	[Vid_deatelnosti] [nchar](200) NOT NULL,
	[Phone] [nchar](11) NOT NULL,
 CONSTRAINT [PK_Soiskateli] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dogovor] ON 

INSERT [dbo].[Dogovor] ([ID], [ID_Soiskateli], [ID_Rabotodateli], [Dolznost]) VALUES (1, 1, 1, N'Программист                                                                                         ')
INSERT [dbo].[Dogovor] ([ID], [ID_Soiskateli], [ID_Rabotodateli], [Dolznost]) VALUES (2, 2, 3, N'Автомеханик                                                                                         ')
INSERT [dbo].[Dogovor] ([ID], [ID_Soiskateli], [ID_Rabotodateli], [Dolznost]) VALUES (3, 3, 4, N'Программист                                                                                         ')
INSERT [dbo].[Dogovor] ([ID], [ID_Soiskateli], [ID_Rabotodateli], [Dolznost]) VALUES (4, 4, 2, N'Авиапроектировани                                                                                   ')
INSERT [dbo].[Dogovor] ([ID], [ID_Soiskateli], [ID_Rabotodateli], [Dolznost]) VALUES (5, 5, 5, N'Дизайнер                                                                                            ')
SET IDENTITY_INSERT [dbo].[Dogovor] OFF
GO
SET IDENTITY_INSERT [dbo].[Rabotodateli] ON 

INSERT [dbo].[Rabotodateli] ([ID], [Name], [Vid_deatelnosti], [Address], [Phone]) VALUES (1, N'МАОУ "Гагинская СШ"                                                                                                                                                                                     ', N'Программист                                                                                                                                                                                             ', N'г. Нижний новгород, ул. Мира, д-2                                                                                                                                                                       ', N'89877411445')
INSERT [dbo].[Rabotodateli] ([ID], [Name], [Vid_deatelnosti], [Address], [Phone]) VALUES (2, N'ООО "Колесо"                                                                                                                                                                                            ', N'Автомеханик                                                                                                                                                                                             ', N'г. Нижний новгород, ул. Арбат, д-18                                                                                                                                                                     ', N'89634562141')
INSERT [dbo].[Rabotodateli] ([ID], [Name], [Vid_deatelnosti], [Address], [Phone]) VALUES (3, N'ОАО "Лето"                                                                                                                                                                                              ', N'Авиапроектирование                                                                                                                                                                                      ', N'г. Нижний новгород, ул. Мировая, д-43                                                                                                                                                                   ', N'89652365214')
INSERT [dbo].[Rabotodateli] ([ID], [Name], [Vid_deatelnosti], [Address], [Phone]) VALUES (4, N'ГБПОУ "ЛГК"                                                                                                                                                                                             ', N'Программист                                                                                                                                                                                             ', N'г. Нижний новгород, ул. Победы, д-5                                                                                                                                                                     ', N'89654122587')
INSERT [dbo].[Rabotodateli] ([ID], [Name], [Vid_deatelnosti], [Address], [Phone]) VALUES (5, N'ООО "ЗУБ"                                                                                                                                                                                               ', N'Дизайнер                                                                                                                                                                                                ', N'г. Нижний новгород, ул. Домодедово, д-65                                                                                                                                                                ', N'89651487485')
SET IDENTITY_INSERT [dbo].[Rabotodateli] OFF
GO
SET IDENTITY_INSERT [dbo].[Soiskateli] ON 

INSERT [dbo].[Soiskateli] ([ID], [Surname], [Name], [Patronymic], [Kvalifikacia], [Vid_deatelnosti], [Phone]) VALUES (1, N'Григорьев      ', N'Сергей         ', N'Петрович       ', N'высшая                                            ', N'Программист                                                                                                                                                                                             ', N'89047899636')
INSERT [dbo].[Soiskateli] ([ID], [Surname], [Name], [Patronymic], [Kvalifikacia], [Vid_deatelnosti], [Phone]) VALUES (2, N'Трошкин        ', N'Иван           ', N'Иванович       ', N'средняя                                           ', N'Бухгалтерский учет                                                                                                                                                                                      ', N'89511236352')
INSERT [dbo].[Soiskateli] ([ID], [Surname], [Name], [Patronymic], [Kvalifikacia], [Vid_deatelnosti], [Phone]) VALUES (3, N'Мирова         ', N'Екатерина      ', N'Алексеевна     ', N'наивысшая                                         ', N'Автомеханик                                                                                                                                                                                             ', N'87411256585')
INSERT [dbo].[Soiskateli] ([ID], [Surname], [Name], [Patronymic], [Kvalifikacia], [Vid_deatelnosti], [Phone]) VALUES (4, N'Лаврова        ', N'Анастасия      ', N'Дмитриевна     ', N'средняя                                           ', N'Авиапроектирование                                                                                                                                                                                      ', N'89632147541')
INSERT [dbo].[Soiskateli] ([ID], [Surname], [Name], [Patronymic], [Kvalifikacia], [Vid_deatelnosti], [Phone]) VALUES (5, N'Носов          ', N'Артем          ', N'Ильч           ', N'средняя                                           ', N'Дизайнер                                                                                                                                                                                                ', N'89517899632')
SET IDENTITY_INSERT [dbo].[Soiskateli] OFF
GO
ALTER TABLE [dbo].[Dogovor]  WITH CHECK ADD  CONSTRAINT [FK_Dogovor_Rabotodateli] FOREIGN KEY([ID_Rabotodateli])
REFERENCES [dbo].[Rabotodateli] ([ID])
GO
ALTER TABLE [dbo].[Dogovor] CHECK CONSTRAINT [FK_Dogovor_Rabotodateli]
GO
ALTER TABLE [dbo].[Dogovor]  WITH CHECK ADD  CONSTRAINT [FK_Dogovor_Soiskateli] FOREIGN KEY([ID_Soiskateli])
REFERENCES [dbo].[Soiskateli] ([ID])
GO
ALTER TABLE [dbo].[Dogovor] CHECK CONSTRAINT [FK_Dogovor_Soiskateli]
GO
USE [master]
GO
ALTER DATABASE [Otdel_kadrov] SET  READ_WRITE 
GO
