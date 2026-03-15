-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/columns/entity_id/alterations/alt0000001248
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE agent_db_app_public.workflow_runs 
  ALTER COLUMN entity_id SET NOT NULL;

