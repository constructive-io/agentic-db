-- Deploy: schemas/agent_db_app_public/tables/agents/columns/capabilities/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/role/column


ALTER TABLE "agent_db_app_public".agents 
  ADD COLUMN capabilities jsonb;

