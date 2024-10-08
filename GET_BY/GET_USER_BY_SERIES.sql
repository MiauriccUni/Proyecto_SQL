/****** Object:  StoredProcedure [dbo].[GET_USER_BY_SERIES]    Script Date: 19/08/2024 01:30:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GET_USER_BY_SERIES]
 
	@series int
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
	u.id_rutina,
	u.repeticiones,
	u.series,
	u.nombre_ejercicio,
	u.tipos_de_ejercicio
    FROM dbo.rutinas AS u
    WHERE u.series= @series;
END