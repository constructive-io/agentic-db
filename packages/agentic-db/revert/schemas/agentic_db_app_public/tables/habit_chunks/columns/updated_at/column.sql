-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".habit_chunks 
  DROP COLUMN updated_at RESTRICT;


