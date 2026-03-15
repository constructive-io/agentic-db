-- Revert: schemas/agent_db_app_public/tables/companies/columns/tags/column


ALTER TABLE agent_db_app_public.companies 
  DROP COLUMN tags RESTRICT;


