-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/entity_id/alterations/alt0000002917


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


