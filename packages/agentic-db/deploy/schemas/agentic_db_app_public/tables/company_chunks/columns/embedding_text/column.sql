-- Deploy: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_chunks/table
-- requires: schemas/agentic_db_app_public/tables/company_chunks/columns/content/alterations/alt0000005663


ALTER TABLE agentic_db_app_public.company_chunks 
  ADD COLUMN embedding_text text;

