-- Revert: schemas/agent_db_app_public/tables/calendar_events/constraints/calendar_events_pkey/constraint


ALTER TABLE "agent_db_app_public".calendar_events 
  DROP CONSTRAINT calendar_events_pkey;


