-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_event_contacts/constraints/calendar_event_contacts_contact_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_event_contacts 
  DROP CONSTRAINT calendar_event_contacts_contact_id_fkey;


