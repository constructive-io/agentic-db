-- Revert: schemas/agent_db_app_public/tables/images/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.images 
  DISABLE ROW LEVEL SECURITY;


