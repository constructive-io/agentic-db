-- Revert: schemas/agentic_db_app_public/tables/company_documents/constraints/company_documents_company_id_fkey/constraint


ALTER TABLE agentic_db_app_public.company_documents 
  DROP CONSTRAINT company_documents_company_id_fkey;


