-- Revert: schemas/agentic_db_app_public/tables/habits_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".habits_chunks 
  DROP COLUMN embedding RESTRICT;


