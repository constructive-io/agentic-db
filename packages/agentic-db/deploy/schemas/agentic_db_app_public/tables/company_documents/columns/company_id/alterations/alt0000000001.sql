-- Deploy: schemas/agentic_db_app_public/tables/company_documents/columns/company_id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_documents/table
-- requires: schemas/agentic_db_app_public/tables/company_documents/columns/company_id/column


ALTER TABLE agentic_db_app_public.company_documents 
  ALTER COLUMN company_id SET NOT NULL;

