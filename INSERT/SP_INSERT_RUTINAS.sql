/****** Object:  StoredProcedure [dbo].[SP_INSERT_RUTINAS]    Script Date: 19/08/2024 01:31:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[SP_INSERT_RUTINAS]
@id_rutina int,
@nombre_ejercicio varchar(50),
@tipos_de_ejercicio varchar (50),
@repeticiones int ,
@series int,
@id_usuario int,
@id_maquina int
as
BEGIN
SET NOCOUNT ON;
INSERT INTO [dbo].[rutinas]
([id_rutina],
[nombre_ejercicio],
[tipos_de_ejercicio],
[repeticiones],
[series],
[id_maquina],
[id_usuario]

)
SELECT 
@id_rutina,
@nombre_ejercicio,
@tipos_de_ejercicio,
@repeticiones,
@series,
@id_usuario,
@id_maquina

END