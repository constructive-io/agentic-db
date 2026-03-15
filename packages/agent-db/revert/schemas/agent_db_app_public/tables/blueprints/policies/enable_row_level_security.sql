-- Revert: schemas/agent_db_app_public/tables/blueprints/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.blueprints 
  DISABLE ROW LEVEL SECURITY;


