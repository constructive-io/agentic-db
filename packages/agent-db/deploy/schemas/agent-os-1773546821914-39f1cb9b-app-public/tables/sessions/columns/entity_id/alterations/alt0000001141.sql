-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/entity_id/alterations/alt0000001141
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/embedding/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".sessions 
  ALTER COLUMN entity_id SET NOT NULL;

