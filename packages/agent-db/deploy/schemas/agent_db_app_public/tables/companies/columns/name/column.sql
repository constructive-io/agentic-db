-- Deploy: schemas/agent_db_app_public/tables/companies/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/updated_at/alterations/alt0000004044


ALTER TABLE "agent_db_app_public".companies 
  ADD COLUMN name text;

