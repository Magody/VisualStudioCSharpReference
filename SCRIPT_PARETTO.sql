USE [master]
GO
/****** Object:  Database [Paretto]    Script Date: 7/8/2019 15:00:03 ******/
CREATE DATABASE [Paretto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Paretto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Paretto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Paretto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Paretto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Paretto] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Paretto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Paretto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Paretto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Paretto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Paretto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Paretto] SET ARITHABORT OFF 
GO
ALTER DATABASE [Paretto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Paretto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Paretto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Paretto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Paretto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Paretto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Paretto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Paretto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Paretto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Paretto] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Paretto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Paretto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Paretto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Paretto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Paretto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Paretto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Paretto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Paretto] SET RECOVERY FULL 
GO
ALTER DATABASE [Paretto] SET  MULTI_USER 
GO
ALTER DATABASE [Paretto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Paretto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Paretto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Paretto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Paretto] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Paretto', N'ON'
GO
ALTER DATABASE [Paretto] SET QUERY_STORE = OFF
GO
USE [Paretto]
GO
/****** Object:  Table [dbo].[EspecificacionTarea]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecificacionTarea](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numero] [varchar](50) NULL,
	[numeroTarea] [int] NULL,
	[especificacion] [varchar](100) NOT NULL,
	[diaInicio] [date] NULL,
	[diaFin] [date] NOT NULL,
	[dias] [int] NULL,
	[cumplido] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioSemanal]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioSemanal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[horaInicio] [time](7) NULL,
	[horaFin] [time](7) NULL,
	[minutos] [int] NULL,
	[lunes] [varchar](20) NULL,
	[martes] [varchar](20) NULL,
	[miercoles] [varchar](20) NULL,
	[jueves] [varchar](20) NULL,
	[viernes] [varchar](20) NULL,
	[sabado] [varchar](20) NULL,
	[domingo] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarea]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarea](
	[numero] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
	[importante] [bit] NULL,
	[urgente] [bit] NULL,
	[fechaInicio] [datetime] NULL,
	[fechaFin] [datetime] NOT NULL,
	[terminada] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EspecificacionTarea] ON 

INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (2, N'1', 1, N'Consultar bootstrap', CAST(N'2019-08-07' AS Date), CAST(N'2019-08-08' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (4, N'1', 2, N'Diseñar la base y la fragmentación', CAST(N'2019-06-08' AS Date), CAST(N'2019-07-08' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (5, N'2', 2, N'Realizar Mockups y abstraccion', CAST(N'2019-07-08' AS Date), CAST(N'2019-08-08' AS Date), 1, 0)
SET IDENTITY_INSERT [dbo].[EspecificacionTarea] OFF
SET IDENTITY_INSERT [dbo].[HorarioSemanal] ON 

INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (1, CAST(N'05:00:00' AS Time), CAST(N'06:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (2, CAST(N'06:00:00' AS Time), CAST(N'07:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (3, CAST(N'07:00:00' AS Time), CAST(N'08:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (4, CAST(N'08:00:00' AS Time), CAST(N'09:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (5, CAST(N'09:00:00' AS Time), CAST(N'10:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (6, CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (7, CAST(N'11:00:00' AS Time), CAST(N'12:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (8, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (9, CAST(N'13:00:00' AS Time), CAST(N'14:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (10, CAST(N'14:00:00' AS Time), CAST(N'15:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (11, CAST(N'15:00:00' AS Time), CAST(N'16:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (12, CAST(N'16:00:00' AS Time), CAST(N'17:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (13, CAST(N'17:00:00' AS Time), CAST(N'18:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (14, CAST(N'18:00:00' AS Time), CAST(N'19:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (15, CAST(N'19:00:00' AS Time), CAST(N'20:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (16, CAST(N'20:00:00' AS Time), CAST(N'21:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (17, CAST(N'21:00:00' AS Time), CAST(N'22:00:00' AS Time), 60, N'-', N'-', N'-', N'-', N'-', N'-', N'-')
SET IDENTITY_INSERT [dbo].[HorarioSemanal] OFF
SET IDENTITY_INSERT [dbo].[Tarea] ON 

INSERT [dbo].[Tarea] ([numero], [nombre], [descripcion], [importante], [urgente], [fechaInicio], [fechaFin], [terminada]) VALUES (1, N'Consulta TCP', N'onsultar dhcp, bootstrap, VPN', 0, 1, CAST(N'2019-08-07T13:59:33.980' AS DateTime), CAST(N'2019-08-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Tarea] ([numero], [nombre], [descripcion], [importante], [urgente], [fechaInicio], [fechaFin], [terminada]) VALUES (2, N'Deber Distribuidas base cine', N'crear el Cine', 1, 1, CAST(N'2019-08-07T13:59:33.980' AS DateTime), CAST(N'2019-08-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Tarea] ([numero], [nombre], [descripcion], [importante], [urgente], [fechaInicio], [fechaFin], [terminada]) VALUES (3, N'Comprar cemento', N'Compra Cemento', 0, 0, CAST(N'2019-08-07T13:59:33.980' AS DateTime), CAST(N'2019-08-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Tarea] ([numero], [nombre], [descripcion], [importante], [urgente], [fechaInicio], [fechaFin], [terminada]) VALUES (4, N'Terminar distribuidas', N'distribuidas', 1, 0, CAST(N'2019-08-07T13:59:33.980' AS DateTime), CAST(N'2019-08-10T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Tarea] OFF
ALTER TABLE [dbo].[EspecificacionTarea] ADD  DEFAULT (getdate()) FOR [diaInicio]
GO
ALTER TABLE [dbo].[EspecificacionTarea] ADD  DEFAULT ((1)) FOR [dias]
GO
ALTER TABLE [dbo].[EspecificacionTarea] ADD  DEFAULT ((0)) FOR [cumplido]
GO
ALTER TABLE [dbo].[HorarioSemanal] ADD  DEFAULT ((60)) FOR [minutos]
GO
ALTER TABLE [dbo].[Tarea] ADD  DEFAULT ((0)) FOR [importante]
GO
ALTER TABLE [dbo].[Tarea] ADD  DEFAULT ((0)) FOR [urgente]
GO
ALTER TABLE [dbo].[Tarea] ADD  DEFAULT (getdate()) FOR [fechaInicio]
GO
ALTER TABLE [dbo].[Tarea] ADD  DEFAULT ((0)) FOR [terminada]
GO
ALTER TABLE [dbo].[EspecificacionTarea]  WITH CHECK ADD FOREIGN KEY([numeroTarea])
REFERENCES [dbo].[Tarea] ([numero])
GO
/****** Object:  StoredProcedure [dbo].[actualizarOCrearEspecificacion]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[actualizarOCrearEspecificacion]
@id int,
@numero int,
@numeroTarea int,
@especificacion varchar(50),
@diaInicio date,
@diaFin date,
@dias int,
@cumplido bit
as
begin


if @id = -1
    --Significa que no existe
	insert into EspecificacionTarea values(@numero, @numeroTarea, @especificacion, @diaInicio, @diaFin, @dias, @cumplido)
else
	update EspecificacionTarea set especificacion = @especificacion, diaInicio = @diaInicio, diaFin = @diaFin,
	dias = @dias, cumplido = @cumplido, numero = @numero
	where id = @id;

	if '0' not in(select cumplido from EspecificacionTarea where numeroTarea = @numeroTarea)
		update Tarea set terminada = 1 where numero = @numeroTarea
	else
		print('AUN NO SE HA CUMPLIDO TODO')
end
GO
/****** Object:  StoredProcedure [dbo].[actualizarOCrearHorario]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[actualizarOCrearHorario]
@id int,
@horaInicio time,
@horaFin time,
@minutos int,
@lunes varchar(20),
@martes varchar(20),
@miercoles varchar(20),
@jueves varchar(20),
@viernes varchar(20),
@sabado varchar(20),
@domingo varchar(20)
as
begin
if @id = -1
    --Significa que no existe
	insert into HorarioSemanal(horaInicio, horaFin, minutos, lunes,martes,miercoles,jueves,viernes,sabado,domingo) 
	values(@horaInicio,@horaFin,@minutos,@lunes,@martes,@miercoles,@jueves,@viernes,@sabado,@domingo);

else
	update HorarioSemanal set horaInicio = @horaInicio, horaFin = @horaFin, minutos = @minutos,
	lunes = @lunes, martes = @martes,miercoles = @miercoles, jueves = @jueves,viernes = @viernes,
	sabado = @sabado, domingo = @domingo
	where id = @id;
end
GO
/****** Object:  StoredProcedure [dbo].[actualizarOCrearTarea]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[actualizarOCrearTarea]
@numero int,
@nombre varchar(50),
@descripcion varchar(50),
@importante bit,
@urgente bit,
@fechaInicio datetime,
@fechaFin datetime
as
begin

if @numero = -1
    --Significa que no existe
	insert into Tarea(nombre,descripcion,importante,urgente, fechaInicio, fechaFin) values(@nombre,@descripcion,@importante,@urgente,@fechaInicio,@fechaFin);
else
	update Tarea set nombre = @nombre, descripcion = @descripcion, importante = @importante, urgente = @urgente, fechaInicio = @fechaInicio, fechaFin = @fechaFin
	where numero = @numero;

end
GO
/****** Object:  StoredProcedure [dbo].[buscarTareaLikeNombre]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[buscarTareaLikeNombre]
@nombre varchar(50)
as
begin
select * from Tarea where nombre like @nombre+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[consultarEspecificacionesDeTareas]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[consultarEspecificacionesDeTareas]
@numeroTarea int
as
begin
select * from EspecificacionTarea
where numeroTarea = @numeroTarea
order by EspecificacionTarea.numero asc;
end
GO
/****** Object:  StoredProcedure [dbo].[consultarHorario]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[consultarHorario]
as
begin
select * from HorarioSemanal;

end
GO
/****** Object:  StoredProcedure [dbo].[consultarTareas]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[consultarTareas]
as
begin
select * from Tarea where terminada = 0;
end
GO
/****** Object:  StoredProcedure [dbo].[consultarTareasAtrasadas]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[consultarTareasAtrasadas]
@fechaHoy varchar(11)
as
begin
select * from Tarea where fechaFin < @fechaHoy and terminada = 0;
end
GO
/****** Object:  StoredProcedure [dbo].[consultarTareasHoy]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[consultarTareasHoy]
@fechaHoy varchar(11)
as
begin
select * from Tarea where fechaFin > @fechaHoy and terminada = 0;
end
GO
/****** Object:  StoredProcedure [dbo].[consultarTareasImportantesYNoUrgentes]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[consultarTareasImportantesYNoUrgentes]
as
select nombre, numero, fechaInicio, fechaFin from Tarea where importante = 1 and urgente = 0 and terminada = 0;

GO
/****** Object:  StoredProcedure [dbo].[consultarTareasImportantesYUrgentes]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[consultarTareasImportantesYUrgentes]
as
select nombre, numero, fechaInicio, fechaFin from Tarea where importante = 1 and urgente = 1 and terminada = 0;

GO
/****** Object:  StoredProcedure [dbo].[consultarTareasNoImportantesYNoUrgentes]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[consultarTareasNoImportantesYNoUrgentes]
as
select nombre, numero, fechaInicio, fechaFin from Tarea where importante = 0 and urgente = 0 and terminada = 0;

GO
/****** Object:  StoredProcedure [dbo].[consultarTareasNoImportantesYUrgentes]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[consultarTareasNoImportantesYUrgentes]
as
select nombre, numero, fechaInicio, fechaFin from Tarea where importante = 0 and urgente = 1 and terminada = 0;

GO
/****** Object:  StoredProcedure [dbo].[eliminarEspecificacion]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarEspecificacion]
@id int
as
begin
delete from EspecificacionTarea where id = @id;

end
GO
/****** Object:  StoredProcedure [dbo].[eliminarHorario]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarHorario]
@id int
as
begin
delete from HorarioSemanal where id = @id;
end
GO
/****** Object:  StoredProcedure [dbo].[eliminarTarea]    Script Date: 7/8/2019 15:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[eliminarTarea]
@numero int
as
begin
delete from EspecificacionTarea where numeroTarea = @numero;
delete from Tarea where numero = @numero;
end

GO
USE [master]
GO
ALTER DATABASE [Paretto] SET  READ_WRITE 
GO
