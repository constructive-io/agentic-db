-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/columns/task/alterations/alt0000004434
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/task/column
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/session_id/column


ALTER TABLE "agent_db_app_public".agent_spawns 
  ALTER COLUMN task SET NOT NULL;

