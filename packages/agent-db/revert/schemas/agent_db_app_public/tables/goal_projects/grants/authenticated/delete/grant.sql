-- Revert: schemas/agent_db_app_public/tables/goal_projects/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.goal_projects FROM authenticated;


