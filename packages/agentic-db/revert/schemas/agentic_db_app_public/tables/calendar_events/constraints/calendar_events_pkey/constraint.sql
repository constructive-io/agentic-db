-- Revert: schemas/agentic_db_app_public/tables/calendar_events/constraints/calendar_events_pkey/constraint


ALTER TABLE "agentic_db_app_public".calendar_events 
  DROP CONSTRAINT calendar_events_pkey;


