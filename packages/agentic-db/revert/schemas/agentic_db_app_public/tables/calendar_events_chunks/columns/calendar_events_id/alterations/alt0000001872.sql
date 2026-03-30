-- Revert: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/calendar_events_id/alterations/alt0000001872


ALTER TABLE "agentic_db_app_public".calendar_events_chunks 
  ALTER COLUMN calendar_events_id DROP NOT NULL;


