USE [master]
GO
/****** Object:  StoredProcedure [dbo].[GET_USER_BY_CORREO]    Script Date: 16/07/2024 04:44:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GET_USER_BY_Phone]
    @celular varchar(1000)
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
    WHERE u.correo = @celular;
END