-- Revert: schemas/agent_db_app_public/tables/companies/columns/updated_at/column


ALTER TABLE agent_db_app_public.companies 
  DROP COLUMN updated_at RESTRICT;


