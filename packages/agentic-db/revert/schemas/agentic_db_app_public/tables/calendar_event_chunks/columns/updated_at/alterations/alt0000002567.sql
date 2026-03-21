-- Revert: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/updated_at/alterations/alt0000002567


ALTER TABLE "agentic_db_app_public".calendar_event_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


