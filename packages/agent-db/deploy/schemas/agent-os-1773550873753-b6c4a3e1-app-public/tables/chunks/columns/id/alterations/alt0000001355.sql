-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chunks/columns/id/alterations/alt0000001355
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chunks/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/files/columns/hash/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chunks 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

