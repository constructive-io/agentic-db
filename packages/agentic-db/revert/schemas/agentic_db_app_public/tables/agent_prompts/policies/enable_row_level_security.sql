-- Revert: schemas/agentic_db_app_public/tables/agent_prompts/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.agent_prompts 
  DISABLE ROW LEVEL SECURITY;


