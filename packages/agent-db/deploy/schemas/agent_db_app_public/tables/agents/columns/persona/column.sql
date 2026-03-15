-- Deploy: schemas/agent_db_app_public/tables/agents/columns/persona/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/status/alterations/alt0000004355


ALTER TABLE "agent_db_app_public".agents 
  ADD COLUMN persona text;

