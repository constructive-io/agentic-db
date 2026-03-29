-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/chunk_index/alterations/alt0000010744


ALTER TABLE agentic_db_app_public.rules_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


