-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/columns/embedding/column


GRANT INSERT ON "agent-os-1773550873753-b6c4a3e1-app-public".expenses TO authenticated;

