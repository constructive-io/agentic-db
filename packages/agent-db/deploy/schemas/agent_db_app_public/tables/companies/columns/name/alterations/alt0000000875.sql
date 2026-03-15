-- Deploy: schemas/agent_db_app_public/tables/companies/columns/name/alterations/alt0000000875
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/name/column
-- requires: schemas/agent_db_app_public/tables/companies/columns/updated_at/alterations/alt0000000874


ALTER TABLE agent_db_app_public.companies 
  ALTER COLUMN name SET NOT NULL;

