-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.calendar_attendees 
  DISABLE ROW LEVEL SECURITY;


