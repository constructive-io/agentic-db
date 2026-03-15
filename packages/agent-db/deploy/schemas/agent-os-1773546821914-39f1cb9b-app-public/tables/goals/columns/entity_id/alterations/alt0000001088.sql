-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/entity_id/alterations/alt0000001088
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/intent_trigger/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".goals 
  ALTER COLUMN entity_id SET NOT NULL;

