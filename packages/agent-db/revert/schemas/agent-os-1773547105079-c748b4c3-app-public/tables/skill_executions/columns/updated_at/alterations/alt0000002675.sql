-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/columns/updated_at/alterations/alt0000002675


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skill_executions 
  ALTER COLUMN updated_at DROP NOT NULL;


