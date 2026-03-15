-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/entity_id/alterations/alt0000002708
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/embedding/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
  ALTER COLUMN entity_id SET NOT NULL;

