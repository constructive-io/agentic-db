-- Revert: schemas/agent_db_app_public/tables/repositories/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.repositories 
  DISABLE ROW LEVEL SECURITY;


