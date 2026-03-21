-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/remote_id/column


ALTER TABLE agentic_db_app_public.calendar_events 
  DROP COLUMN remote_id RESTRICT;


