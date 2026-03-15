-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/id/alterations/alt0000002994


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".webhooks 
  ALTER COLUMN id DROP NOT NULL;


