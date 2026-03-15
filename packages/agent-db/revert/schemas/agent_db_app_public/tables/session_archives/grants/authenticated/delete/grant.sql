-- Revert: schemas/agent_db_app_public/tables/session_archives/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.session_archives FROM authenticated;


