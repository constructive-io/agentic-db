-- Revert: schemas/agent_db_app_public/tables/sessions/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.sessions FROM authenticated;


