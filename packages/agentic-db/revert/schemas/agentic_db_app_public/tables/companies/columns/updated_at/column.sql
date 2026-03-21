-- Revert: schemas/agentic_db_app_public/tables/companies/columns/updated_at/column


ALTER TABLE agentic_db_app_public.companies 
  DROP COLUMN updated_at RESTRICT;


