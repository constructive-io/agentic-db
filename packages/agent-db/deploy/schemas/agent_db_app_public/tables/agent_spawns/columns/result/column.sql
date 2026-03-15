-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/columns/result/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/status/alterations/alt0000004435


ALTER TABLE "agent_db_app_public".agent_spawns 
  ADD COLUMN result jsonb;

