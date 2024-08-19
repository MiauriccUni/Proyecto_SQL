/****** Object:  StoredProcedure [dbo].[SP_UPDATE_CLASES_GRUPALES]    Script Date: 19/08/2024 01:28:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_UPDATE_CLASES_GRUPALES]
(
    @id_clase int,
	@cupos_disponibles int
)
AS
BEGIN
    UPDATE clases_grupales
	SET cupos_disponibles = @cupos_disponibles
	WHERE id_clase = @id_clase
END
