-- Revert: schemas/agentic_db_app_public/tables/calendar_accounts/columns/created_at/column


ALTER TABLE agentic_db_app_public.calendar_accounts 
  DROP COLUMN created_at RESTRICT;


