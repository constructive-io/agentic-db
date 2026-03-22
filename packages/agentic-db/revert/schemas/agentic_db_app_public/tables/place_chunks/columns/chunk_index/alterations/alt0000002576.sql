-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/chunk_index/alterations/alt0000002576


ALTER TABLE "agentic_db_app_public".place_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


