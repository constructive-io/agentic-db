-- Revert: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/columns/name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-simple-secrets".secrets 
  DROP COLUMN name RESTRICT;


