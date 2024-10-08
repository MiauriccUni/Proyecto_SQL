/****** Object:  StoredProcedure [dbo].[GET_ALL_PLANES_MENSUALES_JOIN]    Script Date: 19/08/2024 01:34:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[GET_ALL_PLANES_MENSUALES_JOIN]
as
Begin
SET NOCOUNT ON;
select 
	e.id_plan,
	e.nombre_plan,
	e.precio,
	e.cupones_descuentos_id_cupones,
	e.estado,
	e.usuarios_id_usuarios,
	u.nombre as nombre,
	u.rol as rol,
	u.correo as correo,
	cd.nombre_cupon as nombre_cupon,
	cd.descuento as descuento
from dbo.planes_mensuales e
join dbo.cupones_descuentos
cd on cd.id_cupones = e.cupones_descuentos_id_cupones
join dbo.Usuarios
u on u.id_usuarios = e.usuarios_id_usuarios
end