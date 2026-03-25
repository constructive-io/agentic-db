-- Revert: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/task_id/alterations/alt0000002088


ALTER TABLE "agentic_db_app_public".calendar_event_tasks 
  ALTER COLUMN task_id DROP NOT NULL;


