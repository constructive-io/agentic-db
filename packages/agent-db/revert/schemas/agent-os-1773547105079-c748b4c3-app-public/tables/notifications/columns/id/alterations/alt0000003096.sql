-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/id/alterations/alt0000003096


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notifications 
  ALTER COLUMN id DROP NOT NULL;


