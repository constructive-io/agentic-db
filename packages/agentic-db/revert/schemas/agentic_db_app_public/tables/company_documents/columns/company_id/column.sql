-- Revert: schemas/agentic_db_app_public/tables/company_documents/columns/company_id/column


ALTER TABLE agentic_db_app_public.company_documents 
  DROP COLUMN company_id RESTRICT;


