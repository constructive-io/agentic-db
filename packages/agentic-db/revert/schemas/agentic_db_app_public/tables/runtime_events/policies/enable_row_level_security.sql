-- Revert: schemas/agentic_db_app_public/tables/runtime_events/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.runtime_events 
  DISABLE ROW LEVEL SECURITY;


