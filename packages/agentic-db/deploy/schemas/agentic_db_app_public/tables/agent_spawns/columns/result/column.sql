-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/result/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/status/alterations/alt0000002242


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ADD COLUMN result jsonb;

