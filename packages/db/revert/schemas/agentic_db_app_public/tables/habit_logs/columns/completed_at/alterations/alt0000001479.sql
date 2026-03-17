-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/completed_at/alterations/alt0000001479


ALTER TABLE "agentic_db_app_public".habit_logs 
  ALTER COLUMN completed_at DROP NOT NULL;


