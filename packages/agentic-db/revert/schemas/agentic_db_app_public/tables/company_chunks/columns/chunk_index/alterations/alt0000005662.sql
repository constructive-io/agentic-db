-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/chunk_index/alterations/alt0000005662


ALTER TABLE agentic_db_app_public.company_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


