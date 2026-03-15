-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/constraints/notifications_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notifications 
  DROP CONSTRAINT notifications_entity_id_fkey;


