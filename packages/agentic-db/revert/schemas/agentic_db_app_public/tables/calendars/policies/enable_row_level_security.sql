-- Revert: schemas/agentic_db_app_public/tables/calendars/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.calendars 
  DISABLE ROW LEVEL SECURITY;


