-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/id/alterations/alt0000001471


ALTER TABLE "agentic_db_app_public".habit_logs 
  ALTER COLUMN id DROP NOT NULL;


