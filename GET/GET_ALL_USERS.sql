/****** Object:  StoredProcedure [dbo].[GET_ALL_USERS]    Script Date: 19/08/2024 01:33:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[GET_ALL_USERS]
as
Begin
SET NOCOUNT ON;
select 
	e.id_usuarios,
	e.nombre,
	e.apellidos,
	e.nacimiento,
	e.correo,
	e.celular,
	e.contrasenna,
	e.rol,
	e.genero,
	e.OTP,
	e.verificar,
	e.timeout
from dbo.Usuarios e
end