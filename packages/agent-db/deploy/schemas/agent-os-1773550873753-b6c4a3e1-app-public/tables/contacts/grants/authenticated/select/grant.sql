-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/embedding/column


GRANT SELECT ON "agent-os-1773550873753-b6c4a3e1-app-public".contacts TO authenticated;

