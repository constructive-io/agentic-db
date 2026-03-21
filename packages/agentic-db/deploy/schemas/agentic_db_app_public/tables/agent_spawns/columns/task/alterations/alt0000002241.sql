-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/task/alterations/alt0000002241
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/task/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/session_id/column


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ALTER COLUMN task SET NOT NULL;

