-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/calendar_id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.calendar_events 
  ALTER COLUMN calendar_id DROP NOT NULL;


