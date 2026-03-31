-- Revert: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/entity_id/alterations/alt0000002146


ALTER TABLE "agentic_db_app_public".calendar_event_tasks 
  ALTER COLUMN entity_id DROP NOT NULL;


