-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".workflow_steps 
  DISABLE ROW LEVEL SECURITY;


