-- Revert: schemas/agentic_db_encrypted/procedures/verify/grants/authenticated


REVOKE EXECUTE ON FUNCTION agentic_db_encrypted.verify FROM authenticated;


