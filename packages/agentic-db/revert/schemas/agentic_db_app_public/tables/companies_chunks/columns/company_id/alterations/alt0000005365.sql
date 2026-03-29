-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/company_id/alterations/alt0000005365


ALTER TABLE agentic_db_app_public.companies_chunks 
  ALTER COLUMN company_id DROP NOT NULL;


