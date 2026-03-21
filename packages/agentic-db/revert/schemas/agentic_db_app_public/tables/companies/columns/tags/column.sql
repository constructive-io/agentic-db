-- Revert: schemas/agentic_db_app_public/tables/companies/columns/tags/column


ALTER TABLE agentic_db_app_public.companies 
  DROP COLUMN tags RESTRICT;


