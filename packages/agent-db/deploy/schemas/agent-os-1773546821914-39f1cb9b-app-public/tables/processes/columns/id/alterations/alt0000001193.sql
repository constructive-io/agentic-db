-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/id/alterations/alt0000001193
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/embedding/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".processes 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

