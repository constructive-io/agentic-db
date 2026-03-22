-- Deploy: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding_stale/alterations/alt0000005665
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_chunks/table
-- requires: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.company_chunks 
  ALTER COLUMN embedding_stale SET NOT NULL;

