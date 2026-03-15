-- Revert: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-simple-secrets".secrets 
  DISABLE ROW LEVEL SECURITY;


