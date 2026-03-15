-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/priority/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notifications 
  DROP COLUMN priority RESTRICT;


