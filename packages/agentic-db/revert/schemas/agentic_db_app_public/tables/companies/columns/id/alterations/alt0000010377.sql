-- Revert: schemas/agentic_db_app_public/tables/companies/columns/id/alterations/alt0000010377


ALTER TABLE agentic_db_app_public.companies 
  ALTER COLUMN id DROP NOT NULL;


