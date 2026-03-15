-- Revert: schemas/agent_db_app_public/tables/projects/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.projects FROM authenticated;


