-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".session_archives 
  DISABLE ROW LEVEL SECURITY;


