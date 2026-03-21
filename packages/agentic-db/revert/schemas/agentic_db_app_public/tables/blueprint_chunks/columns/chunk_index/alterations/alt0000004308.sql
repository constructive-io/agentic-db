-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/chunk_index/alterations/alt0000004308


ALTER TABLE agentic_db_app_public.blueprint_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


