-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/entity_id/alterations/alt0000002720
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/embedding/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skill_executions 
  ALTER COLUMN entity_id SET NOT NULL;

