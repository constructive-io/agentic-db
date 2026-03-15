-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_rules 
  DISABLE ROW LEVEL SECURITY;


