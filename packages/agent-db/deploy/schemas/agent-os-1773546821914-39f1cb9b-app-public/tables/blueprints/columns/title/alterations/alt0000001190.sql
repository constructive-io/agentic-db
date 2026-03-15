-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/title/alterations/alt0000001190
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/title/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/updated_at/alterations/alt0000001189


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".blueprints 
  ALTER COLUMN title SET NOT NULL;

