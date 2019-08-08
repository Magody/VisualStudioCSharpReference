USE [master]
GO
/****** Object:  Database [Paretto]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  Table [dbo].[EspecificacionTarea]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  Table [dbo].[HorarioSemanal]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  Table [dbo].[Tarea]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 7/8/2019 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[nombreUsuario] [varchar](20) NOT NULL,
	[contrasenia] [varchar](33) NULL,
PRIMARY KEY CLUSTERED 
(
	[nombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EspecificacionTarea] ON 

INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (20, N'1', 16, N'Analizar el esquema y realizar mockups de las pant', CAST(N'2019-08-07' AS Date), CAST(N'2019-08-08' AS Date), 1, 1)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (21, N'2', 16, N'Realizar la fragmentación, replicación y transacci', CAST(N'2019-08-08' AS Date), CAST(N'2019-08-09' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (22, N'3', 16, N'Terminar las pantallas y definir procedimientos al', CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (23, N'4', 16, N'Realizar las vistas particionadas. Guayaquil. Leva', CAST(N'2019-08-10' AS Date), CAST(N'2019-08-11' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (24, N'5', 16, N'Realizar el informe', CAST(N'2019-08-11' AS Date), CAST(N'2019-08-12' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (31, N'1', 20, N'dar la opción de autogenerar campos de 1 dia para ', CAST(N'2019-08-07' AS Date), CAST(N'2019-08-08' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (32, N'4', 20, N'limitar el tiempo cuando nos queramos pasar', CAST(N'2019-08-10' AS Date), CAST(N'2019-08-11' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (33, N'5', 20, N'agregar el día de la semana a las fechas', CAST(N'2019-08-11' AS Date), CAST(N'2019-08-12' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (34, N'6', 20, N'agrandar la pantalla', CAST(N'2019-08-12' AS Date), CAST(N'2019-08-13' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (35, N'7', 20, N'dejar marcado el botón/módulo en el que actualment', CAST(N'2019-08-13' AS Date), CAST(N'2019-08-14' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (36, N'9', 20, N'crear un calendario específico para días festivos', CAST(N'2019-08-15' AS Date), CAST(N'2019-08-16' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (37, N'10', 20, N'desabilitar el n+umero (visibilidad) cuando esté e', CAST(N'2019-08-16' AS Date), CAST(N'2019-08-17' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (38, N'11', 20, N'añadir un handler que controle la cantidad de cara', CAST(N'2019-08-17' AS Date), CAST(N'2019-08-18' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (39, N'15', 20, N'Corregir el paso de la fecha inicial de golpe, al ', CAST(N'2019-08-21' AS Date), CAST(N'2019-08-22' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (40, N'1', 21, N'Recopilar Cursos y tecnicas', CAST(N'2019-08-08' AS Date), CAST(N'2019-08-10' AS Date), 2, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (41, N'3', 20, N'Realizar informe', CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (42, N'1', 23, N'Aprender sobre la plataforma y elegir el método', CAST(N'2019-08-12' AS Date), CAST(N'2019-08-13' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (43, N'2', 23, N'Realizar el entrenamiento', CAST(N'2019-08-13' AS Date), CAST(N'2019-08-14' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (44, N'3', 23, N'Personalizarlo y Documentar lo importante', CAST(N'2019-08-14' AS Date), CAST(N'2019-08-15' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (45, N'16', 20, N'Aumentar caracteres que admite la base', CAST(N'2019-08-22' AS Date), CAST(N'2019-08-23' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (46, N'2', 20, N'Enlazar las tareas de hoy con sus especificaciones', CAST(N'2019-08-08' AS Date), CAST(N'2019-08-09' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (47, N'12', 20, N'Ordenar las consultas por numero para no realizar ', CAST(N'2019-08-18' AS Date), CAST(N'2019-08-19' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (48, N'13', 20, N'En HOY, mostrar directamente las especificaciones', CAST(N'2019-08-19' AS Date), CAST(N'2019-08-20' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (49, N'14', 20, N'alternar con pestañas las especificaciones y tarea', CAST(N'2019-08-20' AS Date), CAST(N'2019-08-21' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (50, N'8', 20, N'Empaquetar con la base de datos, la aplicación', CAST(N'2019-08-14' AS Date), CAST(N'2019-08-15' AS Date), 1, 0)
INSERT [dbo].[EspecificacionTarea] ([id], [numero], [numeroTarea], [especificacion], [diaInicio], [diaFin], [dias], [cumplido]) VALUES (51, N'17', 20, N'Corregir el bug de mostrar inicio cuando debe o no', CAST(N'2019-08-23' AS Date), CAST(N'2019-08-24' AS Date), 1, 0)
SET IDENTITY_INSERT [dbo].[EspecificacionTarea] OFF
SET IDENTITY_INSERT [dbo].[HorarioSemanal] ON 

INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (1, CAST(N'05:00:00' AS Time), CAST(N'06:00:00' AS Time), 60, N'Magia', N'Magia', N'Magia', N'Magia', N'Magia', N'Magia', N'Magia')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (2, CAST(N'06:00:00' AS Time), CAST(N'08:00:00' AS Time), 120, N'Su nombre', N'Su nombre', N'Su nombre', N'Su nombre', N'Su nombre', N'Su nombre', N'Su nombre')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (3, CAST(N'08:00:00' AS Time), CAST(N'09:00:00' AS Time), 60, N'Magia', N'Magia', N'Magia', N'Magia', N'Magia', N'Magia', N'Magia')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (4, CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 480, N'LIBRE-TAREAS', N'LIBRE-TAREAS', N'LIBRE-TAREAS', N'LIBRE-TAREAS', N'LIBRE-TAREAS', N'LIBRE-TAREAS', N'LIBRE-TAREAS')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (5, CAST(N'17:00:00' AS Time), CAST(N'19:00:00' AS Time), 120, N'Ayudar', N'Ayudar', N'Ayudar', N'Ayudar', N'Ayudar', N'Ayudar', N'Ayudar')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (6, CAST(N'19:00:00' AS Time), CAST(N'20:00:00' AS Time), 60, N'Magia', N'Magia', N'Magia', N'Magia', N'Magia', N'Magia', N'Magia')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (7, CAST(N'20:00:00' AS Time), CAST(N'21:00:00' AS Time), 60, N'Su nombre', N'Su nombre', N'Su nombre', N'Su nombre', N'Su nombre', N'Su nombre', N'Su nombre')
INSERT [dbo].[HorarioSemanal] ([id], [horaInicio], [horaFin], [minutos], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domingo]) VALUES (8, CAST(N'21:00:00' AS Time), CAST(N'22:00:00' AS Time), 60, N'Magia', N'Magia', N'Magia', N'Magia', N'Magia', N'Magia', N'Magia')
SET IDENTITY_INSERT [dbo].[HorarioSemanal] OFF
SET IDENTITY_INSERT [dbo].[Tarea] ON 

INSERT [dbo].[Tarea] ([numero], [nombre], [descripcion], [importante], [urgente], [fechaInicio], [fechaFin], [terminada]) VALUES (16, N'PROYECTO: DDBS', N'Aplicación completa con los conceptos de clase', 1, 1, CAST(N'2019-08-07T19:50:56.000' AS DateTime), CAST(N'2019-08-11T19:50:56.000' AS DateTime), 0)
INSERT [dbo].[Tarea] ([numero], [nombre], [descripcion], [importante], [urgente], [fechaInicio], [fechaFin], [terminada]) VALUES (20, N'APP: ParetoKin', N'Aplicación para ayudar a la productividad', 0, 0, CAST(N'2019-08-08T20:15:47.000' AS DateTime), CAST(N'2019-08-14T20:15:47.000' AS DateTime), 0)
INSERT [dbo].[Tarea] ([numero], [nombre], [descripcion], [importante], [urgente], [fechaInicio], [fechaFin], [terminada]) VALUES (21, N'Hablar ingles', N'Dominar la fluidez de ingles', 1, 0, CAST(N'2019-08-08T20:24:07.000' AS DateTime), CAST(N'2019-09-08T20:24:07.000' AS DateTime), 0)
INSERT [dbo].[Tarea] ([numero], [nombre], [descripcion], [importante], [urgente], [fechaInicio], [fechaFin], [terminada]) VALUES (22, N'Inversión', N'Dominar: divisas, acciones y comodities', 1, 0, CAST(N'2019-08-08T20:27:11.000' AS DateTime), CAST(N'2019-11-08T20:27:11.000' AS DateTime), 0)
INSERT [dbo].[Tarea] ([numero], [nombre], [descripcion], [importante], [urgente], [fechaInicio], [fechaFin], [terminada]) VALUES (23, N'PROYECTO: ChatBot de mi', N'IA de chatbot', 0, 0, CAST(N'2019-08-12T20:29:12.000' AS DateTime), CAST(N'2019-08-15T20:29:12.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Tarea] OFF
INSERT [dbo].[Usuario] ([nombreUsuario], [contrasenia]) VALUES (N'Magody', N'FF9830C42660C1DD1942844F8069B74A')
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
/****** Object:  StoredProcedure [dbo].[actualizarOCrearEspecificacion]    Script Date: 7/8/2019 20:52:56 ******/
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
	begin
		update EspecificacionTarea set especificacion = @especificacion, diaInicio = @diaInicio, diaFin = @diaFin,
		dias = @dias, cumplido = @cumplido, numero = @numero
		where id = @id;

		if '0' not in(select cumplido from EspecificacionTarea where numeroTarea = @numeroTarea)
			update Tarea set terminada = 1 where numero = @numeroTarea
		else
			print('AUN NO SE HA CUMPLIDO TODO')
	end
end
GO
/****** Object:  StoredProcedure [dbo].[actualizarOCrearHorario]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  StoredProcedure [dbo].[actualizarOCrearTarea]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  StoredProcedure [dbo].[buscarTareaLikeNombre]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  StoredProcedure [dbo].[consultarEspecificacionesDeTareas]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  StoredProcedure [dbo].[consultarHorario]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  StoredProcedure [dbo].[consultarTareas]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  StoredProcedure [dbo].[consultarTareasAtrasadas]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  StoredProcedure [dbo].[consultarTareasHoy]    Script Date: 7/8/2019 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[consultarTareasHoy]
@fechaHoy varchar(11)
as
begin
select * from Tarea where fechaFin > @fechaHoy + ' 00:00:00' and fechaInicio < @fechaHoy+' 23:59:59' and terminada = 0;
end
GO
/****** Object:  StoredProcedure [dbo].[consultarTareasImportantesYNoUrgentes]    Script Date: 7/8/2019 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[consultarTareasImportantesYNoUrgentes]
as
select nombre, numero, fechaInicio, fechaFin from Tarea where importante = 1 and urgente = 0 and terminada = 0;

GO
/****** Object:  StoredProcedure [dbo].[consultarTareasImportantesYUrgentes]    Script Date: 7/8/2019 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[consultarTareasImportantesYUrgentes]
as
select nombre, numero, fechaInicio, fechaFin from Tarea where importante = 1 and urgente = 1 and terminada = 0;

GO
/****** Object:  StoredProcedure [dbo].[consultarTareasNoImportantesYNoUrgentes]    Script Date: 7/8/2019 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[consultarTareasNoImportantesYNoUrgentes]
as
select nombre, numero, fechaInicio, fechaFin from Tarea where importante = 0 and urgente = 0 and terminada = 0;

GO
/****** Object:  StoredProcedure [dbo].[consultarTareasNoImportantesYUrgentes]    Script Date: 7/8/2019 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[consultarTareasNoImportantesYUrgentes]
as
select nombre, numero, fechaInicio, fechaFin from Tarea where importante = 0 and urgente = 1 and terminada = 0;

GO
/****** Object:  StoredProcedure [dbo].[consultarUsuario]    Script Date: 7/8/2019 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[consultarUsuario]
@nombreUsuario varchar(20)
as
begin
if exists(select * from Usuario where nombreUsuario = @nombreUsuario)
	begin
		select contrasenia from Usuario where nombreUsuario = @nombreUsuario;
	end
else
	return 0

end
GO
/****** Object:  StoredProcedure [dbo].[eliminarEspecificacion]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  StoredProcedure [dbo].[eliminarHorario]    Script Date: 7/8/2019 20:52:56 ******/
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
/****** Object:  StoredProcedure [dbo].[eliminarTarea]    Script Date: 7/8/2019 20:52:56 ******/
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
