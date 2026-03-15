-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/columns/notes/column


GRANT DELETE ON "agent-os-1773550873753-b6c4a3e1-app-public".trips TO authenticated;

