-- Revert: schemas/agentic_db_app_public/tables/companies/columns/id/alterations/alt0000015210


ALTER TABLE agentic_db_app_public.companies 
  ALTER COLUMN id DROP NOT NULL;


