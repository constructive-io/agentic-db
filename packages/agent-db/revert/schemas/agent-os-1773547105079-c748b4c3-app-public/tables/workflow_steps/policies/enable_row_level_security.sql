-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  DISABLE ROW LEVEL SECURITY;


