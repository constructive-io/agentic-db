-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".place_chunks 
  DROP COLUMN embedding_stale RESTRICT;


