-- Revert: schemas/agentic_db_encrypted/procedures/get/grants/authenticated


REVOKE EXECUTE ON FUNCTION agentic_db_encrypted.get FROM authenticated;


