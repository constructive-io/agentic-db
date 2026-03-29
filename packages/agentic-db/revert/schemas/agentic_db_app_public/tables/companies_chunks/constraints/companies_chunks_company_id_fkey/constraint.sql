-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/constraints/companies_chunks_company_id_fkey/constraint


ALTER TABLE agentic_db_app_public.companies_chunks 
  DROP CONSTRAINT companies_chunks_company_id_fkey;


