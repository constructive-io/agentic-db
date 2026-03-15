-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/event_type/alterations/alt0000003002


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".webhooks 
  ALTER COLUMN event_type DROP NOT NULL;


