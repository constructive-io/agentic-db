-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/created_at/alterations/alt0000002631




ALTER TABLE "agentic_db_app_public".habit_logs 
    ALTER COLUMN created_at DROP DEFAULT;



