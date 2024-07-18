USE [master]
GO
/****** Object:  StoredProcedure [dbo].[GET_USER_BY_CORREO]    Script Date: 15/07/2024 11:27:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GET_USER_BY_CORREO]
    @correo varchar(1000)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
	u.id_usuarios,
	u.nombre,
	u.apellidos,
	u.nacimiento,
	u.correo,
	u.celular,
	u.contrasenna,
	u.rol,
	u.genero
    FROM dbo.usuarios AS u
    WHERE u.correo = @correo;
END