-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/id/alterations/alt0000001226
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/embedding/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

