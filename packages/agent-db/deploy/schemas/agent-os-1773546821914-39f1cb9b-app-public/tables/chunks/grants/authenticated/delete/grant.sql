-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/hash/column


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".chunks TO authenticated;

