-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".habit_chunks 
  DROP COLUMN created_at RESTRICT;


