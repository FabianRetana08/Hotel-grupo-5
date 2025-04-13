-- Paquete: FIDE_PAQUETE

CREATE OR REPLACE PACKAGE FIDE_PAQUETE IS

    -- Funciones
    FUNCTION FIDE_CLIENTE_TB_OBTENER_NOMBRE_COMPLETO_FN(p_id_cliente NUMBER) RETURN VARCHAR2;
    FUNCTION FIDE_CLIENTE_TB_CONTAR_POR_TIPO_FN(p_id_tipo_cliente NUMBER) RETURN NUMBER;
    FUNCTION FIDE_CLIENTE_TB_EXISTE_CORREO_FN(p_email VARCHAR2) RETURN NUMBER;
    FUNCTION FIDE_PUESTO_TRABAJO_TB_OBTENER_SALARIO_FN(p_id_puesto NUMBER) RETURN NUMBER;
    FUNCTION FIDE_PUESTO_TRABAJO_TB_LISTAR_POR_ESTADO_FN(p_id_estado NUMBER) RETURN VARCHAR2;
    FUNCTION FIDE_ESTADO_TB_OBTENER_DESCRIPCION_FN(p_id_estado NUMBER) RETURN VARCHAR2;
    FUNCTION FIDE_TIPO_CLIENTE_TB_DESCRIPCION_POR_ID_FN(p_id_tipo_cliente NUMBER) RETURN VARCHAR2;
    FUNCTION FIDE_PROVINCIA_TB_OBTENER_NOMBRE_FN(p_id_provincia NUMBER) RETURN VARCHAR2;
    FUNCTION FIDE_CANTON_TB_OBTENER_NOMBRE_FN(p_id_canton NUMBER) RETURN VARCHAR2;
    FUNCTION FIDE_DISTRITO_TB_OBTENER_NOMBRE_FN(p_id_distrito NUMBER) RETURN VARCHAR2;
    FUNCTION FIDE_SUCURSAL_TB_OBTENER_EMAIL_FN(p_id_sucursal NUMBER) RETURN VARCHAR2;
    FUNCTION FIDE_DIRECCION_TB_OBTENER_COMPLETA_FN(p_id_sucursal NUMBER) RETURN VARCHAR2;
    FUNCTION FIDE_CLIENTE_TB_TELEFONO_POR_ID_FN(p_id_cliente NUMBER) RETURN NUMBER;
    FUNCTION FIDE_CLIENTE_TB_ESTADO_POR_ID_FN(p_id_cliente NUMBER) RETURN NUMBER;
    FUNCTION FIDE_CLIENTE_TB_LISTAR_POR_ESTADO_FN(p_id_estado NUMBER) RETURN VARCHAR2;

    -- Procedimientos (declaraciones)
    PROCEDURE FIDE_ESTADO_TB_INSERTAR_SP(p_id_estado IN NUMBER, p_estado IN VARCHAR2, p_descripcion_estado IN VARCHAR2);
    PROCEDURE FIDE_ESTADO_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_estado FIDE_ESTADO_TB.id_estado%TYPE);
    PROCEDURE FIDE_ESTADO_TB_ACTUALIZAR_SP(p_id_estado IN NUMBER, p_estado IN VARCHAR2, p_descripcion_estado IN VARCHAR2);

    -- Procedimientos adicionales 
    PROCEDURE FIDE_TIPO_CLIENTE_TB_INSERTAR_SP(p_id_tipo_cliente IN NUMBER, p_descripcion IN VARCHAR2, p_id_estado IN NUMBER);
    PROCEDURE FIDE_TIPO_CLIENTE_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_tipo_cliente IN FIDE_TIPO_CLIENTE_TB.id_tipo_cliente%TYPE);
    PROCEDURE FIDE_TIPO_CLIENTE_TB_ACTUALIZAR_SP(p_id_tipo_cliente IN NUMBER, p_descripcion IN VARCHAR2, p_id_estado IN NUMBER);

    PROCEDURE FIDE_CLIENTE_TB_INSERTAR_SP(p_id_cliente IN NUMBER, p_nombre_cliente IN VARCHAR2, p_primer_apellido IN VARCHAR2, p_segundo_apellido IN VARCHAR2, p_email IN VARCHAR2, p_num_telefono IN NUMBER, p_id_tipo_cliente IN NUMBER, p_id_estado IN NUMBER);
    PROCEDURE FIDE_CLIENTE_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_cliente IN FIDE_CLIENTE_TB.id_cliente%TYPE);
    PROCEDURE FIDE_CLIENTE_TB_ACTUALIZAR_SP(p_id_cliente IN NUMBER, p_nombre_cliente IN VARCHAR2, p_primer_apellido IN VARCHAR2, p_segundo_apellido IN VARCHAR2, p_email IN VARCHAR2, p_num_telefono IN NUMBER, p_id_tipo_cliente IN NUMBER, p_id_estado IN NUMBER);

    PROCEDURE FIDE_PUESTO_TRABAJO_TB_INSERTAR_SP(p_id_puesto_trabajo IN NUMBER, p_nombre IN VARCHAR2, p_descripcion IN VARCHAR2, p_salario IN NUMBER, p_id_estado IN NUMBER);
    PROCEDURE FIDE_PUESTO_TRABAJO_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_puesto_trabajo IN FIDE_PUESTO_TRABAJO_TB.id_puesto_trabajo%TYPE);
    PROCEDURE FIDE_PUESTO_TRABAJO_TB_ACTUALIZAR_SP(p_id_puesto_trabajo IN NUMBER, p_nombre IN VARCHAR2, p_descripcion IN VARCHAR2, p_salario IN NUMBER, p_id_estado IN NUMBER);

    PROCEDURE FIDE_PROVINCIA_TB_INSERTAR_SP(p_id_provincia IN NUMBER, p_nombre_provincia IN VARCHAR2, p_id_estado IN NUMBER);
    PROCEDURE FIDE_PROVINCIA_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_provincia IN FIDE_PROVINCIA_TB.id_provincia%TYPE);
    PROCEDURE FIDE_PROVINCIA_TB_ACTUALIZAR_SP(p_id_provincia IN NUMBER, p_nombre_provincia IN VARCHAR2, p_id_estado IN NUMBER);

    PROCEDURE FIDE_CANTON_TB_INSERTAR_SP(p_id_canton IN NUMBER, p_nombre_canton IN VARCHAR2, p_id_estado IN NUMBER);
    PROCEDURE FIDE_CANTON_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_canton IN FIDE_CANTON_TB.id_canton%TYPE);
    PROCEDURE FIDE_CANTON_TB_ACTUALIZAR_SP(p_id_canton IN NUMBER, p_nombre_canton IN VARCHAR2, p_id_estado IN NUMBER);

    PROCEDURE FIDE_DISTRITO_TB_INSERTAR_SP(p_id_distrito IN NUMBER, p_nombre_distrito IN VARCHAR2, p_id_estado IN NUMBER);
    PROCEDURE FIDE_DISTRITO_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_distrito IN FIDE_DISTRITO_TB.id_distrito%TYPE);
    PROCEDURE FIDE_DISTRITO_TB_ACTUALIZAR_SP(p_id_distrito IN NUMBER, p_nombre_distrito IN VARCHAR2, p_id_estado IN NUMBER);

    PROCEDURE FIDE_SUCURSAL_TB_INSERTAR_SP(p_id_sucursal IN NUMBER, p_telefono IN NUMBER, p_email IN VARCHAR2, p_id_estado IN NUMBER);
    PROCEDURE FIDE_SUCURSAL_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_sucursal IN FIDE_SUCURSAL_TB.id_sucursal%TYPE);
    PROCEDURE FIDE_SUCURSAL_TB_ACTUALIZAR_SP(p_id_sucursal IN NUMBER, p_telefono IN NUMBER, p_email IN VARCHAR2, p_id_estado IN NUMBER);

    PROCEDURE FIDE_DIRECCION_TB_INSERTAR_SP(p_id_sucursal IN NUMBER, p_detalle_direccion IN VARCHAR2, p_id_distrito IN NUMBER, p_id_canton IN NUMBER, p_id_provincia IN NUMBER, p_id_estado IN NUMBER);
    PROCEDURE FIDE_DIRECCION_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_distrito IN FIDE_DIRECCION_TB.id_distrito%TYPE, p_id_canton IN FIDE_DIRECCION_TB.id_canton%TYPE, p_id_provincia IN FIDE_DIRECCION_TB.id_provincia%TYPE);
    PROCEDURE FIDE_DIRECCION_TB_ACTUALIZAR_SP(p_id_sucursal IN NUMBER, p_detalle_direccion IN VARCHAR2, p_id_distrito IN NUMBER, p_id_canton IN NUMBER, p_id_provincia IN NUMBER, p_id_estado IN NUMBER);

END FIDE_PAQUETE;
/

CREATE OR REPLACE PACKAGE BODY FIDE_PAQUETE IS

    FUNCTION FIDE_CLIENTE_TB_OBTENER_NOMBRE_COMPLETO_FN(p_id_cliente NUMBER) RETURN VARCHAR2 IS
        v_nombre_completo VARCHAR2(200);
    BEGIN
        SELECT NOMBRE_CLIENTE || ' ' || PRIMER_APELLIDO || ' ' || SEGUNDO_APELLIDO
        INTO v_nombre_completo
        FROM FIDE_CLIENTE_TB
        WHERE ID_CLIENTE = p_id_cliente;
        RETURN v_nombre_completo;
    END;

    FUNCTION FIDE_CLIENTE_TB_CONTAR_POR_TIPO_FN(p_id_tipo_cliente NUMBER) RETURN NUMBER IS
        v_total NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_total FROM FIDE_CLIENTE_TB WHERE ID_TIPO_CLIENTE = p_id_tipo_cliente;
        RETURN v_total;
    END;

    FUNCTION FIDE_CLIENTE_TB_EXISTE_CORREO_FN(p_email VARCHAR2) RETURN NUMBER IS
        v_existe NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_existe FROM FIDE_CLIENTE_TB WHERE EMAIL = p_email;
        RETURN CASE WHEN v_existe > 0 THEN 1 ELSE 0 END;
    END;

    FUNCTION FIDE_PUESTO_TRABAJO_TB_OBTENER_SALARIO_FN(p_id_puesto NUMBER) RETURN NUMBER IS
        v_salario NUMBER;
    BEGIN
        SELECT SALARIO INTO v_salario FROM FIDE_PUESTO_TRABAJO_TB WHERE ID_PUESTO_TRABAJO = p_id_puesto;
        RETURN v_salario;
    END;

    FUNCTION FIDE_PUESTO_TRABAJO_TB_LISTAR_POR_ESTADO_FN(p_id_estado NUMBER) RETURN VARCHAR2 IS
        v_lista VARCHAR2(1000);
    BEGIN
        SELECT LISTAGG(ID_PUESTO_TRABAJO, ',') WITHIN GROUP (ORDER BY ID_PUESTO_TRABAJO)
        INTO v_lista FROM FIDE_PUESTO_TRABAJO_TB WHERE ID_ESTADO = p_id_estado;
        RETURN v_lista;
    END;

    FUNCTION FIDE_ESTADO_TB_OBTENER_DESCRIPCION_FN(p_id_estado NUMBER) RETURN VARCHAR2 IS
        v_desc VARCHAR2(500);
    BEGIN
        SELECT DESCRIPCION_ESTADO INTO v_desc FROM FIDE_ESTADO_TB WHERE ID_ESTADO = p_id_estado;
        RETURN v_desc;
    END;

    FUNCTION FIDE_TIPO_CLIENTE_TB_DESCRIPCION_POR_ID_FN(p_id_tipo_cliente NUMBER) RETURN VARCHAR2 IS
        v_desc VARCHAR2(300);
    BEGIN
        SELECT DESCRIPCION INTO v_desc FROM FIDE_TIPO_CLIENTE_TB WHERE ID_TIPO_CLIENTE = p_id_tipo_cliente;
        RETURN v_desc;
    END;

    FUNCTION FIDE_PROVINCIA_TB_OBTENER_NOMBRE_FN(p_id_provincia NUMBER) RETURN VARCHAR2 IS
        v_nombre VARCHAR2(50);
    BEGIN
        SELECT NOMBRE_PROVINCIA INTO v_nombre FROM FIDE_PROVINCIA_TB WHERE ID_PROVINCIA = p_id_provincia;
        RETURN v_nombre;
    END;

    FUNCTION FIDE_CANTON_TB_OBTENER_NOMBRE_FN(p_id_canton NUMBER) RETURN VARCHAR2 IS
        v_nombre VARCHAR2(50);
    BEGIN
        SELECT NOMBRE_CANTON INTO v_nombre FROM FIDE_CANTON_TB WHERE ID_CANTON = p_id_canton;
        RETURN v_nombre;
    END;

    FUNCTION FIDE_DISTRITO_TB_OBTENER_NOMBRE_FN(p_id_distrito NUMBER) RETURN VARCHAR2 IS
        v_nombre VARCHAR2(255);
    BEGIN
        SELECT NOMBRE_DISTRITO INTO v_nombre FROM FIDE_DISTRITO_TB WHERE ID_DISTRITO = p_id_distrito;
        RETURN v_nombre;
    END;

    FUNCTION FIDE_SUCURSAL_TB_OBTENER_EMAIL_FN(p_id_sucursal NUMBER) RETURN VARCHAR2 IS
        v_email VARCHAR2(250);
    BEGIN
        SELECT EMAIL INTO v_email FROM FIDE_SUCURSAL_TB WHERE ID_SUCURSAL = p_id_sucursal;
        RETURN v_email;
    END;

    FUNCTION FIDE_DIRECCION_TB_OBTENER_COMPLETA_FN(p_id_sucursal NUMBER) RETURN VARCHAR2 IS
        v_direccion VARCHAR2(500);
    BEGIN
        SELECT DETALLE_DIRECCION || ', ' || ID_DISTRITO || ', ' || ID_CANTON || ', ' || ID_PROVINCIA
        INTO v_direccion FROM FIDE_DIRECCION_TB WHERE ID_SUCURSAL = p_id_sucursal;
        RETURN v_direccion;
    END;

    FUNCTION FIDE_CLIENTE_TB_TELEFONO_POR_ID_FN(p_id_cliente NUMBER) RETURN NUMBER IS
        v_telefono NUMBER;
    BEGIN
        SELECT NUM_TELEFONO INTO v_telefono FROM FIDE_CLIENTE_TB WHERE ID_CLIENTE = p_id_cliente;
        RETURN v_telefono;
    END;

    FUNCTION FIDE_CLIENTE_TB_ESTADO_POR_ID_FN(p_id_cliente NUMBER) RETURN NUMBER IS
        v_estado NUMBER;
    BEGIN
        SELECT ID_ESTADO INTO v_estado FROM FIDE_CLIENTE_TB WHERE ID_CLIENTE = p_id_cliente;
        RETURN v_estado;
    END;

    FUNCTION FIDE_CLIENTE_TB_LISTAR_POR_ESTADO_FN(p_id_estado NUMBER) RETURN VARCHAR2 IS
        v_lista VARCHAR2(1000);
    BEGIN
        SELECT LISTAGG(ID_CLIENTE, ',') WITHIN GROUP (ORDER BY ID_CLIENTE)
        INTO v_lista FROM FIDE_CLIENTE_TB WHERE ID_ESTADO = p_id_estado;
        RETURN v_lista;
    END;

    -- IMPLEMENTACIONES DE PROCEDIMIENTOS DESDE EL ARCHIVO procesos.txt

    PROCEDURE FIDE_ESTADO_TB_INSERTAR_SP(p_id_estado IN NUMBER, p_estado IN VARCHAR2, p_descripcion_estado IN VARCHAR2) IS
    BEGIN
        INSERT INTO FIDE_ESTADO_TB (ID_ESTADO, ESTADO, DESCRIPCION_ESTADO)
        VALUES (p_id_estado, p_estado, p_descripcion_estado);
    END;

    PROCEDURE FIDE_ESTADO_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_estado FIDE_ESTADO_TB.id_estado%TYPE) IS
    BEGIN
        IF p_id_estado IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_ESTADO, ESTADO, DESCRIPCION_ESTADO FROM FIDE_ESTADO_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_ESTADO, ESTADO, DESCRIPCION_ESTADO FROM FIDE_ESTADO_TB
            WHERE ID_ESTADO = p_id_estado;
        END IF;
    END;

    PROCEDURE FIDE_ESTADO_TB_ACTUALIZAR_SP(p_id_estado IN NUMBER, p_estado IN VARCHAR2, p_descripcion_estado IN VARCHAR2) IS
    BEGIN
        UPDATE FIDE_ESTADO_TB
        SET ESTADO = p_estado,
            DESCRIPCION_ESTADO = p_descripcion_estado
        WHERE ID_ESTADO = p_id_estado;
    END;

    PROCEDURE FIDE_TIPO_CLIENTE_TB_INSERTAR_SP(p_id_tipo_cliente IN NUMBER, p_descripcion IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_TIPO_CLIENTE_TB (ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO)
        VALUES (p_id_tipo_cliente, p_descripcion, p_id_estado);
    END;

    PROCEDURE FIDE_TIPO_CLIENTE_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_tipo_cliente IN FIDE_TIPO_CLIENTE_TB.id_tipo_cliente%TYPE) IS
    BEGIN
        IF p_id_tipo_cliente IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO FROM FIDE_TIPO_CLIENTE_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_TIPO_CLIENTE, DESCRIPCION, ID_ESTADO FROM FIDE_TIPO_CLIENTE_TB
            WHERE ID_TIPO_CLIENTE = p_id_tipo_cliente;
        END IF;
    END;

    PROCEDURE FIDE_TIPO_CLIENTE_TB_ACTUALIZAR_SP(p_id_tipo_cliente IN NUMBER, p_descripcion IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_TIPO_CLIENTE_TB
        SET DESCRIPCION = p_descripcion,
            ID_ESTADO = p_id_estado
        WHERE ID_TIPO_CLIENTE = p_id_tipo_cliente;
    END;

    PROCEDURE FIDE_CLIENTE_TB_INSERTAR_SP(p_id_cliente IN NUMBER, p_nombre_cliente IN VARCHAR2, p_primer_apellido IN VARCHAR2, p_segundo_apellido IN VARCHAR2, p_email IN VARCHAR2, p_num_telefono IN NUMBER, p_id_tipo_cliente IN NUMBER, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_CLIENTE_TB (ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO)
        VALUES (p_id_cliente, p_nombre_cliente, p_primer_apellido, p_segundo_apellido, p_email, p_num_telefono, p_id_tipo_cliente, p_id_estado);
    END;

    PROCEDURE FIDE_CLIENTE_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_cliente IN FIDE_CLIENTE_TB.id_cliente%TYPE) IS
    BEGIN
        IF p_id_cliente IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO FROM FIDE_CLIENTE_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_CLIENTE, NOMBRE_CLIENTE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, NUM_TELEFONO, ID_TIPO_CLIENTE, ID_ESTADO FROM FIDE_CLIENTE_TB
            WHERE ID_CLIENTE = p_id_cliente;
        END IF;
    END;

    PROCEDURE FIDE_CLIENTE_TB_ACTUALIZAR_SP(p_id_cliente IN NUMBER, p_nombre_cliente IN VARCHAR2, p_primer_apellido IN VARCHAR2, p_segundo_apellido IN VARCHAR2, p_email IN VARCHAR2, p_num_telefono IN NUMBER, p_id_tipo_cliente IN NUMBER, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_CLIENTE_TB
        SET NOMBRE_CLIENTE = p_nombre_cliente,
            PRIMER_APELLIDO = p_primer_apellido,
            SEGUNDO_APELLIDO = p_segundo_apellido,
            EMAIL = p_email,
            NUM_TELEFONO = p_num_telefono,
            ID_TIPO_CLIENTE = p_id_tipo_cliente,
            ID_ESTADO = p_id_estado
        WHERE ID_CLIENTE = p_id_cliente;
    END;

    PROCEDURE FIDE_PUESTO_TRABAJO_TB_INSERTAR_SP(p_id_puesto_trabajo IN NUMBER, p_nombre IN VARCHAR2, p_descripcion IN VARCHAR2, p_salario IN NUMBER, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_PUESTO_TRABAJO_TB (ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO)
        VALUES (p_id_puesto_trabajo, p_nombre, p_descripcion, p_salario, p_id_estado);
    END;

    PROCEDURE FIDE_PUESTO_TRABAJO_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_puesto_trabajo IN FIDE_PUESTO_TRABAJO_TB.id_puesto_trabajo%TYPE) IS
    BEGIN
        IF p_id_puesto_trabajo IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO FROM FIDE_PUESTO_TRABAJO_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_PUESTO_TRABAJO, NOMBRE, DESCRIPCION, SALARIO, ID_ESTADO FROM FIDE_PUESTO_TRABAJO_TB
            WHERE ID_PUESTO_TRABAJO = p_id_puesto_trabajo;
        END IF;
    END;

    PROCEDURE FIDE_PUESTO_TRABAJO_TB_ACTUALIZAR_SP(p_id_puesto_trabajo IN NUMBER, p_nombre IN VARCHAR2, p_descripcion IN VARCHAR2, p_salario IN NUMBER, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_PUESTO_TRABAJO_TB
        SET NOMBRE = p_nombre,
            DESCRIPCION = p_descripcion,
            SALARIO = p_salario,
            ID_ESTADO = p_id_estado
        WHERE ID_PUESTO_TRABAJO = p_id_puesto_trabajo;
    END;

    PROCEDURE FIDE_PROVINCIA_TB_INSERTAR_SP(p_id_provincia IN NUMBER, p_nombre_provincia IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_PROVINCIA_TB (ID_PROVINCIA, NOMBRE_PROVINCIA, ID_ESTADO)
        VALUES (p_id_provincia, p_nombre_provincia, p_id_estado);
    END;

    PROCEDURE FIDE_PROVINCIA_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_provincia IN FIDE_PROVINCIA_TB.id_provincia%TYPE) IS
    BEGIN
        IF p_id_provincia IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_PROVINCIA, NOMBRE_PROVINCIA, ID_ESTADO FROM FIDE_PROVINCIA_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_PROVINCIA, NOMBRE_PROVINCIA, ID_ESTADO FROM FIDE_PROVINCIA_TB
            WHERE ID_PROVINCIA = p_id_provincia;
        END IF;
    END;

    PROCEDURE FIDE_PROVINCIA_TB_ACTUALIZAR_SP(p_id_provincia IN NUMBER, p_nombre_provincia IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_PROVINCIA_TB
        SET NOMBRE_PROVINCIA = p_nombre_provincia,
            ID_ESTADO = p_id_estado
        WHERE ID_PROVINCIA = p_id_provincia;
    END;

    PROCEDURE FIDE_CANTON_TB_INSERTAR_SP(p_id_canton IN NUMBER, p_nombre_canton IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_CANTON_TB (ID_CANTON, NOMBRE_CANTON, ID_ESTADO)
        VALUES (p_id_canton, p_nombre_canton, p_id_estado);
    END;

    PROCEDURE FIDE_CANTON_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_canton IN FIDE_CANTON_TB.id_canton%TYPE) IS
    BEGIN
        IF p_id_canton IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_CANTON, NOMBRE_CANTON, ID_ESTADO FROM FIDE_CANTON_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_CANTON, NOMBRE_CANTON, ID_ESTADO FROM FIDE_CANTON_TB
            WHERE ID_CANTON = p_id_canton;
        END IF;
    END;

    PROCEDURE FIDE_CANTON_TB_ACTUALIZAR_SP(p_id_canton IN NUMBER, p_nombre_canton IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_CANTON_TB
        SET NOMBRE_CANTON = p_nombre_canton,
            ID_ESTADO = p_id_estado
        WHERE ID_CANTON = p_id_canton;
    END;

    PROCEDURE FIDE_DISTRITO_TB_INSERTAR_SP(p_id_distrito IN NUMBER, p_nombre_distrito IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_DISTRITO_TB (ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO)
        VALUES (p_id_distrito, p_nombre_distrito, p_id_estado);
    END;

    PROCEDURE FIDE_DISTRITO_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_distrito IN FIDE_DISTRITO_TB.id_distrito%TYPE) IS
    BEGIN
        IF p_id_distrito IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO FROM FIDE_DISTRITO_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_DISTRITO, NOMBRE_DISTRITO, ID_ESTADO FROM FIDE_DISTRITO_TB
            WHERE ID_DISTRITO = p_id_distrito;
        END IF;
    END;

    PROCEDURE FIDE_DISTRITO_TB_ACTUALIZAR_SP(p_id_distrito IN NUMBER, p_nombre_distrito IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_DISTRITO_TB
        SET NOMBRE_DISTRITO = p_nombre_distrito,
            ID_ESTADO = p_id_estado
        WHERE ID_DISTRITO = p_id_distrito;
    END;

    PROCEDURE FIDE_SUCURSAL_TB_INSERTAR_SP(p_id_sucursal IN NUMBER, p_telefono IN NUMBER, p_email IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_SUCURSAL_TB (ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO)
        VALUES (p_id_sucursal, p_telefono, p_email, p_id_estado);
    END;

    PROCEDURE FIDE_SUCURSAL_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_sucursal IN FIDE_SUCURSAL_TB.ID_SUCURSAL%TYPE) IS
    BEGIN
        IF p_id_sucursal IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO FROM FIDE_SUCURSAL_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_SUCURSAL, TELEFONO, EMAIL, ID_ESTADO FROM FIDE_SUCURSAL_TB
            WHERE ID_SUCURSAL = p_id_sucursal;
        END IF;
    END;

    PROCEDURE FIDE_SUCURSAL_TB_ACTUALIZAR_SP(p_id_sucursal IN NUMBER, p_telefono IN NUMBER, p_email IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_SUCURSAL_TB
        SET TELEFONO = p_telefono,
            EMAIL = p_email,
            ID_ESTADO = p_id_estado
        WHERE ID_SUCURSAL = p_id_sucursal;
    END;

    PROCEDURE FIDE_DIRECCION_TB_INSERTAR_SP(p_id_sucursal IN NUMBER, p_detalle_direccion IN VARCHAR2, p_id_distrito IN NUMBER, p_id_canton IN NUMBER, p_id_provincia IN NUMBER, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_DIRECCION_TB (ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO)
        VALUES (p_id_sucursal, p_detalle_direccion, p_id_distrito, p_id_canton, p_id_provincia, p_id_estado);
    END;

    PROCEDURE FIDE_DIRECCION_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_distrito IN FIDE_DIRECCION_TB.ID_DISTRITO%TYPE, p_id_canton IN FIDE_DIRECCION_TB.ID_CANTON%TYPE, p_id_provincia IN FIDE_DIRECCION_TB.ID_PROVINCIA%TYPE) IS
    BEGIN
        IF p_id_distrito IS NULL OR p_id_canton IS NULL OR p_id_provincia IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO FROM FIDE_DIRECCION_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_SUCURSAL, DETALLE_DIRECCION, ID_DISTRITO, ID_CANTON, ID_PROVINCIA, ID_ESTADO FROM FIDE_DIRECCION_TB
            WHERE ID_DISTRITO = p_id_distrito AND ID_CANTON = p_id_canton AND ID_PROVINCIA = p_id_provincia;
        END IF;
    END;

    PROCEDURE FIDE_DIRECCION_TB_ACTUALIZAR_SP(p_id_sucursal IN NUMBER, p_detalle_direccion IN VARCHAR2, p_id_distrito IN NUMBER, p_id_canton IN NUMBER, p_id_provincia IN NUMBER, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_DIRECCION_TB
        SET DETALLE_DIRECCION = p_detalle_direccion,
            ID_DISTRITO = p_id_distrito,
            ID_CANTON = p_id_canton,
            ID_PROVINCIA = p_id_provincia,
            ID_ESTADO = p_id_estado
        WHERE ID_SUCURSAL = p_id_sucursal;
    END;

    PROCEDURE FIDE_AREA_TRABAJO_TB_INSERTAR_SP(p_id_area_trabajo IN NUMBER, p_nombre IN VARCHAR2, p_descripcion IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_AREA_TRABAJO_TB (ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO)
        VALUES (p_id_area_trabajo, p_nombre, p_descripcion, p_id_estado);
    END;

    PROCEDURE FIDE_AREA_TRABAJO_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_area_trabajo IN FIDE_AREA_TRABAJO_TB.ID_AREA_TRABAJO%TYPE) IS
    BEGIN
        IF p_id_area_trabajo IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO FROM FIDE_AREA_TRABAJO_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_AREA_TRABAJO, NOMBRE, DESCRIPCION, ID_ESTADO FROM FIDE_AREA_TRABAJO_TB
            WHERE ID_AREA_TRABAJO = p_id_area_trabajo;
        END IF;
    END;

    PROCEDURE FIDE_AREA_TRABAJO_TB_ACTUALIZAR_SP(p_id_area_trabajo IN NUMBER, p_nombre IN VARCHAR2, p_descripcion IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_AREA_TRABAJO_TB
        SET NOMBRE = p_nombre,
            DESCRIPCION = p_descripcion,
            ID_ESTADO = p_id_estado
        WHERE ID_AREA_TRABAJO = p_id_area_trabajo;
    END;

    PROCEDURE FIDE_EMPLEADO_TB_INSERTAR_SP(p_id_empleado IN NUMBER, p_nombre_empleado IN VARCHAR2, p_primer_apellido IN VARCHAR2, p_segundo_apellido IN VARCHAR2, p_email IN VARCHAR2, p_id_area_trabajo IN NUMBER, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_EMPLEADO_TB (ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, ID_AREA_TRABAJO, ID_ESTADO)
        VALUES (p_id_empleado, p_nombre_empleado, p_primer_apellido, p_segundo_apellido, p_email, p_id_area_trabajo, p_id_estado);
    END;

    PROCEDURE FIDE_EMPLEADO_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_empleado IN FIDE_EMPLEADO_TB.ID_EMPLEADO%TYPE) IS
    BEGIN
        IF p_id_empleado IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, ID_AREA_TRABAJO, ID_ESTADO FROM FIDE_EMPLEADO_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_EMPLEADO, NOMBRE_EMPLEADO, PRIMER_APELLIDO, SEGUNDO_APELLIDO, EMAIL, ID_AREA_TRABAJO, ID_ESTADO FROM FIDE_EMPLEADO_TB
            WHERE ID_EMPLEADO = p_id_empleado;
        END IF;
    END;

    PROCEDURE FIDE_EMPLEADO_TB_ACTUALIZAR_SP(p_id_empleado IN NUMBER, p_nombre_empleado IN VARCHAR2, p_primer_apellido IN VARCHAR2, p_segundo_apellido IN VARCHAR2, p_email IN VARCHAR2, p_id_area_trabajo IN NUMBER, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_EMPLEADO_TB
        SET NOMBRE_EMPLEADO = p_nombre_empleado,
            PRIMER_APELLIDO = p_primer_apellido,
            SEGUNDO_APELLIDO = p_segundo_apellido,
            EMAIL = p_email,
            ID_AREA_TRABAJO = p_id_area_trabajo,
            ID_ESTADO = p_id_estado
        WHERE ID_EMPLEADO = p_id_empleado;
    END;

    PROCEDURE FIDE_CATEGORIA_PRODUCTO_TB_INSERTAR_SP(p_id_categoria IN NUMBER, p_nombre_categoria IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_CATEGORIA_PRODUCTO_TB (ID_CATEGORIA, NOMBRE_CATEGORIA, ID_ESTADO)
        VALUES (p_id_categoria, p_nombre_categoria, p_id_estado);
    END;

    PROCEDURE FIDE_CATEGORIA_PRODUCTO_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_categoria IN FIDE_CATEGORIA_PRODUCTO_TB.ID_CATEGORIA%TYPE) IS
    BEGIN
        IF p_id_categoria IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_CATEGORIA, NOMBRE_CATEGORIA, ID_ESTADO FROM FIDE_CATEGORIA_PRODUCTO_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_CATEGORIA, NOMBRE_CATEGORIA, ID_ESTADO FROM FIDE_CATEGORIA_PRODUCTO_TB
            WHERE ID_CATEGORIA = p_id_categoria;
        END IF;
    END;

    PROCEDURE FIDE_CATEGORIA_PRODUCTO_TB_ACTUALIZAR_SP(p_id_categoria IN NUMBER, p_nombre_categoria IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_CATEGORIA_PRODUCTO_TB
        SET NOMBRE_CATEGORIA = p_nombre_categoria,
            ID_ESTADO = p_id_estado
        WHERE ID_CATEGORIA = p_id_categoria;
    END;

    PROCEDURE FIDE_PRODUCTO_TB_INSERTAR_SP(p_id_producto IN NUMBER, p_nombre_producto IN VARCHAR2, p_precio IN NUMBER, p_id_categoria IN NUMBER, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_PRODUCTO_TB (ID_PRODUCTO, NOMBRE_PRODUCTO, PRECIO, ID_CATEGORIA, ID_ESTADO)
        VALUES (p_id_producto, p_nombre_producto, p_precio, p_id_categoria, p_id_estado);
    END;

    PROCEDURE FIDE_PRODUCTO_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_producto IN FIDE_PRODUCTO_TB.ID_PRODUCTO%TYPE) IS
    BEGIN
        IF p_id_producto IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_PRODUCTO, NOMBRE_PRODUCTO, PRECIO, ID_CATEGORIA, ID_ESTADO FROM FIDE_PRODUCTO_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_PRODUCTO, NOMBRE_PRODUCTO, PRECIO, ID_CATEGORIA, ID_ESTADO FROM FIDE_PRODUCTO_TB
            WHERE ID_PRODUCTO = p_id_producto;
        END IF;
    END;

    PROCEDURE FIDE_PRODUCTO_TB_ACTUALIZAR_SP(p_id_producto IN NUMBER, p_nombre_producto IN VARCHAR2, p_precio IN NUMBER, p_id_categoria IN NUMBER, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_PRODUCTO_TB
        SET NOMBRE_PRODUCTO = p_nombre_producto,
            PRECIO = p_precio,
            ID_CATEGORIA = p_id_categoria,
            ID_ESTADO = p_id_estado
        WHERE ID_PRODUCTO = p_id_producto;
    END;

    PROCEDURE FIDE_TIPO_RESERVA_TB_INSERTAR_SP(p_id_tipo_reserva IN NUMBER, p_descripcion IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_TIPO_RESERVA_TB (ID_TIPO_RESERVA, DESCRIPCION, ID_ESTADO)
        VALUES (p_id_tipo_reserva, p_descripcion, p_id_estado);
    END;

    PROCEDURE FIDE_TIPO_RESERVA_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_tipo_reserva IN FIDE_TIPO_RESERVA_TB.ID_TIPO_RESERVA%TYPE) IS
    BEGIN
        IF p_id_tipo_reserva IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_TIPO_RESERVA, DESCRIPCION, ID_ESTADO FROM FIDE_TIPO_RESERVA_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_TIPO_RESERVA, DESCRIPCION, ID_ESTADO FROM FIDE_TIPO_RESERVA_TB
            WHERE ID_TIPO_RESERVA = p_id_tipo_reserva;
        END IF;
    END;

    PROCEDURE FIDE_TIPO_RESERVA_TB_ACTUALIZAR_SP(p_id_tipo_reserva IN NUMBER, p_descripcion IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_TIPO_RESERVA_TB
        SET DESCRIPCION = p_descripcion,
            ID_ESTADO = p_id_estado
        WHERE ID_TIPO_RESERVA = p_id_tipo_reserva;
    END;

    PROCEDURE FIDE_TIPO_HABITACION_TB_INSERTAR_SP(p_id_tipo_habitacion IN NUMBER, p_descripcion IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        INSERT INTO FIDE_TIPO_HABITACION_TB (ID_TIPO_HABITACION, DESCRIPCION, ID_ESTADO)
        VALUES (p_id_tipo_habitacion, p_descripcion, p_id_estado);
    END;

    PROCEDURE FIDE_TIPO_HABITACION_TB_OBTENER_SP(p_resultado OUT SYS_REFCURSOR, p_id_tipo_habitacion IN FIDE_TIPO_HABITACION_TB.ID_TIPO_HABITACION%TYPE) IS
    BEGIN
        IF p_id_tipo_habitacion IS NULL THEN
            OPEN p_resultado FOR
            SELECT ID_TIPO_HABITACION, DESCRIPCION, ID_ESTADO FROM FIDE_TIPO_HABITACION_TB;
        ELSE
            OPEN p_resultado FOR
            SELECT ID_TIPO_HABITACION, DESCRIPCION, ID_ESTADO FROM FIDE_TIPO_HABITACION_TB
            WHERE ID_TIPO_HABITACION = p_id_tipo_habitacion;
        END IF;
    END;

    PROCEDURE FIDE_TIPO_HABITACION_TB_ACTUALIZAR_SP(p_id_tipo_habitacion IN NUMBER, p_descripcion IN VARCHAR2, p_id_estado IN NUMBER) IS
    BEGIN
        UPDATE FIDE_TIPO_HABITACION_TB
        SET DESCRIPCION = p_descripcion,
            ID_ESTADO = p_id_estado
        WHERE ID_TIPO_HABITACION = p_id_tipo_habitacion;
    END;

END FIDE_PAQUETE;
