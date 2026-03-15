-- Revert: schemas/agent_db_app_public/tables/agent_spawns/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.agent_spawns 
  DISABLE ROW LEVEL SECURITY;


