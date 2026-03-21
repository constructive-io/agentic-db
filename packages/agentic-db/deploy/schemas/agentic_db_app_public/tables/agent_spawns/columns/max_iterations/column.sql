-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/max_iterations/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/result/column


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ADD COLUMN max_iterations int;

