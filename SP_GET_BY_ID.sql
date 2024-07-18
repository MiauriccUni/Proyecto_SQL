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