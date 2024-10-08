/****** Object:  StoredProcedure [dbo].[SP_UPDATE_USUARIO_CUPON]    Script Date: 19/08/2024 01:27:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_UPDATE_USUARIO_CUPON]
    @cupones_descuentos_id_cupones INT,
    @id_usuarios INT
AS
BEGIN
    -- Actualizar el cupón del usuario en la tabla planes_mensuales
    UPDATE planes_mensuales
    SET cupones_descuentos_id_cupones = @cupones_descuentos_id_cupones
    WHERE usuarios_id_usuarios = @id_usuarios;
END