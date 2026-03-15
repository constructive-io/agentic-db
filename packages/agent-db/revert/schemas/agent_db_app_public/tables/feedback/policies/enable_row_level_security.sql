-- Revert: schemas/agent_db_app_public/tables/feedback/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.feedback 
  DISABLE ROW LEVEL SECURITY;


