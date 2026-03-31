-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/chunk_index/alterations/alt0000003929


ALTER TABLE agentic_db_app_public.places_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


