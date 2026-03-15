-- Revert: schemas/agent_db_app_public/tables/calendar_event_contacts/columns/calendar_event_id/alterations/alt0000004751


ALTER TABLE "agent_db_app_public".calendar_event_contacts 
  ALTER COLUMN calendar_event_id DROP NOT NULL;


