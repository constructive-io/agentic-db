-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".interactions_chunks 
  DROP COLUMN embedding RESTRICT;


