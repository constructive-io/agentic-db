-- Revert: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/calendar_event_id/column


ALTER TABLE agentic_db_app_public.calendar_event_tasks 
  DROP COLUMN calendar_event_id RESTRICT;


