-- Revert: schemas/agent_db_app_public/tables/goal_habits/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.goal_habits FROM authenticated;


