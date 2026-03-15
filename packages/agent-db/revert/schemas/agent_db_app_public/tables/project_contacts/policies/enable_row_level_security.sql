-- Revert: schemas/agent_db_app_public/tables/project_contacts/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.project_contacts 
  DISABLE ROW LEVEL SECURITY;


