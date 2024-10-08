/****** Object:  StoredProcedure [dbo].[SP_INSERT_USUARIOS]    Script Date: 19/08/2024 01:31:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[SP_INSERT_USUARIOS]
@id_usuarios int,
@nombre varchar(30),
@apellidos varchar(30),
@nacimiento date,
@correo varchar(1000),
@celular varchar(40),
@contrasenna varchar(1000),
@rol varchar(40),
@genero varchar(40),
@otp int,
@verificar varchar(100),
@timeout datetime
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
[genero],
[OTP],
[verificar],
[timeout])
SELECT 
@id_usuarios,
@nombre,
@apellidos,
@nacimiento,
@correo,
@celular,
@contrasenna,
@rol,
@genero,
@otp,
@verificar,
@timeout
END
