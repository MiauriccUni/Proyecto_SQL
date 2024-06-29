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