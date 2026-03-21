-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/updated_at/alterations/alt0000002633




ALTER TABLE "agentic_db_app_public".habit_logs 
    ALTER COLUMN updated_at DROP DEFAULT;



