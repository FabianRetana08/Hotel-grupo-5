-- ESTADO ------------------------------------------------------------------------
INSERT ALL
    INTO FIDE_ESTADO_TB (ID_ESTADO, ESTADO, DESCRIPCION_ESTADO) VALUES (1, 'ACTIVO', 'FORMA PARTE DE LOS DATOS VIGENTES DE LA BASE DE DATOS')
    INTO FIDE_ESTADO_TB (ID_ESTADO, ESTADO, DESCRIPCION_ESTADO) VALUES (2, 'INACTIVO', 'FORMA PARTE DE LOS DATOS NO VIGENTES DE LA BASE DE DATOS')
    INTO FIDE_ESTADO_TB (ID_ESTADO, ESTADO, DESCRIPCION_ESTADO) VALUES (3, 'HABITACION DISPONIBLE', 'ESTA HABITACION SE ENCUENTRA EN LA DISPONIBILIDAD DE SER USADA O RESERVADA')
    INTO FIDE_ESTADO_TB (ID_ESTADO, ESTADO, DESCRIPCION_ESTADO) VALUES (4, 'HABITACION RESERVADA', 'ESTA HABITACION YA SE ENCUENTRA BAJO LA RESERVA DE UN CLIENTE')
    INTO FIDE_ESTADO_TB (ID_ESTADO, ESTADO, DESCRIPCION_ESTADO) VALUES (5, 'HABITACION OCUPADA', 'ESTA HABITACION ESTA SIENDO OCUPADA AHORA MISMO POR UN CLIENTE')
    INTO FIDE_ESTADO_TB (ID_ESTADO, ESTADO, DESCRIPCION_ESTADO) VALUES (6, 'HABITACION EN MANTENIMIENTO', 'ESTA HABITACION ESTA BAJO MANTENIMIENTO DE ALGUN TIPO')
SELECT 1 FROM DUAL;

/

commit;
/
-- TIPO CLIENTE  ------------------------------------------------------------------------

INSERT ALL
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (1, 'Cliente estandar', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (2, 'Cliente VIP', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (3, 'Cliente corporativo', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (4, 'Turista nacional', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (5, 'Turista extranjero', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (6, 'Cliente con membresia Gold', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (7, 'Cliente con membresia Platinum', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (8, 'Cliente con paquete familiar', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (9, 'Cliente con paquete de luna de miel', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (10, 'Cliente corporativo internacional', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (11, 'Cliente frecuente', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (12, 'Cliente en promocion especial', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (13, 'Cliente con descuento senior', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (14, 'Cliente con reserva anticipada', 1)
    INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO) VALUES (15, 'Cliente con necesidades especiales', 1)
SELECT 1 FROM DUAL;


commit;
/

-- CLIENTE  ------------------------------------------------------------------------
INSERT ALL
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (1, 'Carlos', 'Ramirez', 'Gomez', 'carlos.ramirez@example.com', 88112233, 1, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (2, 'Maria', 'Fernandez', 'Lopez', 'maria.fernandez@example.com', 87223344, 2, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (3, 'Luis', 'Gonzalez', 'Martinez', 'luis.gonzalez@example.com', 89998877, 3, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (4, 'Ana', 'Soto', 'Rodriguez', 'ana.soto@example.com', 87887766, 4, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (5, 'Pedro', 'Vargas', 'Jimenez', 'pedro.vargas@example.com', 88994455, 5, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (6, 'Gabriela', 'Mendez', 'Salas', 'gabriela.mendez@example.com', 83334455, 6, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (7, 'Fernando', 'Castro', 'Ruiz', 'fernando.castro@example.com', 86665544, 7, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (8, 'Laura', 'Perez', 'Chacon', 'laura.perez@example.com', 87775544, 8, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (9, 'Esteban', 'Hernandez', 'Navarro', 'esteban.hernandez@example.com', 82226677, 9, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (10, 'Sofia', 'Araya', 'Cordero', 'sofia.araya@example.com', 85559911, 10, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (11, 'Jose', 'Rojas', 'Mora', 'jose.rojas@example.com', 81118899, 11, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (12, 'Daniela', 'Solano', 'Zuniga', 'daniela.solano@example.com', 82223344, 12, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (13, 'Raul', 'Garcia', 'Venegas', 'raul.garcia@example.com', 87776655, 13, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (14, 'Paula', 'Leon', 'Esquivel', 'paula.leon@example.com', 88889977, 14, 1)
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) VALUES (15, 'Andres', 'Segura', 'Diaz', 'andres.segura@example.com', 84443322, 15, 1)
SELECT 1 FROM DUAL;
/

-- PUESTO DE TRABAJO  ------------------------------------------------------------------------

INSERT ALL
    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (1, 'Recepcionista', 'Encargado de recibir a los hu?spedes, hacer check-in y check-out.', 45000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (2, 'Camarista', 'Responsable de la limpieza y mantenimiento de las habitaciones.', 30000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (3, 'Chef', 'Encargado de la preparaci?n de los alimentos en el restaurante del hotel.', 60000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (4, 'Cocinero', 'Asiste al chef en la preparaci?n de los platillos y el servicio de cocina.', 35000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (5, 'Bartender', 'Preparaci?n y servicio de bebidas en el bar del hotel.', 40000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (6, 'Mesero', 'Servicio de alimentos y bebidas a los hu?spedes en el restaurante.', 25000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (7, 'Conserje', 'Asistir a los hu?spedes con reservas, actividades y otros servicios.', 50000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (8, 'Gerente de Hotel', 'Responsable de la gesti?n y operaciones generales del hotel.', 80000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (9, 'Personal de Mantenimiento', 'Encargado del mantenimiento general de las instalaciones del hotel.', 35000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (10, 'Guardia de Seguridad', 'Asegurar la seguridad y protecci?n de los hu?spedes y el hotel.', 28000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (11, 'Director de Ventas', 'Responsable de la venta de servicios y paquetes del hotel.', 75000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (12, 'Supervisor de Pisos', 'Supervisa la limpieza y el orden de las habitaciones y ?reas comunes.', 40000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (13, 'Cajero', 'Responsable de manejar las transacciones financieras del hotel.', 32000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (14, 'Recepcionista Nocturno', 'Atiende la recepci?n durante el turno nocturno del hotel.', 27000.00, 1)

    INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO) 
    VALUES (15, 'Asistente Administrativo', 'Apoya en la gesti?n administrativa y contable del hotel.', 38000.00, 1)
SELECT 1 FROM DUAL;
/

--- PRONVICIA -----------------------------------------------------------------
INSERT ALL
    INTO FIDE_PROVINCIA_TB (ID_PROVINCIA, NOMBRE_PROVINCIA, ID_ESTADO) VALUES (1, 'San José', 1)
    INTO FIDE_PROVINCIA_TB (ID_PROVINCIA, NOMBRE_PROVINCIA, ID_ESTADO) VALUES (2, 'Alajuela', 1)
    INTO FIDE_PROVINCIA_TB (ID_PROVINCIA, NOMBRE_PROVINCIA, ID_ESTADO) VALUES (3, 'Cartago', 1)
    INTO FIDE_PROVINCIA_TB (ID_PROVINCIA, NOMBRE_PROVINCIA, ID_ESTADO) VALUES (4, 'Heredia', 1)
    INTO FIDE_PROVINCIA_TB (ID_PROVINCIA, NOMBRE_PROVINCIA, ID_ESTADO) VALUES (5, 'Guanacaste', 1)
    INTO FIDE_PROVINCIA_TB (ID_PROVINCIA, NOMBRE_PROVINCIA, ID_ESTADO) VALUES (6, 'Puntarenas', 1)
    INTO FIDE_PROVINCIA_TB (ID_PROVINCIA, NOMBRE_PROVINCIA, ID_ESTADO) VALUES (7, 'Limón', 1)
SELECT 1 FROM DUAL;
/
-- CANTON ----------------------------------------------------------------------
INSERT ALL
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (1, 'Central', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (2, 'Escazú', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (3, 'Desamparados', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (4, 'Goicoechea', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (5, 'Alajuelita', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (6, 'Santa Ana', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (7, 'Alajuela', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (8, 'San Ramón', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (9, 'Grecia', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (10, 'Atenas', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (11, 'Cartago', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (12, 'Paraíso', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (13, 'La Unión', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (14, 'Heredia', 1)
    INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO) VALUES (15, 'Santa Bárbara', 1)
SELECT 1 FROM DUAL;
/
-- DISTRITOS -------------------------------------------------------------------
INSERT ALL
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (1, 'Carmen', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (2, 'Merced', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (3, 'Hospital', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (4, 'Uruca', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (5, 'Pavas', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (6, 'Hatillo', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (7, 'San Francisco', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (8, 'San Antonio', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (9, 'San Rafael', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (10, 'Sabanilla', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (11, 'Gravilias', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (12, 'San Miguel', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (13, 'Santa Ana Centro', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (14, 'Brasil', 1)
    INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO) VALUES (15, 'Pozos', 1)
SELECT 1 FROM DUAL;

/
-- SUCURSAL  ------------------------------------------------------------------------
INSERT ALL
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (1, 22210001, 'sucursal.carmen@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (2, 22210002, 'sucursal.merced@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (3, 22210003, 'sucursal.hospital@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (4, 22210004, 'sucursal.uruca@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (5, 22210005, 'sucursal.pavas@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (6, 22210006, 'sucursal.hatillo@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (7, 22210007, 'sucursal.sanfrancisco@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (8, 22210008, 'sucursal.sanantonio@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (9, 22210009, 'sucursal.sanrafael@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (10, 22210010, 'sucursal.sabanilla@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (11, 22210011, 'sucursal.gravilias@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (12, 22210012, 'sucursal.sanmiguel@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (13, 22210013, 'sucursal.santaanacentro@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (14, 22210014, 'sucursal.brasil@fide.cr', 1)
    INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO) VALUES (15, 22210015, 'sucursal.pozos@fide.cr', 1)
SELECT 1 FROM DUAL;
/
-- DIRECCION -------------------------------------------------------------------
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (1, 'Calle 1, Barrio Carmen', 1, 1, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (2, 'Calle 2, Barrio Merced', 2, 2, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (3, 'Calle 3, Barrio Hospital', 3, 3, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (4, 'Calle 4, Barrio Uruca', 4, 4, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (5, 'Calle 5, Barrio Pavas', 5, 5, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (6, 'Calle 6, Barrio Hatillo', 6, 6, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (7, 'Calle 7, Barrio San Francisco', 7, 7, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (8, 'Calle 8, Barrio San Antonio', 8, 8, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (9, 'Calle 9, Barrio San Rafael', 9, 9, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (10, 'Calle 10, Barrio Sabanilla', 10, 10, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (11, 'Calle 11, Barrio Gravilias', 11, 11, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (12, 'Calle 12, Barrio San Miguel', 12, 12, 1, 1);

INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (13, 'Calle 13, Barrio Santa Ana Centro', 13, 13, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (14, 'Calle 14, Barrio Brasil', 14, 14, 1, 1);
/
INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO) 
VALUES (15, 'Calle 15, Barrio Pozos', 15, 15, 1, 1);

/
-- AREA DE TRABAJO  ------------------------------------------------------------------------
INSERT ALL
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (1, 'Recepción', 'Área encargada de la atención al cliente en el check-in y check-out del hotel.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (2, 'Restaurante', 'Área destinada al servicio de comidas y bebidas a los huéspedes.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (3, 'Cocina', 'Área donde se preparan los platillos para el restaurante y servicio a habitaciones.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (4, 'Bar', 'Área dedicada a la preparación de bebidas y cócteles para los huéspedes.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (5, 'Gimnasio', 'Área equipada con máquinas y equipos para la actividad física de los huéspedes.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (6, 'Spa', 'Área destinada a masajes y tratamientos de relajación para los huéspedes.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (7, 'Piscina', 'Área recreativa al aire libre donde los huéspedes pueden disfrutar de la piscina.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (8, 'Sala de Reuniones', 'Espacio destinado para la realización de eventos corporativos o sociales.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (9, 'Oficinas Administrativas', 'Área donde se gestionan las operaciones internas y administrativas del hotel.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (10, 'Mantenimiento', 'Área encargada del mantenimiento y reparaciones de las instalaciones del hotel.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (11, 'Servicio de Habitaciones', 'Área responsable de entregar alimentos, bebidas y otros servicios a las habitaciones.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (12, 'Seguridad', 'Área encargada de la seguridad y vigilancia del hotel, asegurando la protección de los huéspedes y el personal.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (13, 'Estacionamiento', 'Área destinada al aparcamiento de vehículos para huéspedes y empleados.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (14, 'Salón de Eventos', 'Espacio para la realización de bodas, conferencias y eventos especiales en el hotel.', 1)
    
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (15, 'Oficina de Gestión de Ventas', 'Área dedicada a la promoción y venta de los servicios del hotel.', 1)
SELECT 1 FROM DUAL;

/

-- EMPLEADOS  ------------------------------------------------------------------------

INSERT ALL
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (1, 'Carlos', 'Perez', 'Martinez', 'carlos.perez@hotel.com', 24350001, 1, 1, 1, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (2, 'Ana', 'Gonzalez', 'Lopez', 'ana.gonzalez@hotel.com', 24350002, 2, 2, 2, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (3, 'Luis', 'Rodriguez', 'Sanchez', 'luis.rodriguez@hotel.com', 24350003, 3, 3, 3, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (4, 'Maria', 'Fernandez', 'Gomez', 'maria.fernandez@hotel.com', 24350004, 4, 3, 4, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (5, 'Juan', 'Martinez', 'Serrano', 'juan.martinez@hotel.com', 24350005, 5, 4, 5, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (6, 'Sofia', 'Vazquez', 'Paredes', 'sofia.vazquez@hotel.com', 24350006, 6, 2, 6, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (7, 'Pedro', 'Luna', 'Reyes', 'pedro.luna@hotel.com', 24350007, 7, 1, 7, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (8, 'Isabel', 'Jimenez', 'Mora', 'isabel.jimenez@hotel.com', 24350008, 8, 9, 8, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (9, 'Felipe', 'Torres', 'Lopez', 'felipe.torres@hotel.com', 24350009, 9, 10, 9, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (10, 'Marta', 'Garcia', 'Alvarez', 'marta.garcia@hotel.com', 24350010, 10, 12, 10, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (11, 'Ricardo', 'Mendez', 'Vega', 'ricardo.mendez@hotel.com', 24350011, 11, 8, 11, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (12, 'Laura', 'Perez', 'Rios', 'laura.perez@hotel.com', 24350012, 12, 1, 12, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (13, 'Carlos', 'Moreno', 'Salazar', 'carlos.moreno@hotel.com', 24350013, 13, 11, 13, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (14, 'Paula', 'Fernandez', 'Castro', 'paula.fernandez@hotel.com', 24350014, 14, 14, 14, 1)
    
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_PUESTO_TRABAJO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (15, 'Jorge', 'Ramirez', 'Soto', 'jorge.ramirez@hotel.com', 24350015, 15, 5, 15, 1)
SELECT 1 FROM DUAL;
/
-- TIPO DE RESERVA ----------------------------------------------------------------------

INSERT ALL
    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (1, 'Reserva Est?ndar', 'Reserva b?sica para habitaci?n est?ndar con servicios comunes.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (2, 'Reserva Premium', 'Reserva para habitaci?n premium con mejores comodidades y vistas.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (3, 'Reserva Ejecutiva', 'Reserva para habitaci?n ejecutiva con escritorio de trabajo y servicios adicionales.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (4, 'Reserva Familiar', 'Reserva para habitaciones m?s grandes, ideales para familias con ni?os.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (5, 'Reserva Romance', 'Paquete para parejas con habitaciones privadas y vistas especiales.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (6, 'Reserva Corporativa', 'Tarifa especial para empresas con habitaciones c?modas para estancias de negocios.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (7, 'Reserva Todo Incluido', 'Reserva para habitaci?n con tarifa todo incluido, que cubre alojamiento y comidas.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (8, 'Reserva de Larga Estancia', 'Descuento especial para aquellos que reservan por m?s de 7 noches.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (9, 'Reserva de ?ltima Hora', 'Reserva de ?ltima hora con descuentos especiales, dependiendo de la disponibilidad.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (10, 'Reserva para Eventos', 'Reserva para hu?spedes que participan en eventos o conferencias en el hotel.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (11, 'Reserva de Suite', 'Reserva exclusiva para suites de lujo con m?s espacio y comodidades mejoradas.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (12, 'Reserva de Habitaci?n Doble', 'Reserva para habitaci?n doble con camas m?s grandes o dos camas individuales.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (13, 'Reserva de Habitaci?n Triple', 'Ideal para grupos o familias peque?as, con tres camas o m?s en la habitaci?n.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (14, 'Reserva para Grupos', 'Reserva para grupos grandes con descuento por m?ltiples habitaciones reservadas.', 1)

    INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (15, 'Reserva de Lujo', 'Reserva para habitaciones de lujo con servicios exclusivos y vistas espectaculares.', 1)
SELECT 1 FROM DUAL;


/
-- TIPO DE HABITACION ------------------------------------------------------------

INSERT ALL
    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (1, 'Habitación Sencilla', 100.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (2, 'Habitación Doble', 150.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (3, 'Habitación Triple', 180.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (4, 'Suite Ejecutiva', 300.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (5, 'Suite Presidencial', 500.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (6, 'Habitación Familiar', 220.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (7, 'Habitación Deluxe', 250.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (8, 'Habitación con Vista al Mar', 350.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (9, 'Habitación con Jacuzzi', 400.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (10, 'Habitación Loft', 280.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (11, 'Habitación con Terraza', 300.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (12, 'Habitación de Lujo', 450.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (13, 'Habitación Adaptada para Discapacitados', 170.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (14, 'Habitación Junior Suite', 350.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (15, 'Habitación Ejecutiva Doble', 220.00, 1)
SELECT 1 FROM DUAL;

/

-- HABITACION ------------------------------------------------------------------------

INSERT ALL
    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-01', 1, 1, 3)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-02', 2, 1, 4)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-03', 3, 1, 5)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-04', 4, 2, 6)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-05', 5, 2, 3)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-06', 6, 2, 4)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('2-01', 7, 3, 5)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('2-02', 8, 3, 6)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('2-03', 9, 3, 3)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('2-04', 10, 4, 4)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('2-05', 11, 4, 5)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('3-01', 12, 5, 6)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('3-02', 13, 5, 3)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('3-03', 14, 6, 4)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('3-04', 15, 6, 5)
SELECT 1 FROM DUAL;

/
-- CATEGORIA PRODUCTO ----------------------------------------------------------

INSERT ALL
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (1, 'Higiene Personal', 'Productos destinados al cuidado personal, como jabones, shampoos, cremas y dem?s art?culos de higiene.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (2, 'Productos de Limpieza', 'Productos destinados a la limpieza general del hotel, tales como detergentes, limpiadores y desinfectantes.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (3, 'Accesorios de Ba?o', 'Art?culos complementarios para el ba?o, como toallas, alfombrillas, y cortinas de ba?o.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (4, 'Mantenimiento de Habitaciones', 'Productos utilizados para el mantenimiento general de las habitaciones, incluyendo kits de reparaci?n y herramientas.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (5, 'Art?culos para Cocina', 'Utensilios y productos necesarios para mantener la cocina del hotel limpia y operativa.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (6, 'Cuidado de Ropa', 'Productos destinados al cuidado de la ropa del hotel, incluyendo detergentes y suavizantes.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (7, 'Cuidado de Piel', 'Productos para el cuidado de la piel, como cremas hidratantes, protectores solares y otros.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (8, 'Aseo de ?reas Comunes', 'Productos y equipos utilizados para la limpieza y desinfecci?n de las ?reas comunes del hotel.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (9, 'Aromatizaci?n', 'Productos y sistemas destinados a mantener el aire fresco y agradable en las instalaciones del hotel.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (10, 'Seguridad y Emergencias', 'Productos de seguridad y kits de emergencia, como extintores, primeros auxilios y otros equipos.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (11, 'Suministros de Oficina', 'Materiales de oficina necesarios para la administraci?n y operaci?n del hotel.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (12, 'Mobiliario y Decoraci?n', 'Art?culos de mobiliario y decoraci?n utilizados para embellecer y equipar las habitaciones y espacios comunes.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (13, 'Productos de Desinfecci?n', 'Productos especializados para la desinfecci?n de superficies y el control de infecciones en el hotel.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (14, 'Servicios de Tecnolog?a', 'Servicios y productos relacionados con la tecnolog?a, tales como sistemas de Wi-Fi, equipos de computaci?n y seguridad.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (15, 'Accesorios de Habitaci?n', 'Art?culos complementarios que mejoran la experiencia del hu?sped en la habitaci?n, como l?mparas, almohadas, y s?banas.', 1)
SELECT 1 FROM DUAL;
/

-- CATEGORIA PRODUCTO ----------------------------------------------------------

INSERT ALL
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (1, 'Higiene Personal', 'Productos destinados al cuidado personal, como jabones, shampoos, cremas y dem?s art?culos de higiene.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (2, 'Productos de Limpieza', 'Productos destinados a la limpieza general del hotel, tales como detergentes, limpiadores y desinfectantes.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (3, 'Accesorios de Ba?o', 'Art?culos complementarios para el ba?o, como toallas, alfombrillas, y cortinas de ba?o.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (4, 'Mantenimiento de Habitaciones', 'Productos utilizados para el mantenimiento general de las habitaciones, incluyendo kits de reparaci?n y herramientas.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (5, 'Art?culos para Cocina', 'Utensilios y productos necesarios para mantener la cocina del hotel limpia y operativa.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (6, 'Cuidado de Ropa', 'Productos destinados al cuidado de la ropa del hotel, incluyendo detergentes y suavizantes.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (7, 'Cuidado de Piel', 'Productos para el cuidado de la piel, como cremas hidratantes, protectores solares y otros.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (8, 'Aseo de ?reas Comunes', 'Productos y equipos utilizados para la limpieza y desinfecci?n de las ?reas comunes del hotel.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (9, 'Aromatizaci?n', 'Productos y sistemas destinados a mantener el aire fresco y agradable en las instalaciones del hotel.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (10, 'Seguridad y Emergencias', 'Productos de seguridad y kits de emergencia, como extintores, primeros auxilios y otros equipos.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (11, 'Suministros de Oficina', 'Materiales de oficina necesarios para la administraci?n y operaci?n del hotel.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (12, 'Mobiliario y Decoraci?n', 'Art?culos de mobiliario y decoraci?n utilizados para embellecer y equipar las habitaciones y espacios comunes.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (13, 'Productos de Desinfecci?n', 'Productos especializados para la desinfecci?n de superficies y el control de infecciones en el hotel.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (14, 'Servicios de Tecnolog?a', 'Servicios y productos relacionados con la tecnolog?a, tales como sistemas de Wi-Fi, equipos de computaci?n y seguridad.', 1)
    INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE, DESCRIPCION, ID_ESTADO) VALUES (15, 'Accesorios de Habitaci?n', 'Art?culos complementarios que mejoran la experiencia del hu?sped en la habitaci?n, como l?mparas, almohadas, y s?banas.', 1)
SELECT 1 FROM DUAL;
/

-- PROODUCTOS -------------------------------------------------------------------

INSERT ALL
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (1, 'Jabón Corporal', 'Jabón líquido para uso corporal, con propiedades hidratantes.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (2, 'Shampoo', 'Shampoo para todo tipo de cabello, con propiedades revitalizantes.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (3, 'Pasta Dental', 'Pasta dental con flúor para una limpieza profunda y protección contra caries.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (4, 'Cepillo de Dientes', 'Cepillo de dientes de cerdas suaves, ideal para encías sensibles.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (5, 'Desodorante', 'Desodorante en barra con fragancia fresca y protección de 48 horas.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (6, 'Toalla Femenina', 'Toallas femeninas ultradelgadas con gel absorbente.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (7, 'Jabón de Manos', 'Jabón líquido para manos con aroma a lavanda.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (8, 'Gel Antibacterial', 'Gel antibacterial con 70% de alcohol, elimina el 99.9% de bacterias.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (9, 'Papel Higiénico', 'Papel higiénico de doble hoja, suave y resistente.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (10, 'Toallas Húmedas', 'Toallas húmedas con aloe vera, ideales para limpieza rápida.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (11, 'Desinfectante Líquido', 'Desinfectante líquido para superficies, elimina virus y bacterias.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (12, 'Toalla de Baño', 'Toalla de baño de algodón 100%, suave y absorbente.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_SUCURSAL, ID_ESTADO)
        VALUES (13, 'Kit Básico de Higiene', 'Kit que incluye jabón, pasta dental, cepillo de dientes y toalla.', 1, 1, 1)
SELECT * FROM DUAL;

/


-- RESERVAS --------------------------------------------------------------------
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (1, 1, '1-01', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (2, 2, '1-02', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (3, 3, '1-03', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (4, 4, '1-04', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (5, 5, '1-05', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (6, 6, '1-06', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (7, 7, '2-01', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (8, 8, '2-02', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (9, 9, '2-03', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (10, 10, '2-04', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (11, 11, '2-05', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (12, 12, '3-01', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (13, 13, '3-02', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (14, 14, '3-03', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (15, 15, '3-04', TO_DATE('2025-04-19', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (16, 1, '1-01', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (17, 2, '1-02', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (18, 3, '1-03', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (19, 4, '1-04', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (20, 5, '1-05', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (21, 6, '1-06', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (22, 7, '2-01', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (23, 8, '2-02', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (24, 9, '2-03', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (25, 10, '2-04', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (26, 11, '2-05', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (27, 12, '3-01', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (28, 13, '3-02', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (29, 14, '3-03', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (30, 15, '3-04', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (31, 1, '1-01', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (32, 2, '1-02', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (33, 3, '1-03', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (34, 4, '1-04', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (35, 5, '1-05', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (36, 6, '1-06', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (37, 7, '2-01', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (38, 8, '2-02', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (39, 9, '2-03', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (40, 10, '2-04', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (41, 11, '2-05', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (42, 12, '3-01', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (43, 13, '3-02', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (44, 14, '3-03', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (45, 15, '3-04', TO_DATE('2025-04-21', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (46, 1, '1-01', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (47, 2, '1-02', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (48, 3, '1-03', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (49, 4, '1-04', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (50, 5, '1-05', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (51, 6, '1-06', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (52, 7, '2-01', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (53, 8, '2-02', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (54, 9, '2-03', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (55, 10, '2-04', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (56, 11, '2-05', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (57, 12, '3-01', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (58, 13, '3-02', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (59, 14, '3-03', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (60, 15, '3-04', TO_DATE('2025-04-22', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (61, 1, '1-01', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (62, 2, '1-02', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (63, 3, '1-03', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (64, 4, '1-04', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (65, 5, '1-05', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (66, 6, '1-06', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (67, 7, '2-01', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (68, 8, '2-02', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (69, 9, '2-03', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (70, 10, '2-04', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (71, 11, '2-05', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (72, 12, '3-01', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (73, 13, '3-02', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (74, 14, '3-03', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (75, 15, '3-04', TO_DATE('2025-04-23', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (76, 1, '1-01', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (77, 2, '1-02', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (78, 3, '1-03', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (79, 4, '1-04', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (80, 5, '1-05', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (81, 6, '1-06', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (82, 7, '2-01', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (83, 8, '2-02', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (84, 9, '2-03', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (85, 10, '2-04', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (86, 11, '2-05', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (87, 12, '3-01', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (88, 13, '3-02', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (89, 14, '3-03', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (90, 15, '3-04', TO_DATE('2025-04-24', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (91, 1, '1-01', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (92, 2, '1-02', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (93, 3, '1-03', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (94, 4, '1-04', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (95, 5, '1-05', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (96, 6, '1-06', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (97, 7, '2-01', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (98, 8, '2-02', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (99, 9, '2-03', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (100, 10, '2-04', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (101, 11, '2-05', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (102, 12, '3-01', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (103, 13, '3-02', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (104, 14, '3-03', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (105, 15, '3-04', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (106, 1, '1-01', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (107, 2, '1-02', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (108, 3, '1-03', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (109, 4, '1-04', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (110, 5, '1-05', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (111, 6, '1-06', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (112, 7, '2-01', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (113, 8, '2-02', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (114, 9, '2-03', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (115, 10, '2-04', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (116, 11, '2-05', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (117, 12, '3-01', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (118, 13, '3-02', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (119, 14, '3-03', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (120, 15, '3-04', TO_DATE('2025-04-26', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (121, 1, '1-01', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (122, 2, '1-02', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (123, 3, '1-03', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (124, 4, '1-04', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (125, 5, '1-05', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (126, 6, '1-06', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (127, 7, '2-01', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (128, 8, '2-02', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (129, 9, '2-03', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 9, 1);

INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (130, 10, '2-04', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (131, 11, '2-05', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (132, 12, '3-01', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (133, 13, '3-02', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (134, 14, '3-03', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (135, 15, '3-04', TO_DATE('2025-04-27', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (136, 1, '1-01', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (137, 2, '1-02', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (138, 3, '1-03', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (139, 4, '1-04', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (140, 5, '1-05', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (141, 6, '1-06', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (142, 7, '2-01', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (143, 8, '2-02', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (144, 9, '2-03', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (145, 10, '2-04', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (146, 11, '2-05', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (147, 12, '3-01', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (148, 13, '3-02', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (149, 14, '3-03', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (150, 15, '3-04', TO_DATE('2025-04-28', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (151, 1, '1-01', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (152, 2, '1-02', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (153, 3, '1-03', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (154, 4, '1-04', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (155, 5, '1-05', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (156, 6, '1-06', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (157, 7, '2-01', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (158, 8, '2-02', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (159, 9, '2-03', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (160, 10, '2-04', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (161, 11, '2-05', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (162, 12, '3-01', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (163, 13, '3-02', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (164, 14, '3-03', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (165, 15, '3-04', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (166, 1, '1-01', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (167, 2, '1-02', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (168, 3, '1-03', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (169, 4, '1-04', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (170, 5, '1-05', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (171, 6, '1-06', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (172, 7, '2-01', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (173, 8, '2-02', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (174, 9, '2-03', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (175, 10, '2-04', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (176, 11, '2-05', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (177, 12, '3-01', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (178, 13, '3-02', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (179, 14, '3-03', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (180, 15, '3-04', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (181, 1, '1-01', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (182, 2, '1-02', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (183, 3, '1-03', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (184, 4, '1-04', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (185, 5, '1-05', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 5, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (186, 6, '1-06', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 6, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (187, 7, '2-01', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 7, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (188, 8, '2-02', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 8, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (189, 9, '2-03', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 9, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (190, 10, '2-04', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 10, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (191, 11, '2-05', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 11, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (192, 12, '3-01', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 12, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (193, 13, '3-02', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 13, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (194, 14, '3-03', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 14, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (195, 15, '3-04', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 15, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (196, 1, '1-01', TO_DATE('2025-05-02', 'YYYY-MM-DD'), 1, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (197, 2, '1-02', TO_DATE('2025-05-02', 'YYYY-MM-DD'), 2, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (198, 3, '1-03', TO_DATE('2025-05-02', 'YYYY-MM-DD'), 3, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (199, 4, '1-04', TO_DATE('2025-05-02', 'YYYY-MM-DD'), 4, 1);
/
INSERT INTO FIDE_RESERVA_TB (NUM_RESERVA, ID_CLIENTE, ID_HABITACION, FECHA_RESERVADO, ID_TIPO_RESERVA, ID_ESTADO) 
VALUES (200, 5, '1-05', TO_DATE('2025-05-02', 'YYYY-MM-DD'), 5, 1);
/
-- DETALLE FACTURA --------------------------------------------------------------
-- Insertar en FIDE_DETALLE_FACTURA_TB
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF001', 1, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF002', 2, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF003', 3, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF004', 4, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF005', 5, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF006', 6, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF007', 7, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF008', 8, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF009', 9, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF010', 10, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF011', 11, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF012', 12, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF013', 13, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF014', 14, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF015', 15, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF016', 16, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF017', 17, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF018', 18, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF019', 19, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF020', 20, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF021', 21, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF022', 22, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF023', 23, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB 
(NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES 
('DF024', 24, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB 
(NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES 
('DF025', 25, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB 
(NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES 
('DF026', 26, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB 
(NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES 
('DF027', 27, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB 
(NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES 
('DF028', 28, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB 
(NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES 
('DF029', 29, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB 
(NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES 
('DF030', 30, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB 
(NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES 
('DF031', 31, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB 
(NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES 
('DF032', 32, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB 
(NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES 
('DF033', 33, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF034', 34, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF035', 35, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF036', 36, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF037', 37, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF038', 38, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF039', 39, 9, '2-03', 1);

INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF040', 40, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF041', 41, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF042', 42, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF043', 43, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF044', 44, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF045', 45, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF046', 46, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF047', 47, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF048', 48, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF049', 49, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF050', 50, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF051', 51, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF052', 52, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF053', 53, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF054', 54, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF055', 55, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF056', 56, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF057', 57, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF058', 58, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF059', 59, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF060', 60, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF061', 61, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF062', 62, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF063', 63, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF064', 64, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF065', 65, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF066', 66, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF067', 67, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF068', 68, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF069', 69, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF070', 70, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF071', 71, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF072', 72, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF073', 73, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF074', 74, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF075', 75, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF076', 76, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF077', 77, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF078', 78, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF079', 79, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF080', 80, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF081', 81, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF082', 82, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF083', 83, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF084', 84, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF085', 85, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF086', 86, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF087', 87, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF088', 88, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF089', 89, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF090', 90, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF091', 91, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF092', 92, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF093', 93, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF094', 94, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF095', 95, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF096', 96, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF097', 97, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF098', 98, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF099', 99, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF100', 100, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF101', 101, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF102', 102, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF103', 103, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF104', 104, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF105', 105, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF106', 106, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF107', 107, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF108', 108, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF109', 109, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF110', 110, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF111', 111, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF112', 112, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF113', 113, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF114', 114, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF115', 115, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF116', 116, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF117', 117, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF118', 118, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF119', 119, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF120', 120, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF121', 121, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF122', 122, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF123', 123, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF124', 124, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF125', 125, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF126', 126, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF127', 127, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF128', 128, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF129', 129, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF130', 130, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF131', 131, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF132', 132, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF133', 133, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF134', 134, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF135', 135, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF136', 136, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF137', 137, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF138', 138, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF139', 139, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF140', 140, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF141', 141, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF142', 142, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF143', 143, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF144', 144, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF145', 145, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF146', 146, 11, '2-05', 1);

INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF147', 147, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF148', 148, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF149', 149, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF150', 150, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF151', 151, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF152', 152, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF153', 153, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF154', 154, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF155', 155, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF156', 156, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF157', 157, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF158', 158, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF159', 159, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF160', 160, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF161', 161, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF162', 162, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF163', 163, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF164', 164, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF165', 165, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF166', 166, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF167', 167, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF168', 168, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF169', 169, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF170', 170, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF171', 171, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF172', 172, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF173', 173, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF174', 174, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF175', 175, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF176', 176, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF177', 177, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF178', 178, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF179', 179, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF180', 180, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF181', 181, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF182', 182, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF183', 183, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF184', 184, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF185', 185, 5, '1-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF186', 186, 6, '1-06', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF187', 187, 7, '2-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF188', 188, 8, '2-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF189', 189, 9, '2-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF190', 190, 10, '2-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF191', 191, 11, '2-05', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF192', 192, 12, '3-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF193', 193, 13, '3-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF194', 194, 14, '3-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF195', 195, 15, '3-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF196', 196, 1, '1-01', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF197', 197, 2, '1-02', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF198', 198, 3, '1-03', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF199', 199, 4, '1-04', 1);
/
INSERT INTO FIDE_DETALLE_FACTURA_TB (NUM_DETALLE_FACTURA, NUM_RESERVA, ID_CLIENTE, ID_HABITACION, ID_ESTADO)
VALUES ('DF200', 200, 5, '1-05', 1);

-- FACTURAS ---------------------------------------------------------------------
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F001', 1, 1, 'DF001', 1, '1-01', 90000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F002', 2, 2, 'DF002', 2, '1-02', 85000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F003', 3, 4, 'DF003', 3, '1-03', 76000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F004', 4, 6, 'DF004', 4, '1-04', 92000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F005', 5, 1, 'DF005', 5, '1-05', 87000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F006', 6, 2, 'DF006', 6, '1-06', 94000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F007', 7, 4, 'DF007', 7, '2-01', 81500.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F008', 8, 6, 'DF008', 8, '2-02', 89000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F009', 9, 1, 'DF009', 9, '2-03', 91000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F010', 10, 2, 'DF010', 10, '2-04', 76500.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F011', 11, 4, 'DF011', 11, '2-05', 93500.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F012', 12, 1, 'DF012', 12, '3-01', 45000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F013', 13, 2, 'DF013', 13, '3-02', 47000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F014', 14, 4, 'DF014', 14, '3-03', 48000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F015', 15, 6, 'DF015', 15, '3-04', 50000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F016', 1, 1, 'DF016', 16, '1-01', 60000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F017', 2, 2, 'DF017', 17, '1-02', 61000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F018', 3, 4, 'DF018', 18, '1-03', 62000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F019', 4, 6, 'DF019', 19, '1-04', 63000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F020', 5, 1, 'DF020', 20, '1-05', 64000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F021', 6, 2, 'DF021', 21, '1-06', 65000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F022', 7, 1, 'DF022', 22, '2-01', 95000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F023', 8, 2, 'DF023', 23, '2-02', 87000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F024', 9, 4, 'DF024', 24, '2-03', 102000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F025', 10, 6, 'DF025', 25, '2-04', 75000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F026', 11, 1, 'DF026', 26, '2-05', 99000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F027', 12, 2, 'DF027', 27, '3-01', 87000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F028', 13, 4, 'DF028', 28, '3-02', 110000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F029', 14, 6, 'DF029', 29, '3-03', 83000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB 
(NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F030', 15, 1, 'DF030', 30, '3-04', 91000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F031', 1, 1, 'DF031', 31, '1-01', 90000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F032', 2, 2, 'DF032', 32, '1-02', 95000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F033', 3, 4, 'DF033', 33, '1-03', 87000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F034', 4, 6, 'DF034', 34, '1-04', 91000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F035', 5, 1, 'DF035', 35, '1-05', 88000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F036', 6, 2, 'DF036', 36, '1-06', 96000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F037', 7, 4, 'DF037', 37, '2-01', 89000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F038', 8, 6, 'DF038', 38, '2-02', 93000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F039', 9, 1, 'DF039', 39, '2-03', 87000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F040', 10, 2, 'DF040', 40, '2-04', 94000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO) VALUES ('F041', 11, 4, 'DF041', 41, '2-05', 89000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F042', 12, 1, 'DF042', 42, '3-01', 85000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F043', 13, 2, 'DF043', 43, '3-02', 87000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F044', 14, 4, 'DF044', 44, '3-03', 90000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F045', 15, 6, 'DF045', 45, '3-04', 88000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F046', 1, 1, 'DF046', 46, '1-01', 92000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F047', 2, 2, 'DF047', 47, '1-02', 91000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F048', 3, 1, 'DF048', 48, '1-03', 92000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F049', 4, 2, 'DF049', 49, '1-04', 94000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F050', 5, 4, 'DF050', 50, '1-05', 96000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F051', 6, 6, 'DF051', 51, '1-06', 98000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F052', 7, 1, 'DF052', 52, '2-01', 100000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F053', 8, 2, 'DF053', 53, '2-02', 102000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F054', 9, 4, 'DF054', 54, '2-03', 104000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F055', 10, 6, 'DF055', 55, '2-04', 106000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F056', 11, 1, 'DF056', 56, '2-05', 108000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F057', 12, 1, 'DF057', 57, '3-01', 92000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F058', 13, 2, 'DF058', 58, '3-02', 94000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F059', 14, 4, 'DF059', 59, '3-03', 96000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F060', 15, 6, 'DF060', 60, '3-04', 98000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F061', 1, 1, 'DF061', 61, '1-01', 100000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F062', 2, 2, 'DF062', 62, '1-02', 102000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F063', 3, 4, 'DF063', 63, '1-03', 104000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F064', 4, 6, 'DF064', 64, '1-04', 106000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F065', 5, 1, 'DF065', 65, '1-05', 108000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F066', 6, 2, 'DF066', 66, '1-06', 110000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F067', 7, 4, 'DF067', 67, '2-01', 112000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F068', 8, 6, 'DF068', 68, '2-02', 114000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F069', 9, 1, 'DF069', 69, '2-03', 92000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F070', 10, 2, 'DF070', 70, '2-04', 94000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F071', 11, 4, 'DF071', 71, '2-05', 96000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F072', 12, 6, 'DF072', 72, '3-01', 98000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F073', 13, 1, 'DF073', 73, '3-02', 100000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F074', 14, 2, 'DF074', 74, '3-03', 102000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F075', 15, 4, 'DF075', 75, '3-04', 104000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F076', 1, 6, 'DF076', 76, '1-01', 106000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F077', 2, 1, 'DF077', 77, '1-02', 108000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F078', 3, 2, 'DF078', 78, '1-03', 110000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F079', 4, 4, 'DF079', 79, '1-04', 112000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F080', 5, 6, 'DF080', 80, '1-05', 114000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F081', 6, 1, 'DF081', 81, '1-06', 116000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F082', 7, 1, 'DF082', 82, '2-01', 92000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F083', 8, 2, 'DF083', 83, '2-02', 94000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F084', 9, 4, 'DF084', 84, '2-03', 96000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F085', 10, 6, 'DF085', 85, '2-04', 98000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F086', 11, 1, 'DF086', 86, '2-05', 100000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F087', 12, 2, 'DF087', 87, '3-01', 102000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F088', 13, 4, 'DF088', 88, '3-02', 104000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F089', 14, 6, 'DF089', 89, '3-03', 106000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F090', 15, 1, 'DF090', 90, '3-04', 108000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F091', 1, 1, 'DF091', 91, '1-01', 90000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F092', 2, 2, 'DF092', 92, '1-02', 92000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F093', 3, 4, 'DF093', 93, '1-03', 94000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F094', 4, 6, 'DF094', 94, '1-04', 96000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F095', 5, 1, 'DF095', 95, '1-05', 95000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F096', 6, 2, 'DF096', 96, '1-06', 97000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F097', 7, 4, 'DF097', 97, '2-01', 99000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F098', 8, 6, 'DF098', 98, '2-02', 101000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F099', 9, 1, 'DF099', 99, '2-03', 103000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F100', 10, 2, 'DF100', 100, '2-04', 105000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F101', 11, 4, 'DF101', 101, '2-05', 107000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F102', 12, 6, 'DF102', 102, '3-01', 109000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F103', 13, 1, 'DF103', 103, '3-02', 111000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F104', 14, 2, 'DF104', 104, '3-03', 113000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F105', 15, 4, 'DF105', 105, '3-04', 115000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F106', 1, 6, 'DF106', 106, '1-01', 90000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F107', 2, 1, 'DF107', 107, '1-02', 92000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F108', 3, 2, 'DF108', 108, '1-03', 94000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F109', 4, 1, 'DF109', 109, '1-04', 95000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F110', 5, 2, 'DF110', 110, '1-05', 96000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F111', 6, 4, 'DF111', 111, '1-06', 97000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F112', 7, 6, 'DF112', 112, '2-01', 98000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F113', 8, 1, 'DF113', 113, '2-02', 99000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F114', 9, 2, 'DF114', 114, '2-03', 100000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F115', 10, 4, 'DF115', 115, '2-04', 101000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F116', 11, 6, 'DF116', 116, '2-05', 102000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F117', 12, 1, 'DF117', 117, '3-01', 103000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F118', 13, 2, 'DF118', 118, '3-02', 104000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F119', 14, 4, 'DF119', 119, '3-03', 105000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F120', 15, 6, 'DF120', 120, '3-04', 106000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F121', 1, 1, 'DF121', 121, '1-01', 95000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F122', 2, 2, 'DF122', 122, '1-02', 96000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F123', 3, 4, 'DF123', 123, '1-03', 97000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F124', 4, 6, 'DF124', 124, '1-04', 98000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F125', 5, 1, 'DF125', 125, '1-05', 99000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F126', 6, 2, 'DF126', 126, '1-06', 100000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F127', 7, 4, 'DF127', 127, '2-01', 101000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F128', 8, 6, 'DF128', 128, '2-02', 102000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F129', 9, 1, 'DF129', 129, '2-03', 103000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F130', 10, 2, 'DF130', 130, '2-04', 104000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F131', 11, 4, 'DF131', 131, '2-05', 105000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F132', 12, 1, 'DF132', 132, '3-01', 105000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F133', 13, 2, 'DF133', 133, '3-02', 106000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F134', 14, 4, 'DF134', 134, '3-03', 107000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F135', 15, 6, 'DF135', 135, '3-04', 108000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F136', 1, 1, 'DF136', 136, '1-01', 109000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F137', 2, 2, 'DF137', 137, '1-02', 110000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F138', 3, 4, 'DF138', 138, '1-03', 111000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F139', 4, 6, 'DF139', 139, '1-04', 112000.00, 1);

/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F140', 5, 1, 'DF140', 140, '1-05', 95000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F141', 6, 2, 'DF141', 141, '1-06', 96000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F142', 7, 4, 'DF142', 142, '2-01', 97000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F143', 8, 6, 'DF143', 143, '2-02', 98000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F144', 9, 1, 'DF144', 144, '2-03', 99000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F145', 10, 2, 'DF145', 145, '2-04', 100000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F146', 11, 4, 'DF146', 146, '2-05', 101000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F147', 12, 6, 'DF147', 147, '3-01', 102000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F148', 13, 1, 'DF148', 148, '3-02', 103000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F149', 14, 2, 'DF149', 149, '3-03', 104000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F150', 15, 4, 'DF150', 150, '3-04', 105000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F151', 1, 6, 'DF151', 151, '1-01', 106000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F152', 2, 1, 'DF152', 152, '1-02', 107000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F153', 3, 1, 'DF153', 153, '1-03', 94000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F154', 4, 2, 'DF154', 154, '1-04', 95000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F155', 5, 4, 'DF155', 155, '1-05', 96000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F156', 6, 6, 'DF156', 156, '1-06', 97000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F157', 7, 1, 'DF157', 157, '2-01', 98000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F158', 8, 2, 'DF158', 158, '2-02', 99000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F159', 9, 4, 'DF159', 159, '2-03', 100000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F160', 10, 6, 'DF160', 160, '2-04', 101000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F161', 11, 1, 'DF161', 161, '2-05', 85000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F162', 12, 2, 'DF162', 162, '3-01', 92000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F163', 13, 4, 'DF163', 163, '3-02', 95000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F164', 14, 6, 'DF164', 164, '3-03', 103000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F165', 15, 1, 'DF165', 165, '3-04', 87000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F166', 1, 2, 'DF166', 166, '1-01', 100000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F167', 2, 4, 'DF167', 167, '1-02', 105000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F168', 3, 6, 'DF168', 168, '1-03', 88000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F169', 4, 1, 'DF169', 169, '1-04', 93000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F170', 5, 2, 'DF170', 170, '1-05', 80000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F171', 6, 4, 'DF171', 171, '1-06', 112000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F172', 7, 2, 'DF172', 172, '2-01', 105000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F173', 8, 6, 'DF173', 173, '2-02', 120000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F174', 9, 1, 'DF174', 174, '2-03', 98000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F175', 10, 4, 'DF175', 175, '2-04', 110000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F176', 11, 2, 'DF176', 176, '2-05', 102000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F177', 12, 6, 'DF177', 177, '3-01', 115000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F178', 13, 1, 'DF178', 178, '3-02', 105000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F179', 14, 4, 'DF179', 179, '3-03', 98000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F180', 15, 2, 'DF180', 180, '3-04', 108000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F181', 1, 1, 'DF181', 181, '1-01', 105000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F182', 2, 2, 'DF182', 182, '1-02', 110000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F183', 3, 4, 'DF183', 183, '1-03', 115000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F184', 4, 6, 'DF184', 184, '1-04', 120000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F185', 5, 1, 'DF185', 185, '1-05', 125000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F186', 6, 2, 'DF186', 186, '1-06', 130000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F187', 7, 4, 'DF187', 187, '2-01', 135000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F188', 8, 6, 'DF188', 188, '2-02', 140000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F189', 9, 1, 'DF189', 189, '2-03', 145000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F190', 10, 2, 'DF190', 190, '2-04', 150000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F191', 11, 4, 'DF191', 191, '2-05', 155000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F192', 12, 6, 'DF192', 192, '3-01', 160000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F193', 13, 1, 'DF193', 193, '3-02', 165000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F194', 14, 2, 'DF194', 194, '3-03', 170000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F195', 15, 1, 'DF195', 195, '3-04', 175000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F196', 1, 2, 'DF196', 196, '1-01', 180000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F197', 2, 4, 'DF197', 197, '1-02', 185000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F198', 3, 6, 'DF198', 198, '1-03', 190000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F199', 4, 1, 'DF199', 199, '1-04', 195000.00, 1);
/
INSERT INTO FIDE_FACTURA_TB (NUM_FACTURA, ID_CLIENTE, ID_EMPLEADO, NUM_DETALLE_FACTURA, NUM_RESERVA, ID_HABITACION, TOTAL, ID_ESTADO)
VALUES ('F200', 5, 2, 'DF200', 200, '1-05', 200000.00, 1);

/
-- DETALLE SERVICIO A LA HABITACION -----------------------------------------------

INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S001', 'Servicio de limpieza diario', 5000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S002', 'Desayuno incluido', 15000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S003', 'Servicio de lavandería', 3000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S004', 'Transporte al aeropuerto', 20000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S005', 'Alquiler de equipo de gimnasio', 10000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S006', 'Masaje relajante', 25000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S007', 'Cena especial en restaurante', 35000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S008', 'Noche de películas', 5000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S009', 'Servicio de bebidas en habitación', 15000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S010', 'Servicio de transporte privado', 30000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S011', 'Alquiler de coche', 35000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S012', 'Servicio de planchado', 2000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S013', 'Alquiler de bicicletas', 8000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S014', 'Servicio de guía turístico', 25000.00, 1);
/
INSERT INTO FIDE_DETALLE_SERVICIO_HABITACION_TB (NUM_DETALLE_SERVICIO, DESCRIPCION, PRECIO, ID_ESTADO) 
VALUES ('S015', 'Tour en barco', 50000.00, 1);

/
-- SERVICIO A LA HABITACION 

INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH001', 1, '1-01', 'S001', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH002', 2, '1-02', 'S002', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH003', 3, '1-03', 'S003', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH004', 4, '1-04', 'S004', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH005', 5, '1-05', 'S005', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH006', 6, '1-06', 'S006', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH007', 7, '2-01', 'S007', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH008', 8, '2-02', 'S008', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH009', 9, '2-03', 'S009', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH010', 10, '2-04', 'S010', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH011', 11, '2-05', 'S011', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH012', 12, '3-01', 'S012', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH013', 13, '3-02', 'S013', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH014', 14, '3-03', 'S014', 1);
/
INSERT INTO FIDE_SERVICIO_HABITACION_TB (NUM_SERVICIO_HABITACION, ID_CLIENTE, ID_HABITACION, NUM_DETALLE_SERVICIO, ID_ESTADO)
VALUES ('SH015', 15, '3-04', 'S015', 1);




