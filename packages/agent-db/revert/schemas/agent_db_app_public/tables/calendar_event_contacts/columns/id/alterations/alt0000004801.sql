-- Revert: schemas/agent_db_app_public/tables/calendar_event_contacts/columns/id/alterations/alt0000004801


ALTER TABLE "agent_db_app_public".calendar_event_contacts 
  ALTER COLUMN id DROP NOT NULL;


