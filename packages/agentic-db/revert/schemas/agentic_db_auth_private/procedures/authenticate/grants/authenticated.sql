-- Revert: schemas/agentic_db_auth_private/procedures/authenticate/grants/authenticated


REVOKE EXECUTE ON FUNCTION agentic_db_auth_private.authenticate FROM authenticated;


