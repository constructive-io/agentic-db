-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/embedding_stale/alterations/alt0000000184


ALTER TABLE agentic_db_app_public.company_links 
  ALTER COLUMN embedding_stale DROP NOT NULL;


