-- Revert: schemas/agentic_db_auth_public/procedures/current_user_id/grants/authenticated


REVOKE EXECUTE ON FUNCTION agentic_db_auth_public.current_user_id FROM authenticated;


