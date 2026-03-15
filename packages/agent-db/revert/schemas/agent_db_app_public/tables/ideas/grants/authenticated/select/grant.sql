-- Revert: schemas/agent_db_app_public/tables/ideas/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.ideas FROM authenticated;


