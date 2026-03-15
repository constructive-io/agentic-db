-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/constraints/webhooks_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".webhooks 
  DROP CONSTRAINT webhooks_entity_id_fkey;


