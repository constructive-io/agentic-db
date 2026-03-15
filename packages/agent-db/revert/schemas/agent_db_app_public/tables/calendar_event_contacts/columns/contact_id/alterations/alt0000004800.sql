-- Revert: schemas/agent_db_app_public/tables/calendar_event_contacts/columns/contact_id/alterations/alt0000004800


ALTER TABLE "agent_db_app_public".calendar_event_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


