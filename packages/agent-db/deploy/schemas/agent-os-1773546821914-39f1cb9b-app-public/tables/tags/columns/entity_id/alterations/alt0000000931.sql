-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/entity_id/alterations/alt0000000931
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tags 
  ALTER COLUMN entity_id SET NOT NULL;

