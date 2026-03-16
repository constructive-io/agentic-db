-- Revert: schemas/agent_db_app_public/tables/workflow_runs/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".workflow_runs 
  DISABLE ROW LEVEL SECURITY;


