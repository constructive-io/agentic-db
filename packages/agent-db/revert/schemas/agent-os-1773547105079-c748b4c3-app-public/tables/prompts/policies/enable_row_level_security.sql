-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".prompts 
  DISABLE ROW LEVEL SECURITY;


