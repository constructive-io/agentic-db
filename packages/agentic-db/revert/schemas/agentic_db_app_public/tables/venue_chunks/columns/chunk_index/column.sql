-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".venue_chunks 
  DROP COLUMN chunk_index RESTRICT;


