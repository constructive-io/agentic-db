-- Revert: schemas/agentic_db_encrypted/procedures/set/grants/authenticated


REVOKE EXECUTE ON FUNCTION agentic_db_encrypted.set FROM authenticated;


