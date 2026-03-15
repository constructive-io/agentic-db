-- Revert: schemas/agent_db_app_public/tables/calendar_events/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".calendar_events 
  DISABLE ROW LEVEL SECURITY;


