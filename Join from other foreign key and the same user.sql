SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GET_ALL_ASIGNACION_JOIN_MODIFY]
as
Begin
SET NOCOUNT ON;
SELECT
    a.id_asignacion_cita,
	a.id_entrenador,
    c.id_citas_medicion,
	c.fechas,
    u.rol AS usuario_rol,
	u.correo as correo_cliente,
	u.nombre as nombre_cliente,
    u_entrenador.rol AS entrenador_rol,
	u_entrenador.correo as correo_entrenador,
	u_entrenador.nombre as nombre_entrenador
FROM
    asignacion_cita a
JOIN
    citas_de_medicion c ON a.id_cita = c.id_citas_medicion
JOIN
    usuarios u ON c.usuarios_id_usuarios = u.id_usuarios
JOIN
    usuarios u_entrenador ON a.id_entrenador = u_entrenador.id_usuarios
	end