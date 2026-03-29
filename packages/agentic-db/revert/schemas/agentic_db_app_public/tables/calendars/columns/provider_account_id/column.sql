-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/provider_account_id/column


ALTER TABLE agentic_db_app_public.calendars 
  DROP COLUMN provider_account_id RESTRICT;


