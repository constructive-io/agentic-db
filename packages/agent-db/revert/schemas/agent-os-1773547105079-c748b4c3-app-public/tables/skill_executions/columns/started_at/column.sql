-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/columns/started_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skill_executions 
  DROP COLUMN started_at RESTRICT;


