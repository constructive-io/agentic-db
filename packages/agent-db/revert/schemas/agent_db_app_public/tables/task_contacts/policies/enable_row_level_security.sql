-- Revert: schemas/agent_db_app_public/tables/task_contacts/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.task_contacts 
  DISABLE ROW LEVEL SECURITY;


