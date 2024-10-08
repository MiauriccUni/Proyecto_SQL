USE [ProyectoDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERT_Usuarios]    Script Date: 18/07/2024 11:59:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SP_INSERT_Usuarios]
@id_usuarios int,
@nombre varchar(30),
@apellidos varchar(30),
@nacimiento date,
@correo varchar(1000),
@celular varchar(40),
@contrasenna varchar(1000),
@rol varchar(40),
@genero varchar(40)
as
BEGIN
SET NOCOUNT ON;
INSERT INTO [dbo].[Usuarios]
([id_usuarios],
[nombre],
[apellidos],
[nacimiento],
[correo],
[celular],
[contrasenna],
[rol],
[genero])
SELECT 
@id_usuarios,
@nombre,
@apellidos,
@nacimiento,
@correo,
@celular,
@contrasenna,
@rol,
@genero
END
