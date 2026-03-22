-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/chunk_index/alterations/alt0000002186


ALTER TABLE agentic_db_app_public.venue_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


