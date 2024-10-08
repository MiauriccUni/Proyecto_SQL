USE [ProyectoDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_BY_ID]    Script Date: 18/07/2024 11:59:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_GET_BY_ID]
   @id_usuarios int
AS
BEGIN
    SET NOCOUNT ON;
    SELECT u.id_usuarios,
		  u.nombre,
		  u.apellidos,
		  u.nacimiento,
		  u.correo,
		  u.celular,
		  u.contrasenna,
		  u.rol,
		  u.genero
    FROM dbo.usuarios AS u
    WHERE u.id_usuarios = @id_usuarios;
END