-- Revert: schemas/agent_db_app_public/tables/projects/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.projects FROM authenticated;


