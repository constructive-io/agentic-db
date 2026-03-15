-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/columns/contact_id/alterations/alt0000003191


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_event_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


