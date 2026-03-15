-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/created_at/alterations/alt0000004679




ALTER TABLE "agent_db_app_public".habit_logs 
    ALTER COLUMN created_at DROP DEFAULT;



