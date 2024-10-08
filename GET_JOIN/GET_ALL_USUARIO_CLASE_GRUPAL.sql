/****** Object:  StoredProcedure [dbo].[GET_ALL_USUARIO_CLASE_GRUPAL]    Script Date: 19/08/2024 01:33:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[GET_ALL_USUARIO_CLASE_GRUPAL]
as
Begin
SET NOCOUNT ON;
select 
e.id_usuario_clase,
e.id_usuario,
e.id_clas,
u.correo,
u.nombre,
c.nombre_clase,
c.horarios
FROM dbo.usuario_clase_grupal e
join Usuarios u on u.id_usuarios = e.id_usuario
join clases_grupales c on c.id_clase = e.id_clas
end