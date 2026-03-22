-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/habit_id/column


ALTER TABLE "agentic_db_app_public".habit_chunks 
  DROP COLUMN habit_id RESTRICT;


