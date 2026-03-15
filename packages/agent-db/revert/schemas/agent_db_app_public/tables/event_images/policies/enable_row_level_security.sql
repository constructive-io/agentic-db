-- Revert: schemas/agent_db_app_public/tables/event_images/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.event_images 
  DISABLE ROW LEVEL SECURITY;


