-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/id/column


ALTER TABLE "agentic_db_app_public".habit_logs 
  DROP COLUMN id RESTRICT;


