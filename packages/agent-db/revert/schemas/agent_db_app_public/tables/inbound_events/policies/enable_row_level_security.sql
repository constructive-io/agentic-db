-- Revert: schemas/agent_db_app_public/tables/inbound_events/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.inbound_events 
  DISABLE ROW LEVEL SECURITY;


