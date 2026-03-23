-- Revert: schemas/agentic_db_app_public/tables/habits_chunks/columns/id/column


ALTER TABLE "agentic_db_app_public".habits_chunks 
  DROP COLUMN id RESTRICT;


