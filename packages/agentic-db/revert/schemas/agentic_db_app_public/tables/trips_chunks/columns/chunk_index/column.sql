-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.trips_chunks 
  DROP COLUMN chunk_index RESTRICT;


