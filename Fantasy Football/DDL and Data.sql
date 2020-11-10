USE [master]
GO
/****** Object:  Database [Fantasy Football]    Script Date: 11/10/2020 4:07:21 AM ******/
CREATE DATABASE [Fantasy Football] CONTAINMENT = NONE
ON PRIMARY
	   (
		   NAME = N'Fantasy Football',
		   FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Fantasy Football.mdf',
		   SIZE = 8192KB,
		   MAXSIZE = UNLIMITED,
		   FILEGROWTH = 65536KB
	   )
LOG ON
	(
		NAME = N'Fantasy Football_log',
		FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Fantasy Football_log.ldf',
		SIZE = 8192KB,
		MAXSIZE = 2048GB,
		FILEGROWTH = 65536KB
	)
WITH CATALOG_COLLATION=DATABASE_DEFAULT
GO
ALTER DATABASE [Fantasy Football] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
BEGIN
	EXEC [Fantasy Football].[dbo].[sp_fulltext_database] @action = 'enable'
END
GO
ALTER DATABASE [Fantasy Football] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Fantasy Football] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Fantasy Football] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Fantasy Football] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Fantasy Football] SET ARITHABORT OFF
GO
ALTER DATABASE [Fantasy Football] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Fantasy Football] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Fantasy Football] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Fantasy Football] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Fantasy Football] SET CURSOR_DEFAULT GLOBAL
GO
ALTER DATABASE [Fantasy Football] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Fantasy Football] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Fantasy Football] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Fantasy Football] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Fantasy Football] SET DISABLE_BROKER
GO
ALTER DATABASE [Fantasy Football] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Fantasy Football] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Fantasy Football] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Fantasy Football] SET ALLOW_SNAPSHOT_ISOLATION ON
GO
ALTER DATABASE [Fantasy Football] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Fantasy Football] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Fantasy Football] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Fantasy Football] SET RECOVERY FULL
GO
ALTER DATABASE [Fantasy Football] SET MULTI_USER
GO
ALTER DATABASE [Fantasy Football] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Fantasy Football] SET DB_CHAINING OFF
GO
ALTER DATABASE [Fantasy Football]
SET FILESTREAM
	(
		NON_TRANSACTED_ACCESS = OFF
	)
GO
ALTER DATABASE [Fantasy Football] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO
ALTER DATABASE [Fantasy Football] SET DELAYED_DURABILITY = DISABLED
GO
ALTER DATABASE [Fantasy Football] SET ACCELERATED_DATABASE_RECOVERY = OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Fantasy Football', N'ON'
GO
ALTER DATABASE [Fantasy Football] SET QUERY_STORE = OFF
GO
USE [Fantasy Football]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 11/10/2020 4:07:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players]
(
	[Name] [varchar](23) NOT NULL,
	[Position] [varchar](3) NOT NULL,
	[Team] [varchar](3) NOT NULL,
	[ProjectedPoints] [float] NOT NULL,
	[Price] [float] NOT NULL,
	PRIMARY KEY CLUSTERED (
							  [Name] ASC,
							  [Team] ASC
						  )
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'A.J. Derby', N'TE', N'DEN', 30.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'A.J. Green', N'WR', N'CIN', 161.1, 37.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'A.J. McCarron', N'QB', N'CIN', 8.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Aaron Burbridge', N'WR', N'SFO', 6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Aaron Dobson', N'WR', N'ARI', 7.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Aaron Green', N'RB', N'LAR', 4.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Aaron Jones', N'RB', N'GBP', 18.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Aaron Murray', N'QB', N'KCC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Aaron Ripkowski', N'RB', N'GBP', 26.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Aaron Rodgers', N'QB', N'GBP', 333.5, 51.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Adam Humphries', N'WR', N'TBB', 49.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Adam Shaheen', N'TE', N'CHI', 25.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Adam Thielen', N'WR', N'MIN', 93.2, 1.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Adam Vinatieri', N'K', N'IND', 132.9, 2.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Adrian Peterson', N'RB', N'NOS', 104.5, 2.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ahmad Bradshaw', N'RB', N'IND', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Akeem Hunt', N'RB', N'HOU', 6.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Akeem Judd', N'RB', N'TEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alan Cross', N'TE', N'TBB', 5.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Albert Wilson', N'WR', N'KCC', 47.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Aldrick Robinson', N'WR', N'SFO', 25.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Aldrick Rosas', N'K', N'NYG', 99.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alex Collins', N'RB', N'SEA', 10.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alex Ellis', N'TE', N'JAC', 6.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alex Erickson', N'WR', N'CIN', 5.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alex Smith', N'QB', N'KCC', 223.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alex Smith', N'TE', N'WAS', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alex Tanney', N'QB', N'TEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alexander Armah', N'RB', N'CAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alfred Blue', N'RB', N'HOU', 32.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alfred Morris', N'RB', N'DAL', 40.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Allen Hurns', N'WR', N'JAC', 79.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Allen Robinson', N'WR', N'JAC', 134.8, 21)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alshon Jeffery', N'WR', N'PHI', 129.1, 18.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Alvin Kamara', N'RB', N'NOS', 58.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Amara Darboh', N'WR', N'SEA', 5.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Amari Cooper', N'WR', N'OAK', 142.6, 26.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Amba Etta-Tawo', N'WR', N'JAC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ameer Abdullah', N'RB', N'DET', 129, 10.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andre Ellington', N'RB', N'ARI', 23.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andre Holmes', N'WR', N'BUF', 36.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andre Jerome Caldwell', N'WR', N'DET', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andre Johnson', N'WR', N'TEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andre Roberts', N'WR', N'ATL', 13.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andre Williams', N'RB', N'LAC', 15.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andrew Franks', N'K', N'MIA', 92.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andrew Hawkins', N'WR', N'NEP', 23.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andrew Luck', N'QB', N'IND', 274.4, 15)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andy Dalton', N'QB', N'CIN', 257.7, 6.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andy Janovich', N'RB', N'DEN', 10.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Andy Jones', N'WR', N'DAL', -0.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Anquan Boldin', N'WR', N'BUF', 2.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Anthony Fasano', N'TE', N'MIA', 16.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Anthony Sherman', N'RB', N'KCC', 2.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Antone Smith', N'RB', N'TBB', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Antonio Brown', N'WR', N'PIT', 194.6, 55.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Antonio Gates', N'TE', N'LAC', 72.7, 1.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'ArDarius Stewart', N'WR', N'NYJ', 64.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Arian Foster', N'RB', N'MIA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Arizona Cardinals', N'DEF', N'ARI', 126.1, 7.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Arrelious Benn', N'WR', N'JAC', 8.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Artavis Scott', N'WR', N'LAC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Asante Cleveland', N'TE', N'LAC', 7.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Atlanta Falcons', N'DEF', N'ATL', 102.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Austin Carr', N'WR', N'NEP', 9.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Austin Davis', N'QB', N'SEA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Austin Ekeler', N'RB', N'LAC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Austin Hooper', N'TE', N'ATL', 81, 1.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Austin Johnson', N'RB', N'TBB', 6.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Austin Seferian-Jenkins', N'TE', N'NYJ', 55.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Baltimore Ravens', N'DEF', N'BAL', 112, 3.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bear Pascoe', N'TE', N'NEP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Beau Sandland', N'TE', N'GBP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ben Braunecker', N'TE', N'CHI', 4.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ben Koyack', N'TE', N'JAC', 10.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ben Roethlisberger', N'QB', N'PIT', 255.6, 5.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ben Tate', N'RB', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ben Watson', N'TE', N'BAL', 49.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bennie Fowler', N'WR', N'DEN', 17, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Benny Cunningham', N'RB', N'CHI', 17.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bilal Powell', N'RB', N'NYJ', 135.2, 14.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Billy Cundiff', N'K', N'CLE', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bishop Sankey', N'RB', N'MIN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Blaine Gabbert', N'QB', N'ARI', 2.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Blair Walsh', N'K', N'SEA', 127.2, 1.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Blake Bell', N'TE', N'SFO', 6.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Blake Bortles', N'QB', N'JAC', 200.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bobby Rainey', N'RB', N'BAL', 7.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Boobie Dixon', N'RB', N'BUF', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brad Kaaya', N'QB', N'DET', 2.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bradley Marquez', N'WR', N'LAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Braedon Bowman', N'TE', N'NOS', 3.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Branden Oliver', N'RB', N'LAC', 37.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandin Cooks', N'WR', N'NEP', 143.6, 26.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Allen', N'QB', N'JAC', 14, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Bolden', N'RB', N'NEP', 3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Bostick', N'TE', N'FA', 4.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Burks', N'RB', N'FA', -0.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Coleman', N'WR', N'NOS', 44.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Doughty', N'QB', N'MIA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon LaFell', N'WR', N'CIN', 66.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Marshall', N'WR', N'NYG', 111.5, 9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon McManus', N'K', N'DEN', 120.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Myers', N'TE', N'FA', 7.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Pettigrew', N'TE', N'DET', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Radcliff', N'RB', N'TEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Reilly', N'WR', N'BUF', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Tate', N'WR', N'BUF', 12.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Weeden', N'QB', N'HOU', 6.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Wilds', N'RB', N'CLE', 4.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brandon Williams', N'TE', N'IND', 6.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Braxton Miller', N'WR', N'HOU', 43.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brent Celek', N'TE', N'PHI', 15.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brenton Bersin', N'WR', N'CAR', 10.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Breshad Perriman', N'WR', N'BAL', 77.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brett Hundley', N'QB', N'GBP', 5.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brian Hill', N'RB', N'ATL', 12.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brian Hoyer', N'QB', N'SFO', 190.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brian Quick', N'WR', N'WAS', 25.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brice Butler', N'WR', N'DAL', 31, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brittan Golden', N'WR', N'ARI', 5.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brock Osweiler', N'QB', N'CLE', 17.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Brody Eldridge', N'TE', N'CHI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bronson Hill', N'RB', N'MIN', 1.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bruce Ellington', N'WR', N'HOU', 7.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bruce Gradkowski', N'QB', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bryce Petty', N'QB', N'NYJ', 25.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bryce Treggs', N'WR', N'PHI', 6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bucky Hodges', N'TE', N'MIN', 7.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Buffalo Bills', N'DEF', N'BUF', 96.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Bug Howard', N'WR', N'IND', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Byron Marshall', N'RB', N'PHI', 2.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'C.J. Anderson', N'RB', N'DEN', 128.8, 7.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'C.J. Beathard', N'QB', N'SFO', 9.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'C.J. Fiedorowicz', N'TE', N'HOU', 70.6, 1.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'C.J. Ham', N'RB', N'MIN', 2.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'C.J. Prosise', N'RB', N'SEA', 78.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'C.J. Spiller', N'RB', N'KCC', 16.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'C.J. Uzomah', N'TE', N'CIN', 9.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cairo Santos', N'K', N'KCC', 118.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Caleb Sturgis', N'K', N'PHI', 125.1, 1.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Calvin Johnson', N'WR', N'FA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cam Newton', N'QB', N'CAR', 278.8, 16.6)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cameron Artis-Payne', N'RB', N'CAR', 17.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cameron Brate', N'TE', N'TBB', 76.8, 1.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cameron Meredith', N'WR', N'CHI', 102.6, 3.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Canaan Severin', N'WR', N'NYG', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cardale Jones', N'QB', N'LAC', 2.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Carlos Henderson', N'WR', N'DEN', 35.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Carlos Hyde', N'RB', N'SFO', 146, 20.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Carolina Panthers', N'DEF', N'CAR', 116.6, 5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Carson Palmer', N'QB', N'ARI', 245.2, 3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Carson Wentz', N'QB', N'PHI', 238.7, 2.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Case Keenum', N'QB', N'MIN', 11.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cayleb Jones', N'WR', N'MIN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cecil Shorts', N'WR', N'FA', 40.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cedric O''Neal', N'RB', N'BUF', 2.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cedric Peerman', N'RB', N'CIN', 5.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cethan Carter', N'TE', N'CIN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chad Hansen', N'WR', N'NYJ', 20.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chad Henne', N'QB', N'JAC', 51.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chad Kelly', N'QB', N'DEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chad Williams', N'WR', N'ARI', 21.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chandler Catanzaro', N'K', N'NYJ', 107.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Charcandrick West', N'RB', N'KCC', 46.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Charles Clay', N'TE', N'BUF', 73.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Charles Johnson', N'WR', N'CAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Charles Sims', N'RB', N'TBB', 74.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Charlie Whitehurst', N'QB', N'CLE', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Charone Peake', N'WR', N'NYJ', 50.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chase Coffman', N'TE', N'IND', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chase Daniel', N'QB', N'NOS', 2.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chase Reynolds', N'RB', N'FA', 0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chester Rogers', N'WR', N'IND', 29.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chicago Bears', N'DEF', N'CHI', 90.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Boswell', N'K', N'PIT', 123.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Carson', N'RB', N'SEA', 15.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Conley', N'WR', N'KCC', 64.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Godwin', N'WR', N'TBB', 32.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Gragg', N'TE', N'NYJ', 1.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Harper', N'WR', N'NYJ', 15.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Hogan', N'WR', N'NEP', 91.8, 1.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Ivory', N'RB', N'JAC', 40.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Johnson', N'RB', N'ARI', 42.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Manhertz', N'TE', N'CAR', 3.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Matthews', N'WR', N'BAL', 7.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Moore', N'WR', N'BAL', 14.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Chris Thompson', N'RB', N'WAS', 82.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Christian Hackenberg', N'QB', N'NYJ', 36.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Christian McCaffrey', N'RB', N'CAR', 141.1, 18.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Christian Ponder', N'QB', N'SFO', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Christine Michael', N'RB', N'IND', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Christopher Carson', N'RB', N'SEA', 26.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cincinnati Bengals', N'DEF', N'CIN', 108.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Clark Harris', N'TE', N'CIN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Clay Harbor', N'TE', N'NOS', 4.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cleveland Browns', N'DEF', N'CLE', 86.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Clive Walford', N'TE', N'OAK', 31.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cobi Hamilton', N'WR', N'PIT', 21.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Coby Fleener', N'TE', N'NOS', 81.7, 1.6)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cody Core', N'WR', N'CIN', 10.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cody Kessler', N'QB', N'CLE', 42.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cody Latimer', N'WR', N'DEN', 15, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cody Parkey', N'K', N'CLE', 89.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cole Beasley', N'WR', N'DAL', 86.6, 1.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cole Wick', N'TE', N'DET', 3.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Colin Kaepernick', N'QB', N'FA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Colt McCoy', N'QB', N'WAS', 5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Connor Barth', N'K', N'CHI', 102.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Connor Cook', N'QB', N'OAK', 3.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Connor Shaw', N'QB', N'CHI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cooper Helfet', N'TE', N'OAK', 6.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cooper Kupp', N'WR', N'LAR', 49.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cooper Rush', N'QB', N'DAL', 0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cordarrelle Patterson', N'WR', N'OAK', 29.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Corey Brown', N'WR', N'BUF', 18.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Corey Clement', N'RB', N'PHI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Corey Coleman', N'WR', N'CLE', 93.8, 1.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Corey Davis', N'WR', N'TEN', 95.7, 1.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Corey Fuller', N'WR', N'NOS', 7.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Corey Grant', N'RB', N'JAC', 8.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Cory Harkey', N'TE', N'LAR', 1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Craig Stevens', N'TE', N'TEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Curtis Samuel', N'WR', N'CAR', 54.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'D''Onta Foreman', N'RB', N'HOU', 55.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'D.J. Foster', N'RB', N'NEP', 3.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'D.J. Tialavea', N'TE', N'ATL', 6.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dak Prescott', N'QB', N'DAL', 266.7, 10)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dallas Cowboys', N'DEF', N'DAL', 103.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dalvin Cook', N'RB', N'MIN', 145.3, 18.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Damien Williams', N'RB', N'MIA', 44.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Damiere Byrd', N'WR', N'CAR', 4.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Damore''ea Stringfellow', N'WR', N'MIA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dan Bailey', N'K', N'DAL', 132.6, 2.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dan Carpenter', N'K', N'BUF', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dan LeFevour', N'QB', N'TBB', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dan Orlovsky', N'QB', N'LAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dan Vitale', N'RB', N'CLE', 4.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Daniel Braverman', N'WR', N'CHI', 7.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Daniel Brown', N'TE', N'CHI', 8.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Daniel Fells', N'TE', N'NYG', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Daniel Lasco', N'RB', N'NOS', 3.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Danny Amendola', N'WR', N'NEP', 47.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Danny Woodhead', N'RB', N'BAL', 107, 2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dare Ogunbowale', N'RB', N'HOU', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Darius Jackson', N'RB', N'CLE', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Darius Jennings', N'WR', N'TEN', 8.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Darrel Young', N'RB', N'CAR', 5.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Darrell Daniels', N'TE', N'IND', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Darren Fells', N'TE', N'DET', 17.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Darren McFadden', N'RB', N'DAL', 96.1, 3.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Darren Sproles', N'RB', N'PHI', 98.3, 1.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Darren Waller', N'TE', N'BAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Darrius Heyward-Bey', N'WR', N'PIT', 17.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Davante Adams', N'WR', N'GBP', 125.8, 17.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'David Cobb', N'RB', N'FA', 15.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'David Fales', N'QB', N'MIA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'David Fluellen', N'RB', N'TEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'David Johnson', N'RB', N'ARI', 273.5, 94.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'David Johnson', N'TE', N'PIT', 5.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'David Moore', N'WR', N'SEA', 8.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'David Morgan', N'TE', N'MIN', 9.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'David Njoku', N'TE', N'CLE', 63.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Davis Webb', N'QB', N'NYG', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'De''Angelo Henderson', N'RB', N'DEN', 8.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'De''Anthony Thomas', N'WR', N'KCC', 6.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'De''Veon Smith', N'RB', N'MIA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'DeAndre Carter', N'WR', N'SFO', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'DeAndre Hopkins', N'WR', N'HOU', 137.1, 23.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'DeAndre Smelter', N'WR', N'SFO', 6.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'DeAndre Washington', N'RB', N'OAK', 65.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'DeAngelo Williams', N'RB', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'DeAngelo Yancey', N'WR', N'GBP', 5.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Deante Burton', N'WR', N'ATL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dede Westbrook', N'WR', N'JAC', 28.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Delanie Walker', N'TE', N'TEN', 99.7, 10.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'DeMarco Murray', N'RB', N'TEN', 178.9, 41.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Demarcus Ayers', N'WR', N'PIT', 7.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Demarcus Robinson', N'WR', N'KCC', 14.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Demaryius Thomas', N'WR', N'DEN', 133.5, 21.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Demetrius Harris', N'TE', N'KCC', 21, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Denver Broncos', N'DEF', N'DEN', 129, 7.6)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Deonte Thompson', N'WR', N'CHI', 25.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Derek Anderson', N'QB', N'CAR', 6.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Derek Carr', N'QB', N'OAK', 257, 6.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Derek Carrier', N'TE', N'WAS', 3.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Derek Hagan', N'WR', N'TEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Derek Watt', N'RB', N'LAC', 6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Derel Walker', N'WR', N'TBB', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Derrick Henry', N'RB', N'TEN', 104.6, 1.6)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'DeSean Jackson', N'WR', N'TBB', 106.2, 4.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Deshaun Watson', N'QB', N'HOU', 102.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'DeShone Kizer', N'QB', N'CLE', 168.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Detroit Lions', N'DEF', N'DET', 91.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Devante Mays', N'RB', N'GBP', 3.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'DeVante Parker', N'WR', N'MIA', 108.1, 5.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Devin Fuller', N'WR', N'ATL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Devin Funchess', N'WR', N'CAR', 75, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Devin Hester', N'WR', N'SEA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Devin Lucien', N'WR', N'NEP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Devin Street', N'WR', N'HOU', 0.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Devonta Freeman', N'RB', N'ATL', 190.6, 48.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Devontae Booker', N'RB', N'DEN', 54.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dexter McCluster', N'RB', N'LAC', 1.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dez Bryant', N'WR', N'DAL', 151.8, 31.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dezmin Lewis', N'WR', N'BUF', 5.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dion Lewis', N'RB', N'NEP', 68.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dion Sims', N'TE', N'CHI', 28.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dom Williams', N'WR', N'PHI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Donald Brown', N'RB', N'NEP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Donnel Pumphrey', N'RB', N'PHI', 32.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Donte Moncrief', N'WR', N'IND', 107.4, 4.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Donteea Dye', N'WR', N'TBB', 5.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dontrelle Inman', N'WR', N'LAC', 38.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Doug Baldwin', N'WR', N'SEA', 145.1, 27.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Doug Martin', N'RB', N'TBB', 105.1, 7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Drew Brees', N'QB', N'NOS', 306.2, 36.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Drew Morgan', N'WR', N'MIA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Drew Stanton', N'QB', N'ARI', 9.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'DuJuan Harris', N'RB', N'JAC', 16.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Duke Johnson', N'RB', N'CLE', 102.6, 1.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dustin Hopkins', N'K', N'WAS', 124.1, 1.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dustin Vaughan', N'QB', N'BAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dwayne Allen', N'TE', N'NEP', 44.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dwayne Bowe', N'WR', N'CLE', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dwayne Harris', N'WR', N'NYG', 8.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dwayne Washington', N'RB', N'DET', 14.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Dylan Thompson', N'QB', N'LAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'E.J. Manuel', N'QB', N'OAK', 1.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ed Dickson', N'TE', N'CAR', 16.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Eddie Lacy', N'RB', N'SEA', 119.8, 6.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Eddie Royal', N'WR', N'CHI', 13.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Eli Manning', N'QB', N'NYG', 243.3, 2.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Eli Rogers', N'WR', N'PIT', 51.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Elijah Hood', N'RB', N'OAK', 17.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Elijah McGuire', N'RB', N'NYJ', 20.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Elijhaa Penny', N'RB', N'ARI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Emmanuel Sanders', N'WR', N'DEN', 125.7, 15.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Eric Decker', N'WR', N'TEN', 109.7, 6)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Eric Ebron', N'TE', N'DET', 87.2, 3.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Eric Saubert', N'TE', N'ATL', 5.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Eric Tomlinson', N'TE', N'NYJ', 8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Eric Weems', N'WR', N'TEN', 6.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Erik Swoope', N'TE', N'IND', 47.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Evan Engram', N'TE', N'NYG', 64.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ezekiel Elliott', N'RB', N'DAL', 152.3, 49.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Fitzgerald Toussaint', N'RB', N'PIT', 13.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Fozzy Whittaker', N'RB', N'CAR', 15.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Frank Gore', N'RB', N'IND', 129.3, 10.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Frankie Hammond', N'WR', N'NYJ', 6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Fred Davis', N'TE', N'WAS', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Fred Jackson', N'RB', N'SEA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Fred Ross', N'WR', N'CAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Freddie Martino', N'WR', N'TBB', 8.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Gabe Holmes', N'TE', N'OAK', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Gabe Marks', N'WR', N'NYJ', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Garrett Celek', N'TE', N'SFO', 31.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Garrett Graham', N'TE', N'FA', 0.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Garrett Grayson', N'QB', N'NOS', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Garrett Hartley', N'K', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Gary Barnidge', N'TE', N'CLE', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Gavin Escobar', N'TE', N'KCC', 9.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Gehrig Dieter', N'WR', N'KCC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Geno Smith', N'QB', N'NYG', 6.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Geoff Swaim', N'TE', N'DAL', 8.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'George Atkinson', N'RB', N'OAK', 2.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'George Kittle', N'TE', N'SFO', 25.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'George Winn', N'RB', N'NYG', 0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Gerald Christian', N'TE', N'ARI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Gerald Everett', N'TE', N'LAR', 25.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Geremy Davis', N'WR', N'LAC', 2.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Geronimo Allison', N'WR', N'GBP', 29.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Giovani Bernard', N'RB', N'CIN', 83.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Golden Tate', N'WR', N'DET', 127.1, 17.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Graham Gano', N'K', N'CAR', 91.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Green Bay Packers', N'DEF', N'GBP', 104, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Greg Jennings', N'WR', N'MIA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Greg Olsen', N'TE', N'CAR', 121.2, 21.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Greg Salas', N'WR', N'FA', 11.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Greg Scruggs', N'TE', N'NEP', 19, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Greg Zuerlein', N'K', N'LAR', 98.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Griff Whalen', N'WR', N'BAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Hakeem Valles', N'TE', N'ARI', 5.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Harrison Butker', N'K', N'CAR', 97.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Harry Douglas', N'WR', N'TEN', 8.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Henry Krieger-Coble', N'TE', N'IND', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Houston Texans', N'DEF', N'HOU', 119.7, 3.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Hunter Henry', N'TE', N'LAC', 92.6, 6.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'I''Tavius Mathers', N'RB', N'JAC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ifeanyi Momah', N'TE', N'ARI', 6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Indianapolis Colts', N'DEF', N'IND', 97.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Isaac Fruechte', N'WR', N'MIN', 7.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Isaiah Burse', N'WR', N'LAC', 6.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Isaiah Crowell', N'RB', N'CLE', 150.9, 24.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Isaiah McKenzie', N'WR', N'DEN', 5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ishmael Zamora', N'WR', N'OAK', 9.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'J.D. McKissic', N'RB', N'SEA', -0.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'J.J. Nelson', N'WR', N'ARI', 83, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jace Amaro', N'TE', N'TEN', 10, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jace Billingsley', N'WR', N'DET', 10.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jack Doyle', N'TE', N'IND', 85.8, 3.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jacksonville Jaguars', N'DEF', N'JAC', 112.6, 2.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jacob Hollister', N'TE', N'NEP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jacob Tamme', N'TE', N'ATL', 12.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jacoby Brissett', N'QB', N'NEP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jacoby Jones', N'WR', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jacquizz Rodgers', N'RB', N'TBB', 69.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jaelen Strong', N'WR', N'HOU', 35.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jahad Thomas', N'RB', N'NYJ', -0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jake Butt', N'TE', N'DEN', 8.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jake Elliott', N'K', N'CIN', 104.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jake Lampman', N'WR', N'NOS', 8.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jake Rudock', N'QB', N'DET', 1.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jakeem Grant', N'WR', N'MIA', 3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jalen Richard', N'RB', N'OAK', 59.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jalin Marshall', N'WR', N'NYJ', 29.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jalston Fowler', N'RB', N'TEN', 5.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jamaal Charles', N'RB', N'DEN', 86.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jamaal Jones', N'WR', N'LAC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jamaal Williams', N'RB', N'GBP', 71.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jameis Winston', N'QB', N'TBB', 276.6, 18.6)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'James Casey', N'TE', N'DEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'James Conner', N'RB', N'PIT', 30.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'James Develin', N'RB', N'NEP', 3.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'James Hanna', N'TE', N'DAL', 7.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'James Jones', N'WR', N'FA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'James O''Shaughnessy', N'TE', N'NEP', 4.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'James Starks', N'RB', N'GBP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'James White', N'RB', N'NEP', 91.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'James Wright', N'WR', N'CLE', 4.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jamison Crowder', N'WR', N'WAS', 116.9, 10.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jamize Olawale', N'RB', N'OAK', 12.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jared Abbrederis', N'WR', N'DET', 6.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jared Cook', N'TE', N'OAK', 71, 1.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jared Goff', N'QB', N'LAR', 178, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jarius Wright', N'WR', N'MIN', 18.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jaron Brown', N'WR', N'ARI', 34.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jarvis Landry', N'WR', N'MIA', 120.7, 12.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jason Avant', N'WR', N'KCC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jason Myers', N'K', N'JAC', 118.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jason Witten', N'TE', N'DAL', 77.2, 1.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Javontee Herndon', N'WR', N'LAC', 14, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Javorius Allen', N'RB', N'BAL', 34.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jay Ajayi', N'RB', N'MIA', 181.7, 43.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jay Cutler', N'QB', N'MIA', 210.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jay Prosch', N'RB', N'HOU', 3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Je''Ron Hamm', N'TE', N'SFO', 2.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeff Cumberland', N'TE', N'LAC', -0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeff Driskel', N'QB', N'CIN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeff Heuerman', N'TE', N'DEN', 12, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeff Janis', N'WR', N'GBP', 8.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jehu Chesson', N'WR', N'KCC', 8.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jerell Adams', N'TE', N'NYG', 8.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeremy Butler', N'WR', N'BUF', 6.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeremy Hill', N'RB', N'CIN', 78.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeremy Kerley', N'WR', N'SFO', 57.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeremy Langford', N'RB', N'CHI', 33.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeremy Maclin', N'WR', N'BAL', 104.4, 4.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeremy McNichols', N'RB', N'TBB', 7.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeremy Ross', N'WR', N'ARI', 4.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jeremy Sprinkle', N'TE', N'WAS', 5.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jerick McKinnon', N'RB', N'MIN', 44, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jermaine Gresham', N'TE', N'ARI', 54.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jermaine Kearse', N'WR', N'SEA', 46, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jerome Felton', N'RB', N'BUF', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jerome Lane', N'WR', N'NYG', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jerome Simpson', N'WR', N'SFO', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jerricho Cotchery', N'WR', N'CAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jerrod Johnson', N'QB', N'DAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jesse James', N'TE', N'PIT', 53.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jimmy Clausen', N'QB', N'BAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jimmy Garoppolo', N'QB', N'NEP', 5.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jimmy Graham', N'TE', N'SEA', 111.4, 16.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Joe Banyard', N'RB', N'BUF', 6.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Joe Callahan', N'QB', N'GBP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Joe Flacco', N'QB', N'BAL', 229.1, 1.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Joe Kerridge', N'RB', N'GBP', 3.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Joe Mixon', N'RB', N'CIN', 138.4, 16.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Joe Webb', N'QB', N'CAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Joe Williams', N'RB', N'SFO', 53.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'John Brown', N'WR', N'ARI', 95.8, 1.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'John Crockett', N'RB', N'OAK', 3.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'John Kuhn', N'RB', N'NOS', 23.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'John Phillips', N'TE', N'NOS', 4.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'John Ross', N'WR', N'CIN', 59.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Johnny Holton', N'WR', N'OAK', 3.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Johnny Manziel', N'QB', N'CLE', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Joique Bell', N'RB', N'DET', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jonathan Grimes', N'RB', N'JAC', 12.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jonathan Krause', N'WR', N'TEN', 9.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jonathan Stewart', N'RB', N'CAR', 111.7, 2.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jonathan Williams', N'RB', N'BUF', 66.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jonnu Smith', N'TE', N'TEN', 24.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jordan Cameron', N'TE', N'FA', 12.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jordan Howard', N'RB', N'CHI', 192.8, 50)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jordan Leggett', N'TE', N'NYJ', 13.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jordan Matthews', N'WR', N'BUF', 100.6, 2.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jordan Payton', N'WR', N'CLE', 5.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jordan Reed', N'TE', N'WAS', 114.6, 17.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jordan Taylor', N'WR', N'DEN', 15.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jordan Todman', N'RB', N'HOU', 0.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jordy Nelson', N'WR', N'GBP', 174.2, 44.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Jorvorskie Lane', N'RB', N'TBB', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Bellamy', N'WR', N'CHI', 9.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Brown', N'K', N'NYG', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Doctson', N'WR', N'WAS', 68.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Ferguson', N'RB', N'IND', 6.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Freeman', N'QB', N'IND', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Gordon', N'WR', N'CLE', 0.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Hill', N'TE', N'NOS', 29.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Huff', N'WR', N'TBB', 11.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Johnson', N'QB', N'NYG', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Lambo', N'K', N'LAC', 119.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Malone', N'WR', N'CIN', 4.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh McCown', N'QB', N'NYJ', 145.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Reynolds', N'WR', N'LAR', 11.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Scobee', N'K', N'NOS', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Josh Woodrum', N'QB', N'BAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Joshua Cribbs', N'WR', N'IND', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Joshua Dobbs', N'QB', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Joshua Perkins', N'TE', N'ATL', 6.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'JuJu Smith-Schuster', N'WR', N'PIT', 30.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Julian Edelman', N'WR', N'NEP', 111.8, 7.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Julio Jones', N'WR', N'ATL', 187.8, 51.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Julius Thomas', N'TE', N'MIA', 71.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Justin Davis', N'RB', N'LAR', -0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Justin Forsett', N'RB', N'DEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Justin Hardy', N'WR', N'ATL', 30.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Justin Hunter', N'WR', N'PIT', 18.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Justin Tucker', N'K', N'BAL', 147, 9.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Juwan Thompson', N'RB', N'DEN', 5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'K.J. Maye', N'WR', N'NEP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ka''Deem Carey', N'RB', N'CHI', 11.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kaelin Clay', N'WR', N'CAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kai Forbath', N'K', N'MIN', 117.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kalif Raymond', N'WR', N'DEN', 3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kamar Aiken', N'WR', N'IND', 32, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kansas City Chiefs', N'DEF', N'KCC', 128.8, 7.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kapri Bibbs', N'RB', N'SFO', 7.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kareem Hunt', N'RB', N'KCC', 134.4, 12.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kasen Williams', N'WR', N'SEA', 2.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'KD Cannon', N'WR', N'LAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Keelan Cole', N'WR', N'JAC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Keenan Allen', N'WR', N'LAC', 125.1, 15.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Keenan Reynolds', N'WR', N'BAL', -0.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Keevan Lucas', N'WR', N'PHI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Keith Marshall', N'RB', N'WAS', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Keith Smith', N'RB', N'DAL', 2.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Keith Wenning', N'QB', N'BUF', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kellen Clemens', N'QB', N'LAC', 4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kellen Davis', N'TE', N'NYJ', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kellen Moore', N'QB', N'DAL', 5.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kellen Winslow', N'TE', N'NYJ', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kelvin Benjamin', N'WR', N'CAR', 126.4, 16.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kelvin Taylor', N'RB', N'ATL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kenbrell Thompkins', N'WR', N'NYJ', 17.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kendall Wright', N'WR', N'CHI', 64.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kendrick Bourne', N'WR', N'SFO', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kenjon Barner', N'RB', N'LAC', 11.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kenneth Dixon', N'RB', N'BAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kenneth Farrow', N'RB', N'LAC', 10.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kenny Bell', N'WR', N'BAL', 14.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kenny Britt', N'WR', N'CLE', 113, 8.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kenny Golladay', N'WR', N'DET', 67.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kenny Hilliard', N'RB', N'HOU', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kenny Lawler', N'WR', N'SEA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kenny Stills', N'WR', N'MIA', 85.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kenyan Drake', N'RB', N'MIA', 29.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Keon Hatcher', N'WR', N'OAK', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kerwynn Williams', N'RB', N'ARI', 24.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Keshawn Martin', N'WR', N'DET', 7.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kevin Hogan', N'QB', N'CLE', 4.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kevin Norwood', N'WR', N'NYG', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kevin Smith', N'WR', N'SEA', 2.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kevin White', N'WR', N'CHI', 86.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Keyarris Garrett', N'WR', N'CAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Khalfani Muhammad', N'RB', N'TEN', 5.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Khari Lee', N'TE', N'DET', 4.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Khiry Robinson', N'RB', N'FA', -1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kirk Cousins', N'QB', N'WAS', 272.7, 15.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Knile Davis', N'RB', N'PIT', 3.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Krishawn Hogan', N'WR', N'ARI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kyle Juszczyk', N'RB', N'SFO', 27.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kyle Rudolph', N'TE', N'MIN', 102.8, 10.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Kyle Sloter', N'QB', N'DEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Lamar Miller', N'RB', N'HOU', 160.8, 30.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Lance Dunbar', N'RB', N'LAR', 20, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Lance Kendricks', N'TE', N'GBP', 20.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Lance Lenoir', N'WR', N'DAL', 5.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Lance Moore', N'WR', N'ATL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Landry Jones', N'QB', N'PIT', 11.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Laquon Treadwell', N'WR', N'MIN', 47.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Larry Donnell', N'TE', N'BAL', 7.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Larry Fitzgerald', N'WR', N'ARI', 123.1, 15.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Latavius Murray', N'RB', N'MIN', 76, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Le''Veon Bell', N'RB', N'PIT', 246.1, 76.6)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Lee Smith', N'TE', N'OAK', 7.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'LeGarrette Blount', N'RB', N'PHI', 117, 5.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Leonard Fournette', N'RB', N'JAC', 166, 34.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Leonte Carroo', N'WR', N'MIA', 10.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'LeSean McCoy', N'RB', N'BUF', 199.7, 52.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Levine Toilolo', N'TE', N'ATL', 20.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Logan Paulsen', N'TE', N'SFO', 9.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Logan Thomas', N'TE', N'BUF', 5.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Lorenzo Taliaferro', N'RB', N'BAL', 8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Los Angeles Chargers', N'DEF', N'LAC', 108.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Los Angeles Rams', N'DEF', N'LAR', 102.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Louis Murphy', N'WR', N'SFO', 3.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Lucky Whitehead', N'WR', N'NYJ', 14.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Luke McCown', N'QB', N'DAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Luke Stocker', N'TE', N'TBB', 4.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Luke Willson', N'TE', N'SEA', 19.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mack Brown', N'RB', N'WAS', 7.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mack Hollins', N'WR', N'PHI', 10.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Malachi Dupre', N'WR', N'GBP', 3.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Malcolm Brown', N'RB', N'LAR', 22, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Malcolm Johnson', N'RB', N'SEA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Malcolm Mitchell', N'WR', N'NEP', 42.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marc Mariani', N'WR', N'FA', 2.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marcedes Lewis', N'TE', N'JAC', 32.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marcel Reece', N'RB', N'SEA', 19.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marcus Johnson', N'WR', N'PHI', 2.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marcus Mariota', N'QB', N'TEN', 268.2, 10.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marcus Murphy', N'RB', N'NYJ', 1.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marcus Thigpen', N'RB', N'BUF', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mario Alford', N'WR', N'CLE', 7.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mark Ingram', N'RB', N'NOS', 142.1, 18.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mark Sanchez', N'QB', N'CHI', 0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Markus Wheaton', N'WR', N'CHI', 49.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marlon Mack', N'RB', N'IND', 57, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marqise Lee', N'WR', N'JAC', 77.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'MarQueis Gray', N'TE', N'MIA', 10.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marques Colston', N'WR', N'NOS', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marquez Williams', N'RB', N'JAC', 1.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marquise Goodwin', N'WR', N'SFO', 62.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marshawn Lynch', N'RB', N'OAK', 152.7, 25.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Martavis Bryant', N'WR', N'PIT', 118.9, 11.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Martellus Bennett', N'TE', N'GBP', 95.9, 6.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Marvin Jones', N'WR', N'DET', 95.6, 1.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mason Crosby', N'K', N'GBP', 129, 1.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mason Schreck', N'TE', N'CIN', 5.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Asiata', N'RB', N'DET', 32.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Barkley', N'QB', N'SFO', 20.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Blanchard', N'QB', N'CHI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Breida', N'RB', N'SFO', 11.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Bryant', N'K', N'ATL', 136.9, 3.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Cassel', N'QB', N'TEN', 9.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Flynn', N'QB', N'NOS', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Forte', N'RB', N'NYJ', 112.2, 3.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Jones', N'RB', N'WAS', 30.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt LaCosse', N'TE', N'NYG', 3.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Lengel', N'TE', N'NEP', 7.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt McGloin', N'QB', N'PHI', 0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Moore', N'QB', N'MIA', 27.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Prater', N'K', N'DET', 131.2, 1.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Ryan', N'QB', N'ATL', 294.3, 29.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Schaub', N'QB', N'ATL', 3.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Simms', N'QB', N'ATL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Slater', N'WR', N'NEP', 0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matt Spaeth', N'TE', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matthew Dayes', N'RB', N'CLE', 4.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matthew Mulligan', N'TE', N'DET', 0.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Matthew Stafford', N'QB', N'DET', 262.8, 9.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Maurice Harris', N'WR', N'WAS', 4.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Max McCaffrey', N'WR', N'GBP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Maxx Williams', N'TE', N'BAL', 24.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Melvin Gordon', N'RB', N'LAC', 188.4, 45.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Miami Dolphins', N'DEF', N'MIA', 104.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Michael Burton', N'RB', N'CHI', 0.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Michael Campanaro', N'WR', N'BAL', 17.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Michael Clark', N'WR', N'GBP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Michael Crabtree', N'WR', N'OAK', 130.9, 18.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Michael Floyd', N'WR', N'MIN', 27.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Michael Hoomanawanui', N'TE', N'NOS', 7.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Michael Roberts', N'TE', N'DET', 11.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Michael Thomas', N'WR', N'NOS', 157.5, 35.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mike Davis', N'RB', N'SEA', 6.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mike Evans', N'WR', N'TBB', 166.7, 40)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mike Gillislee', N'RB', N'NEP', 130, 11)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mike Glennon', N'QB', N'CHI', 176.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mike James', N'RB', N'DET', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mike Nugent', N'K', N'NYG', 91.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mike Thomas', N'WR', N'LAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mike Tolbert', N'RB', N'BUF', 23.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mike Vick', N'QB', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mike Wallace', N'WR', N'BAL', 105.1, 4.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mike Williams', N'WR', N'LAC', 34.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Miles Austin', N'WR', N'PHI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Minnesota Vikings', N'DEF', N'MIN', 119.7, 4.6)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mitchell Trubisky', N'QB', N'CHI', 42.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mo Alie-Cox', N'TE', N'IND', 6.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mohamed Sanu', N'WR', N'ATL', 86.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Moritz Boehringer', N'WR', N'MIN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Mychal Rivera', N'TE', N'JAC', 30.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'MyCole Pruitt', N'TE', N'CHI', 2.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Myles White', N'WR', N'NYJ', 11.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nate Sudfeld', N'QB', N'WAS', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nate Washington', N'WR', N'NEP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nathan Peterman', N'QB', N'BUF', 8.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Neal Sterling', N'TE', N'JAC', 6.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nelson Agholor', N'WR', N'PHI', 53.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nelson Spruce', N'WR', N'LAR', 4.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'New England Patriots', N'DEF', N'NEP', 119.9, 4.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'New Orleans Saints', N'DEF', N'NOS', 89.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'New York Giants', N'DEF', N'NYG', 113.6, 3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'New York Jets', N'DEF', N'NYJ', 87, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nick Boyle', N'TE', N'BAL', 25.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nick Foles', N'QB', N'PHI', 8.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nick Folk', N'K', N'TBB', 110.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nick Novak', N'K', N'HOU', 115.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nick O''Leary', N'TE', N'BUF', 11.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nick Truesdell', N'TE', N'MIN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nick Vannett', N'TE', N'SEA', 7.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Nick Williams', N'WR', N'ATL', 10.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Niles Paul', N'TE', N'WAS', 5.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Noah Brown', N'WR', N'DAL', 7.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'O.J. Howard', N'TE', N'TBB', 66.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Oakland Raiders', N'DEF', N'OAK', 104.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Odell Beckham', N'WR', N'NYG', 175.7, 44.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Orleans Darkwa', N'RB', N'NYG', 27.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Orson Charles', N'TE', N'KCC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Owen Daniels', N'TE', N'DEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Patrick DiMarco', N'RB', N'BUF', 6.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Patrick Mahomes', N'QB', N'KCC', 14.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Paul McRoberts', N'WR', N'LAR', 2.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Paul Perkins', N'RB', N'NYG', 120.3, 6.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Paul Richardson', N'WR', N'SEA', 46.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Paul Turner', N'WR', N'PHI', 7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Paxton Lynch', N'QB', N'DEN', 48.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Percy Harvin', N'WR', N'FA', 0.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Peyton Barber', N'RB', N'TBB', 13.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Pharoh Cooper', N'WR', N'LAR', 11.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Phil Dawson', N'K', N'ARI', 110.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Philadelphia Eagles', N'DEF', N'PHI', 118.8, 4.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Philip Rivers', N'QB', N'LAC', 258.1, 9.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Phillip Dorsett', N'WR', N'IND', 45.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Phillip Supernaw', N'TE', N'TEN', 8.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Phillip Walker', N'QB', N'IND', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Pierre Garcon', N'WR', N'SFO', 110.9, 7.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Pierre Thomas', N'RB', N'WAS', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Pittsburgh Steelers', N'DEF', N'PIT', 107.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Quan Bray', N'WR', N'IND', 5.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Quincy Adeboyejo', N'WR', N'BAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Quincy Enunwa', N'WR', N'NYJ', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Quinton Patton', N'WR', N'NYJ', 12.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Raheem Mostert', N'RB', N'SFO', 3.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Randall Cobb', N'WR', N'GBP', 113.4, 8.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Randall Telfer', N'TE', N'CLE', 7.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Randy Bullock', N'K', N'CIN', 82.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rashad Greene', N'WR', N'JAC', 10.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rashad Jennings', N'RB', N'NYG', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rashad Ross', N'WR', N'SFO', 4.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rashard Higgins', N'WR', N'CLE', 19, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rashawn Scott', N'WR', N'MIA', 1.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rasheed Bailey', N'WR', N'CLE', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Reggie Bush', N'RB', N'BUF', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rex Burkhead', N'RB', N'NEP', 70.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rhett Ellison', N'TE', N'NYG', 10.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ricardo Louis', N'WR', N'CLE', 28.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Richard Rodgers', N'TE', N'GBP', 16, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ricky Seals-Jones', N'TE', N'ARI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rico Gathers', N'TE', N'DAL', 7.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Riley McCarron', N'WR', N'HOU', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rishard Matthews', N'WR', N'TEN', 102.3, 2.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rob Gronkowski', N'TE', N'NEP', 146, 35.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rob Kelley', N'RB', N'WAS', 114.2, 4.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Robbie Gould', N'K', N'SFO', 99.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Robby Anderson', N'WR', N'NYJ', 95.5, 1.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Robert Davis', N'WR', N'WAS', 7.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Robert Griffin III', N'QB', N'CLE', 1.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Robert Housler', N'TE', N'FA', 0.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Robert Tonyan', N'TE', N'DET', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Robert Turbin', N'RB', N'IND', 66.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Robert Woods', N'WR', N'LAR', 59.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Roberto Aguayo', N'K', N'CHI', 71.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rod Smith', N'RB', N'DAL', 5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rod Streater', N'WR', N'BUF', 22.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Roddy White', N'WR', N'ATL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rodney Adams', N'WR', N'MIN', 8.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Roger Lewis', N'WR', N'NYG', 17.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ronnie Hillman', N'RB', N'DAL', 10, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Roosevelt Nix', N'RB', N'PIT', 2.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ross Travis', N'TE', N'KCC', 6.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Rueben Randle', N'WR', N'CHI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Russell Hansbrough', N'RB', N'TBB', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Russell Shepard', N'WR', N'CAR', 30.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Russell Wilson', N'QB', N'SEA', 287.9, 25.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Fitzpatrick', N'QB', N'TBB', 10.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Grant', N'WR', N'WAS', 14.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Griffin', N'TE', N'HOU', 36.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Griffin', N'QB', N'TBB', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Hewitt', N'RB', N'CIN', 2.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Lindley', N'QB', N'IND', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Mallett', N'QB', N'BAL', 2.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Mathews', N'RB', N'PHI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Nassib', N'QB', N'NOS', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Succop', N'K', N'TEN', 106.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Switzer', N'WR', N'DAL', 10.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ryan Tannehill', N'QB', N'MIA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Sam Bradford', N'QB', N'MIN', 216.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Sam Rogers', N'RB', N'LAR', 1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Samaje Perine', N'RB', N'WAS', 71.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Sammie Coates', N'WR', N'PIT', 23.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Sammy Watkins', N'WR', N'LAR', 123.3, 15.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'San Francisco 49ers', N'DEF', N'SFO', 89.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'San Francisco 49ers QB', N'QB', N'SFO', 0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Scott Chandler', N'TE', N'NEP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Scott Orndoff', N'TE', N'DET', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Scott Tolzien', N'QB', N'IND', 19.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Sean Mannion', N'QB', N'LAR', 12.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Sean McGrath', N'TE', N'LAC', 4.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Sean Renfree', N'QB', N'ATL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Seantavius Jones', N'WR', N'KCC', 9.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Seattle Seahawks', N'DEF', N'SEA', 118.7, 4.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Sebastian Janikowski', N'K', N'OAK', 125.6, 1.7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Sefo Liufau', N'QB', N'TBB', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Senorise Perry', N'RB', N'MIA', 9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Seth DeValve', N'TE', N'CLE', 27.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Seth Roberts', N'WR', N'OAK', 56.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Shane Vereen', N'RB', N'NYG', 72.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Shane Wynn', N'WR', N'JAC', 6.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Shaun Draughn', N'RB', N'NYG', 16.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Shaun Hill', N'QB', N'MIN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Shaun Suisham', N'K', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Shayne Graham', N'K', N'ATL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Shelton Gibson', N'WR', N'PHI', 5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Speedy Noil', N'WR', N'SEA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Spencer Ware', N'RB', N'KCC', 115.5, 4.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Stacy Coley', N'WR', N'MIN', 5.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Stanley Williams', N'RB', N'DEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Stedman Bailey', N'WR', N'FA', 3.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Stefon Diggs', N'WR', N'MIN', 111.5, 7)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Stepfan Taylor', N'RB', N'FA', -0.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Stephen Anderson', N'TE', N'HOU', 18.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Stephen Gostkowski', N'K', N'NEP', 146.6, 9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Stephen Hauschka', N'K', N'BUF', 112.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Stephen Morris', N'QB', N'IND', 0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Sterling Shepard', N'WR', N'NYG', 89.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Stevan Ridley', N'RB', N'DEN', 3.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Steve Smith Sr.', N'WR', N'BAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Steven Jackson', N'RB', N'NEP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Stevie Johnson', N'WR', N'FA', 27.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Storm Johnson', N'RB', N'MIA', 9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'T.J. Jones', N'WR', N'DET', 19.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'T.J. Logan', N'RB', N'ARI', 2.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'T.J. Yates', N'QB', N'BUF', 4.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'T.J. Yeldon', N'RB', N'JAC', 53.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'T.Y. Hilton', N'WR', N'IND', 150.8, 30.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Taiwan Jones', N'RB', N'BUF', 4.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tajae Sharpe', N'WR', N'TEN', 17.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tajh Boyd', N'QB', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tampa Bay Buccaneers', N'DEF', N'TBB', 111.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tanner Gentry', N'WR', N'CHI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tanner McEvoy', N'WR', N'SEA', 13.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Taquan Mizzell', N'RB', N'BAL', -0.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tarik Cohen', N'RB', N'CHI', 30.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tarvaris Jackson', N'QB', N'SEA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tavarres King', N'WR', N'NYG', 12.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tavon Austin', N'WR', N'LAR', 68.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Taylor Gabriel', N'WR', N'ATL', 84.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Taylor Heinicke', N'QB', N'MIN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Taylor McNamara', N'TE', N'CLE', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Taysom Hill', N'QB', N'GBP', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Taywan Taylor', N'WR', N'TEN', 25.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ted Ginn Jr.', N'WR', N'NOS', 102, 3.4)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Teddy Bridgewater', N'QB', N'MIN', 18.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Temarrick Hemingway', N'TE', N'LAR', 6.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tennessee Titans', N'DEF', N'TEN', 102.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Terrance West', N'RB', N'BAL', 120.1, 5.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Terrance Williams', N'WR', N'DAL', 75.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Terrell Watson', N'RB', N'PIT', 6.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Terrelle Pryor', N'WR', N'WAS', 129.4, 18.8)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Terron Ward', N'RB', N'ATL', 11.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tevaun Smith', N'WR', N'IND', 8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tevin Coleman', N'RB', N'ATL', 130.3, 9.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Thaddeus Lewis', N'QB', N'BAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Theo Riddick', N'RB', N'DET', 104.2, 1.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Thomas Duarte', N'TE', N'MIA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Thomas Rawls', N'RB', N'SEA', 78.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tim Hightower', N'RB', N'SFO', 62.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tim White', N'WR', N'BAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tim Wright', N'TE', N'DET', 14.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Titus Davis', N'WR', N'CHI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Toby Gerhart', N'RB', N'JAC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Todd Gurley', N'RB', N'LAR', 168.6, 35.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tom Brady', N'QB', N'NEP', 312.1, 38.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tom Savage', N'QB', N'HOU', 115.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tommylee Lewis', N'WR', N'NOS', 6.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tony Romo', N'QB', N'DAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tony Washington', N'WR', N'JAC', 0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Torrey Smith', N'WR', N'PHI', 80.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tra Carson', N'RB', N'CIN', 2.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Travaris Cadet', N'RB', N'NOS', 16.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Travin Dural', N'WR', N'NOS', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Travis Benjamin', N'WR', N'LAC', 48.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Travis Kelce', N'TE', N'KCC', 124.2, 23.3)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Travis Rudolph', N'WR', N'NYG', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tre Madden', N'RB', N'SEA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tre Mason', N'RB', N'FA', 19.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tre McBride', N'WR', N'TEN', 5.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Trent Taylor', N'WR', N'SFO', 9.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Trevone Boykin', N'QB', N'SEA', 6.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Trevor Davis', N'WR', N'GBP', 5.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Trevor Knight', N'QB', N'ARI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Trevor Siemian', N'QB', N'DEN', 174.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Trey Burton', N'TE', N'PHI', 27, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Trey Griffey', N'WR', N'MIA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Trey Williams', N'RB', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Troy Niklas', N'TE', N'ARI', 15.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Troymaine Pope', N'RB', N'IND', 2.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Ty Montgomery', N'RB', N'GBP', 140.9, 14.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyler Boyd', N'WR', N'CIN', 52.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyler Bray', N'QB', N'KCC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyler Clutts', N'RB', N'DAL', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyler Eifert', N'TE', N'CIN', 103.6, 11.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyler Ervin', N'RB', N'HOU', 6.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyler Gaffney', N'RB', N'JAC', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyler Higbee', N'TE', N'LAR', 49, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyler Kroft', N'TE', N'CIN', 8.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyler Lockett', N'WR', N'SEA', 86.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyreek Hill', N'WR', N'KCC', 129.2, 17.9)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyrell Williams', N'WR', N'LAC', 103.4, 3.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyrod Taylor', N'QB', N'BUF', 255.8, 5.1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Tyrone Swoopes', N'TE', N'SEA', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Vance McDonald', N'TE', N'SFO', 46.4, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Vernon Davis', N'TE', N'WAS', 45.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Victor Bolden', N'WR', N'SFO', 5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Victor Cruz', N'WR', N'CHI', 32.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Vince Mayle', N'WR', N'BAL', 3.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Vincent Jackson', N'WR', N'TBB', 20.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Virgil Green', N'TE', N'DEN', 35.2, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Walter Powell', N'WR', N'BUF', 10.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Washington Redskins', N'DEF', N'WAS', 103.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Wayne Gallman', N'RB', N'NYG', 25.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Wendall Williams', N'WR', N'HOU', 7.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Wendell Smallwood', N'RB', N'PHI', 41.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Wes Saxton', N'TE', N'WAS', 0.1, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Wes Welker', N'WR', N'LAR', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Wil Lutz', N'K', N'NOS', 127.1, 1.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Will Fuller', N'WR', N'HOU', 48.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Will Tye', N'TE', N'NYG', 17.8, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Willie Snead', N'WR', N'NOS', 117.5, 12.2)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Xavier Grimble', N'TE', N'PIT', 25.6, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Zac Brooks', N'RB', N'DEN', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Zac Dysert', N'QB', N'ARI', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Zach Ertz', N'TE', N'PHI', 94.1, 6.5)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Zach Line', N'RB', N'NOS', 2.5, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Zach Mettenberger', N'QB', N'PIT', 0, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Zach Miller', N'TE', N'CHI', 64.3, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Zach Zenner', N'RB', N'DET', 43.9, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Zane Gonzalez', N'K', N'CLE', 87.7, 1)
GO
INSERT [dbo].[Players]
(
	[Name],
	[Position],
	[Team],
	[ProjectedPoints],
	[Price]
)
VALUES
(N'Zay Jones', N'WR', N'BUF', 87.8, 1.3)
GO
USE [master]
GO
ALTER DATABASE [Fantasy Football] SET READ_ONLY
GO
