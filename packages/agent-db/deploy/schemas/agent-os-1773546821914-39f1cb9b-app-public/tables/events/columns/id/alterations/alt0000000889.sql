-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/id/alterations/alt0000000889
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/embedding/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".events 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

