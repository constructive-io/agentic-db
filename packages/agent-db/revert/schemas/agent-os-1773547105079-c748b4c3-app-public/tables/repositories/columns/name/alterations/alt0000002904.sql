-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/columns/name/alterations/alt0000002904


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".repositories 
  ALTER COLUMN name DROP NOT NULL;


