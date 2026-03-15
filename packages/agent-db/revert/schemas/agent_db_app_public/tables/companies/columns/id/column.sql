-- Revert: schemas/agent_db_app_public/tables/companies/columns/id/column


ALTER TABLE agent_db_app_public.companies 
  DROP COLUMN id RESTRICT;


