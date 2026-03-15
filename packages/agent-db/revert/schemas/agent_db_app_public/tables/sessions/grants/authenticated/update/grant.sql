-- Revert: schemas/agent_db_app_public/tables/sessions/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.sessions FROM authenticated;


