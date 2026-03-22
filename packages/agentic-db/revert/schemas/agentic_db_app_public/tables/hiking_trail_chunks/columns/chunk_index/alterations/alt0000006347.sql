-- Revert: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/chunk_index/alterations/alt0000006347


ALTER TABLE agentic_db_app_public.hiking_trail_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


