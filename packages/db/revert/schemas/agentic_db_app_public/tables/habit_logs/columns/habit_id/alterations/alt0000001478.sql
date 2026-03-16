-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/habit_id/alterations/alt0000001478


ALTER TABLE "agentic_db_app_public".habit_logs 
  ALTER COLUMN habit_id DROP NOT NULL;


