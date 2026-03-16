-- Revert: schemas/agent_db_app_public/tables/habit_logs/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".habit_logs FROM authenticated;


