-- Revert: schemas/agent_db_app_public/tables/calendar_event_contacts/columns/entity_id/alterations/alt0000004755


ALTER TABLE "agent_db_app_public".calendar_event_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


