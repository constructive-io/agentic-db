-- Revert: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/content/alterations/alt0000002570


ALTER TABLE "agentic_db_app_public".calendar_event_chunks 
  ALTER COLUMN content DROP NOT NULL;


