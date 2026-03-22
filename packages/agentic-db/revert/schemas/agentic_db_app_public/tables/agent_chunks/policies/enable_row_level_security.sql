-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.agent_chunks 
  DISABLE ROW LEVEL SECURITY;


