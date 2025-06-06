--================================================================================
-- Vista
-- Vista 1: Vista de Clientes con Tipo de Cliente y Estado
--FIDE_USUARIOS_ACTIVOS_VM

CREATE OR REPLACE VIEW FIDE_CLIENTES_TB_CON_FIDE_TIPO_CLIENTE_TB_CON_FIDE_ESTADO_TB_VM AS
SELECT 
    c.ID_CLIENTE,
    c.NOMBRE_CLIENTE,
    c.PRIMER_APELLIDO,
    c.SEGUNDO_APELLIDO,
    c.EMAIL,
    c.NUM_TELEFONO,
    t.DESCRIPCION AS TIPO_CLIENTE,
    e.ESTADO AS ESTADO_CLIENTE
FROM 
    FIDE_CLIENTE_TB c
JOIN 
    FIDE_TIPO_CLIENTE_TB t ON c.ID_TIPO_CLIENTE = t.ID_TIPO_CLIENTE
JOIN 
    FIDE_ESTADO_TB e ON c.ID_ESTADO = e.ID_ESTADO;

/

-- Vista 2: Vista de Empleados con Sucursal y Estado
CREATE OR REPLACE VIEW FIDE_EMPLEADOS_TB_CON_FIDE_SUCURSAL_TB_CON_FIDE_ESTADO_TB_VM AS
SELECT 
    e.ID_EMPLEADO,
    e.NOMBRE_EMPLEADO,
    e.PRIMER_APELLIDO,
    e.SEGUNDO_APELLIDO,
    e.EMAIL,
    e.NUM_TELEFONO,
    s.EMAIL AS EMAIL_SUCURSAL,
    s.TELEFONO AS TELEFONO_SUCURSAL,
    a.NOMBRE AS AREA_TRABAJO,
    p.NOMBRE AS PUESTO,
    es.ESTADO AS ESTADO_EMPLEADO
FROM 
    FIDE_EMPLEADO_TB e
JOIN 
    FIDE_SUCURSAL_TB s ON e.ID_SUCURSAL = s.ID_SUCURSAL
JOIN 
    FIDE_AREA_TRABAJO_TB a ON e.ID_AREA_TRABAJO = a.ID_AREA_TRABAJO
JOIN 
    FIDE_PUESTO_TRABAJO_TB p ON e.ID_PUESTO_TRABAJO = p.ID_PUESTO_TRABAJO
JOIN 
    FIDE_ESTADO_TB es ON e.ID_ESTADO = es.ID_ESTADO;


/

-- Vista 3: Vista de Productos con Categoría y Sucursal
CREATE OR REPLACE VIEW FIDE_PRODUCTOS_TB_CON_FIDE_CATEGORIA_TB_CON_FIDE_SUCURSAL_TB_VM AS
SELECT 
    p.ID_PRODUCTO,
    p.NOMBRE,
    p.DESCRIPCION,
    c.NOMBRE AS CATEGORIA_PRODUCTO,
    s.EMAIL AS EMAIL_SUCURSAL,
    s.TELEFONO AS TELEFONO_SUCURSAL,
    e.ESTADO AS ESTADO_PRODUCTO
FROM 
    FIDE_PRODUCTO_TB p
JOIN 
    FIDE_CATEGORIA_PRODUCTO_TB c ON p.ID_CATEGORIA = c.ID_CATEGORIA
JOIN 
    FIDE_SUCURSAL_TB s ON p.ID_SUCURSAL = s.ID_SUCURSAL
JOIN 
    FIDE_ESTADO_TB e ON p.ID_ESTADO = e.ID_ESTADO;



-- Vista 4: Vista de Reservas con Cliente y Estado de Reserva
CREATE OR REPLACE VIEW FIDE_RESERVAS_TB_CON_FIDE_CLIENTE_TB_CON_FIDE_ESTADO_TB_VM AS
SELECT 
    r.NUM_RESERVA,  -- Aquí se cambió ID_RESERVA por NUM_RESERVA
    r.FECHA_RESERVADO,
    cl.NOMBRE_CLIENTE,
    cl.PRIMER_APELLIDO,
    cl.SEGUNDO_APELLIDO,
    t.NOMBRE AS TIPO_RESERVA,
    e.ESTADO AS ESTADO_RESERVA
FROM 
    FIDE_RESERVA_TB r
JOIN 
    FIDE_CLIENTE_TB cl ON r.ID_CLIENTE = cl.ID_CLIENTE
JOIN 
    FIDE_TIPO_RESERVA_TB t ON r.ID_TIPO_RESERVA = t.ID_TIPO_RESERVA
JOIN 
    FIDE_ESTADO_TB e ON r.ID_ESTADO = e.ID_ESTADO;


/

-- Vista 5: Vista de Detalles de Factura con Cliente y Estado
CREATE OR REPLACE VIEW FIDE_DETALLES_FACTURA_CON_FIDE_CLIENTE_TB_CON_FIDE_ESTADO_TB_VM AS
SELECT 
    d.NUM_DETALLE_FACTURA,
    r.FECHA_RESERVADO,
    c.NOMBRE_CLIENTE,
    c.PRIMER_APELLIDO,
    c.SEGUNDO_APELLIDO,
    f.TOTAL,
    e.ESTADO AS ESTADO_FACTURA
FROM 
    FIDE_DETALLE_FACTURA_TB d
JOIN 
    FIDE_RESERVA_TB r ON d.NUM_RESERVA = r.NUM_RESERVA
                        AND d.ID_CLIENTE = r.ID_CLIENTE
                        AND d.ID_HABITACION = r.ID_HABITACION
JOIN 
    FIDE_CLIENTE_TB c ON r.ID_CLIENTE = c.ID_CLIENTE
JOIN 
    FIDE_FACTURA_TB f ON d.NUM_DETALLE_FACTURA = f.NUM_DETALLE_FACTURA 
JOIN 
    FIDE_ESTADO_TB e ON f.ID_ESTADO = e.ID_ESTADO;

/

-- Vista 6: Vista de Direcciones de Sucursales
CREATE OR REPLACE VIEW FIDE_DIRECCIONES_TB_CON_FIDE_SUCURSALES_TB_VM AS
SELECT 
    s.ID_SUCURSAL,
    s.TELEFONO,
    s.EMAIL,
    d.DETALLE_DIRECCION,
    di.NOMBRE_DISTRITO,
    c.NOMBRE_CANTON,
    p.NOMBRE_PROVINCIA,
    e.ESTADO AS ESTADO_SUCURSAL
FROM 
    FIDE_SUCURSAL_TB s
JOIN 
    FIDE_DIRECCION_TB d ON s.ID_SUCURSAL = d.ID_SUCURSAL
JOIN 
    FIDE_DISTRITO_TB di ON d.ID_DISTRITO = di.ID_DISTRITO
JOIN 
    FIDE_CANTON_TB c ON d.ID_CANTON = c.ID_CANTON
JOIN 
    FIDE_PROVINCIA_TB p ON d.ID_PROVINCIA = p.ID_PROVINCIA
JOIN 
    FIDE_ESTADO_TB e ON s.ID_ESTADO = e.ID_ESTADO;

/

-- Vista 7: Vista de Servicios a la Habitación con Estado
CREATE OR REPLACE VIEW FIDE_SERVICIO_HABITACION_TB_CON_FIDE_ESTADO_TB_VM AS
SELECT 
    s.NUM_SERVICIO_HABITACION,
    c.NOMBRE_CLIENTE,
    h.ID_HABITACION,
    d.DESCRIPCION AS SERVICIO,
    d.PRECIO,
    e.ESTADO AS ESTADO_SERVICIO
FROM 
    FIDE_SERVICIO_HABITACION_TB s
JOIN 
    FIDE_CLIENTE_TB c ON s.ID_CLIENTE = c.ID_CLIENTE
JOIN 
    FIDE_HABITACION_TB h ON s.ID_HABITACION = h.ID_HABITACION
JOIN 
    FIDE_DETALLE_SERVICIO_HABITACION_TB d ON s.NUM_DETALLE_SERVICIO = d.NUM_DETALLE_SERVICIO  -- Corregido aquí
JOIN 
    FIDE_ESTADO_TB e ON s.ID_ESTADO = e.ID_ESTADO;


/

-- Vista 8: Vista de Puestos de Trabajo con Estado
CREATE OR REPLACE VIEW FIDE_PUESTOS_TRABAJO_TB_CON_FIDE_ESTADO_TB_VM AS
SELECT 
    p.ID_PUESTO_TRABAJO,
    p.NOMBRE,
    p.DESCRIPCION,
    p.SALARIO,
    e.ESTADO AS ESTADO_PUESTO
FROM 
    FIDE_PUESTO_TRABAJO_TB p
JOIN 
    FIDE_ESTADO_TB e ON p.ID_ESTADO = e.ID_ESTADO;

/

-- Vista 9: Vista de Categorías de Productos con Estado
CREATE OR REPLACE VIEW FIDE_CATEGORIA_PRODUCTO_TB_CON_FIDE_ESTADO_TB_VM AS
SELECT 
    c.ID_CATEGORIA,
    c.NOMBRE,
    c.DESCRIPCION,
    e.ESTADO AS ESTADO_CATEGORIA
FROM 
    FIDE_CATEGORIA_PRODUCTO_TB c
JOIN 
    FIDE_ESTADO_TB e ON c.ID_ESTADO = e.ID_ESTADO;

/

-- Vista 10: Vista de Tipos de Habitaciones con Estado
CREATE OR REPLACE VIEW FIDE_TIPO_HABITACION_TB_CON_FIDE_ESTADO_TB AS
SELECT 
    h.ID_TIPO_HABITACION,
    h.DESCRIPCION,
    h.PRECIO,
    e.ESTADO AS ESTADO_HABITACION
FROM 
    FIDE_TIPO_HABITACION_TB h
JOIN 
    FIDE_ESTADO_TB e ON h.ID_ESTADO = e.ID_ESTADO;

    
    
