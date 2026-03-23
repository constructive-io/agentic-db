-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".agent_tasks 
  DISABLE ROW LEVEL SECURITY;


