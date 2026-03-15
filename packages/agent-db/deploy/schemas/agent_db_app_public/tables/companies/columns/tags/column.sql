-- Deploy: schemas/agent_db_app_public/tables/companies/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/description/column


ALTER TABLE "agent_db_app_public".companies 
  ADD COLUMN tags citext[];

