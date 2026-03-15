-- Revert: schemas/agent_db_app_public/tables/goals/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.goals FROM authenticated;


