-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/columns/created_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skill_executions 
  DROP COLUMN created_at RESTRICT;


