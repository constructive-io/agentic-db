-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/created_at/column


ALTER TABLE agentic_db_app_public.calendar_events 
  DROP COLUMN created_at RESTRICT;


