/****** Object:  StoredProcedure [dbo].[SP_GET_BY_ID]    Script Date: 19/08/2024 01:30:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_GET_BY_ID]
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
		  u.genero,
		  u.OTP,
		  u.verificar,
		  u.timeout
    FROM dbo.usuarios AS u
    WHERE u.id_usuarios = @id_usuarios;
END