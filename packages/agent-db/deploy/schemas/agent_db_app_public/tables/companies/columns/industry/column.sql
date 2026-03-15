-- Deploy: schemas/agent_db_app_public/tables/companies/columns/industry/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/domain/column


ALTER TABLE agent_db_app_public.companies 
  ADD COLUMN industry text;

