-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/child_agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/parent_agent_id/alterations/alt0000001244


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ADD COLUMN child_agent_id uuid;

