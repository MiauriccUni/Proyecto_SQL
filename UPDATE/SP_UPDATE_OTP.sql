/****** Object:  StoredProcedure [dbo].[SP_UPDATE_OTP]    Script Date: 19/08/2024 01:27:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_UPDATE_OTP]
    @correo VARCHAR(255),
    @OTP int
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM [dbo].[Usuarios] WHERE [correo] = @correo)
    BEGIN
        UPDATE [dbo].[Usuarios]
        SET 
            [OTP] = @OTP
        WHERE [correo] = @correo;
    END
END
