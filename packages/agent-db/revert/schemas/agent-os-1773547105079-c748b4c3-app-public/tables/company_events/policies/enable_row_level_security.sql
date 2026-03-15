-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_events 
  DISABLE ROW LEVEL SECURITY;


