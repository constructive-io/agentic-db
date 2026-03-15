-- Revert: schemas/agent_db_app_public/tables/notes/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.notes 
  DISABLE ROW LEVEL SECURITY;


