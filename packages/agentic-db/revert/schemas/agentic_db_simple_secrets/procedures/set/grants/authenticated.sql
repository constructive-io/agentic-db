-- Revert: schemas/agentic_db_simple_secrets/procedures/set/grants/authenticated


REVOKE EXECUTE ON FUNCTION agentic_db_simple_secrets.set FROM authenticated;


