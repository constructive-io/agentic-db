-- Revert: schemas/agentic_db_app_public/tables/calendar_event_tasks/constraints/calendar_event_tasks_calendar_event_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".calendar_event_tasks 
  DROP CONSTRAINT calendar_event_tasks_calendar_event_id_fkey;


