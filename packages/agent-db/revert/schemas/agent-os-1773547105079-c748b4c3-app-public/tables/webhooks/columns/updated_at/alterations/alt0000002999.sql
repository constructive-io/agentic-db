-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/updated_at/alterations/alt0000002999


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".webhooks 
  ALTER COLUMN updated_at DROP NOT NULL;


