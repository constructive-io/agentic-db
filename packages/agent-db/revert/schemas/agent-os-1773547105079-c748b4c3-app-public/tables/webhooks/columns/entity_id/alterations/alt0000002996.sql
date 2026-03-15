-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/entity_id/alterations/alt0000002996


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".webhooks 
  ALTER COLUMN entity_id DROP NOT NULL;


