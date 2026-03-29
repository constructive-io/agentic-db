-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/company_id/column


ALTER TABLE agentic_db_app_public.companies_chunks 
  DROP COLUMN company_id RESTRICT;


