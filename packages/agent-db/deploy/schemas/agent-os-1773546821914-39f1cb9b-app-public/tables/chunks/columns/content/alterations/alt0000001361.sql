-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/content/alterations/alt0000001361
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/content/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/repository_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chunks 
  ALTER COLUMN content SET NOT NULL;

