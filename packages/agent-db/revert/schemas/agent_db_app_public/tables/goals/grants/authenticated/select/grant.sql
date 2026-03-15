-- Revert: schemas/agent_db_app_public/tables/goals/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.goals FROM authenticated;


