-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/attachable_id/column


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".contact_links TO authenticated;

