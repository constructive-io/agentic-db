-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/created_at/column


ALTER TABLE "agentic_db_app_public".habit_logs 
  DROP COLUMN created_at RESTRICT;


