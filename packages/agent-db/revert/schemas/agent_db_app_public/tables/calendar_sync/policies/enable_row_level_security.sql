-- Revert: schemas/agent_db_app_public/tables/calendar_sync/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".calendar_sync 
  DISABLE ROW LEVEL SECURITY;


