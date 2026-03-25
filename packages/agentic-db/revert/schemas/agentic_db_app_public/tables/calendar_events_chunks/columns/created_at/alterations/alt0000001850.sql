-- Revert: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/created_at/alterations/alt0000001850


ALTER TABLE "agentic_db_app_public".calendar_events_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


