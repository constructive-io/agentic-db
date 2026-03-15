-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/id/alterations/alt0000004559


ALTER TABLE "agent_db_app_public".calendar_events 
  ALTER COLUMN id DROP NOT NULL;


