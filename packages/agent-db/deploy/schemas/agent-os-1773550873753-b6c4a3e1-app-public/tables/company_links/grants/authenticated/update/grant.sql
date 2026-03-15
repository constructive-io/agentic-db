-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_links/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_links/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/columns/embedding/column


GRANT UPDATE ON "agent-os-1773550873753-b6c4a3e1-app-public".company_links TO authenticated;

