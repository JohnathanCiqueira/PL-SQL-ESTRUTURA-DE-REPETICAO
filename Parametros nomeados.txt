--Parametros nomeados

--Abrir a aba predures arrasta a procedure pro script

DECLARE
    v_id              NUMBER;
    v_segmercado_id   NUMBER;
BEGIN
    v_id := 1;
    v_segmercado_id := 2;
    atualizar_cli_seg_mercado(p_id => v_id,p_segmercado_id => v_segmercado_id);
--rollback; 
END;

select * from cliente where id = 1;