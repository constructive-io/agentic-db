-- Revert: schemas/agent_db_app_public/tables/ideas/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.ideas FROM authenticated;


