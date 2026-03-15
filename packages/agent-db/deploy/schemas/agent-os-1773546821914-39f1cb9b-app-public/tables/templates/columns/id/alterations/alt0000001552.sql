-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/id/alterations/alt0000001552
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".templates 
  ALTER COLUMN id SET NOT NULL;

