-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/columns/status/alterations/alt0000002098
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/status/column
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/task/alterations/alt0000002097



ALTER TABLE "agent_db_app_public".agent_spawns 
    ALTER COLUMN status SET DEFAULT 'running';

