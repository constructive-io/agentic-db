-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/id/alterations/alt0000003017


ALTER TABLE agentic_db_app_public.companies_chunks 
  ALTER COLUMN id DROP NOT NULL;


