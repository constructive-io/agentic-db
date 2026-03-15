-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/event_type/alterations/alt0000003050


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
  ALTER COLUMN event_type DROP NOT NULL;


