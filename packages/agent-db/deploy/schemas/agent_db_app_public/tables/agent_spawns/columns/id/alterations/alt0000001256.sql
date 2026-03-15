-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/columns/id/alterations/alt0000001256
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/id/column
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/error/column


ALTER TABLE agent_db_app_public.agent_spawns 
  ALTER COLUMN id SET NOT NULL;

