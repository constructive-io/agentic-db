-- Revert: schemas/agentic_db_app_public/tables/calendar_event_tasks/constraints/calendar_event_tasks_pkey/constraint


ALTER TABLE agentic_db_app_public.calendar_event_tasks 
  DROP CONSTRAINT calendar_event_tasks_pkey;


