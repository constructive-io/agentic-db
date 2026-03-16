-- Deploy: schemas/agent_db_app_public/tables/agent_tools/columns/entity_id/alterations/alt0000002125
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_tools/table
-- requires: schemas/agent_db_app_public/tables/agent_tools/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


ALTER TABLE "agent_db_app_public".agent_tools 
  ALTER COLUMN entity_id SET NOT NULL;

