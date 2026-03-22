-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/chunk_index/alterations/alt0000001319


ALTER TABLE "agentic_db_app_public".event_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


