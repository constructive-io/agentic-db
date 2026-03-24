-- Revert: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/task_id/column


ALTER TABLE "agentic_db_app_public".calendar_event_tasks 
  DROP COLUMN task_id RESTRICT;


