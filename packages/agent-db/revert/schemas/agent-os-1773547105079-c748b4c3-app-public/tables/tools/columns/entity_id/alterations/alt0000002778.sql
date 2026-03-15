-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/entity_id/alterations/alt0000002778


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tools 
  ALTER COLUMN entity_id DROP NOT NULL;


