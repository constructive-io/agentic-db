-- Revert: schemas/agent_db_app_public/tables/integrations/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.integrations 
  DISABLE ROW LEVEL SECURITY;


