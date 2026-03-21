-- Revert: schemas/agentic_db_app_public/tables/calendar_event_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.calendar_event_chunks 
  DISABLE ROW LEVEL SECURITY;


