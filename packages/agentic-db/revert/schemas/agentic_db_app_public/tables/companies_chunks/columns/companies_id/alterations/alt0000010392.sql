-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/companies_id/alterations/alt0000010392


ALTER TABLE agentic_db_app_public.companies_chunks 
  ALTER COLUMN companies_id DROP NOT NULL;


