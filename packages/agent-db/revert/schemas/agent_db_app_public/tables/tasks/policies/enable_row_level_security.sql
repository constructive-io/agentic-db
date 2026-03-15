-- Revert: schemas/agent_db_app_public/tables/tasks/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.tasks 
  DISABLE ROW LEVEL SECURITY;


