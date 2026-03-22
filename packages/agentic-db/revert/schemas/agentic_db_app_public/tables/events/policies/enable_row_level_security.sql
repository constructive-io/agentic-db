-- Revert: schemas/agentic_db_app_public/tables/events/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.events 
  DISABLE ROW LEVEL SECURITY;


