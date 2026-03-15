-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/id/alterations/alt0000002964
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/hash/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chunks 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

