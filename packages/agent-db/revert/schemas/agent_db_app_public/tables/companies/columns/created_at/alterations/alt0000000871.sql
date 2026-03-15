-- Revert: schemas/agent_db_app_public/tables/companies/columns/created_at/alterations/alt0000000871


ALTER TABLE agent_db_app_public.companies 
  ALTER COLUMN created_at DROP NOT NULL;


