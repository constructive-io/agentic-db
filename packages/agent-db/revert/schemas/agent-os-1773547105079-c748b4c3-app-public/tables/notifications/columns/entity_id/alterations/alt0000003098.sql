-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/entity_id/alterations/alt0000003098


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notifications 
  ALTER COLUMN entity_id DROP NOT NULL;


