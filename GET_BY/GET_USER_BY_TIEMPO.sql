/****** Object:  StoredProcedure [dbo].[GET_USER_BY_TIEMPO]    Script Date: 19/08/2024 01:29:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GET_USER_BY_TIEMPO]
    @repeticiones int,
	@series int,
	@peso int,
	@tiempo datetime
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
	u.id_entrenamiento,
	u.repeticiones,
	u.series,
	u.peso,
	u.tiempo
    FROM dbo.registro_entrenamientos AS u
    WHERE u.tiempo= @tiempo;
END