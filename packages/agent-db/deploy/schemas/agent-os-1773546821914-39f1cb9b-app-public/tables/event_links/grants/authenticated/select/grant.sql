-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/columns/embedding/column


GRANT SELECT ON "agent-os-1773546821914-39f1cb9b-app-public".event_links TO authenticated;

