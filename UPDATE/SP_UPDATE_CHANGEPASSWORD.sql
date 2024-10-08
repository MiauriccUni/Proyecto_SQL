/****** Object:  StoredProcedure [dbo].[SP_CHANGEPASSWORD]    Script Date: 19/08/2024 01:28:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[SP_CHANGEPASSWORD]
	@correo VARCHAR(100),
    @contrasenna VARCHAR(100)
    
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM [dbo].[Usuarios] WHERE [correo] = @correo)
    BEGIN
        UPDATE [dbo].[Usuarios]
        SET 
            [contrasenna] = @contrasenna
        WHERE [correo] = @correo;
    END
END