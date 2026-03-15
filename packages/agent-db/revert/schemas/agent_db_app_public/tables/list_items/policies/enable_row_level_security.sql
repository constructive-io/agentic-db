-- Revert: schemas/agent_db_app_public/tables/list_items/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.list_items 
  DISABLE ROW LEVEL SECURITY;


