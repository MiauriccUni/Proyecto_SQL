/****** Object:  StoredProcedure [dbo].[SP_UPDATE_USUARIO_ROLE]    Script Date: 19/08/2024 01:26:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_UPDATE_USUARIO_ROLE]
    @id_usuarios INT,
    @rol VARCHAR(50)
AS
BEGIN
    UPDATE Usuarios
    SET rol = @rol
    WHERE id_usuarios = @id_usuarios
END

