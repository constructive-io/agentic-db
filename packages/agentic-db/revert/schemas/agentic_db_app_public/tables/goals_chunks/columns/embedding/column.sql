-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".goals_chunks 
  DROP COLUMN embedding RESTRICT;


