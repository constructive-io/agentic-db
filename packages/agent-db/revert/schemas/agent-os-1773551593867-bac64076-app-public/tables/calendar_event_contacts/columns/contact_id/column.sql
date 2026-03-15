-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/columns/contact_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_event_contacts 
  DROP COLUMN contact_id RESTRICT;


