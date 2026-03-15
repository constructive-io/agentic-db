-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/entity_id/alterations/alt0000001554
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/embedding/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".templates 
  ALTER COLUMN entity_id SET NOT NULL;

