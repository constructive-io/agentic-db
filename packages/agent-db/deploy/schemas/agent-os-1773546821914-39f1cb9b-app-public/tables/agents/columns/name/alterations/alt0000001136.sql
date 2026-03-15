-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/name/alterations/alt0000001136
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/updated_at/alterations/alt0000001135


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agents 
  ALTER COLUMN name SET NOT NULL;

