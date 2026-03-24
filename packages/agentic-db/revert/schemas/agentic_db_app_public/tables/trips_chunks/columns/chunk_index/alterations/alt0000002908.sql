-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/chunk_index/alterations/alt0000002908


ALTER TABLE agentic_db_app_public.trips_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


