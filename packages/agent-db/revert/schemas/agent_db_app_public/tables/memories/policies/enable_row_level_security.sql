-- Revert: schemas/agent_db_app_public/tables/memories/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.memories 
  DISABLE ROW LEVEL SECURITY;


