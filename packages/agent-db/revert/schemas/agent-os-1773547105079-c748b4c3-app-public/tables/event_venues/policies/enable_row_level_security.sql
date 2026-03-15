-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_venues/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_venues 
  DISABLE ROW LEVEL SECURITY;


