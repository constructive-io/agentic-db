-- Revert: schemas/agentic_db_auth_private/procedures/authenticate/grants/anonymous


REVOKE EXECUTE ON FUNCTION agentic_db_auth_private.authenticate FROM anonymous;


