-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/columns/entity_id/alterations/alt0000002672


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skill_executions 
  ALTER COLUMN entity_id DROP NOT NULL;


