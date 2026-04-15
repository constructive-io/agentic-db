-- Revert: schemas/agentic_db_simple_secrets/procedures/get/grants/authenticated


REVOKE EXECUTE ON FUNCTION agentic_db_simple_secrets.get FROM authenticated;


