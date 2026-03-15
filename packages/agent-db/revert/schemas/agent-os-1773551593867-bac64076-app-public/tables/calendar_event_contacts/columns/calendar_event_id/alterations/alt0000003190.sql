-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/columns/calendar_event_id/alterations/alt0000003190


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_event_contacts 
  ALTER COLUMN calendar_event_id DROP NOT NULL;


