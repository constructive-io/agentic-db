-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/columns/entity_id/alterations/alt0000001088
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/columns/entity_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/intent_trigger/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goals 
  ALTER COLUMN entity_id SET NOT NULL;

