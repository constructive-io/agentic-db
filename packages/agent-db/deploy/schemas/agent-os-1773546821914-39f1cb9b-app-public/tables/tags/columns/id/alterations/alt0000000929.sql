-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/id/alterations/alt0000000929
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tags 
  ALTER COLUMN id SET NOT NULL;

