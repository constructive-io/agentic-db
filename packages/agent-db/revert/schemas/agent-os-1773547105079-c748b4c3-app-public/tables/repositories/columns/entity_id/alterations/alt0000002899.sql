-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/columns/entity_id/alterations/alt0000002899


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".repositories 
  ALTER COLUMN entity_id DROP NOT NULL;


