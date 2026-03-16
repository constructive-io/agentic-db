-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/id/alterations/alt0000002207


ALTER TABLE "agent_db_app_public".calendar_events 
  ALTER COLUMN id DROP NOT NULL;


