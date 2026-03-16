-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/status/alterations/alt0000001246
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/task/alterations/alt0000001245



ALTER TABLE "agentic_db_app_public".agent_spawns 
    ALTER COLUMN status SET DEFAULT 'running';

