-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/content/alterations/alt0000002225


ALTER TABLE agentic_db_app_public.companies_chunks 
  ALTER COLUMN content DROP NOT NULL;


