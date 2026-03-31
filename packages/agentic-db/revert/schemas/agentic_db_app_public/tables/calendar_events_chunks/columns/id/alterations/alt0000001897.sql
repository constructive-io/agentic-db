-- Revert: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/id/alterations/alt0000001897


ALTER TABLE "agentic_db_app_public".calendar_events_chunks 
  ALTER COLUMN id DROP NOT NULL;


