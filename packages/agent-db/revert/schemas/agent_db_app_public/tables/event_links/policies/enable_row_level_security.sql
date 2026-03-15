-- Revert: schemas/agent_db_app_public/tables/event_links/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.event_links 
  DISABLE ROW LEVEL SECURITY;


