-- Revert: schemas/agent_db_app_public/tables/companies/columns/domain/column


ALTER TABLE agent_db_app_public.companies 
  DROP COLUMN domain RESTRICT;


