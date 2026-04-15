-- Deploy: schemas/agentic_db_simple_secrets/procedures/del/grants/authenticated/alterations/alt0000012607
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/procedures/del/procedure


GRANT EXECUTE ON FUNCTION agentic_db_simple_secrets.del ( uuid, text[] ) TO authenticated;

