-- Revert: schemas/agentic_db_app_public/tables/calendar_accounts/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.calendar_accounts 
  DISABLE ROW LEVEL SECURITY;


