-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/created_at/alterations/alt0000000002


ALTER TABLE agentic_db_app_public.calendars 
  ALTER COLUMN created_at DROP DEFAULT;


