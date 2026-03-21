-- Revert: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/created_at/alterations/alt0000002565


ALTER TABLE "agentic_db_app_public".calendar_event_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


