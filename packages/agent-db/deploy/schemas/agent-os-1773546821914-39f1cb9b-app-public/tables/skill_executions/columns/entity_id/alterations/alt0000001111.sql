-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/entity_id/alterations/alt0000001111
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/embedding/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skill_executions 
  ALTER COLUMN entity_id SET NOT NULL;

