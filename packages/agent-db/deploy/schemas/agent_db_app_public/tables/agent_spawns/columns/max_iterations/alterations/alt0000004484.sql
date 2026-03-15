-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/columns/max_iterations/alterations/alt0000004484
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/result/column
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/max_iterations/column



ALTER TABLE "agent_db_app_public".agent_spawns 
    ALTER COLUMN max_iterations SET DEFAULT 15;

