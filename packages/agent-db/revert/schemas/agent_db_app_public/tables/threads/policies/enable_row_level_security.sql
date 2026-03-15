-- Revert: schemas/agent_db_app_public/tables/threads/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.threads 
  DISABLE ROW LEVEL SECURITY;


