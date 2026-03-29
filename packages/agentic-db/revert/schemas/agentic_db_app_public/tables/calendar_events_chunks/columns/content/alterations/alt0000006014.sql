-- Revert: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/content/alterations/alt0000006014


ALTER TABLE agentic_db_app_public.calendar_events_chunks 
  ALTER COLUMN content DROP NOT NULL;


