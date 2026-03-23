-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".places_chunks 
  DROP COLUMN chunk_index RESTRICT;


