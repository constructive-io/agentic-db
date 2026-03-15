-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/entity_id/alterations/alt0000001076
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  ALTER COLUMN entity_id SET NOT NULL;

