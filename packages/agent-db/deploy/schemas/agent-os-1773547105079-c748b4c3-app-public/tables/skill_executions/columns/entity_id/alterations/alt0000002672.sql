-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/columns/entity_id/alterations/alt0000002672
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/embedding/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skill_executions 
  ALTER COLUMN entity_id SET NOT NULL;

