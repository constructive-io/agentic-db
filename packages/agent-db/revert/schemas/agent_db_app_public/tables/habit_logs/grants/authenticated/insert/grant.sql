-- Revert: schemas/agent_db_app_public/tables/habit_logs/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".habit_logs FROM authenticated;


