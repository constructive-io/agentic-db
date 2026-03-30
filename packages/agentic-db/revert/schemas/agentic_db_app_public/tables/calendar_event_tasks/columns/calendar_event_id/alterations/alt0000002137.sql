-- Revert: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/calendar_event_id/alterations/alt0000002137


ALTER TABLE "agentic_db_app_public".calendar_event_tasks 
  ALTER COLUMN calendar_event_id DROP NOT NULL;


