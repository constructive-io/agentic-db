-- Deploy: schemas/agent_db_app_public/tables/agent_tools/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_tools/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


ALTER TABLE "agent_db_app_public".agent_tools 
  ENABLE ROW LEVEL SECURITY;

