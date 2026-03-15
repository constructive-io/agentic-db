-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_event_contacts/columns/calendar_event_id/alterations/alt0000001581


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_event_contacts 
  ALTER COLUMN calendar_event_id DROP NOT NULL;


