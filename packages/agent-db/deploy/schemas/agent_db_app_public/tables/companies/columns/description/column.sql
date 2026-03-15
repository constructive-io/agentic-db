-- Deploy: schemas/agent_db_app_public/tables/companies/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/industry/column


ALTER TABLE agent_db_app_public.companies 
  ADD COLUMN description text;

