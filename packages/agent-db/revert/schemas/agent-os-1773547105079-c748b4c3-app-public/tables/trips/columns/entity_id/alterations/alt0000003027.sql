-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/columns/entity_id/alterations/alt0000003027


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".trips 
  ALTER COLUMN entity_id DROP NOT NULL;


