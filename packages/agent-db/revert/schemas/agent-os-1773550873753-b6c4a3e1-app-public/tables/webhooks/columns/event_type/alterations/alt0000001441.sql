-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/event_type/alterations/alt0000001441


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".webhooks 
  ALTER COLUMN event_type DROP NOT NULL;


