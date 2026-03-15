-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/updated_at/alterations/alt0000003101


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notifications 
  ALTER COLUMN updated_at DROP NOT NULL;


