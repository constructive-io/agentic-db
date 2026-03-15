-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/id/alterations/alt0000001097
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".prompts 
  ALTER COLUMN id SET NOT NULL;

