/****** Object:  StoredProcedure [dbo].[GET_USER_BY_RUTINATIPO]    Script Date: 19/08/2024 01:30:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GET_USER_BY_RUTINATIPO]
    @tipos_de_ejercicio varchar(1000)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
	u.id_rutina,
	u.tipos_de_ejercicio,
u.nombre_ejercicio
    FROM dbo.rutinas AS u
    WHERE u.tipos_de_ejercicio = @tipos_de_ejercicio;
END