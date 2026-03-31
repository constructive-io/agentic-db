-- Revert: schemas/agentic_db_app_public/tables/companies/columns/id/column


ALTER TABLE agentic_db_app_public.companies 
  DROP COLUMN id RESTRICT;


