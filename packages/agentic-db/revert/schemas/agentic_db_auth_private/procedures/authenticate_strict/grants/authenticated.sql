-- Revert: schemas/agentic_db_auth_private/procedures/authenticate_strict/grants/authenticated


REVOKE EXECUTE ON FUNCTION agentic_db_auth_private.authenticate_strict FROM authenticated;


