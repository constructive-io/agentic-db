-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/columns/entity_id/alterations/alt0000004476
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/error/column
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/entity_id/column


ALTER TABLE "agent_db_app_public".agent_spawns 
  ALTER COLUMN entity_id SET NOT NULL;

