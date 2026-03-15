-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/name/alterations/alt0000001104
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/updated_at/alterations/alt0000001103


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".prompts 
  ALTER COLUMN name SET NOT NULL;

