-- Revert: schemas/agentic_db_app_public/tables/agent_tasks_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".agent_tasks_chunks 
  DISABLE ROW LEVEL SECURITY;


