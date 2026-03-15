-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/id/alterations/alt0000001346
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/embedding/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".files 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

