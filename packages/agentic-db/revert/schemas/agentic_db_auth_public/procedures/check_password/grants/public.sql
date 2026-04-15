-- Revert: schemas/agentic_db_auth_public/procedures/check_password/grants/public


REVOKE EXECUTE ON FUNCTION agentic_db_auth_public.check_password FROM public;


