-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/hash/column


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".chunks TO authenticated;

