-- Crear Procedimiento de insertar
CREATE OR REPLACE PROCEDURE insertar_inmueble(
    tipo_inmueble_in varchar(50),
    nomenclatura_in varchar(255),
    coeficiente_in integer
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO inmueblesprivados (tipoinmueble, numeronomenclatura, coeficiente)
    VALUES (tipo_inmueble_in, nomenclatura_in, coeficiente_in);
END;
$$;

-- Crear Procedimiento de buscar
CREATE OR REPLACE PROCEDURE buscar_inmueble_por_id(
    inmueble_id_in integer
)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT * FROM inmueblesprivados
    WHERE inmuebleid = inmueble_id_in;
END;
$$;
-- Crear Procedimiento de actualizar
CREATE OR REPLACE PROCEDURE actualizar_inmueble(
    inmueble_id_in integer,
    nuevo_tipo_inmueble_in varchar(50),
    nueva_nomenclatura_in varchar(255),
    nuevo_coeficiente_in integer
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE inmueblesprivados
    SET
        tipoinmueble = nuevo_tipo_inmueble_in,
        numeronomenclatura = nueva_nomenclatura_in,
        coeficiente = nuevo_coeficiente_in
    WHERE inmuebleid = inmueble_id_in;
END;
$$;

-- Crear Procedimiento de eliminar
CREATE OR REPLACE PROCEDURE eliminar_inmueble_por_id(
    inmueble_id_in integer
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM inmueblesprivados
    WHERE inmuebleid = inmueble_id_in;
END;
$$;
