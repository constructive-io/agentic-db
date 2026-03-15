-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/id/alterations/alt0000001411
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/tags/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
  ALTER COLUMN id SET NOT NULL;

