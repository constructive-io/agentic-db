-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/entity_id/alterations/alt0000002682


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".feedback 
  ALTER COLUMN entity_id DROP NOT NULL;


