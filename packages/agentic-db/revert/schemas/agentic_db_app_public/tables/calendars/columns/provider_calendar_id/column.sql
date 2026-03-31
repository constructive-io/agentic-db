-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/provider_calendar_id/column


ALTER TABLE agentic_db_app_public.calendars 
  DROP COLUMN provider_calendar_id RESTRICT;


