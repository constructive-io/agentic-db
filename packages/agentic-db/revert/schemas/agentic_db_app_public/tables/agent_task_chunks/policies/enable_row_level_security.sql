-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".agent_task_chunks 
  DISABLE ROW LEVEL SECURITY;


