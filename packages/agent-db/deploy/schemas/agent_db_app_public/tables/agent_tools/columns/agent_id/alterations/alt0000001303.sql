-- Deploy: schemas/agent_db_app_public/tables/agent_tools/columns/agent_id/alterations/alt0000001303
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_tools/table
-- requires: schemas/agent_db_app_public/tables/agent_tools/columns/agent_id/column
-- requires: schemas/agent_db_app_public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


ALTER TABLE agent_db_app_public.agent_tools 
  ALTER COLUMN agent_id SET NOT NULL;

