-- Deploy: schemas/agent_db_app_public/tables/agents/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/updated_at/alterations/alt0000004305


ALTER TABLE "agent_db_app_public".agents 
  ADD COLUMN name text;

