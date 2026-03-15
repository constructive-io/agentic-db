-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/entity_id/alterations/alt0000001545
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/source_entity_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".recipes 
  ALTER COLUMN entity_id SET NOT NULL;

