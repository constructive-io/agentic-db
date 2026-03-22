-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".venue_chunks 
  DROP COLUMN embedding_stale RESTRICT;


