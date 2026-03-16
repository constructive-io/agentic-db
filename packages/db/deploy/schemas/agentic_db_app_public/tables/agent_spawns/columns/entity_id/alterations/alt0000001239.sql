-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/entity_id/alterations/alt0000001239
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/error/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ALTER COLUMN entity_id SET NOT NULL;

