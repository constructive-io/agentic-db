-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/columns/entity_id/alterations/alt0000003194


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_event_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


