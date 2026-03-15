-- Revert: schemas/agent_db_app_public/tables/companies/columns/industry/column


ALTER TABLE agent_db_app_public.companies 
  DROP COLUMN industry RESTRICT;


