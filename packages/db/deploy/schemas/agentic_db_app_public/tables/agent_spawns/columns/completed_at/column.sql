-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/completed_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/started_at/column


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ADD COLUMN completed_at timestamptz;

