-- Revert: schemas/agent_db_app_public/tables/habit_logs/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.habit_logs FROM authenticated;


