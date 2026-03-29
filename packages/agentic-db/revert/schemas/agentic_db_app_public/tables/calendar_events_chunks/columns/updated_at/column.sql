-- Revert: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.calendar_events_chunks 
  DROP COLUMN updated_at RESTRICT;


