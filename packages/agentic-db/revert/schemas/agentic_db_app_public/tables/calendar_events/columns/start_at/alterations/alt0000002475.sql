-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/start_at/alterations/alt0000002475


ALTER TABLE "agentic_db_app_public".calendar_events 
  ALTER COLUMN start_at DROP NOT NULL;


