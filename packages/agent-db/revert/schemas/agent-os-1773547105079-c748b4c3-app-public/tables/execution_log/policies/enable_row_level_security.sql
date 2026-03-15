-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".execution_log 
  DISABLE ROW LEVEL SECURITY;


