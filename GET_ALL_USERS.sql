USE [ProyectoDB]
GO
/****** Object:  StoredProcedure [dbo].[GET_ALL_USERS]    Script Date: 18/07/2024 11:58:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GET_ALL_USERS]
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
	e.genero
from dbo.Usuarios e
end