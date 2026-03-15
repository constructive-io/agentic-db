-- Deploy: schemas/agent_db_app_public/tables/companies/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/tags/column


ALTER TABLE "agent_db_app_public".companies 
  ADD COLUMN embedding vector(768);

