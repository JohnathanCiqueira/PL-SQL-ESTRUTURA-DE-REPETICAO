CREATE OR REPLACE PROCEDURE ATUALIZAR_CLI_SEG_MERCADO
    (p_id cliente.id%type,
    p_segmercado_id in cliente.segmercado_id%type)
IS
BEGIN
    UPDATE cliente
        set segmercado_id = p_segmercado_id
        WHERE id = p_id;
    COMMIT;
END;


--Loop basico
DECLARE
    v_segmercado_id cliente.segmercado_id%type := 1;
    v_i number(3);
BEGIN
    v_i := 1;
    Loop
        ATUALIZAR_CLI_SEG_MERCADO(v_i, v_segmercado_id);
        v_i := v_i + 1;
        EXIT WHEN v_i > 3;
    END LOOP;
END;

select * from cliente