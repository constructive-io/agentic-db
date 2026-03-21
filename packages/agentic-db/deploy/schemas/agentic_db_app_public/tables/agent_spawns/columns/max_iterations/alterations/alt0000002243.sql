-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/max_iterations/alterations/alt0000002243
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/result/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/max_iterations/column



ALTER TABLE "agentic_db_app_public".agent_spawns 
    ALTER COLUMN max_iterations SET DEFAULT 15;

