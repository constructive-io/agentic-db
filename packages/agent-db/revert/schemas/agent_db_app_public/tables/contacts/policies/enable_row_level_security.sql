-- Revert: schemas/agent_db_app_public/tables/contacts/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.contacts 
  DISABLE ROW LEVEL SECURITY;


