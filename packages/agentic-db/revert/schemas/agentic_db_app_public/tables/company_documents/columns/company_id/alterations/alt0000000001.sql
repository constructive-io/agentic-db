-- Revert: schemas/agentic_db_app_public/tables/company_documents/columns/company_id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.company_documents 
  ALTER COLUMN company_id DROP NOT NULL;


