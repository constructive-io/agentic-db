-- Revert: schemas/agentic_db_app_public/tables/calendar_events_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".calendar_events_chunks 
  DISABLE ROW LEVEL SECURITY;


