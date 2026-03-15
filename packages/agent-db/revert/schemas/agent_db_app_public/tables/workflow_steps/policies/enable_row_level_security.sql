-- Revert: schemas/agent_db_app_public/tables/workflow_steps/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.workflow_steps 
  DISABLE ROW LEVEL SECURITY;


