-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_links 
  DISABLE ROW LEVEL SECURITY;


