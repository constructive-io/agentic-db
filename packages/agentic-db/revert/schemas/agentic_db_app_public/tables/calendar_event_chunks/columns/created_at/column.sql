-- Revert: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.calendar_event_chunks 
  DROP COLUMN created_at RESTRICT;


