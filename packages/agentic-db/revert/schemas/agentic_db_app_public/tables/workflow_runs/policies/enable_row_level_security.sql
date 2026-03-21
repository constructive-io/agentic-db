-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".workflow_runs 
  DISABLE ROW LEVEL SECURITY;


