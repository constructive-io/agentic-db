-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding_stale/alterations/alt0000005665


ALTER TABLE agentic_db_app_public.company_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


