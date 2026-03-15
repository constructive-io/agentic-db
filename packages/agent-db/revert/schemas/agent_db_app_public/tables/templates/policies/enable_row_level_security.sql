-- Revert: schemas/agent_db_app_public/tables/templates/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.templates 
  DISABLE ROW LEVEL SECURITY;


