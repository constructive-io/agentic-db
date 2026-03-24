-- Revert: schemas/agentic_db_app_public/tables/calendar_event_contacts/constraints/calendar_event_contacts_pkey/constraint


ALTER TABLE "agentic_db_app_public".calendar_event_contacts 
  DROP CONSTRAINT calendar_event_contacts_pkey;


