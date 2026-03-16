-- Deploy: schemas/agent_db_app_public/tables/companies/columns/domain/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/name/alterations/alt0000001727


ALTER TABLE "agent_db_app_public".companies 
  ADD COLUMN domain text;

