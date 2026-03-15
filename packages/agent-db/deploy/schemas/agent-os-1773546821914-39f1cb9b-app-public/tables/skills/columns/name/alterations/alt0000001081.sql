-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/name/alterations/alt0000001081
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/updated_at/alterations/alt0000001080


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  ALTER COLUMN name SET NOT NULL;

