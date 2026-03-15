-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/entity_id/alterations/alt0000002440


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deals 
  ALTER COLUMN entity_id DROP NOT NULL;


