CREATE TABLE citas_de_medicion 
    (
     id_citas_medicion INTEGER NOT NULL , 
     fecha DATETIME , 
     peso VARCHAR (30) , 
     estatura VARCHAR (30) , 
     porcentage_grasa INTEGER , 
     rutinas VARCHAR (1000) , 
     rutinas_id_rutina INTEGER , 
     usuarios_id_usuarios INTEGER 
    )
GO

ALTER TABLE citas_de_medicion ADD CONSTRAINT citas_de_medicion_PK PRIMARY KEY CLUSTERED (id_citas_medicion)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE clases_grupales 
    (
     id_clase INTEGER NOT NULL , 
     nombre_clase VARCHAR (200) , 
     horarios DATETIME , 
     usuarios_id_usuarios INTEGER 
    )
GO

ALTER TABLE clases_grupales ADD CONSTRAINT clases_grupales_PK PRIMARY KEY CLUSTERED (id_clase)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE cupones_descuentos 
    (
     id_cupones INTEGER NOT NULL , 
     nombre_cupon VARCHAR (100) , 
     descuento BIGINT 
    )
GO

ALTER TABLE cupones_descuentos ADD CONSTRAINT cupones_descuentos_PK PRIMARY KEY CLUSTERED (id_cupones)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE maquina 
    (
     id_maquina INTEGER NOT NULL , 
     nombre_maquina VARCHAR (300) NOT NULL 
    )
GO

ALTER TABLE maquina ADD CONSTRAINT maquina_PK PRIMARY KEY CLUSTERED (nombre_maquina, id_maquina)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE planes_mensuales 
    (
     id_plan INTEGER NOT NULL , 
     nombre_plan VARCHAR (400) , 
     precio BIGINT , 
     cupones_descuentos_id_cupones INTEGER , 
     estado VARCHAR (120) , 
     usuarios_id_usuarios INTEGER 
    )
GO

ALTER TABLE planes_mensuales ADD CONSTRAINT planes_mensuales_PK PRIMARY KEY CLUSTERED (id_plan)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE registro_entrenamientos 
    (
     id_entrenamientos INTEGER NOT NULL , 
     repeticiones INTEGER , 
     peso INTEGER , 
     tiempo TIME , 
     rutinas_id_rutina INTEGER 
    )
GO

ALTER TABLE registro_entrenamientos ADD CONSTRAINT registro_entrenamientos_PK PRIMARY KEY CLUSTERED (id_entrenamientos)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE rutina_maquina 
    (
     id_rutina_maquina INTEGER NOT NULL , 
     rutinas_id_rutina INTEGER , 
     maquina_nombre_maquina VARCHAR (300) , 
     maquina_id_maquina INTEGER 
    )
GO

ALTER TABLE rutina_maquina ADD CONSTRAINT rutina_maquina_PK PRIMARY KEY CLUSTERED (id_rutina_maquina)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE rutinas 
    (
     id_rutina INTEGER NOT NULL , 
     nombre_ejercicio VARCHAR (50) , 
     tipos_de_ejercicio VARCHAR (30) 
    )
GO

ALTER TABLE rutinas ADD CONSTRAINT rutinas_PK PRIMARY KEY CLUSTERED (id_rutina)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Usuarios 
    (
     id_usuarios INTEGER NOT NULL , 
     nombre VARCHAR (30) , 
     apellidos VARCHAR (30) , 
     nacimiento DATE , 
     correo VARCHAR (1000) , 
     celular VARCHAR (40) , 
     contrasenna VARCHAR (1000) , 
     rol VARCHAR (40) , 
     genero VARCHAR (40) 
    )
GO

ALTER TABLE Usuarios ADD CONSTRAINT usuarios_PK PRIMARY KEY CLUSTERED (id_usuarios)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE citas_de_medicion 
    ADD CONSTRAINT citas_de_medicion_rutinas_FK FOREIGN KEY 
    ( 
     rutinas_id_rutina
    ) 
    REFERENCES rutinas 
    ( 
     id_rutina 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE citas_de_medicion 
    ADD CONSTRAINT citas_de_medicion_usuarios_FK FOREIGN KEY 
    ( 
     usuarios_id_usuarios
    ) 
    REFERENCES Usuarios 
    ( 
     id_usuarios 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE clases_grupales 
    ADD CONSTRAINT clases_grupales_usuarios_FK FOREIGN KEY 
    ( 
     usuarios_id_usuarios
    ) 
    REFERENCES Usuarios 
    ( 
     id_usuarios 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE planes_mensuales 
    ADD CONSTRAINT planes_mensuales_cupones_descuentos_FK FOREIGN KEY 
    ( 
     cupones_descuentos_id_cupones
    ) 
    REFERENCES cupones_descuentos 
    ( 
     id_cupones 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE planes_mensuales 
    ADD CONSTRAINT planes_mensuales_usuarios_FK FOREIGN KEY 
    ( 
     usuarios_id_usuarios
    ) 
    REFERENCES Usuarios 
    ( 
     id_usuarios 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE registro_entrenamientos 
    ADD CONSTRAINT registro_entrenamientos_rutinas_FK FOREIGN KEY 
    ( 
     rutinas_id_rutina
    ) 
    REFERENCES rutinas 
    ( 
     id_rutina 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE rutina_maquina 
    ADD CONSTRAINT rutina_maquina_maquina_FK FOREIGN KEY 
    ( 
     maquina_nombre_maquina, 
     maquina_id_maquina
    ) 
    REFERENCES maquina 
    ( 
     nombre_maquina , 
     id_maquina 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE rutina_maquina 
    ADD CONSTRAINT rutina_maquina_rutinas_FK FOREIGN KEY 
    ( 
     rutinas_id_rutina
    ) 
    REFERENCES rutinas 
    ( 
     id_rutina 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO
