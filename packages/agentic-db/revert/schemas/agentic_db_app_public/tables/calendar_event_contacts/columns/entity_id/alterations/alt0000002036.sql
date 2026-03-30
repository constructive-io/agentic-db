-- Revert: schemas/agentic_db_app_public/tables/calendar_event_contacts/columns/entity_id/alterations/alt0000002036


ALTER TABLE "agentic_db_app_public".calendar_event_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


