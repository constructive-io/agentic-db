-- Revert: schemas/agent_db_app_public/tables/notifications/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.notifications 
  DISABLE ROW LEVEL SECURITY;


