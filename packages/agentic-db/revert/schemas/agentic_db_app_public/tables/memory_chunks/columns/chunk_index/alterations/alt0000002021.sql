-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/chunk_index/alterations/alt0000002021


ALTER TABLE "agentic_db_app_public".memory_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


