-- Revert: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.calendar_events_chunks 
  DROP COLUMN created_at RESTRICT;


