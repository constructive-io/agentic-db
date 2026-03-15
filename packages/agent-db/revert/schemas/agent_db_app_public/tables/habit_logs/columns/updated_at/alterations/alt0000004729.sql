-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/updated_at/alterations/alt0000004729




ALTER TABLE "agent_db_app_public".habit_logs 
    ALTER COLUMN updated_at DROP DEFAULT;



