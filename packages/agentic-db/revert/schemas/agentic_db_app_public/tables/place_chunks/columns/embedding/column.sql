-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".place_chunks 
  DROP COLUMN embedding RESTRICT;


