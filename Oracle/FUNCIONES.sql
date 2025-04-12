--  Obtener nombre completo del cliente
CREATE OR REPLACE FUNCTION FIDE_CLIENTE_TB_OBTENER_NOMBRE_COMPLETO_FN(
    p_id_cliente NUMBER
) RETURN VARCHAR2 IS
    v_nombre_completo VARCHAR2(200);
BEGIN
    SELECT NOMBRE_CLIENTE || ' ' || PRIMER_APELLIDO || ' ' || SEGUNDO_APELLIDO
    INTO v_nombre_completo
    FROM FIDE_CLIENTE_TB
    WHERE ID_CLIENTE = p_id_cliente;

    RETURN v_nombre_completo;
END;
/

--  Contar clientes por tipo
CREATE OR REPLACE FUNCTION FIDE_CLIENTE_TB_CONTAR_POR_TIPO_FN(
    p_id_tipo_cliente NUMBER
) RETURN NUMBER IS
    v_total NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_total
    FROM FIDE_CLIENTE_TB
    WHERE ID_TIPO_CLIENTE = p_id_tipo_cliente;

    RETURN v_total;
END;
/

--  Verificar si un correo ya existe
CREATE OR REPLACE FUNCTION FIDE_CLIENTE_TB_EXISTE_CORREO_FN(
    p_email VARCHAR2
) RETURN NUMBER IS
    v_existe NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_existe
    FROM FIDE_CLIENTE_TB
    WHERE EMAIL = p_email;

    RETURN CASE WHEN v_existe > 0 THEN 1 ELSE 0 END;
END;
/

--  Obtener salario por puesto de trabajo
CREATE OR REPLACE FUNCTION FIDE_PUESTO_TRABAJO_TB_OBTENER_SALARIO_FN(
    p_id_puesto NUMBER
) RETURN NUMBER IS
    v_salario NUMBER;
BEGIN
    SELECT SALARIO
    INTO v_salario
    FROM FIDE_PUESTO_TRABAJO_TB
    WHERE ID_PUESTO_TRABAJO = p_id_puesto;

    RETURN v_salario;
END;
/

-- Listar puestos activos (IDs concatenados)
CREATE OR REPLACE FUNCTION FIDE_PUESTO_TRABAJO_TB_LISTAR_POR_ESTADO_FN(
    p_id_estado NUMBER
) RETURN VARCHAR2 IS
    v_lista VARCHAR2(1000);
BEGIN
    SELECT LISTAGG(ID_PUESTO_TRABAJO, ',') WITHIN GROUP (ORDER BY ID_PUESTO_TRABAJO)
    INTO v_lista
    FROM FIDE_PUESTO_TRABAJO_TB
    WHERE ID_ESTADO = p_id_estado;

    RETURN v_lista;
END;
/

--  Obtener descripción de estado
CREATE OR REPLACE FUNCTION FIDE_ESTADO_TB_OBTENER_DESCRIPCION_FN(
    p_id_estado NUMBER
) RETURN VARCHAR2 IS
    v_desc VARCHAR2(500);
BEGIN
    SELECT DESCRIPCION_ESTADO
    INTO v_desc
    FROM FIDE_ESTADO_TB
    WHERE ID_ESTADO = p_id_estado;

    RETURN v_desc;
END;
/

--  Obtener descripción de tipo de cliente
CREATE OR REPLACE FUNCTION FIDE_TIPO_CLIENTE_TB_DESCRIPCION_POR_ID_FN(
    p_id_tipo_cliente NUMBER
) RETURN VARCHAR2 IS
    v_desc VARCHAR2(300);
BEGIN
    SELECT DESCRIPCION
    INTO v_desc
    FROM FIDE_TIPO_CLIENTE_TB
    WHERE ID_TIPO_CLIENTE = p_id_tipo_cliente;

    RETURN v_desc;
END;
/

--  Obtener nombre de provincia
CREATE OR REPLACE FUNCTION FIDE_PROVINCIA_TB_OBTENER_NOMBRE_FN(
    p_id_provincia NUMBER
) RETURN VARCHAR2 IS
    v_nombre VARCHAR2(50);
BEGIN
    SELECT NOMBRE_PROVINCIA
    INTO v_nombre
    FROM FIDE_PROVINCIA_TB
    WHERE ID_PROVINCIA = p_id_provincia;

    RETURN v_nombre;
END;
/

--  Obtener nombre de cantón
CREATE OR REPLACE FUNCTION FIDE_CANTON_TB_OBTENER_NOMBRE_FN(
    p_id_canton NUMBER
) RETURN VARCHAR2 IS
    v_nombre VARCHAR2(50);
BEGIN
    SELECT NOMBRE_CANTON
    INTO v_nombre
    FROM FIDE_CANTON_TB
    WHERE ID_CANTON = p_id_canton;

    RETURN v_nombre;
END;
/

--  Obtener nombre de distrito
CREATE OR REPLACE FUNCTION FIDE_DISTRITO_TB_OBTENER_NOMBRE_FN(
    p_id_distrito NUMBER
) RETURN VARCHAR2 IS
    v_nombre VARCHAR2(255);
BEGIN
    SELECT NOMBRE_DISTRITO
    INTO v_nombre
    FROM FIDE_DISTRITO_TB
    WHERE ID_DISTRITO = p_id_distrito;

    RETURN v_nombre;
END;
/

-- 1 Obtener email de sucursal
CREATE OR REPLACE FUNCTION FIDE_SUCURSAL_TB_OBTENER_EMAIL_FN(
    p_id_sucursal NUMBER
) RETURN VARCHAR2 IS
    v_email VARCHAR2(250);
BEGIN
    SELECT EMAIL
    INTO v_email
    FROM FIDE_SUCURSAL_TB
    WHERE ID_SUCURSAL = p_id_sucursal;

    RETURN v_email;
END;
/

--  Obtener dirección completa de sucursal
CREATE OR REPLACE FUNCTION FIDE_DIRECCION_TB_OBTENER_COMPLETA_FN(
    p_id_sucursal NUMBER
) RETURN VARCHAR2 IS
    v_direccion VARCHAR2(500);
BEGIN
    SELECT DETALLE_DIRECCION || ', ' || ID_DISTRITO || ', ' || ID_CANTON || ', ' || ID_PROVINCIA
    INTO v_direccion
    FROM FIDE_DIRECCION_TB
    WHERE ID_SUCURSAL = p_id_sucursal;

    RETURN v_direccion;
END;
/

--  Obtener número de teléfono de cliente
CREATE OR REPLACE FUNCTION FIDE_CLIENTE_TB_TELEFONO_POR_ID_FN(
    p_id_cliente NUMBER
) RETURN NUMBER IS
    v_telefono NUMBER;
BEGIN
    SELECT NUM_TELEFONO
    INTO v_telefono
    FROM FIDE_CLIENTE_TB
    WHERE ID_CLIENTE = p_id_cliente;

    RETURN v_telefono;
END;
/

--  Obtener estado de cliente
CREATE OR REPLACE FUNCTION FIDE_CLIENTE_TB_ESTADO_POR_ID_FN(
    p_id_cliente NUMBER
) RETURN NUMBER IS
    v_estado NUMBER;
BEGIN
    SELECT ID_ESTADO
    INTO v_estado
    FROM FIDE_CLIENTE_TB
    WHERE ID_CLIENTE = p_id_cliente;

    RETURN v_estado;
END;
/

-- Listar IDs de clientes por estado
CREATE OR REPLACE FUNCTION FIDE_CLIENTE_TB_LISTAR_POR_ESTADO_FN(
    p_id_estado NUMBER
) RETURN VARCHAR2 IS
    v_lista VARCHAR2(1000);
BEGIN
    SELECT LISTAGG(ID_CLIENTE, ',') WITHIN GROUP (ORDER BY ID_CLIENTE)
    INTO v_lista
    FROM FIDE_CLIENTE_TB
    WHERE ID_ESTADO = p_id_estado;

    RETURN v_lista;
END;
/
--Funcion Generar Secuencia en detalle de factura
CREATE OR REPLACE FUNCTION FIDE_DETALLE_FACTURA_TB_GENERAR_SECUENCIA_FN
RETURN VARCHAR2 AS 
    V_LETRA CHAR(1);
    V_SECUENCIA VARCHAR2(50);
BEGIN
   
    V_LETRA := CHR(65 + TRUNC(DBMS_RANDOM.VALUE(0, 26)));


    V_SECUENCIA := TO_CHAR(SYSDATE, 'DDMMYYYY') || '_' ||
                   FIDE_DETALLE_FACTURA_TB_NUM_DETALLE_SEQ.NEXTVAL || '_' ||
                   V_LETRA;

    RETURN V_SECUENCIA;
END;
/ 
--Generar Secuencia en la factura
CREATE OR REPLACE FUNCTION FIDE_FACTURA_TB_GENERAR_SECUENCIA_FN
RETURN VARCHAR2 AS 
    V_LETRA CHAR(1);
    V_SECUENCIA VARCHAR2(50);
BEGIN
   
    V_LETRA := CHR(65 + TRUNC(DBMS_RANDOM.VALUE(0, 26)));


    V_SECUENCIA := TO_CHAR(SYSDATE, 'DDMMYYYY') || '_' ||
                   FIDE_FACTURA_TB_NUM_FACTURA_SEQ.NEXTVAL || '_' ||
                   V_LETRA;

    RETURN V_SECUENCIA;
END;
