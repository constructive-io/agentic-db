-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.reminder_chunks 
  DISABLE ROW LEVEL SECURITY;


