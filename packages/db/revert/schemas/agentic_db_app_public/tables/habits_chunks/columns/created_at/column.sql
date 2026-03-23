-- Revert: schemas/agentic_db_app_public/tables/habits_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".habits_chunks 
  DROP COLUMN created_at RESTRICT;


