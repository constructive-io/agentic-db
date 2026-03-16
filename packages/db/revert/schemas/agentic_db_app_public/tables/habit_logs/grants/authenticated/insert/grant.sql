-- Revert: schemas/agentic_db_app_public/tables/habit_logs/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".habit_logs FROM authenticated;


