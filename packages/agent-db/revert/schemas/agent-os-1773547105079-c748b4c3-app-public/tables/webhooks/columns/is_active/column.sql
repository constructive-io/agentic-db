-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/is_active/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".webhooks 
  DROP COLUMN is_active RESTRICT;


