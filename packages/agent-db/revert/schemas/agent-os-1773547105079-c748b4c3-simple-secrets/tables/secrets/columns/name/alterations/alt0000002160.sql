-- Revert: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/columns/name/alterations/alt0000002160


ALTER TABLE "agent-os-1773547105079-c748b4c3-simple-secrets".secrets 
  ALTER COLUMN name DROP NOT NULL;


