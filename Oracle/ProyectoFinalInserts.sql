-- ESTADO ------------------------------------------------------------------------
INSERT ALL 
INTO FIDE_ESTADO_TB(
    ID_ESTADO, 
    ESTADO,
    DESCRIPCION_ESTADO)
VALUES (
    1,
    'ACTIVO',
    'FORMA PARTE DE LOS DATOS VIGENTES DE LA BASE DE DATOS')
INTO FIDE_ESTADO_TB(
    ID_ESTADO, 
    ESTADO,
    DESCRIPCION_ESTADO)
VALUES (
    2,
    'INACTIVO',
    'FORMA PARTE DE LOS DATOS NO VIGENTES DE LA BASE DE DATOS')
INTO FIDE_ESTADO_TB(
    ID_ESTADO, 
    ESTADO,
    DESCRIPCION_ESTADO)
VALUES (
    3,
    'HABITACION DISPONIBLE',
    'ESTA HABITACION SE ENCUENTRA EN LA DISPONIBILIDAD DE SER USADA O RESERVADA')
INTO FIDE_ESTADO_TB(
    ID_ESTADO, 
    ESTADO,
    DESCRIPCION_ESTADO)
VALUES (
    4,
    'HABITACION RESERVADA',
    'ESTA HABITACION YA SE ENCUENTRA BAJO LA RESERVA DE UN CLIENTE')
INTO FIDE_ESTADO_TB(
    ID_ESTADO, 
    ESTADO,
    DESCRIPCION_ESTADO)
VALUES (
    5,
    'HABITACION OCUPADA',
    'ESTA HABITACION ESTA SIENDO OCUPADA AHORA MISMO POR UN CLIENTE')
    INTO FIDE_ESTADO_TB(
    ID_ESTADO, 
    ESTADO,
    DESCRIPCION_ESTADO)
VALUES (
    6,
    'HABITACION EN MANTENIMIENTO',
    'ESTA HABITACION ESTA BAJO MANTENIMIENTO DE ALGUN TIPO')
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

DELETE 

commit;
/

-- CLIENTE  ------------------------------------------------------------------------

INSERT ALL
    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (1, 'Carlos', 'Ramirez', 'Gomez', 'carlos.ramirez@example.com', 88112233, 1, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (2, 'Maria', 'Fernandez', 'Lopez', 'maria.fernandez@example.com', 87223344, 2, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (3, 'Luis', 'Gonzalez', 'Martinez', 'luis.gonzalez@example.com', 89998877, 3, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (4, 'Ana', 'Soto', 'Rodriguez', 'ana.soto@example.com', 87887766, 4, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (5, 'Pedro', 'Vargas', 'Jimenez', 'pedro.vargas@example.com', 88994455, 5, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (6, 'Gabriela', 'Mendez', 'Salas', 'gabriela.mendez@example.com', 83334455, 6, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (7, 'Fernando', 'Castro', 'Ruiz', 'fernando.castro@example.com', 86665544, 7, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (8, 'Laura', 'Perez', 'Chacon', 'laura.perez@example.com', 87775544, 8, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (9, 'Esteban', 'Hernandez', 'Navarro', 'esteban.hernandez@example.com', 82226677, 9, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (10, 'Sofia', 'Araya', 'Cordero', 'sofia.araya@example.com', 85559911, 10, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (11, 'Jose', 'Rojas', 'Mora', 'jose.rojas@example.com', 81118899, 11, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (12, 'Daniela', 'Solano', 'Zuniga', 'daniela.solano@example.com', 82223344, 12, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (13, 'Raul', 'Garcia', 'Venegas', 'raul.garcia@example.com', 87776655, 13, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (14, 'Paula', 'Leon', 'Esquivel', 'paula.leon@example.com', 88889977, 14, 1)

    INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO) 
    VALUES (15, 'Andres', 'Segura', 'Diaz', 'andres.segura@example.com', 84443322, 15, 1)
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

-- AREA DE TRABAJO  ------------------------------------------------------------------------

INSERT ALL
    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (1, 'Recepci?n', '?rea encargada de la atenci?n al cliente en el check-in y check-out del hotel.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (2, 'Restaurante', '?rea destinada al servicio de comidas y bebidas a los hu?spedes.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (3, 'Cocina', '?rea donde se preparan los platillos para el restaurante y servicio a habitaciones.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (4, 'Bar', '?rea dedicada a la preparaci?n de bebidas y c?cteles para los hu?spedes.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (5, 'Gimnasio', '?rea equipada con m?quinas y equipos para la actividad f?sica de los hu?spedes.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (6, 'Spa', '?rea destinada a masajes y tratamientos de relajaci?n para los hu?spedes.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (7, 'Piscina', '?rea recreativa al aire libre donde los hu?spedes pueden disfrutar de la piscina.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (8, 'Sala de Reuniones', 'Espacio destinado para la realizaci?n de eventos corporativos o sociales.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (9, 'Oficinas Administrativas', '?rea donde se gestionan las operaciones internas y administrativas del hotel.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (10, 'Mantenimiento', '?rea encargada del mantenimiento y reparaciones de las instalaciones del hotel.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (11, 'Servicio de Habitaciones', '?rea responsable de entregar alimentos, bebidas y otros servicios a las habitaciones.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (12, 'Seguridad', '?rea encargada de la seguridad y vigilancia del hotel, asegurando la protecci?n de los hu?spedes y el personal.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (13, 'Estacionamiento', '?rea destinada al aparcamiento de veh?culos para hu?spedes y empleados.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (14, 'Sal?n de Eventos', 'Espacio para la realizaci?n de bodas, conferencias y eventos especiales en el hotel.', 1)

    INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO) 
    VALUES (15, 'Oficina de Gesti?n de Ventas', '?rea dedicada a la promoci?n y venta de los servicios del hotel.', 1)
SELECT 1 FROM DUAL;
/
-- SUCURSAL  ------------------------------------------------------------------------

-- EMPLEADOS  ------------------------------------------------------------------------

INSERT ALL
    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (1, 'Carlos', 'P?rez', 'Mart?nez', 'carlos.perez@hotel.com', 24350001, 1, 1, 1, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (2, 'Ana', 'Gonz?lez', 'L?pez', 'ana.gonzalez@hotel.com', 24350002, 2, 2, 2, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (3, 'Luis', 'Rodr?guez', 'S?nchez', 'luis.rodriguez@hotel.com', 24350003, 3, 3, 3, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (4, 'Mar?a', 'Fern?ndez', 'G?mez', 'maria.fernandez@hotel.com', 24350004, 4, 3, 4, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (5, 'Juan', 'Mart?nez', 'Serrano', 'juan.martinez@hotel.com', 24350005, 5, 4, 5, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (6, 'Sof?a', 'V?zquez', 'Paredes', 'sofia.vazquez@hotel.com', 24350006, 6, 2, 6, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (7, 'Pedro', 'Luna', 'Reyes', 'pedro.luna@hotel.com', 24350007, 7, 1, 7, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (8, 'Isabel', 'Jim?nez', 'Mora', 'isabel.jimenez@hotel.com', 24350008, 8, 9, 8, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (9, 'Felipe', 'Torres', 'L?pez', 'felipe.torres@hotel.com', 24350009, 9, 10, 9, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (10, 'Marta', 'Garc?a', '?lvarez', 'marta.garcia@hotel.com', 24350010, 10, 12, 10, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (11, 'Ricardo', 'M?ndez', 'Vega', 'ricardo.mendez@hotel.com', 24350011, 11, 8, 11, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (12, 'Laura', 'P?rez', 'R?os', 'laura.perez@hotel.com', 24350012, 12, 1, 12, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (13, 'Carlos', 'Moreno', 'Salazar', 'carlos.moreno@hotel.com', 24350013, 13, 11, 13, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (14, 'Paula', 'Fern?ndez', 'Castro', 'paula.fernandez@hotel.com', 24350014, 14, 14, 14, 1)

    INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, PUESTO, ID_AREA_TRABAJO, ID_SUCURSAL, ID_ESTADO) 
    VALUES (15, 'Jorge', 'Ram?rez', 'Soto', 'jorge.ramirez@hotel.com', 24350015, 15, 5, 15, 1)
SELECT 1 FROM DUAL;
/

-- TIPO DE HABITACION ------------------------------------------------------------

INSERT ALL
    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (1, 'Habitaci?n Sencilla', 100.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (2, 'Habitaci?n Doble', 150.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (3, 'Habitaci?n Triple', 180.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (4, 'Suite Ejecutiva', 300.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (5, 'Suite Presidencial', 500.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (6, 'Habitaci?n Familiar', 220.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (7, 'Habitaci?n Deluxe', 250.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (8, 'Habitaci?n con Vista al Mar', 350.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (9, 'Habitaci?n con Jacuzzi', 400.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (10, 'Habitaci?n Loft', 280.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (11, 'Habitaci?n con Terraza', 300.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (12, 'Habitaci?n de Lujo', 450.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (13, 'Habitaci?n Adaptada para Discapacitados', 170.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (14, 'Habitaci?n Junior Suite', 350.00, 1)

    INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, PRECIO, ID_ESTADO) 
    VALUES (15, 'Habitaci?n Ejecutiva Doble', 220.00, 1)
SELECT 1 FROM DUAL;
/

-- HABITACION ------------------------------------------------------------------------

INSERT ALL
    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-01', 1, 1, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-02', 2, 1, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-03', 3, 1, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-04', 4, 2, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-05', 5, 2, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('1-06', 6, 2, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('2-01', 7, 3, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('2-02', 8, 3, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('2-03', 9, 3, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('2-04', 10, 4, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('2-05', 11, 4, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('3-01', 12, 5, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('3-02', 13, 5, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('3-03', 14, 6, 1)

    INTO FIDE_HABITACION_TB (ID_HABITACION, ID_TIPO_HABITACION, ID_SUCURSAL, ID_ESTADO) 
    VALUES ('3-04', 15, 6, 1)
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

-- RESERVAS --------------------------------------------------------------------


-- DETALLE FACTURA --------------------------------------------------------------


-- FACTURAS ---------------------------------------------------------------------

INSERT ALL
    

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

-- RPODUCTOS -------------------------------------------------------------------

INSERT ALL
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (1, 'Jab?n Corporal', 'Jab?n l?quido para uso corporal, con propiedades hidratantes.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (2, 'Shampoo', 'Shampoo para todo tipo de cabello, con propiedades revitalizantes.', 1, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (3, 'Desinfectante Multiuso', 'Desinfectante l?quido para superficies de uso m?ltiple en el hotel.', 2, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (4, 'Detergente L?quido', 'Detergente para lavado de ropa con acci?n profunda.', 2, 2, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (5, 'Toalla de Ba?o', 'Toalla de ba?o de algod?n, suave y absorbente.', 3, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (6, 'Cortina de Ba?o', 'Cortina de ba?o resistente al agua, ideal para mantener la privacidad y higiene en el ba?o.', 3, 2, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (7, 'Kit de Reparaci?n', 'Kit b?sico de herramientas y repuestos para mantenimiento de habitaciones.', 4, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (8, 'Cepillo de Dientes', 'Cepillo de dientes para uso personal, con cerdas suaves.', 1, 2, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (9, 'Desinfectante de Piso', 'Limpiador y desinfectante para pisos de todo tipo, eficaz contra bacterias y g?rmenes.', 2, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (10, 'Cuchar?n de Cocina', 'Cuchar?n de cocina de acero inoxidable, resistente y f?cil de limpiar.', 5, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (11, 'Aromatizante', 'Aromatizante para mantener un ambiente fresco y agradable en las habitaciones del hotel.', 9, 2, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (12, 'Extintor de Incendio', 'Extintor port?til de 5 kg, ideal para emergencias en el hotel.', 10, 2, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (13, 'Detergente para Ropa', 'Detergente especial para lavander?a, eficaz en manchas dif?ciles.', 6, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (14, 'L?mpara de Mesa', 'L?mpara de mesa moderna con luz c?lida para ambientes acogedores.', 12, 1, 1)
    INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE, DESCRIPCION, ID_CATEGORIA_PRODUCTO, ID_SUCURSAL, ID_ESTADO) VALUES (15, 'Almohada', 'Almohada de pluma, suave y c?moda para un descanso placentero.', 12, 2, 1)
SELECT 1 FROM DUAL;
/


-- DETALLE SERVICIO A LA HABITACION -----------------------------------------------



-- SERVICIO A LA HABITACION 


--- PRONVICIA -----------------------------------------------------------------



-- CANTON ----------------------------------------------------------------------



-- DISTRITOS -------------------------------------------------------------------



-- DIRECCION -------------------------------------------------------------------

