-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/columns/id/alterations/alt0000002670


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skill_executions 
  ALTER COLUMN id DROP NOT NULL;


