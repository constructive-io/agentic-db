-- Deploy: schemas/agent_db_app_public/tables/agent_tools/columns/id/alterations/alt0000001305
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_tools/table
-- requires: schemas/agent_db_app_public/tables/agent_tools/columns/id/column
-- requires: schemas/agent_db_app_public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


ALTER TABLE agent_db_app_public.agent_tools 
  ALTER COLUMN id SET NOT NULL;

