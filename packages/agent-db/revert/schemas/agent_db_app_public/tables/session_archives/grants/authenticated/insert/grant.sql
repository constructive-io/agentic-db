-- Revert: schemas/agent_db_app_public/tables/session_archives/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.session_archives FROM authenticated;


