-- Revert: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.calendar_event_tasks 
  DROP COLUMN entity_id RESTRICT;


