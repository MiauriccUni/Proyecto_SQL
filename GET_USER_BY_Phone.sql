USE [ProyectoDB]
GO
/****** Object:  StoredProcedure [dbo].[GET_USER_BY_Phone]    Script Date: 18/07/2024 11:59:15 a. m. ******/
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
    WHERE u.celular = @celular;
END