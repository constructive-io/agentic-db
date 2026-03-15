-- Revert: schemas/agent_db_app_public/tables/companies/columns/id/alterations/alt0000000868


ALTER TABLE agent_db_app_public.companies 
  ALTER COLUMN id DROP NOT NULL;


