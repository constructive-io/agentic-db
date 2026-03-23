-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/updated_at/alterations/alt0000002619


ALTER TABLE agentic_db_app_public.companies_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


