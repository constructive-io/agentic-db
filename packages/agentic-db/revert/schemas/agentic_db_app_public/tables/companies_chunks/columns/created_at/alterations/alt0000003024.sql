-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/created_at/alterations/alt0000003024


ALTER TABLE agentic_db_app_public.companies_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


