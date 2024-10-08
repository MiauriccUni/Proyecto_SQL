/****** Object:  StoredProcedure [dbo].[SP_UPDATE_USUARIOS]    Script Date: 19/08/2024 01:24:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_UPDATE_USUARIOS]
    @correo VARCHAR(255),
    @verificar VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM [dbo].[Usuarios] WHERE [correo] = @correo)
    BEGIN
        UPDATE [dbo].[Usuarios]
        SET 
            [verificar] = @verificar
        WHERE [correo] = @correo;
    END
END
