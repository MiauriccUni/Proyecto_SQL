/****** Object:  StoredProcedure [dbo].[SP_UPDATE_CUPOS_CLASES]    Script Date: 19/08/2024 01:28:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_UPDATE_CUPOS_CLASES]
@id_clase int,
@cupos_disponibles int
as 
begin 
UPdate clases_grupales
set cupos_disponibles = @cupos_disponibles
where id_clase = @id_clase
end