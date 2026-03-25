-- Revert: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/updated_at/alterations/alt0000001851


ALTER TABLE "agentic_db_app_public".calendar_events_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


