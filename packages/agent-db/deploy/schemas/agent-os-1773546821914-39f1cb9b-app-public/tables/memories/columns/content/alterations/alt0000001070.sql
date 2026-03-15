-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/content/alterations/alt0000001070
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/content/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/updated_at/alterations/alt0000001069


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".memories 
  ALTER COLUMN content SET NOT NULL;

