-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/entity_id/alterations/alt0000003000


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_events 
  ALTER COLUMN entity_id DROP NOT NULL;


